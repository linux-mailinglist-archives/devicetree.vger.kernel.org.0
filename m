Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1939465A41
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 01:03:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354082AbhLBAG0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 19:06:26 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:65140 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353978AbhLBAGW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 19:06:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1638403379; x=1669939379;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=dnRwlM2g208wpzcQ1fHoMh5ABTusv5pFo5cTKx90whg=;
  b=luUfpOoGNhfgEFjJB+0vvHdVzDX61FtGQYzIuT3EwyQuALyumGDn7yoH
   xHMIE/t6j+5xIT8N2phHgoI+8NNEn0rxe7mg61dhuVliOGlwsjR9wCiJ3
   wW163xCQat357wne8PmYMmB3ql6EVku1WJZ7+2YAmyeV+CmYqCCiR48Rg
   4dFsoPODfPfeEVcrrW+HiQ3tZ8LB6ppj5tcX/H0niU+cSXsP2i+u7tiGJ
   ApKJfo0BEl7YuuTiDTCOvdCf+72iXZ4Fx7/KZ1O4QJDlxZjh4MZ9toeim
   c9LsdkfNCF6LAzqGIAAJI9rzK/t6HnZ581Trc3VvDcglBeaBalQPXCqkD
   g==;
X-IronPort-AV: E=Sophos;i="5.87,280,1631548800"; 
   d="scan'208";a="187234987"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Dec 2021 07:58:13 +0800
IronPort-SDR: 3A9wpIyOOsVVWUsImZ4oum99mY6gTSFyohrBwNRg+SvP2aP3D4KFZi0Zs8wsMGH39FNoRwrA7i
 XW73B4353nYtoS3hUiUojKcO7hB8XbPweh8O/tNlkid2Zq8i7uCm1oZKpawR2Uihj2doGAJcrk
 QBBO4VK04jjU+JOCJzhTkZ/QOsHOeNRah/hVOcicr3EG6dT2N+fWrumTR8nxyHXrT/8+V6Pc0k
 6lU8sYhvDKXcrtDPRwzELlDu1GRzu2g5Dq/52bYW6E/3WQgBoEHhSjok1qDgcSmTqF8amctU95
 aINuQtxOIquJzJPVZjuefUCK
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 15:32:57 -0800
IronPort-SDR: ZwiVoUMxeaBP7EDLvefilrGh5mDvVFkrI7iWH6YQ1u4ZRTih5/Ya/C1VKpv4wGPGthdTAulsuB
 qijF9QQWRFbnkSDBgOJq6owsf5F8h91X323iPp8zdLn9QWYzHbNDd6MHucxF01RZTYi9lS9pLl
 jFlZ7yLwp8bdSlKBIi1x1Syfeev9ajlLKyPYNHFnVh7PTGRwlaenWQwpfi604DlqHtZ+h7mWBl
 RQydGyQN/l1Lv5lw8Bnxf/5EvCiPZT1G6HQSPYsnBDx5JsF5NlFlCMgc9UddMQp33Km8nGV/IB
 igI=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 15:58:14 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4J4GHl3kjkz1RtW0
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 15:58:11 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1638403090; x=1640995091; bh=dnRwlM2g208wpzcQ1fHoMh5ABTusv5pFo5c
        TKx90whg=; b=rIVYhoKcxjJl6R7uD+O93CEcDW5ScV2hcYn1LsXojpFWdN5IqjQ
        BnMptQM9qOHA06vGtZ2UGnDGTAWnlIh8RQSgAa5Wpmogh0byishEgyguuZWtjnqy
        +bHpWyvOzsy+N0kcmG9ltegHUd0aOWtQLJJJcYoVHWnaPqX32ZZ0//Tf77y00cUP
        NKiG114e77SdxF1KhG3DkMfrJkjR+gS9CJPwAOVNIg8YgduQk+U0oq7vWyJJ9Nee
        7fFBNEnHlyCXl8xaNdfWvve6Q4ZdPRujwpAZrZTTShgQHc1hXiKwgEGjGD1UTrDY
        fbDbPqDbWxs+Hx6LVCcb9eqfYj9/7zcITtA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ai1C2yxmeDft for <devicetree@vger.kernel.org>;
        Wed,  1 Dec 2021 15:58:10 -0800 (PST)
Received: from [10.225.54.48] (unknown [10.225.54.48])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4J4GHc4pQzz1RtVl;
        Wed,  1 Dec 2021 15:58:04 -0800 (PST)
