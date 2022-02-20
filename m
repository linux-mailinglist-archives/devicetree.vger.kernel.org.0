Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 723744BCFB8
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 17:14:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233158AbiBTQAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 11:00:04 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236433AbiBTQAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 11:00:03 -0500
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4EE9443D3
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 07:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=XJbiEOOycE926THhQfrdo+uPdzPFqrvHznVgiCFC4Fs=; b=q+nQTH7R2G87n4tqDYShVErIMF
        BfTygwTuk8fEQwzd6P0ha7Tz/J+j1EA+QSLHPvTdvsIDNQtIeJcf+bybi7B3k0WJo3xrfO2fMHfDN
        AGfH5hIO+MQlN6Apht3nFgTWZCRvRd79mJWZu+lcTKe32ndYPiIlpD5hOsX0t9qS+1R0CgjjD94kC
        +VgPVuLOuThfbOM3qfGvwHQewWclqiPHva+tFaT+ct3ABUuO+xZ4gP9BVgJnLUIP4/HVIjVZ1yW/J
        y5LRYckJW2Rywxc29Mj1pf/N7kVCrlAdlZ0ZpakaGnicvZWI4DqHoyIYKEsH8sIZiibCQXwwy3lbF
        uDvliVAQ==;
Received: from [2a01:799:95e:a400:cca0:57ac:c55d:a485] (port=58751)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nLocb-0002XW-Fm; Sun, 20 Feb 2022 16:59:37 +0100
Message-ID: <08d29bb6-8b44-8355-b9dc-a96b2e20cc20@tronnes.org>
Date:   Sun, 20 Feb 2022 16:59:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH v4 3/3] drm/tiny: Add MIPI DBI compatible SPI driver
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     robh+dt@kernel.org, thierry.reding@gmail.com, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-4-noralf@tronnes.org> <YhFqxklH9hsLrI1X@ravnborg.org>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <YhFqxklH9hsLrI1X@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 19.02.2022 23.10, skrev Sam Ravnborg:
> Hi Noralf,
> On Fri, Feb 18, 2022 at 04:11:10PM +0100, Noralf Trønnes wrote:
>> Add a driver that will work with most MIPI DBI compatible SPI panels.
>> This avoids adding a driver for every new MIPI DBI compatible controller
>> that is to be used by Linux. The 'compatible' Device Tree property with
>> a '.bin' suffix will be used to load a firmware file that contains the
>> controller configuration.
> A solution where we have the command sequences as part of the DT-overlay
> is IMO a much better way to solve this:
> - The users needs to deal only with a single file, so there is less that
>   goes wrong
> - The user need not reading special instructions how to handle a .bin
>   file, if the overlay is present everything is fine
> - The file that contains the command sequences can be properly annotated
>   with comments
> - The people that creates the command sequences has no need for a special
>   script to create the file for a display - this is all readable ascii.
> - Using a DT-overlay the parsing of the DT-overlay can be done by
>   well-tested functions, no need to invent something new to parse the
>   file
> 
> 
> The idea with a common mipi DBI SPI driver is super, it is the detail
> with the .bin file that I am against.
> 

The fbtft drivers has an init= DT property that contains the command
sequence. Example for the MZ61581 display:

				init = <0x10000b0 00
					0x1000011
					0x20000ff
					0x10000b3 0x02 0x00 0x00 0x00
					0x10000c0 0x13 0x3b 0x00 0x02 0x00 0x01 0x00 0x43
					0x10000c1 0x08 0x16 0x08 0x08
					0x10000c4 0x11 0x07 0x03 0x03
					0x10000c6 0x00
					0x10000c8 0x03 0x03 0x13 0x5c 0x03 0x07 0x14 0x08 0x00 0x21 0x08
0x14 0x07 0x53 0x0c 0x13 0x03 0x03 0x21 0x00
					0x1000035 0x00
					0x1000036 0xa0
					0x100003a 0x55
					0x1000044 0x00 0x01
					0x10000d0 0x07 0x07 0x1d 0x03
					0x10000d1 0x03 0x30 0x10
					0x10000d2 0x03 0x14 0x04
					0x1000029
					0x100002c>;

Parsed here:
https://elixir.bootlin.com/linux/latest/C/ident/fbtft_init_display_from_property

Before fbdev was closed for new drivers I looked at fixing up fbtft for
proper inclusion and asked on the Device Tree mailinglist about the init
property and how to handle the controller configuration generically.
I was politely told that this should be done in the driver, so when I
made my first DRM driver I made a driver specifically for a panel
(mi0283qt.c).

Later I found another post that in clear words stated that setting
random registers from DT was not acceptable.

So I think Maxime has provided a clever way of dealing with this problem
to let us have a generic driver: The OS is in charge of how to configure
the controller and in this case does it using a firmware file.

> With the above said, a few comments to the current implementation below.
> As we know it from you - a very well-written driver.
> 
> 	Sam
> 
>> Acked-by: Maxime Ripard <maxime@cerno.tech>
>> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
>> ---

>> diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
>> index 712e0004e96e..d552e1618da7 100644
>> --- a/drivers/gpu/drm/tiny/Kconfig
>> +++ b/drivers/gpu/drm/tiny/Kconfig
>> @@ -51,6 +51,19 @@ config DRM_GM12U320
>>  	 This is a KMS driver for projectors which use the GM12U320 chipset
>>  	 for video transfer over USB2/3, such as the Acer C120 mini projector.
>>  
>> +config DRM_PANEL_MIPI_DBI
>> +	tristate "DRM support for MIPI DBI compatible panels"
>> +	depends on DRM && SPI
>> +	select DRM_KMS_HELPER
>> +	select DRM_KMS_CMA_HELPER
> This symbol is not present in my drm-misc-next tree (which is a few
> weeks old, so it may be newer).
> 

Turns out this was removed in 09717af7d13d.
This should be DRM_GEM_CMA_HELPER now.

>> +	select DRM_MIPI_DBI
>> +	select BACKLIGHT_CLASS_DEVICE
>> +	help
>> +	  Say Y here if you want to enable support for MIPI DBI compatible
>> +	  panels. The controller command setup can be provided using a
>> +	  firmware file.
> Consider adding a link to the wiki here - this may make it easier for
> the user to find it.
> 
>> +	  To compile this driver as a module, choose M here.
>> +
>>  config DRM_SIMPLEDRM
>>  	tristate "Simple framebuffer driver"
>>  	depends on DRM && MMU

>> diff --git a/drivers/gpu/drm/tiny/panel-mipi-dbi.c b/drivers/gpu/drm/tiny/panel-mipi-dbi.c
>> new file mode 100644
>> index 000000000000..9240fdec38d6
>> --- /dev/null
>> +++ b/drivers/gpu/drm/tiny/panel-mipi-dbi.c
>> @@ -0,0 +1,413 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * DRM driver for MIPI DBI compatible display panels
>> + *
>> + * Copyright 2022 Noralf Trønnes
>> + */
>> +
>> +#include <linux/backlight.h>
>> +#include <linux/delay.h>
>> +#include <linux/firmware.h>
>> +#include <linux/gpio/consumer.h>
>> +#include <linux/module.h>
>> +#include <linux/property.h>
>> +#include <linux/regulator/consumer.h>
>> +#include <linux/spi/spi.h>
>> +
>> +#include <drm/drm_atomic_helper.h>
>> +#include <drm/drm_drv.h>
>> +#include <drm/drm_fb_helper.h>
>> +#include <drm/drm_gem_atomic_helper.h>
>> +#include <drm/drm_gem_cma_helper.h>
>> +#include <drm/drm_managed.h>
>> +#include <drm/drm_mipi_dbi.h>
>> +#include <drm/drm_modeset_helper.h>
>> +
>> +#include <video/display_timing.h>
>> +#include <video/mipi_display.h>
>> +#include <video/of_display_timing.h>
>> +#include <video/videomode.h>
> videomode should not be used in new drivers, it is an fbdev artifact.
> But that said - we are still missing a direct display_timing =>
> display_mode - so maybe we need it here.
> 
> If it is needed Kconfig needs to be extended with:
> select VIDEOMODE_HELPERS
> 

Good catch!

>> +static int panel_mipi_dbi_spi_probe(struct spi_device *spi)
>> +{
>> +	struct device *dev = &spi->dev;
>> +	struct drm_display_mode mode;
>> +	struct mipi_dbi_dev *dbidev;
>> +	struct drm_device *drm;
>> +	struct mipi_dbi *dbi;
>> +	struct gpio_desc *dc;
>> +	int ret;
>> +
>> +	dbidev = devm_drm_dev_alloc(dev, &panel_mipi_dbi_driver, struct mipi_dbi_dev, drm);
>> +	if (IS_ERR(dbidev))
>> +		return PTR_ERR(dbidev);
>> +
>> +	dbi = &dbidev->dbi;
>> +	drm = &dbidev->drm;
>> +
>> +	ret = panel_mipi_dbi_get_mode(dbidev, &mode);
>> +	if (ret)
>> +		return ret;
>> +
>> +	dbidev->regulator = devm_regulator_get(dev, "power");
>> +	if (IS_ERR(dbidev->regulator))
>> +		return dev_err_probe(dev, PTR_ERR(dbidev->regulator),
>> +				     "Failed to get regulator 'power'\n");
>> +
>> +	dbidev->backlight = devm_of_find_backlight(dev);
>> +	if (IS_ERR(dbidev->backlight))
>> +		return dev_err_probe(dev, PTR_ERR(dbidev->backlight), "Failed to get backlight\n");
>> +
>> +	dbi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
>> +	if (IS_ERR(dbi->reset))
>> +		return dev_err_probe(dev, PTR_ERR(dbi->reset), "Failed to get GPIO 'reset'\n");
>> +
>> +	dc = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
>> +	if (IS_ERR(dc))
>> +		return dev_err_probe(dev, PTR_ERR(dc), "Failed to get GPIO 'dc'\n");
>> +
>> +	ret = mipi_dbi_spi_init(spi, dbi, dc);
>> +	if (ret)
>> +		return ret;
>> +
>> +	if (device_property_present(dev, "write-only"))
>> +		dbi->read_commands = NULL;
> read_commands are unused - so the write-only property is in practice
> ignored.
> 

>read_commands is set to a default in mipi_dbi_spi_init() and we clear
it when write-only.

Noralf.
