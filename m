Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FFCF366079
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 21:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233724AbhDTT5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 15:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233541AbhDTT5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 15:57:11 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0ED7C06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 12:56:39 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id r9so60092320ejj.3
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 12:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wXFtoKa4A9wR85HULtd8naWK+51HB2/UPn0+gbcQvGw=;
        b=N8jJfeG9gsgBdzDrllZ5Dl95V3ZFa2C9N/QvPK681qcXEGBP1a4xK/V5JOdL4uSPR2
         bW5YI0Vy2P9Ama1vf/D1VidtKy+xIVVIIY81EjyYj+ZqHdlWn0j8iO3jtIv9FvsKc57I
         KQThbz8nnfT90frF1+vS3kdJZOl4l6xasCVlZkzWsVo1JpO+Imy+ElAWPjwe9qn1BwNt
         4DWm5wWmel8UH4LhuUgJrcq1pzwSKO0J5mb8+ejyWNpy2oQBdw4dn3xJKpetLDrfCnuL
         meibvdXx5W20MSCSDYVveVdyeFAfrbOV2QjaG7XZdPVgM4jxGC71NIFcuFrsQX5LpMmf
         A4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wXFtoKa4A9wR85HULtd8naWK+51HB2/UPn0+gbcQvGw=;
        b=nudcFNCXE3RjCbnC/4yM8v5qaS9dr6L5X+dmtEnsBdsAJz1WHzEUJFcBSfayQdcYR9
         MEik/O+WCaphpnHv7f9vDFw1hqOPKawrDafnxXMLv7UT4a9O1JrASxf7LzTu7Vdw44O4
         /qFz5yr15tgQasrKmz68M6BEJiF6RPvDKh7Qgt8qcLZcNpl5qK8N0RugHhGUzRmejiyv
         C7aSVgW4f4hFF5n9LGj3xxyDNF7M5B9HPvm4xnT5iQ9JrXWyMa+7C7GLz4Zgg1A1oVe+
         Qzh/Ux0t0iCzCbq6B3dnH2cO78jVfQlAOXBm8hlorWJ5UMF2q+H4d6eWLHBEKC/cpxpG
         BS4w==
X-Gm-Message-State: AOAM531pL0RfP8N41oNFTQiBG8WSkbbYnA+J/3d4VodRc0hCIcGk2qki
        1Pw91N4/mu8m6TI9IXfLbGU=
X-Google-Smtp-Source: ABdhPJwM6M2UQx8s6wyd3V9paZeYW0+zTujJHqwLwvHTq2kOVCOCv7b7IRWfAvMRi+r7tEU1JRN1fA==
X-Received: by 2002:a17:906:d154:: with SMTP id br20mr28836830ejb.28.1618948598722;
        Tue, 20 Apr 2021 12:56:38 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id o6sm84419edw.24.2021.04.20.12.56.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 12:56:38 -0700 (PDT)
Subject: Re: [v7 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
To:     Chris Morgan <macroalpha82@gmail.com>, alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-3-macroalpha82@gmail.com>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <375b3145-70cc-9351-76f5-b9a159dc244f@gmail.com>
Date:   Tue, 20 Apr 2021 21:56:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210420160747.22942-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

Some comments. Have a look if they are useful.

On 4/20/21 6:07 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 codec.
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
>  .../devicetree/bindings/mfd/rk808.txt         | 181 ++++++++++++++++++
>  1 file changed, 181 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
> index 04df07f6f793..31eaabd2e179 100644
> --- a/Documentation/devicetree/bindings/mfd/rk808.txt
> +++ b/Documentation/devicetree/bindings/mfd/rk808.txt
> @@ -63,6 +63,11 @@ Optional RK809 properties:
>  - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
>  
>  Optional RK817 properties:
> +- clocks:	The input clock for the audio codec
> +- clock-names:	The clock name for the codec clock. Should be "mclk".

#sound-dai-cells:

Needed for the interpretation of sound dais.
Should be 0.

Add empty line

> +- codec:	The child node for the codec to hold additional properties.

This is a nodename and not a property. Add below "vcc9-supply".

> +- mic-in-differential: Telling if the microphone uses differential mode. Should
> +		       be under the codec child node.

This goes in a subnode. Maybe add indent a bit?
"mic-in-differential" is a property specific for Rockchip.

Ask rob+dt for exact name.
Maybe this has to change to "rockchip,mic-in-differential"
Update code as well!

Add new added property names explicit in your commit message, so rob+dt
can review more easy.


>  - vcc8-supply:  The input supply for BOOST
>  - vcc9-supply:  The input supply for OTG_SWITCH
>  
> @@ -275,3 +280,179 @@ Example:
>  			};
>  		};
>  	};

Maybe add separator/title?

> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;

> +		interrupt-parent = <&gpio0>;

Missing in properties.

> +		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "xin32k";
> +		clock-names = "mclk";
> +		clocks = <&cru SCLK_I2S1_OUT>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;

> +		wakeup-source;

Missing in properties.
Is this common for all rkXXX?

> +		#clock-cells = <1>;

> +		#sound-dai-cells = <0>;

Missing in properties.

> +
> +		vcc1-supply = <&vccsys>;
> +		vcc2-supply = <&vccsys>;
> +		vcc3-supply = <&vccsys>;
> +		vcc4-supply = <&vccsys>;
> +		vcc5-supply = <&vccsys>;
> +		vcc6-supply = <&vccsys>;
> +		vcc7-supply = <&vccsys>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-name = "vdd_logic";
> +				regulator-min-microvolt = <950000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vdd_arm: DCDC_REG2 {
> +				regulator-name = "vdd_arm";
> +				regulator-min-microvolt = <950000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <950000>;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: DCDC_REG4 {
> +				regulator-name = "vcc_3v3";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_1v8: LDO_REG2 {
> +				regulator-name = "vcc_1v8";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd_1v0: LDO_REG3 {
> +				regulator-name = "vdd_1v0";
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1000000>;
> +				};
> +			};
> +
> +			vcc3v3_pmu: LDO_REG4 {
> +				regulator-name = "vcc3v3_pmu";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-name = "vccio_sd";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_sd: LDO_REG6 {
> +				regulator-name = "vcc_sd";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_bl: LDO_REG7 {
> +				regulator-name = "vcc_bl";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcc_lcd: LDO_REG8 {
> +				regulator-name = "vcc_lcd";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <2800000>;
> +				};
> +			};
> +
> +			vcc_cam: LDO_REG9 {
> +				regulator-name = "vcc_cam";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +		};

Add empty line, like the rest.

> +		rk817_codec: codec {

> +			mic-in-differential;

See comment above.
rockchip,mic-in-differential ??

> +		};
> +	};
> 