Message-ID: <0cbaad0b-bab0-177e-48ef-5c4f6dd4391a@opensource.wdc.com>
Date:   Thu, 2 Dec 2021 08:58:03 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Subject: Re: [PATCH 12/14] dt-bindings: ata: Convert Broadcom SATA to YAML
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        Gregory Fong <gregory.0xf0@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Lee Jones <lee.jones@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Markus Mayer <mmayer@broadcom.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Al Cooper <alcooperx@gmail.com>,
        Doug Berger <opendmb@gmail.com>,
        "open list:LIBATA SUBSYSTEM (Serial and Parallel ATA drivers)" 
        <linux-ide@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:MULTIMEDIA CARD (MMC), SECURE DIGITAL (SD) AND..." 
        <linux-mmc@vger.kernel.org>,
        "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
        "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" 
        <linux-crypto@vger.kernel.org>,
        "open list:REAL TIME CLOCK (RTC) SUBSYSTEM" 
        <linux-rtc@vger.kernel.org>,
        "open list:THERMAL" <linux-pm@vger.kernel.org>,
        "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>
References: <20211201205110.41656-1-f.fainelli@gmail.com>
 <20211201205110.41656-13-f.fainelli@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital
In-Reply-To: <20211201205110.41656-13-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/12/02 5:51, Florian Fainelli wrote:
> Convert the Broadcom SATA3 AHCI controller Device Tree binding to YAML
> to help with validation.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/ata/brcm,sata-brcm.txt           | 45 ---------
>  .../bindings/ata/brcm,sata-brcm.yaml          | 91 +++++++++++++++++++
>  2 files changed, 91 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/brcm,sata-brcm.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.txt b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.txt
> deleted file mode 100644
> index b9ae4ce4a0a0..000000000000
> --- a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.txt
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -* Broadcom SATA3 AHCI Controller
> -
> -SATA nodes are defined to describe on-chip Serial ATA controllers.
> -Each SATA controller should have its own node.
> -
> -Required properties:
> -- compatible         : should be one or more of
> -			"brcm,bcm7216-ahci"
> -			"brcm,bcm7425-ahci"
> -			"brcm,bcm7445-ahci"
> -			"brcm,bcm-nsp-ahci"
> -			"brcm,sata3-ahci"
> -			"brcm,bcm63138-ahci"
> -- reg                : register mappings for AHCI and SATA_TOP_CTRL
> -- reg-names          : "ahci" and "top-ctrl"
> -- interrupts         : interrupt mapping for SATA IRQ
> -
> -Optional properties:
> -
> -- reset: for "brcm,bcm7216-ahci" must be a valid reset phandle
> -  pointing to the RESCAL reset controller provider node.
> -- reset-names: for "brcm,bcm7216-ahci", must be "rescal".
> -
> -Also see ahci-platform.txt.
> -
> -Example:
> -
> -	sata@f045a000 {
> -		compatible = "brcm,bcm7445-ahci", "brcm,sata3-ahci";
> -		reg = <0xf045a000 0xa9c>, <0xf0458040 0x24>;
> -		reg-names = "ahci", "top-ctrl";
> -		interrupts = <0 30 0>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		sata0: sata-port@0 {
> -			reg = <0>;
> -			phys = <&sata_phy 0>;
> -		};
> -
> -		sata1: sata-port@1 {
> -			reg = <1>;
> -			phys = <&sata_phy 1>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
> new file mode 100644
> index 000000000000..4098d56872ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/brcm,sata-brcm.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/brcm,sata-brcm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom SATA3 AHCI Controller
> +
> +description:
> +  SATA nodes are defined to describe on-chip Serial ATA controllers.
> +  Each SATA controller should have its own node.
> +
> +maintainers:
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +allOf:
> +  - $ref: sata-common.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - brcm,bcm7216-ahci
> +          - const: brcm,sata3-ahci
> +      - items:
> +          - enum:
> +              - brcm,bcm7445-ahci
> +          - const: brcm,sata3-ahci
> +      - items:
> +          - enum:
> +              - brcm,bcm7425-ahci
> +          - const: brcm,sata3-ahci
> +      - items:
> +          - const: brcm,bcm-nsp-ahci
> +      - items:
> +          - const: brcm,bcm63138-ahci
> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: ahci
> +      - const: top-ctrl
> +
> +  interrupts: true
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - brcm,bcm7216-ahci
> +then:
> +  properties:
> +    resets: true
> +    reset-names:
> +      items:
> +        - const: rescal
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    sata@f045a000 {
> +        compatible = "brcm,bcm7445-ahci", "brcm,sata3-ahci";
> +        reg = <0xf045a000 0xa9c>, <0xf0458040 0x24>;
> +        reg-names = "ahci", "top-ctrl";
> +        interrupts = <0 30 0>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        sata0: sata-port@0 {
> +            reg = <0>;
> +            phys = <&sata_phy 0>;
> +        };
> +
> +        sata1: sata-port@1 {
> +            reg = <1>;
> +            phys = <&sata_phy 1>;
> +        };
> +    };
> 

Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

Rob,

Will take this through your tree ?

-- 
Damien Le Moal
Western Digital Research
