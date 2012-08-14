sampler s0;
float param1;
texture rainbow;
sampler rainbow_sampler = sampler_state{Texture = rainbow;};

float4 PixelShaderFunction(float2 coords: TEXCOORD0) : COLOR0
{
	//float4 color = tex2D(s0, 1-coords); // to invert the image
	//float4 color = tex2D(s0, float2(1- coords.x, coords.y));  // horizonatl flip
	
	
	/*float4 color = tex2D(s0, coords);
	if(color.a)
	{
		color.r = 1;
		color.g = 1;
		color.b = coords.y; // find gradient of an image black and white
	}
	*/


	/*float4 color = tex2D(s0, coords);

	if(coords.y > param1)
	{
	  color = float4(0,0,0,0);  // view part of a sprite
	}*/
	


	/*float4 color = tex2D(s0, coords);
	float4 rainbow_color = tex2D(rainbow_sampler , coords);

	if(color.a)
	{
		return rainbow_color;      //maps a texture on top of another texture
	}
	*/
	// color = tex2D(s0,coords);

		float4 color = tex2D(s0,coords);
	if(coords.x >= 0.5)
	{
		color.xyz  = 1;
	}
	return color;
}

technique hit
{
	pass Pass1
	{
	
		PixelShader = compile ps_2_0 PixelShaderFunction();
	}
}