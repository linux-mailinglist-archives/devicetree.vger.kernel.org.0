Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7658B72246F
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 13:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232184AbjFELTs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 07:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232128AbjFELTq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 07:19:46 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4769DCD
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 04:19:44 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so5839336e87.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 04:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685963982; x=1688555982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gmCHyHNSkjzU7AeM7yN45tWKNNye8v8VFhaj+USDU5o=;
        b=MBFSRoIKFCrvOMRVVFnJJb2K9ocu521ToRzTXzvI62o+0LPcXNAks0dU/IdUVrsMAV
         /fACbPvmw4QpwcJXavJqZS66vs1pYLlNuWcZBOs0K+dZwNNGgx0ya4BqcjoRYen1jI0X
         nVgKhD0sxC5eVDdvtmYDlCzbBfqFnr+NWhq+rol4yIE3Tna3JhCUr+qfp2iklswfmzA9
         d1fRrw2+xnNzbwf3wZE0QHkb4AMJHPFxbSc8jSirie/1lvTTrDQX65yA5VP14cdJ7sOu
         TBqcN6YZZcZh4B9OWyQp7AiuOY0zbYkGhuezIDG6VIckSmY6tjCbdcFQIQX/8fkJf+NM
         5rBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685963982; x=1688555982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gmCHyHNSkjzU7AeM7yN45tWKNNye8v8VFhaj+USDU5o=;
        b=AfWn2RqJmWVvDtHCU8WzxBifJYD7KGyyC0wicIkAEJndslzAX4jJEHndZUYWOSr/k5
         mUWJNAtGGjHv2z124xD6kSUUDe1CkiFlozSnV6qV0hWGfQPg7gPSlsm4ABvUbPuGw6hd
         xEuvK0sx+KuUdYzyt+V2G1zLSoixRqCW2J35BlQCf4ubH4nf8H3BSv61NZwXawIvtKzr
         ro7t9EX5oTg9IMffH0e/aXGoggNmyYi076o1NLV2z/xRmCLwCKizNlijbWq64AEOo3rr
         n3m+SVEmb7qPnPov3RP+IuzWmERImSCUbA43o+eTlMEwmL0bScYiwxghP+90UiOZajvi
         x/ug==
X-Gm-Message-State: AC+VfDwi79oLoROkpbE33gnY2k2aGMeFZpc3Aeeuypp1sDKsHZGJ9xZ7
        y5RcQKlaD4esz9BQjCoQQBFDaTQLwuA=
X-Google-Smtp-Source: ACHHUZ67DucgVxScjuPHm3wgYW3tC8Ib6c/jifYVPlycpRIzXAmoBPppCARqsiRitqote6GovkSkbQ==
X-Received: by 2002:ac2:599d:0:b0:4f3:8f3a:f98d with SMTP id w29-20020ac2599d000000b004f38f3af98dmr5312606lfn.45.1685963982153;
        Mon, 05 Jun 2023 04:19:42 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id c26-20020ac244ba000000b004f26f437ad8sm1095319lfm.53.2023.06.05.04.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 04:19:41 -0700 (PDT)
Message-ID: <7b63ceb0-5e27-8a12-fa25-8fdccad4f5aa@gmail.com>
Date:   Mon, 5 Jun 2023 13:19:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 1/3] ARM: MR26: MR32: remove bogus nand-ecc-algo
 property
Content-Language: en-US
To:     Christian Lamparter <chunkeey@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3.06.2023 16:16, Christian Lamparter wrote:
> | bcm53015-meraki-mr26.dtb: nand-controller@18028000:
> |   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
> | From schema: Documentation/[...]/nand-controller.yaml
> | bcm53016-meraki-mr32.dtb: nand-controller@18028000:
> |   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
> | From schema: Documentation/[...]/nand-controller.yaml
> 
> original ECC values for these old Merakis are sadly not
> provided by the vendor. It looks like Meraki just stuck
> with what Broadcom's SDK was doing... which left it up
> to their proprietary nand driver.
> 
> It's clear at least that they used the hardware's ecc
> engine, so update the device-tree file accordingly to
> specify the nand-controller as the ecc-engine.

I believe that initial state can be "setup" at hardware level. I believe
Broadcom's bootloader and their SDK driver just reads current ECC setup
(which goes down to the hardware level).

Years ago I proposed change for brcmnand to do the same (which was
apparently a bad idea):
[PATCH] mtd: brcmnand: set initial ECC params based on info from HW
https://lists.infradead.org/pipermail/linux-mtd/2016-February/065314.html

That said I think it still should be possible to determine what algo is
used and specify that in DT.


