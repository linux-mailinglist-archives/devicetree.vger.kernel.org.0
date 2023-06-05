Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A26C722403
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 12:58:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjFEK6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 06:58:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbjFEK6a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 06:58:30 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F1DFEA
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 03:58:28 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b1b2ca09b9so34529311fa.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 03:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685962707; x=1688554707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V3tihtb81X94mKBcG9ORrh7rgJe6/rC9mmtLE/xRMNM=;
        b=N1FGd8wmX+c3WPg3dQvP6O28V36dQjrAjlYfk4JknSrMcAmdbpBzmM+E1lIuz621es
         deeG4hGRjduz/z5SWMYIoEeGy9kNytmxsFhDAGNSjOI+BudrxjV186STB3lHgJZpgqHK
         Qzk2C4LFg8HV0L08vIKRE5YG75RrmrXYClTVgQnSZ6GqJP6Y6MXTkofIXue0mBL7Hxzh
         1V1eAuI3l88FEjVRSvOYT+sfWRfjOVIOysZgLTMld+/822+X7ycst9KvMN40SZSaiFWJ
         AuOkQWcghkbx+VJ2XNkUQ7+7yDuk2w1t8/kpuDPRGgn9sprGbG9olKSbKKFtVbM/dHp5
         efQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685962707; x=1688554707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V3tihtb81X94mKBcG9ORrh7rgJe6/rC9mmtLE/xRMNM=;
        b=gszHHUYjkRN4rJdKqOGKeu4bwYHM57q86fMf3jkm1IJ9/klHxGFKEU5BZrfeL5F24I
         Szf0aysmpS+S8ex9uKaKsU7EFu46ecnnygzWtzwaiRIBR1qsljrEJjHZjSvsa+d/oEMT
         T4ei3wLpcE6hyNKCfx1pOlK6GfpLfF3JvDQZa0RsNj/brVQuwdFwupLj10+mfCbIxogv
         zhZLBz3kEfIn8If1fZO6en9u6fqpyPRUUVUeaJyxg09dDNft2mdpVURPiZ+bUryULD3k
         69JEDW0BrjO8G+9IG2Enbg2NhwDmykAd0+sMrGR10+cCYG5F6t4WqoIXK0wQRNuvo8Px
         I8fA==
X-Gm-Message-State: AC+VfDwiwZCC0WS9lc9w5f4A1yuu0r7C2358m1cmQyT6/mYL5TXz6cOX
        RIZxM82J5l1jawaPkEBMbCU=
X-Google-Smtp-Source: ACHHUZ61soi2lF34JJHuru/zpu0B1LGmsMae6KmLkOr/W6KJVK0NYNoJf5Vqr/i5RGUGq0g1oB2X+Q==
X-Received: by 2002:a2e:7c16:0:b0:2b1:e5d7:6339 with SMTP id x22-20020a2e7c16000000b002b1e5d76339mr1100266ljc.8.1685962706378;
        Mon, 05 Jun 2023 03:58:26 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id t17-20020a2e9c51000000b002ac7a25c001sm1388430ljj.24.2023.06.05.03.58.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 03:58:25 -0700 (PDT)
Message-ID: <87db0e40-0fa3-47e0-2a50-c0ec908eed58@gmail.com>
Date:   Mon, 5 Jun 2023 12:58:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 2/3] ARM: MR26: fix dt schema violations
To:     Christian Lamparter <chunkeey@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
 <c2f56e4fb234418be45e640faf67f04ae66401b6.1685801691.git.chunkeey@gmail.com>
Content-Language: en-US
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <c2f56e4fb234418be45e640faf67f04ae66401b6.1685801691.git.chunkeey@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I've include "BCM5301X: " in the subject line.

See below too.

On 3.06.2023 16:16, Christian Lamparter wrote:
> fixes the "duplex-full" typo, adds phy-modes for the internal
> switch and the PHY-chip. This also includs adding pause support
> for the internal cpu port. Furthermore, both erronous unit properties
> in the gpio-keys node are removed (#size-cells, #address-cells don't
> belong here).
> 
> | ports:port@5:fixed-link: 'oneOf' conditional failed, one must be fixed:
> |   'anyOf' conditional failed, one must be fixed:
> |   {'speed': [[1000]], 'duplex-full': True} is not of type 'array'
> |   'duplex-full' does not match any of the regexes
> | ports:port@5: 'phy-mode' is a required property
> | keys: '#address-cells', '#size-cells' do not match any of the regexes:
> | [...] From schema: gpio-keys.yaml
> 
> Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
>   arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> index 9ea4ffc1bb71..9acadf393dd9 100644
> --- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> +++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> @@ -38,8 +38,6 @@ led-1 {
>   
>   	keys {
>   		compatible = "gpio-keys";
> -		#address-cells = <1>;
> -		#size-cells = <0>;

FWIW I've already sent patch for that:
[PATCH 2/2] ARM: dts: BCM5301X: Drop invalid properties from Meraki MR32 keys


>   		key-restart {
>   			label = "Reset";
> @@ -127,16 +125,19 @@ ports {
>   		port@0 {
>   			reg = <0>;
>   			label = "poe";
> +			phy-mode = "rgmii";
>   		};

It was never clear to me how to exactly specify "phy-mode".

It'd values are documented in the:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/ethernet-controller.yaml

In Broadcom's bcmrobo.c we can find:
#define PAGE_GPHY_MII_P0	0x10	/* Port0 Internal GPHY MII registers page */
#define PAGE_GPHY_MII_P4	0x14	/* Last/Port4 Internal GPHY MII registers page */

That suggests ports 0, 1, 2, 3 and 4 use internal MII.

Does it make "rgmii" a valid value for that?

Could we just specify a proper value for all 5 ports in the bcm-ns.dtsi?


>   		port@5 {
>   			reg = <5>;
>   			label = "cpu";
>   			ethernet = <&gmac0>;
> +			phy-mode = "internal";
>   
>   			fixed-link {
>   				speed = <1000>;
> -				duplex-full;
> +				full-duplex;
> +				pause;
>   			};
>   		};
>   	};

Same here: could we specify "phy-mode" and "fixed-link" for ports 5, 7
and 8 in the bcm-ns.dtsi? There are more devices with warnings:

   DTC_CHK arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp2.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp2.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm4708-luxul-xap-1510.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm4708-netgear-r6250.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-netgear-r6250.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47081-luxul-xap-1410.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm4709-netgear-r8000.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm4709-netgear-r8000.dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb: ethernet-switch@18007000: ports:port@7: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-dlink-dir-885l.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-linksys-panamera.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: ethernet-switch@18007000: ports:port@8: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-linksys-panamera.dtb: switch@0: ports:port@8: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-luxul-abr-4500.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xap-1610.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm53015-meraki-mr26.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm53015-meraki-mr26.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm53016-meraki-mr32.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm53016-meraki-mr32.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml
   DTC_CHK arch/arm/boot/dts/bcm953012er.dtb
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm953012er.dtb: ethernet-switch@18007000: ports:port@5: 'phy-mode' is a required property
         From schema: /home/rmilecki/linux/linux-next/Documentation/devicetree/bindings/net/dsa/brcm,b53.yaml

