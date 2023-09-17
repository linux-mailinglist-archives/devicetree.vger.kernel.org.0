Return-Path: <devicetree+bounces-836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEA47A34F4
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 11:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14E561C208DE
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D13720FA;
	Sun, 17 Sep 2023 09:46:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773041FB3
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 09:46:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA461C433C7;
	Sun, 17 Sep 2023 09:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694943966;
	bh=PRQTZ74W76qbT/4zBV5XcHZim2Zv3vF4LRiK4mfC6hU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=km9vOKMZmfeau6aTEJOVYFQMTKkS4C4p5iSqN03HSsnpGHGpG2ur2Y0Uy85Yz5HQF
	 6u7IroTigKvEhenzzALBv9VCcE1XU3Zha3vByBlSbUDK5bJgYBT8gJFdoMCc2PFGue
	 /L3fthrl2leKPJvXqIpXv0HtS8lyRS6ZLOhCXGTobl3DKdlnhoX+GlxWE1CxF9O0ER
	 Vq8mFapLb/fQ9sF3rdBeCZUw7FQ6cei4X2CTkH5JFidEncy/hWjgTmBforG6mqlgLb
	 ywGPy/NW6WUELFKAnMoy3NiR9xs5ZFJbRD4pvE8ipsYmd3CN9xvR6AXlzf91LoWvCA
	 G17cXjI3aLJJQ==
Date: Sun, 17 Sep 2023 10:45:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Mehdi Djait <mehdi.djait.k@gmail.com>
Cc: mazziesaccount@gmail.com, krzysztof.kozlowski+dt@linaro.org,
 andriy.shevchenko@linux.intel.com, robh+dt@kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v9 6/7] iio: accel: kionix-kx022a: Add a function to
 retrieve number of bytes in buffer
Message-ID: <20230917104558.19179dbc@jic23-huawei>
In-Reply-To: <9c550fb28e34915d473e379f812c7753f7643bae.1694867379.git.mehdi.djait.k@gmail.com>
References: <cover.1694867379.git.mehdi.djait.k@gmail.com>
	<9c550fb28e34915d473e379f812c7753f7643bae.1694867379.git.mehdi.djait.k@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 16 Sep 2023 14:38:52 +0200
Mehdi Djait <mehdi.djait.k@gmail.com> wrote:

> Since Kionix accelerometers use various numbers of bits to report data, a
> device-specific function is required.
> Implement the function as a callback in the device-specific chip_info structure
> 
> Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>
> Signed-off-by: Mehdi Djait <mehdi.djait.k@gmail.com>


