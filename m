Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C69A59B641
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 22:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231515AbiHUUVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 16:21:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230267AbiHUUVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 16:21:30 -0400
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBFB01AF1E
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:29 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id c185so10168164oia.7
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 13:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=nsBRgoJPXA9hV2yFG/G8aTKmYcTjDfwD0caEvc/wusM=;
        b=OsWzXlUGKulnUnTGruXkyHiMizcP1CM/oXcdWKa9xP+u//mKwSIQvfyWkPtNIXmaIy
         rQqz/vkzaeDxAlPgboLUcopuyW9KsTK8fHMOFp0yD2vWDOHZv/lshh+Ux5QVX5v7UIYz
         7PHwCgVFa4kVCV3vEBgK5RRAKUSr2yiZAyrc1RZ29QBjG2TkU3DNiLLYXM7W0rcymYlY
         pbECH4Ny8Wn7a2ARkil/dRHtYd6jI1raBrfxDrEZdRSiFDvx3OT3klExxZ4OoOS5daiE
         R7vb52xqRfdxLSGlUjbpqOHBAFatYtmbxxYyYFDNhznmUvZAcyP51ksNKsUjDriwAs0/
         4YGA==
X-Gm-Message-State: ACgBeo16JjCzGhgj0k0ttJ2j+YbKX9DPMGBthzRa+Gl6D+DMhWoFd11/
        82tu68WYvI0CqxEKf39O5z7i89htrQ==
X-Google-Smtp-Source: AA6agR4sCz7qoFZQfXLg2eH5wS2Cxen5e/i7QoZ+bEEz2Dk+dK0YHFYTP6N+epH3vqxwa5GzjBoj1Q==
X-Received: by 2002:aca:5e8b:0:b0:344:d1ef:2293 with SMTP id s133-20020aca5e8b000000b00344d1ef2293mr10330791oib.158.1661113289106;
        Sun, 21 Aug 2022 13:21:29 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id by8-20020a056830608800b0063893f5044dsm2531421otb.57.2022.08.21.13.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Aug 2022 13:21:28 -0700 (PDT)
Received: (nullmailer pid 1729161 invoked by uid 1000);
        Sun, 21 Aug 2022 20:21:26 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     arm-soc <arm@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Device Tree <devicetree@vger.kernel.org>
In-Reply-To: <20220820194804.3352415-5-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch> <20220820194804.3352415-5-andrew@lunn.ch>
Subject: Re: [PATCH 04/11] DT: USB: Convert ehci-orion to YAML
Date:   Sun, 21 Aug 2022 15:21:26 -0500
Message-Id: <1661113286.962404.1729160.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Aug 2022 21:47:57 +0200, Andrew Lunn wrote:
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../devicetree/bindings/usb/ehci-orion.txt    | 22 ----------
>  .../bindings/usb/marvell,orion-ehci.yaml      | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/ehci-orion.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/marvell,orion-ehci.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


ehci@50000: '#address-cells', '#size-cells', 'port@1' do not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/kirkwood-c200-v1.dtb
	arch/arm/boot/dts/kirkwood-l-50.dtb

usb@50000: 'phy-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/armada-375-db.dtb

usb@58000: 'usb-phy' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/armada-388-helios4.dtb

usb@58000: 'vcc-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/armada-388-gp.dtb

usb@5e000: 'marvell,usb-misc-reg', 'phy-names' do not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/marvell/armada-3720-db.dtb
	arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtb
	arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dtb
	arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dtb
	arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dtb
	arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dtb
	arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dtb
	arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtb

usb@a0000: 'dr_mode', 'phy-names' do not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/marvell/ac5-98dx35xx-rd.dtb

usb-host@50000: 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/dove-sbc-a510.dtb

