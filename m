Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F18451E28A
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:41:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356030AbiEFWns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385090AbiEFWnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:46 -0400
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DB6261607
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:40:00 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id y14-20020a9d460e000000b00605ee347da1so5856389ote.8
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=JRAgCq5GM8wuUh6niNskRess02I0uopRoA0TA1SpzX4=;
        b=oskCL47B0jslAzlJOuY7GqHyHYaFd+x5f2wMbQp2CcFPcztg0WoFsrdGuVvfCRXyfE
         RbYcgNsvQGZ30/yEqCE7RuQuhCJvljWEJlfCEQQXVNiwGd02cGSLgihmxlHuEBsrBr8j
         XTD2OQ09SV2jNrHNKRghv1mHALP266gR0/rFrJke1CzgT12K8Ek0H26x4THo20XiXEm4
         F/ZG3UzCeobzQUSpAvJophSKZBA4jSPtBVSw6VpzzyXwr6yqepE8VJbtgc62XNzXuwWT
         wTQzDKKt3nPQu2tWxpM2Ai49D5BCuJPNDjLsKyYDJQFJtp32JL5UA23bU73bZ4MPSNpG
         LMeQ==
X-Gm-Message-State: AOAM530DilLjN+8UXvcJXEDe3+GmqdBXzZ8wNdWhIlvu7XJAXGOJjatj
        5gAIskhIY4W+0lGfZJBxJQ==
X-Google-Smtp-Source: ABdhPJy7nAcwUD36fRri/MP+FHxvQKAxa9ZVmusmeYu/DvmwfbdWNsmVhfw89TJhO1jaQablvim+pw==
X-Received: by 2002:a9d:5184:0:b0:605:ea2e:72cb with SMTP id y4-20020a9d5184000000b00605ea2e72cbmr1861525otg.234.1651876799632;
        Fri, 06 May 2022 15:39:59 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 44-20020a9d082f000000b0060603221272sm2089165oty.66.2022.05.06.15.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:39:59 -0700 (PDT)
Received: (nullmailer pid 2407421 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Robin Murphy <robin.murphy@arm.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Liviu Dudau <liviu.dudau@arm.com>,
        Will Deacon <will@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20220506140533.3566431-9-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com> <20220506140533.3566431-9-andre.przywara@arm.com>
Subject: Re: [PATCH v2 08/11] dt-bindings: display: convert PL110/PL111 to DT schema
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.685307.2407420.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 06 May 2022 15:05:30 +0100, Andre Przywara wrote:
> The Arm PL110 and PL111 are IP blocks that provide a display engine with
> an LCD interface, being able to drive a variety of LC panels.
> 
> Convert the binding over to DT schema, to the DTs can be automatically
> checked.
> This still contains the deprecated "arm,pl11x,tft-r0g0b0-pads" property,
> because this is used by several DTs in the tree.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/display/arm,pl11x.txt | 110 -----------
>  .../bindings/display/arm,pl11x.yaml           | 174 ++++++++++++++++++
>  2 files changed, 174 insertions(+), 110 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/arm,pl11x.txt
>  create mode 100644 Documentation/devicetree/bindings/display/arm,pl11x.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


clcd@10020000: 'oneOf' conditional failed, one must be fixed:
	arch/arm/boot/dts/arm-realview-eb-11mp-bbrevd-ctrevb.dtb
	arch/arm/boot/dts/arm-realview-eb-11mp-bbrevd.dtb
	arch/arm/boot/dts/arm-realview-eb-11mp-ctrevb.dtb
	arch/arm/boot/dts/arm-realview-eb-11mp.dtb
	arch/arm/boot/dts/arm-realview-eb-a9mp-bbrevd.dtb
	arch/arm/boot/dts/arm-realview-eb-a9mp.dtb

clcd@31040000: 'interrupt-names' is a required property
	arch/arm/boot/dts/lpc3250-phy3250.dtb

clcd@60000000: 'clock-names' is a required property
	arch/arm/boot/dts/spear300-evb.dtb

clcd@60000000: 'clocks' is a required property
	arch/arm/boot/dts/spear300-evb.dtb

clcd@60000000: 'interrupt-names' is a required property
	arch/arm/boot/dts/spear300-evb.dtb

clcd@60000000: 'port' is a required property
	arch/arm/boot/dts/spear300-evb.dtb

clcd@90000000: 'clock-names' is a required property
	arch/arm/boot/dts/spear320-hmi.dtb

clcd@90000000: 'clocks' is a required property
	arch/arm/boot/dts/spear320-hmi.dtb

clcd@90000000: 'interrupt-names' is a required property
	arch/arm/boot/dts/spear320-hmi.dtb

clcd@90000000: 'port' is a required property
	arch/arm/boot/dts/spear320-hmi.dtb

clcd@c0000000: 'interrupt-names' is a required property
	arch/arm/boot/dts/integratorcp.dtb

clcd@c0000000: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/integratorcp.dtb

clcd@c0000000: 'port' is a required property
	arch/arm/boot/dts/integratorcp.dtb

clcd@fc200000: 'clock-names' is a required property
	arch/arm/boot/dts/spear600-evb.dtb

clcd@fc200000: 'clocks' is a required property
	arch/arm/boot/dts/spear600-evb.dtb

clcd@fc200000: 'interrupt-names' is a required property
	arch/arm/boot/dts/spear600-evb.dtb

clcd@fc200000: 'port' is a required property
	arch/arm/boot/dts/spear600-evb.dtb

display@1000000: 'interrupt-names' is a required property
	arch/arm/boot/dts/integratorap-im-pd1.dtb

display@1000000: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/integratorap-im-pd1.dtb

display@1000000: 'port' is a required property
	arch/arm/boot/dts/integratorap-im-pd1.dtb

display@10120000: 'interrupt-names' is a required property
	arch/arm/boot/dts/versatile-ab.dtb
	arch/arm/boot/dts/versatile-ab-ib2.dtb
	arch/arm/boot/dts/versatile-pb.dtb

display@10120000: 'port@0' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/versatile-ab.dtb
	arch/arm/boot/dts/versatile-ab-ib2.dtb
	arch/arm/boot/dts/versatile-pb.dtb

display@10120000: 'port' is a required property
	arch/arm/boot/dts/versatile-ab.dtb
	arch/arm/boot/dts/versatile-ab-ib2.dtb
	arch/arm/boot/dts/versatile-pb.dtb

lcd@C0000000: 'interrupt-names' is a required property
	arch/arm/boot/dts/nspire-clp.dtb
	arch/arm/boot/dts/nspire-cx.dtb
	arch/arm/boot/dts/nspire-tp.dtb

lcd-controller@40008000: 'resets' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/lpc4337-ciaa.dtb
	arch/arm/boot/dts/lpc4350-hitex-eval.dtb
	arch/arm/boot/dts/lpc4357-ea4357-devkit.dtb
	arch/arm/boot/dts/lpc4357-myd-lpc4357.dtb