>  const struct kx022a_chip_info kx022a_chip_info = {
> -	.name		  = "kx022-accel",
> -	.regmap_config	  = &kx022a_regmap_config,
> -	.channels	  = kx022a_channels,
> -	.num_channels	  = ARRAY_SIZE(kx022a_channels),
> -	.fifo_length	  = KX022A_FIFO_LENGTH,
> -	.who		  = KX022A_REG_WHO,
> -	.id		  = KX022A_ID,
> -	.cntl		  = KX022A_REG_CNTL,
> -	.cntl2		  = KX022A_REG_CNTL2,
> -	.odcntl		  = KX022A_REG_ODCNTL,
> -	.buf_cntl1	  = KX022A_REG_BUF_CNTL1,
> -	.buf_cntl2	  = KX022A_REG_BUF_CNTL2,
> -	.buf_clear	  = KX022A_REG_BUF_CLEAR,
> -	.buf_status1	  = KX022A_REG_BUF_STATUS_1,
> -	.buf_read	  = KX022A_REG_BUF_READ,
> -	.inc1		  = KX022A_REG_INC1,
> -	.inc4		  = KX022A_REG_INC4,
> -	.inc5		  = KX022A_REG_INC5,
> -	.inc6		  = KX022A_REG_INC6,
> -	.xout_l		  = KX022A_REG_XOUT_L,
This is a very good illustration of why aligning value assignments is not
(in my opinion) a good idea. I'll tweak the earlier patch whilst
applying to add the extra indent.

However, in future look through your complete series for cases where
code added in an earlier patch is simply reformatted in a later one.

Same applies to the structure kdoc below.


> +	.name				= "kx022-accel",
> +	.regmap_config			= &kx022a_regmap_config,
> +	.channels			= kx022a_channels,
> +	.num_channels			= ARRAY_SIZE(kx022a_channels),
> +	.fifo_length			= KX022A_FIFO_LENGTH,
> +	.who				= KX022A_REG_WHO,
> +	.id				= KX022A_ID,
> +	.cntl				= KX022A_REG_CNTL,
> +	.cntl2				= KX022A_REG_CNTL2,
> +	.odcntl				= KX022A_REG_ODCNTL,
> +	.buf_cntl1			= KX022A_REG_BUF_CNTL1,
> +	.buf_cntl2			= KX022A_REG_BUF_CNTL2,
> +	.buf_clear			= KX022A_REG_BUF_CLEAR,
> +	.buf_status1			= KX022A_REG_BUF_STATUS_1,
> +	.buf_read			= KX022A_REG_BUF_READ,
> +	.inc1				= KX022A_REG_INC1,
> +	.inc4				= KX022A_REG_INC4,
> +	.inc5				= KX022A_REG_INC5,
> +	.inc6				= KX022A_REG_INC6,
> +	.xout_l				= KX022A_REG_XOUT_L,
> +	.get_fifo_bytes_available	= kx022a_get_fifo_bytes_available,
>  };
>  EXPORT_SYMBOL_NS_GPL(kx022a_chip_info, IIO_KX022A);
>  
> diff --git a/drivers/iio/accel/kionix-kx022a.h b/drivers/iio/accel/kionix-kx022a.h
> index 0e5026019213..7ca48e6f2c49 100644
> --- a/drivers/iio/accel/kionix-kx022a.h
> +++ b/drivers/iio/accel/kionix-kx022a.h
> @@ -76,29 +76,34 @@
>  
>  struct device;
>  
> +struct kx022a_data;
> +
>  /**
>   * struct kx022a_chip_info - Kionix accelerometer chip specific information
>   *
> - * @name:		name of the device
> - * @regmap_config:	pointer to register map configuration
> - * @channels:		pointer to iio_chan_spec array
> - * @num_channels:	number of iio_chan_spec channels
> - * @fifo_length:	number of 16-bit samples in a full buffer
> - * @who:		WHO_AM_I register
> - * @id:			WHO_AM_I register value
> - * @cntl:		control register 1
> - * @cntl2:		control register 2
> - * @odcntl:		output data control register
> - * @buf_cntl1:		buffer control register 1
> - * @buf_cntl2:		buffer control register 2
> - * @buf_clear:		buffer clear register
> - * @buf_status1:	buffer status register 1
> - * @buf_read:		buffer read register
> - * @inc1:		interrupt control register 1
> - * @inc4:		interrupt control register 4
> - * @inc5:		interrupt control register 5
> - * @inc6:		interrupt control register 6
> - * @xout_l:		x-axis output least significant byte
> + * @name:			name of the device
> + * @regmap_config:		pointer to register map configuration
> + * @channels:			pointer to iio_chan_spec array
> + * @num_channels:		number of iio_chan_spec channels
> + * @fifo_length:		number of 16-bit samples in a full buffer
> + * @who:			WHO_AM_I register
> + * @id:				WHO_AM_I register value
> + * @cntl:			control register 1
> + * @cntl2:			control register 2
> + * @odcntl:			output data control register
> + * @buf_cntl1:			buffer control register 1
> + * @buf_cntl2:			buffer control register 2
> + * @buf_clear:			buffer clear register
> + * @buf_status1:		buffer status register 1
> + * @buf_read:			buffer read register
> + * @inc1:			interrupt control register 1
> + * @inc4:			interrupt control register 4
> + * @inc5:			interrupt control register 5
> + * @inc6:			interrupt control register 6
> + * @xout_l:			x-axis output least significant byte
> + * @get_fifo_bytes_available:	function pointer to get amount of acceleration
> + *				data bytes currently stored in the sensor's FIFO
> + *				buffer
>   */
>  struct kx022a_chip_info {
>  	const char *name;
> @@ -121,6 +126,7 @@ struct kx022a_chip_info {
>  	u8 inc5;
>  	u8 inc6;
>  	u8 xout_l;
> +	int (*get_fifo_bytes_available)(struct kx022a_data *);
>  };
>  
>  int kx022a_probe_internal(struct device *dev, const struct kx022a_chip_info *chip_info);


