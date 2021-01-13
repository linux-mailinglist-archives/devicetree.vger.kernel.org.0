Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 594342F4353
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 05:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbhAMEss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 23:48:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbhAMEss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 23:48:48 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1438EC061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:48:08 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id my11so1814734pjb.1
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gVA6+HCMYxNyUjPfnpF2KEVF6IiqbxaKVdh70dU028I=;
        b=M4GXJNJfnTAOjVGn/7MbCKOJxy+BalSihHk7be4OShDH8j/UgvjxsqBP/FQSKyKPq9
         al4vvGfMPjeT+ufPxvFpOyqlebyFuHkLtbjZL+m2rJWct1XBP8/16D586XJb5T4u4FaI
         ARJY+8SMZf5esIZxK2PAmf8aM4AP3r2/yOb2Id7fajyju8DxD5agz8Rlv+/64KTHc+MM
         DbLfByeybowacW2OgthY6F9f/dL5L8P2v932m3+kd4Q509G4Z7OUuzL6Cy/J7Vg9NuJR
         avDnaii1954qPeeWEF/Y+3pU6iyBY+lsNc8Ykrn4U4SXUde9XH2w8sp2uOsbqDfln5YM
         QArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gVA6+HCMYxNyUjPfnpF2KEVF6IiqbxaKVdh70dU028I=;
        b=f3tNWotkMIH+iFQOWnH/RVqg2efBDVyVzBLXMP8hoJNl8arszH4OA1RV8Ai2XYoyKS
         tSQO7KFDfGanouEbrG9S1GCMIcPDica1mab+l84HXnGWfzcVZ1NQkJ8ZoRTOfliiaraH
         HAgMcPTJkxiVNFKj+cbzKCTi1E448g8DfW/EiO3S0h2YruDGeNl6VQzSt5lYxtdEPIPl
         U3AikSaFN+IzNMffQvZgXtFt/g9qnAzOTMAo7EN/GhSIcc0FujpaElZozU3PQ2Yc8vhz
         gXdTRMJUnBRrNHX7RHBKeUP0MzittT6/Sy8WNC/6PDTv5HgpkZgi14haiySr9HUh9hG8
         whTw==
X-Gm-Message-State: AOAM5304FTrjFSoIC4Cu2FQHTynnujm/smDPVYxx/5aTMNgSGlpfBCKW
        oqNhht1hjTR66CEVJKFMp8lwNOdan4Y=
X-Google-Smtp-Source: ABdhPJw5hIyAI9V9NG01k8sfjbEP6leT+Gu9st77FaIBWuWVYh6rfNzHRM4w9OFyFd3XTkxeCUgT1w==
X-Received: by 2002:a17:90a:6809:: with SMTP id p9mr253785pjj.112.1610513287595;
        Tue, 12 Jan 2021 20:48:07 -0800 (PST)
Received: from [10.230.29.29] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id w63sm800872pfc.20.2021.01.12.20.48.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 20:48:06 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: describe internal switch
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210112131727.19020-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <527f5414-6673-094f-84c3-2567383c63a9@gmail.com>
Date:   Tue, 12 Jan 2021 20:48:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210112131727.19020-1-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/12/2021 5:17 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 has internal switch with 5 GPHYs. Ports 0 - 3 are always
> connected to the internal PHYs. Remaining ports depend on device setup.
> 
> Asus GT-AC5300 has an extra switch with its PHYs accessible using the
> internal MDIO.
> 
> CPU port and Ethernet interface remain to be documented.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bcm4908/bcm4908-asus-gt-ac5300.dts        | 51 +++++++++++
>  .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 85 ++++++++++++++++++-
>  2 files changed, 135 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
> index 13c6b86eef21..51305e96fbd6 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
> @@ -44,6 +44,57 @@ brightness {
>  	};
>  };
>  
> +&ports {
> +	port@0 {
> +		label = "lan2";
> +	};
> +
> +	port@1 {
> +		label = "lan1";
> +	};
> +
> +	port@2 {
> +		label = "lan6";
> +	};
> +
> +	port@3 {
> +		label = "lan5";
> +	};
> +
> +	/* External BCM53134S switch */
> +	port@7 {
> +		label = "sw";
> +		reg = <7>;
> +
> +		fixed-link {
> +			speed = <1000>;
> +			full-duplex;
> +		};
> +	};
> +};
> +
> +&mdio {
> +	/* lan8 */
> +	phy@0 {
> +		reg = <0>;
> +	};
> +
> +	/* lan7 */
> +	phy@1 {
> +		reg = <1>;
> +	};
> +
> +	/* lan4 */
> +	phy@2 {
> +		reg = <2>;
> +	};
> +
> +	/* lan3 */
> +	phy@3 {
> +		reg = <3>;
> +	};
> +};
> +
>  &nandcs {
>  	nand-ecc-strength = <4>;
>  	nand-ecc-step-size = <512>;
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> index b5b772a9a51b..0b44f32fdef1 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> @@ -108,7 +108,7 @@ soc {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		ranges = <0x00 0x00 0x80000000 0x10000>;
> +		ranges = <0x00 0x00 0x80000000 0xd0000>;
>  
>  		usb@c300 {
>  			compatible = "generic-ehci";
> @@ -130,6 +130,89 @@ usb@d000 {
>  			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  		};
> +
> +		switch@80000 {
> +			compatible = "simple-mfd";

Should not this be simple-bus instead? That is what I used in the 7445
and 7278 Device Trees provided by the bootloader, and also what was in
the sf2 example binding.

> +			#size-cells = <1>;
> +			#address-cells = <1>;
> +			ranges = <0 0x80000 0x50000>;
> +
> +			switch@0 {
> +				compatible = "brcm,bcm4908-switch";
> +				reg = <0x0 0x40000>,
> +				      <0x40000 0x110>,
> +				      <0x40340 0x30>,
> +				      <0x40380 0x30>,
> +				      <0x40600 0x34>,
> +				      <0x40800 0x208>;
> +				reg-names = "core", "reg", "intrl2_0",
> +					    "intrl2_1", "fcb", "acb";
> +				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
> +				brcm,num-gphy = <5>;
> +				brcm,num-rgmii-ports = <2>;
> +
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				ports: ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						phy-mode = "internal";
> +						phy-handle = <&phy8>;
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						phy-mode = "internal";
> +						phy-handle = <&phy9>;
> +					};
> +
> +					port@2 {
> +						reg = <2>;
> +						phy-mode = "internal";
> +						phy-handle = <&phy10>;
> +					};
> +
> +					port@3 {
> +						reg = <3>;
> +						phy-mode = "internal";
> +						phy-handle = <&phy11>;
> +					};
> +				};
> +			};
> +
> +			mdio: mdio@405c0 {
> +				compatible = "brcm,unimac-mdio";
> +				reg = <0x405c0 0x8>;
> +				reg-names = "mdio";
> +				#size-cells = <1>;
> +				#address-cells = <0>;
> +
> +				phy8: phy@8 {
> +					reg = <8>;
> +				};
> +
> +				phy9: phy@9 {
> +					reg = <9>;
> +				};
> +
> +				phy10: phy@a {
> +					reg = <10>;
> +				};
> +
> +				phy11: phy@b {
> +					reg = <11>;
> +				};
> +
> +				phy12: phy@c {
> +					reg = <12>;
> +				};
> +			};
> +		};
>  	};
>  
>  	bus@ff800000 {
> 

-- 
Florian
