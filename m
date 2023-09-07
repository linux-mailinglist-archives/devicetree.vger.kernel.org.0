Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADA5A7979D9
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 19:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240143AbjIGRXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 13:23:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243105AbjIGRXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 13:23:04 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06DA91A8
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 10:22:37 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50091b91a83so1990410e87.3
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 10:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694107285; x=1694712085; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wTsVaP+71NqmdPRHOGwX5IHf8E9ep68PnA55/HuDkMQ=;
        b=zlffCEyw45RzC32PE74Df5gii72NJ812fGNes0m6g546K2znR8+evWlntXChuo8n1c
         qA+E+PypBrriy1L8IjP2VBe9YTxl3AA/8fIR54GnEjCmhFSAFkh/CVYsPQJ7yZx5haJV
         ZIirYhdupGW91PzdKW8YoQ1PSboojCNx5RACxU250uF0zipfiJT8o2MAyoyJQqTfDK2Z
         WYJoIFpou9F9inSebrfxT5qH7mWfIXTyTjbKrZUsB5iYKG+mUbT7ZjvyCHfeHslRJGQU
         6OSCIGT6jAIQpT3E+7c9Ah3ijBb/QoyeCFmxTBjZr1+3A8wRg4jvzA7q49P03tCBl/I4
         AaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694107285; x=1694712085;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wTsVaP+71NqmdPRHOGwX5IHf8E9ep68PnA55/HuDkMQ=;
        b=UHw1pbuSIKkT9Z4T4Vsl4gI2QI/p9DDQOH0R+AHjk8HlyeBMjhviujQtQtUBCaSOQb
         lJbqgqM14NEX8z+AwOHN7rw4aFI5wlR/dIHhYD6KmMWGKbbDTrAvH/lAaZoepSbup62X
         cR/Is5CHiVFld+FD6bm34pw23Bc5G/B23Kj4CMec9xm07CyE3CbWvohZD0bGFfzWi86i
         56jp+BceROr6rgZFpmaB1O0UxkaP0WdH1vrHWKCDaOaNfAm81KzXuDoV8YY39irZ9qdg
         jWvWd+eEsKSQR3DsmzHmSgc/a9+/fSRJA7PS/F5W4E5Hcf9fuFrCMusyyIUgcTOo9UDS
         IjMg==
X-Gm-Message-State: AOJu0YzOKvarIInon8gob40Jdhzebobpb/xENb/Uw2Q0md8//abgb1Y9
        ft/JGMhYj2dl0UZZnRJIpOv1LASxgqcpL5FLsVZCrg==
X-Google-Smtp-Source: AGHT+IFif2c/BpnquDlibCJoxZKaSjA9cO8862DBRQf4TERPnA+7sSqJ0EMKb0emx0l0ms0HIc+meg==
X-Received: by 2002:a17:906:535d:b0:9a2:120a:5777 with SMTP id j29-20020a170906535d00b009a2120a5777mr3753951ejo.70.1694067014365;
        Wed, 06 Sep 2023 23:10:14 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id rp24-20020a170906d97800b009a5c98fd82asm9841726ejb.81.2023.09.06.23.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:10:13 -0700 (PDT)
Message-ID: <45cd927d-da55-3460-0a26-62b30c33a3ad@linaro.org>
Date:   Thu, 7 Sep 2023 08:10:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] drm: tiny: Add st7735s driver
Content-Language: en-US
To:     Stefan x Nilsson <stefan.x.nilsson@axis.com>,
        David Lechner <david@lechnology.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@axis.com
References: <20230906-st7735s-v1-0-add92677c190@axis.com>
 <20230906-st7735s-v1-2-add92677c190@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230906-st7735s-v1-2-add92677c190@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2023 18:22, Stefan x Nilsson wrote:
