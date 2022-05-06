Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E33151E242
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1444815AbiEFWnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355771AbiEFWnr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:47 -0400
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CD8162117
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:40:03 -0700 (PDT)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-deb9295679so8694690fac.6
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:40:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=jnCduir5pQYlrdkaJpztvPdFvaPDr5xSt6EEmo8r0sk=;
        b=xv6EMSOdgV3hIEtK1att36Z/KVUvnY647kp0axGVyx4XrvggdCgUU5Gu3NVSTbGCKR
         TNRR+LGSSjXd6LWjHw2DG5NLv/kJA7KMWW53dxMLK8b/YmVpzC5fKWwdwIUuopnsJtTa
         DMNhuOMXzeHpkAzPUYE3OTaJ+YnyTdfPLFQ5BjgCddFAoUICkn7FGM0NTUjBZC9phl4W
         Gr2LsYMVOm0FeX4G20lD2dVDXz2f1YNH1kZDryO3w8pLvt6uSrRQsWikm3LjYAyVS899
         0QbSzxfPl2YDpf0OhJi5hmEH6QUApixNz4//NdFnNDisZemsRgBhy89NS4Tc6MMuSU3I
         o4OQ==
X-Gm-Message-State: AOAM530lqfhyDdoeJIw1BSHj1ppYVaxHGLytMYQpUZZNLgj91e1aWwsF
        grD9orcaeLpVxfBisILuLA==
X-Google-Smtp-Source: ABdhPJx32GDw5jkZmie8yU5Cr25cJJIbL1vIbDCLgVtdTOhoqI0NIN+yftvLprwNmgDhM9ToJCpnRg==
X-Received: by 2002:a05:6870:4623:b0:ed:c502:bf3d with SMTP id z35-20020a056870462300b000edc502bf3dmr2329272oao.100.1651876802445;
        Fri, 06 May 2022 15:40:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c21-20020a9d75d5000000b0060603221279sm2011155otl.73.2022.05.06.15.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:40:01 -0700 (PDT)
Received: (nullmailer pid 2407419 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
        Liviu Dudau <liviu.dudau@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20220506140533.3566431-7-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com> <20220506140533.3566431-7-andre.przywara@arm.com>
Subject: Re: [PATCH v2 06/11] dt-bindings: arm: convert vexpress-sysregs to DT schema
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.674154.2407418.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 06 May 2022 15:05:28 +0100, Andre Przywara wrote:
> The Arm Versatile Express system control register block provides GPIO
> functionality to some devices and is also used for board identification.
> 
> Extract the first half of the informal vexpress-sysreg.txt binding and
> make it proper DT schema compliant.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/arm/vexpress-sysreg.yaml         | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


sysreg@10000: '#address-cells' is a required property
	arch/arm64/boot/dts/arm/foundation-v8.dtb
	arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtb
	arch/arm64/boot/dts/arm/foundation-v8-gicv3-psci.dtb
	arch/arm64/boot/dts/arm/foundation-v8-psci.dtb
	arch/arm64/boot/dts/arm/fvp-base-revc.dtb
	arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dtb

sysreg@10000: '#gpio-cells', 'gpio-controller' do not match any of the regexes: '^gpio@[0-9a-f]+$', 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/arm/fvp-base-revc.dtb
	arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dtb

sysreg@10000: '#size-cells' is a required property
	arch/arm64/boot/dts/arm/foundation-v8.dtb
	arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtb
	arch/arm64/boot/dts/arm/foundation-v8-gicv3-psci.dtb
	arch/arm64/boot/dts/arm/foundation-v8-psci.dtb
	arch/arm64/boot/dts/arm/fvp-base-revc.dtb
	arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dtb

