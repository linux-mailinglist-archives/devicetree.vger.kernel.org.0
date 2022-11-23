Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 116BF6351C5
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 09:01:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234936AbiKWIBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 03:01:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbiKWIA6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 03:00:58 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2FB8A44A
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:00:57 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id b4so515744pfb.9
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MbrrOYxtC09rgwMwO+Cbut5UgPOnDEL5L8z0SmkUTx0=;
        b=H6QGDEr5id4FYQg10XbPv+j8hNAvGnohGMD95/H4aWJzbjrqTfjWjKc+mig0yFAYNm
         hWAGgkWMcx1+Y3dQjNoe/DQ9UUfE8HLrjszCXvg6VIffTMb4bH/reZXzAC9iEZHiABfQ
         rZWkPvZMYjeDJYQESJqfTD2qHNl0bUH+eaiVicF20sGvxhrXJwW65AMStxLBJ0Vf9jlK
         nt4oOHK7jPO5p1rqfBGg9fHRRXfCwL9aSuarA9SagPMWkAawP7aPTy2tGifoLj+xznht
         cR/MHq7rcCKTENZU9k2OI6Jo4bttnYaO96VtmYB0Zu6GOk+VwKTp2LP/8L5nN5DBdac4
         FR+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MbrrOYxtC09rgwMwO+Cbut5UgPOnDEL5L8z0SmkUTx0=;
        b=uot4FpuSEwT5wDx4sZOdAUeufbjw7SD5hdymyU8ldKulbmTrd51blMHtDpOJwKU2zn
         Y+S2BBU71cijXrRPfgwfeJZnZmeR68qG5jDfVhHZtQdLC0X27qOyN5LlI/9oDSP4aqQd
         F2aOjh8wdkQKSEBQeBi92uuIVZ4xHMIk4Hw6iSQ8wTdRSaF0J0Ai/TUdylaa4rVoMYbD
         6SjpSRDaf1mlav/ZGPynmNWLZSgXS977Q552mV5YLl7UVjs9lkt+LgfxQ+70fB11RDgR
         A0c+oVwlD7dixRiLVV92gGV4uICXP9jmI5OXD7VkvFUgPEi7b6OcK8Sai2ieSJnBgO8D
         X2vw==
X-Gm-Message-State: ANoB5pm8dN4gSG//KeLQLf9bl/A0b2svIBq6R9COHjGeDZXeet1oJXiN
        OsmsOOgvKZ9PZOeaV4sHO1Do
X-Google-Smtp-Source: AA0mqf7XKP/aKQ2CDMevSm6iFDAjqsMZSrLbBwGBHmTxbloPCER3WSL+LUrYxphp5z9bn+3AcwR5HA==
X-Received: by 2002:a63:ff63:0:b0:477:8d4f:3dda with SMTP id s35-20020a63ff63000000b004778d4f3ddamr8903672pgk.552.1669190457108;
        Wed, 23 Nov 2022 00:00:57 -0800 (PST)
Received: from thinkpad ([117.202.191.0])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902f14900b0017f7628cbddsm13376943plb.30.2022.11.23.00.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 00:00:55 -0800 (PST)
Date:   Wed, 23 Nov 2022 13:30:50 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] arm64: dts: imx8mq-thor96: Remove invalid
 linux,default-trigger
Message-ID: <20221123080050.GB7743@thinkpad>
References: <20221121145114.2362260-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221121145114.2362260-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 11:51:12AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> "none", "phy0tx" and "hci0-power" are not valid values for the
> linux,default-trigger property and trigger the following warnings when
> running:
> 
> make dtbs_check DT_SCHEMA_FILES=leds-gpio.yaml
> 
> arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb: leds: user-led4:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
> 	'none' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> 	'none' does not match '^mmc[0-9]+$'
> 	'none' does not match '^cpu[0-9]*$'
> 	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
> arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb: leds: wlan-active-led:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
> 	'phy0tx' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> 	'phy0tx' does not match '^mmc[0-9]+$'
> 	'phy0tx' does not match '^cpu[0-9]*$'
> 	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
> arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb: leds: bt-active-led:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
> 	'hci0-power' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> 	'hci0-power' does not match '^mmc[0-9]+$'
> 	'hci0-power' does not match '^cpu[0-9]*$'
> 	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml
> 
> Remove the invalid linux,default-trigger entries.
> 

Just because the binding is complaining doesn't mean that these triggers are
invalid. In this case, the binding needs to be updated as these triggers are
supported by the LED subsystem.

I tried to do that but somehow didn't follow up:
https://lore.kernel.org/lkml/20201210082449.30586-1-manivannan.sadhasivam@linaro.org/

Let me revive that patch.

Thanks,
Mani

> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Fixes: 68ca364d4812 ("arm64: dts: freescale: Add devicetree support for Thor96 board")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-thor96.dts | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> index 5d5aa6537225..170e00c2447f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> @@ -35,7 +35,6 @@ user-led1 {
>  		user-led2 {
>  			label = "green:user2";
>  			gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "none";
>  		};
>  
>  		user-led3 {
> @@ -49,20 +48,17 @@ user-led4 {
>  			label = "green:user4";
>  			gpios = <&gpio4 29 GPIO_ACTIVE_HIGH>;
>  			panic-indicator;
> -			linux,default-trigger = "none";
>  		};
>  
>  		wlan-active-led {
>  			label = "yellow:wlan";
>  			gpios = <&gpio4 1 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "phy0tx";
>  			default-state = "off";
>  		};
>  
>  		bt-active-led {
>  			label = "blue:bt";
>  			gpios = <&gpio4 0 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "hci0-power";
>  			default-state = "off";
>  		};
>  	};
> -- 
> 2.25.1
> 

-- 
மணிவண்ணன் சதாசிவம்