> Add a driver for Sitronix st7735s display controller, as well as a
> Winstar wf0096atyaa3dnn0 0.96" 80x160 TFT panel.
> 
> The driver code is very similar to st7735r, but with adaptations for
> the pipe_enable function. There is also optional support to specify
> a power regulator for the display.
> 
> Signed-off-by: Stefan x Nilsson <stefan.x.nilsson@axis.com>
> ---
>  MAINTAINERS                    |   1 +
>  drivers/gpu/drm/tiny/Kconfig   |  14 +++
>  drivers/gpu/drm/tiny/Makefile  |   1 +
>  drivers/gpu/drm/tiny/st7735s.c | 264 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 280 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c00b2b9086f2..f24295d691e5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6733,6 +6733,7 @@ M:	Stefan x Nilsson <stefan.x.nilsson@axis.com>
>  S:	Maintained
>  T:	git git://anongit.freedesktop.org/drm/drm-misc
>  F:	Documentation/devicetree/bindings/display/sitronix,st7735s.yaml
> +F:	drivers/gpu/drm/tiny/st7735s.c
>  
>  DRM DRIVER FOR SOLOMON SSD130X OLED DISPLAYS
>  M:	Javier Martinez Canillas <javierm@redhat.com>
> diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
> index f6889f649bc1..2917f5412ddd 100644
> --- a/drivers/gpu/drm/tiny/Kconfig
> +++ b/drivers/gpu/drm/tiny/Kconfig
> @@ -212,3 +212,17 @@ config TINYDRM_ST7735R
>  	  * Okaya RH128128T 1.44" 128x128 TFT
>  
>  	  If M is selected the module will be called st7735r.
> +
> +config TINYDRM_ST7735S
> +	tristate "DRM support for Sitronix ST7735S display panels"
> +	depends on DRM && SPI
> +	select DRM_KMS_HELPER
> +	select DRM_GEM_DMA_HELPER
> +	select DRM_MIPI_DBI
> +	select BACKLIGHT_CLASS_DEVICE
> +	help
> +	  DRM driver for Sitronix ST7735S with one of the following
> +	  LCDs:
> +	  * Winstar WF0096ATYAA3DNN0 0.96" 80x160 Color TFT
> +
> +	  If M is selected the module will be called st7735s.
> diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
> index 76dde89a044b..2e805c5b6f16 100644
> --- a/drivers/gpu/drm/tiny/Makefile
> +++ b/drivers/gpu/drm/tiny/Makefile
> @@ -16,3 +16,4 @@ obj-$(CONFIG_TINYDRM_MI0283QT)		+= mi0283qt.o
>  obj-$(CONFIG_TINYDRM_REPAPER)		+= repaper.o
>  obj-$(CONFIG_TINYDRM_ST7586)		+= st7586.o
>  obj-$(CONFIG_TINYDRM_ST7735R)		+= st7735r.o
> +obj-$(CONFIG_TINYDRM_ST7735S)		+= st7735s.o
> diff --git a/drivers/gpu/drm/tiny/st7735s.c b/drivers/gpu/drm/tiny/st7735s.c
> new file mode 100644
> index 000000000000..42290f4128db
> --- /dev/null
> +++ b/drivers/gpu/drm/tiny/st7735s.c
> @@ -0,0 +1,264 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * DRM driver for display panels connected to a Sitronix ST7735S
> + * display controller in SPI mode.
> + *
> + * Copyright (C) 2023 Axis Communications AB
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/dma-buf.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/spi/spi.h>
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_fbdev_generic.h>
> +#include <drm/drm_gem_atomic_helper.h>
> +#include <drm/drm_gem_dma_helper.h>
> +#include <drm/drm_managed.h>
> +#include <drm/drm_mipi_dbi.h>
> +
> +#define ST7735S_FRMCTR1		0xb1
> +#define ST7735S_FRMCTR2		0xb2
> +#define ST7735S_FRMCTR3		0xb3
> +#define ST7735S_INVCTR		0xb4
> +#define ST7735S_PWCTR1		0xc0
> +#define ST7735S_PWCTR2		0xc1
> +#define ST7735S_PWCTR3		0xc2
> +#define ST7735S_PWCTR4		0xc3
> +#define ST7735S_PWCTR5		0xc4
> +#define ST7735S_VMCTR1		0xc5
> +#define ST7735S_GAMCTRP1	0xe0
> +#define ST7735S_GAMCTRN1	0xe1
> +
> +#define ST7735S_MY	BIT(7)
> +#define ST7735S_MX	BIT(6)
> +#define ST7735S_MV	BIT(5)
> +#define ST7735S_RGB	BIT(3)

So you just duplicated st7735r. No need for new driver. Integrate your
work. Probably also no need for new bindings file (although this I did
not check)...

Best regards,
Krzysztof

