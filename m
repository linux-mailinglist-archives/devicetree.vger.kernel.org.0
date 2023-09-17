Return-Path: <devicetree+bounces-837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BC77A34F6
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 11:47:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F8541C208CB
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9FC82103;
	Sun, 17 Sep 2023 09:47:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A821C3D
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 09:47:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDFA4C433C7;
	Sun, 17 Sep 2023 09:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694944030;
	bh=Hs/pfO3MtWotH2urHQD9K/7HmqsK4SlxRxtd6Dd4BhQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=njcd4vaMzEQPDqKqfqKbP7oIjIEvPp/kLNgxYJploC/NMJSN/BeBNJ4B4J5UQAy2o
	 iHT2lgk2XU8SzUikFMYTmZKnGNzdt1ZgLQ/tH2F1EaNlmlb8PDOJ2v4312Nl0rCFLh
	 6gyj5aoXo4Z3uk8uXahwc8nLjTF5Af3KmHR0NuOpF2hGh5sABGGQvfHPspiJqSF84D
	 5tSjebr0bFlGMOutxpiOiXSllbr/Vv9mTennQbP7A0khyiFKmO9bI6m3M1jNOQUUCm
	 VoXPGb0/ea5WClMJkO4FVDyfjNllrnKhcZJRZ5bRiAbLJJUwoAi+ioB8MoTaECxt1g
	 IXvHvVIShMaIA==
Date: Sun, 17 Sep 2023 10:47:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Mehdi Djait <mehdi.djait.k@gmail.com>
Cc: mazziesaccount@gmail.com, krzysztof.kozlowski+dt@linaro.org,
 andriy.shevchenko@linux.intel.com, robh+dt@kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v9 0/7] iio: accel: Add support for Kionix/ROHM
 KX132-1211 accelerometer
Message-ID: <20230917104702.53b1cafe@jic23-huawei>
In-Reply-To: <cover.1694867379.git.mehdi.djait.k@gmail.com>
References: <cover.1694867379.git.mehdi.djait.k@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 16 Sep 2023 14:38:46 +0200
Mehdi Djait <mehdi.djait.k@gmail.com> wrote:

> Hello everyone,
> 
> Version 9 for adding support for the kx132-1211 accelerometer
> 
> KX132-1211 accelerometer is a sensor which:
> 	- supports G-ranges of (+/-) 2, 4, 8, and 16G
> 	- can be connected to I2C or SPI
> 	- has internal HW FIFO buffer
> 	- supports various ODRs (output data rates)
> 
> The KX132-1211 accelerometer is very similar to the KX022A. 
> One key difference is number of bits to report the number of data bytes that 
> have been stored in the buffer: 8 bits for KX022A vs 10 bits for
> KX132-1211.

Series applied with some minor white space tweaks as called out for individual
patches.

Applied to the togreg branch of iio.git and initially pushed out as testing for
the autobuilders to poke at it and see what we've missed.

Thanks,

Jonathan

> 
> Changes in v9:
> - used i2c_get_match_data
> - changed the name and description of the function to get available data
>   in HW fifo buffer
> - changed the description in the Kconfig file
> 
> Changes in v8:
> - replaced min_t by min and kmalloc by kmalloc_array as suggested by Andy
> 
> Changes in v7:
> - added a min_t in kx132_get_fifo_bytes to ensure that we don't that the
>   fifo_bytes is never bigger than the 
>   fifo_length * KX022A_FIFO_SAMPLES_SIZE_BYTES - no matter what we read from I2C
>   as suggested by Matti
> 
> Changes in v6:
> - check for availability of chip_info for the SPI case
> - changed the order of elements in the kx022a_data struct to save memory
> 
> Changes in v5:
> - moved the "kfree" call to match the reverse of what happens in 
>   kx022a_fifo_enable() as suggested by Matti and Jonathan
> - used min_t, checked for availability of chip_info and moved the
>   position of u16 buf_smp_lvl_mask as suggested by Andy
> - introduced buf_smp_lvl_mask in Patch 7 as suggested by Jonathan
> 
> Changes in v4:
> - moved the allocation of the fifo_buffer to kx022a_fifo_enable and
>   kx022a_fifo_disable
> - some fixes to the regmap ranges of kx132-1211 
> 
> Changes in v3:
> - added two new patches by separating the addition of the 
>   i2c_device_id table and the removal of blank lines from other
>   unrelated changes
> - fixes a warning detected by the kernel test robot
> - made all the changes related the chip_info in one patch
> 
> Changes in v2:
> - added a new patch for warning when the device_id match fails in the
>   probe function
> - added a new patch for the function that retrieves the number of bytes
>   in the buffer
> - added a change to the Kconfig file in the patch adding the support
>   for the kx132-1211
> - various fixes and modifications listed under each patch
> 
> Mehdi Djait (7):
>   dt-bindings: iio: Add KX132-1211 accelerometer
>   iio: accel: kionix-kx022a: Remove blank lines
>   iio: accel: kionix-kx022a: Warn on failed matches and assume
>     compatibility
>   iio: accel: kionix-kx022a: Add an i2c_device_id table
>   iio: accel: kionix-kx022a: Refactor driver and add chip_info structure
>   iio: accel: kionix-kx022a: Add a function to retrieve number of bytes
>     in buffer
>   iio: accel: Add support for Kionix/ROHM KX132-1211 accelerometer
> 
>  .../bindings/iio/accel/kionix,kx022a.yaml     |  12 +-
>  drivers/iio/accel/Kconfig                     |  10 +-
>  drivers/iio/accel/kionix-kx022a-i2c.c         |  20 +-
>  drivers/iio/accel/kionix-kx022a-spi.c         |  15 +-
>  drivers/iio/accel/kionix-kx022a.c             | 315 ++++++++++++++----
>  drivers/iio/accel/kionix-kx022a.h             | 112 ++++++-
>  6 files changed, 409 insertions(+), 75 deletions(-)
> 


