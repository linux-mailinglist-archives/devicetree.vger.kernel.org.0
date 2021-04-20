Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5E63660B4
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 22:13:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233934AbhDTUOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 16:14:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233933AbhDTUOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 16:14:15 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D02E7C06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 13:13:42 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id n2so60141592ejy.7
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 13:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QFrC520JQ1ojn/pWlk/4WZUz0DW4+7IiUxD2LOmPLSg=;
        b=aeOeaB4a79E6c81cvWS9JWwWuHFEIjmL0fj2RP4Ck0PrZp84JrHCYbXy7gfsDCkpdk
         RPkRX16Lc9vmHXDoRFiH1BBiUevx4qmK6voku3KP9I2d+OmcrWKdEBYGN1yBJ308Sslt
         2WXvJYsULcaJDbj3zLhwB3BhTciIkQW/SUZRBsEpcBr/gT1UFsxkfjQLYAJp4B7dgIqP
         HMgt/llA/0Tg1LCSHbcsv3GCYDK1JFULsxdTquK8u67sK2Q4dbomG2BZMmwBsPkpTO+k
         VCiP3x/FyCN84pAn4NiElzANt0k8S5QM+XzUXgff+nTUIOxH34Czs76K6rW/miAim+ho
         NW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QFrC520JQ1ojn/pWlk/4WZUz0DW4+7IiUxD2LOmPLSg=;
        b=ssRC8ZoF0dOp3VafLT3yaruohJKg55h7TcS40zTUKaYTR5bXSM864MD9DbOowsWllt
         Cv5kZZxFmyVrzt81s+SIT9qI4K0X8jrZXHqPy46pZ5NUku6T45Z4JvTAQRavkML5YxvU
         PMm1jjX23gD/SgIoOJEe5/tvHRbmIVviqbex5vSyJxzAQWK5vq1POhzz7JiaS8Bm436h
         zxwNodDeGwI96sJcR8t2CjzTP/xe4HpgRgECf44mGd02BAgQPQhpDI3P9vvWfFVi3vmY
         rCrTEno24yI5R1UzGIGJ0DpzlmmrFK0l3xCQWPRIcU62+MiLQyf6sCNRNx+FUZ5gNf0P
         WT9A==
X-Gm-Message-State: AOAM531hqVNH3h5xrktmI7XWZqjFA5yvmL1qA1iG3B/JaTDDF9kqBQZD
        tFY1onTuqzXBdUYQ9qTYqM8=
X-Google-Smtp-Source: ABdhPJy2TfLzBToNxVjZp4Cc6Q8vH3dqbmaGHiEG/NfHZDEZZ/t7N84PBX2d2+MilOhXCJCln2WAyA==
X-Received: by 2002:a17:906:2512:: with SMTP id i18mr29833762ejb.86.1618949621602;
        Tue, 20 Apr 2021 13:13:41 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id a24sm13615472ejr.58.2021.04.20.13.13.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 13:13:41 -0700 (PDT)
Subject: Re: [v7 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
To:     Chris Morgan <macroalpha82@gmail.com>, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-4-macroalpha82@gmail.com>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <c31c3417-0ded-3274-6879-bbd56f26a2aa@gmail.com>
Date:   Tue, 20 Apr 2021 22:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210420160747.22942-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/20/21 6:07 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the new rk817 codec driver to the Odroid Go Advance.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
> Changes in v7:
>  - Removed ifdef around register definitions for MFD.
>  - Replaced codec documentation with updates to MFD documentation.
>  - Reordered elements in example to comply with upstream rules.
>  - Added binding update back for Odroid Go Advance as requested.
>  - Submitting patches from gmail now.
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in seperate series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
>  1 file changed, 34 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> index 97fb93e1cc00..5356bcf6d99c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> @@ -161,6 +161,29 @@ blue_led: led-0 {
>  		};
>  	};
>  
> +	rk817-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";

> +		simple-audio-card,name = "rockchip,rk817-codec";

"simple-audio-card,name" is an exception to the Heiko's sort rules.
Move above all other "simple-audio-card" properties.

===

"rockchip,rk817-codec" is too long for the "aplay -l" command.
Maybe keep it in line with other boards

?? "Analog" ??


> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =
> +			"MICL", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Speaker", "SPKO";
> +		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;

Add empty line between nodes.

> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_2ch>;
> +		};

Add empty line between nodes.

> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +	};
> +
>  	vccsys: vccsys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v8_sys";
> @@ -265,11 +288,14 @@ rk817: pmic@20 {
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-names = "mclk";
> +		clocks = <&cru SCLK_I2S1_OUT>;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int>;
> +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
>  		wakeup-source;
>  		#clock-cells = <1>;
> -		clock-output-names = "rk808-clkout1", "xin32k";
> +		#sound-dai-cells = <0>;
>  
>  		vcc1-supply = <&vccsys>;
>  		vcc2-supply = <&vccsys>;
> @@ -428,6 +454,10 @@ regulator-state-mem {
>  				};
>  			};
>  		};
> +
> +		rk817_codec: codec {

> +			mic-in-differential;

This property name might have to change.

> +		};
>  	};
>  };
>  
> @@ -439,6 +469,8 @@ &i2c1 {
>  
>  /* I2S 1 Channel Used */
>  &i2s1_2ch {

> +	resets = <&cru SRST_I2S1>, <&cru SRST_I2S1_H>;
> +	reset-names = "reset-m", "reset-h";

Remove.
"resets" and "reset-names" have no support in mainline.
See rockchip-i2s.yaml

>  	status = "okay";
>  };
>  
> 