> this patch also removes the partition index numbers
> from the MR32's partition node-names and does some
> whitespace removal in order to fit the comment about
> the partition oddities into the 100 characters per
> limit.
> 
> Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
> Fixes: ec88a9c344d9 ("ARM: BCM5301X: Add DT for Meraki MR32")
> Reported-by: Rafał Miłecki <zajec5@gmail.com> (via mail)
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> 
> mr32
> ---
>   arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 68 +++++++++--------
>   arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 88 ++++++++++++----------
>   2 files changed, 86 insertions(+), 70 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> index a2eee9a1e5a7..9ea4ffc1bb71 100644
> --- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> +++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> @@ -9,7 +9,6 @@
>   /dts-v1/;
>   
>   #include "bcm4708.dtsi"
> -#include "bcm5301x-nand-cs0-bch8.dtsi"
>   #include <dt-bindings/leds/common.h>
>   
>   / {
> @@ -73,41 +72,50 @@ &gmac3 {
>   	status = "disabled";
>   };
>   
> -&nandcs {
> -	nand-ecc-algo = "hw";
> +&nand_controller {
> +	nand@0 {
> +		compatible = "brcm,nandcs";
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
>   
> -	partitions {
> -		compatible = "fixed-partitions";
> -		#address-cells = <0x1>;
> -		#size-cells = <0x1>;
> +		nand-ecc-engine = <&nand_controller>;
> +		nand-ecc-strength = <8>;
> +		nand-ecc-step-size = <512>;

If we really can't determine ECC algo maybe we could still have sth like
bcm5301x-nand-cs0-FOO.dtsi
to match other ECC setup?

That way you probably also shouldn't need &nand_controller here.


>   
> -		partition@0 {
> -			label = "u-boot";
> -			reg = <0x0 0x200000>;
> -			read-only;
> -		};
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x1>;
>   
> -		partition@200000 {
> -			label = "u-boot-env";
> -			reg = <0x200000 0x200000>;
> -			/* empty */
> -		};
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x0 0x200000>;
> +				read-only;
> +			};
>   
> -		partition@400000 {
> -			label = "u-boot-backup";
> -			reg = <0x400000 0x200000>;
> -			/* empty */
> -		};
> +			partition@200000 {
> +				label = "u-boot-env";
> +				reg = <0x200000 0x200000>;
> +				/* empty */
> +			};
>   
> -		partition@600000 {
> -			label = "u-boot-env-backup";
> -			reg = <0x600000 0x200000>;
> -			/* empty */
> -		};
> +			partition@400000 {
> +				label = "u-boot-backup";
> +				reg = <0x400000 0x200000>;
> +				/* empty */
> +			};
>   
> -		partition@800000 {
> -			label = "ubi";
> -			reg = <0x800000 0x7780000>;
> +			partition@600000 {
> +				label = "u-boot-env-backup";
> +				reg = <0x600000 0x200000>;
> +				/* empty */
> +			};
> +
> +			partition@800000 {
> +				label = "ubi";
> +				reg = <0x800000 0x7780000>;
> +			};
>   		};
>   	};
>   };
> diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
> index b6a066f949ad..bca39b30ace8 100644
> --- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
> +++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
> @@ -9,7 +9,6 @@
>   /dts-v1/;
>   
>   #include "bcm4708.dtsi"
> -#include "bcm5301x-nand-cs0-bch8.dtsi"
>   #include <dt-bindings/leds/common.h>
>   
>   / {
> @@ -124,49 +123,58 @@ &pwm {
>   	pinctrl-0 = <&pinmux_pwm>;
>   };
>   
> -&nandcs {
> -	nand-ecc-algo = "hw";
> -
> -	partitions {
> -		/*
> -		 * The partition autodetection does not work for this device.
> -		 * It will only detect the "nvram" partition with an incorrect size.
> -		 *	[    1.721667] 1 bcm47xxpart partitions found on MTD device brcmnand.0
> -		 *	[    1.727962] Creating 1 MTD partitions on "brcmnand.0":
> -		 *	[    1.733117] 0x000000400000-0x000008000000 : "nvram"
> -		 */
> -
> -		compatible = "fixed-partitions";
> -		#address-cells = <0x1>;
> -		#size-cells = <0x1>;
> -
> -		partition0@0 {
> -			label = "u-boot";
> -			reg = <0x0 0x100000>;
> -			read-only;
> -		};
> +&nand_controller {
> +	nand@0 {
> +		compatible = "brcm,nandcs";
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
>   
> -		partition1@100000 {
> -			label = "bootkernel1";
> -			reg = <0x100000 0x300000>;
> -			read-only;
> -		};
> +		nand-ecc-engine = <&nand_controller>;
> +		nand-ecc-strength = <8>;
> +		nand-ecc-step-size = <512>;
> +
> +		partitions {
> +			/*
> +			 * The partition autodetection does not work for this device.
> +			 * It will only detect the "nvram" partition with an incorrect size.
> +			 *	[ 1.721667] 1 bcm47xxpart partitions found on MTD device brcmnand.0
> +			 *	[ 1.727962] Creating 1 MTD partitions on "brcmnand.0":
> +			 *	[ 1.733117] 0x000000400000-0x000008000000 : "nvram"
> +			 */
> +
> +			compatible = "fixed-partitions";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x1>;
> +
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x0 0x100000>;
> +				read-only;
> +			};
>   
> -		partition2@400000 {
> -			label = "nvram";
> -			reg = <0x400000 0x100000>;
> -			read-only;
> -		};
> +			partition@100000 {
> +				label = "bootkernel1";
> +				reg = <0x100000 0x300000>;
> +				read-only;
> +			};
>   
> -		partition3@500000 {
> -			label = "bootkernel2";
> -			reg = <0x500000 0x300000>;
> -			read-only;
> -		};
> +			partition@400000 {
> +				label = "nvram";
> +				reg = <0x400000 0x100000>;
> +				read-only;
> +			};
>   
> -		partition4@800000 {
> -			label = "ubi";
> -			reg = <0x800000 0x7780000>;
> +			partition@500000 {
> +				label = "bootkernel2";
> +				reg = <0x500000 0x300000>;
> +				read-only;
> +			};
> +
> +			partition@800000 {
> +				label = "ubi";
> +				reg = <0x800000 0x7780000>;
> +			};
>   		};
>   	};
>   };

