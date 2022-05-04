Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C495D51B14B
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 23:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238526AbiEDVrZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 17:47:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235719AbiEDVrY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 17:47:24 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B62352E78
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 14:43:46 -0700 (PDT)
Received: from [192.168.1.107] ([37.4.249.94]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MnpP8-1o9pgT34iQ-00pOiG; Wed, 04 May 2022 23:43:19 +0200
Message-ID: <37114673-5b31-c03c-fb7e-0b6a05adffd6@i2se.com>
Date:   Wed, 4 May 2022 23:43:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH RFC] ARM: dts: bcm2711: Fix DMA constrains for newer
 BCM2711 boards
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>, matthias.bgg@kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220413162739.6717-1-stefan.wahren@i2se.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20220413162739.6717-1-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:DhfqUA2XXIzhJPvUR5C9ZX2fo7qRV2Sh7gYnEwaailbJYWep4Dc
 L8jIdOIqhjj3+p8VcZtpuHob8vYnath27fALujyBP/R76i1EyY6cdYS2YT+SAGBZtUmErch
 KRWi/KDhjuUGzPcLMgqTeylLrvrs4aFBwyDL13qfFzEsyIjX7RVrt0b25M/4LPsF8LmWkWN
 aYYXLlgPeY97MV4GA3+tg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:p+aVbCBbRnQ=:388y6o9TXTQ7A/xJSoLOaE
 cPI4BLM7ulhIvq6H2fj6opiH4Nkk/Q7wJtYmywr5j9VnmqwzUU062509tr5zzjEB3hwrQdWw3
 xiOcquKDYkCx3eC+P7M32O8OytmfwWr4TTF6lflh0ud6+Dvo4jrwMJlimQdqbPc80qH2WQqNL
 3sNGXILnYQnSX1LCw1ROHNyJS89JZ1PAZ3XhShhcnoL2r6oVmGdZMSoeEUZju0p29dAiKUbW4
 p6AXOPCEfvVPEBjk1eAIv7KeyPKpJcVq8L44iDQnStxVXh1H1wJwQUXLimNhq8HyaEMWk3aUF
 +nIudN0MfAQuzZb2QFC5mtTq24Y7HAbl0ZRDzIDeon4LQlnIlWGR1YRt1uH21aItF3tHN8UGb
 3TswwnVJTK9z9QpJ+XWHP1by6ZDbbC2C1ivIinlwP2r6Nn7WqzQ1sx3UwwqmCTsiyCvTK+Bga
 9vHqGosaAP5+FcFCcHx1Bn7S9HZg7DBHrzDio/k1fATj1ZnjcWNCgffQK11v3AMy/kmQdftjt
 G9koEyWvPcAFdCHQciQb+lL7J5azN8lDmyUuoxz6EksfttR+POs//Uc6YFAtfL8ekEDnDU+LB
 AJ8OZsi6dxSV4b4ftvJpu9zJDKqy1HpWjvafKrs0Y+U+OW176eMQt1i7PA4GJBp/sK4rPI/xp
 cpC0+tQxP6PYbHqYrDI9CepEnXxDZgcVeLg+ckAxKIYwRIkNA4hfjN19cHl6dLIA0WpfnZaup
 dg9nzb3CUODY4ZgV
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am 13.04.22 um 18:27 schrieb Stefan Wahren:
> The commit 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own bus")
> assumed that all bootloader pass the FDT modified by the firmware to the
> kernel. But this is not always the case (e.g. Fedora) and cause boot
> issues for boards with a BCM2711 C0 SoC (RPi 400, CM4, newer RPi 4 B)
> which does have different DMA constraints.
>
> Since we are not able to detect the SoC revision, let's assume a BCM2711
> C0 SoC for bcm2711.dtsi and move the restricted DMA constrains to a
> separate RPi 4 B board file just for the old SoC revision.
>
> Fixes: 3d2cbb644836 ("ARM: dts: bcm2711: Move emmc2 into its own bus")
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
since there wasn't any feedback yet, i want to ping ...
> ---
>   arch/arm/boot/dts/Makefile               |  1 +
>   arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts | 22 ++++++++++++++++++++++
>   arch/arm/boot/dts/bcm2711.dtsi           | 11 +++--------
>   3 files changed, 26 insertions(+), 8 deletions(-)
>   create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 7c16f8a2b738..560d36ba1041 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -96,6 +96,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += \
>   	bcm2837-rpi-zero-2-w.dtb \
>   	bcm2711-rpi-400.dtb \
>   	bcm2711-rpi-4-b.dtb \
> +	bcm2711-rpi-4-b-b0.dtb \
>   	bcm2711-rpi-cm4-io.dtb \
>   	bcm2835-rpi-zero.dtb \
>   	bcm2835-rpi-zero-w.dtb
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts
> new file mode 100644
> index 000000000000..c53ed510392f
> --- /dev/null
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b-b0.dts
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/dts-v1/;
> +#include "bcm2711-rpi-4-b.dts"
> +
> +&emmc2bus {
> +	/*
> +	 * emmc2 on initial SoC revision (only assembled on RPi 4 B)
> +	 * has different DMA constraints.
> +	 */
> +	dma-ranges = <0x0 0xc0000000  0x0 0x00000000  0x40000000>;
> +};
> +
> +&pcie0 {
> +	/*
> +	 * The wrapper around the PCIe block has a bug
> +	 * preventing it from accessing beyond the first 3GB of
> +	 * memory.
> +	 */
> +	dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
> +				      0x0 0xc0000000>;
> +};
> +
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index 89af57482bc8..c307c45385a0 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -420,7 +420,7 @@ emmc2bus: emmc2bus {
>   		#size-cells = <1>;
>   
>   		ranges = <0x0 0x7e000000  0x0 0xfe000000  0x01800000>;
> -		dma-ranges = <0x0 0xc0000000  0x0 0x00000000  0x40000000>;
> +		dma-ranges = <0x0 0x00000000  0x0 0x00000000  0xfc000000>;
>   
>   		emmc2: mmc@7e340000 {
>   			compatible = "brcm,bcm2711-emmc2";
> @@ -574,13 +574,8 @@ IRQ_TYPE_LEVEL_HIGH>,
>   
>   			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
>   				  0x0 0x04000000>;
> -			/*
> -			 * The wrapper around the PCIe block has a bug
> -			 * preventing it from accessing beyond the first 3GB of
> -			 * memory.
> -			 */
> -			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
> -				      0x0 0xc0000000>;
> +			dma-ranges = <0x02000000 0x4 0x00000000 0x0 0x00000000
> +				      0x1 0x00000000>;
>   			brcm,enable-ssc;
>   		};
>   
