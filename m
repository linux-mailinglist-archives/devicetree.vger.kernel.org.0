Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53F7E51E21F
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 01:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355771AbiEFWnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 18:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1444819AbiEFWns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 18:43:48 -0400
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8045162128
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 15:40:04 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id w194so7807037oie.9
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 15:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=DRgwz3Pr66109k8i3q4OJZka7y/YBIE0KaI7WFdrYJ8=;
        b=4ujN7t9s8GNZgVoPpDhiCVK+L7EQ+3UsgnfDdThr8ChGqiYg8zvNrggB4xp8n7AJD2
         f4mGhsqOHQEdhT14JLthcT2fO0k/N9Unts6Wu7i219z1BeIIBMhDSGdEJS19hYAV68iA
         kdEI1s1PSH8j1qAjNA5cmrQF3545i6VCJiwGzpWR+Brw7oPC5LrK40Ag8yIX12sywGHB
         AzYKVcEiZf4bnPZ+kXPykMm5SEIxmTpDzGW2/xKVVRMpIa85C62qjxi8vdFkGdYycxPG
         2FYzqAZDOlycIu//tKTc0a87bvvhXaaZ7KNnZaQovmPwAAo6f+LnVbwQktnKXyU6iCeN
         qo5w==
X-Gm-Message-State: AOAM532ta1mIKnWZN9n/JXXGSWetQPx1MDArAtbRdiResrcJxYkuDZ+H
        D4Wp3Fe8h45aMmJ/VA2ooA==
X-Google-Smtp-Source: ABdhPJzrdNSnC5BVoRKMuBDvgNbnC5uroyrH4/mzoFE1AvpkFImqSpr3rFfcN8WIixqCY3b+N0Od9g==
X-Received: by 2002:aca:c0c5:0:b0:325:9ed4:a240 with SMTP id q188-20020acac0c5000000b003259ed4a240mr2540381oif.289.1651876803706;
        Fri, 06 May 2022 15:40:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y28-20020a056870459c00b000e686d1387bsm1990639oao.21.2022.05.06.15.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 15:40:03 -0700 (PDT)
Received: (nullmailer pid 2407425 invoked by uid 1000);
        Fri, 06 May 2022 22:39:53 -0000
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Robin Murphy <robin.murphy@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Will Deacon <will@kernel.org>
In-Reply-To: <20220506140533.3566431-11-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com> <20220506140533.3566431-11-andre.przywara@arm.com>
Subject: Re: [PATCH v2 10/11] dt-bindings: display: convert Arm Mali-DP to DT schema
Date:   Fri, 06 May 2022 17:39:53 -0500
Message-Id: <1651876793.707852.2407424.nullmailer@robh.at.kernel.org>
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

On Fri, 06 May 2022 15:05:32 +0100, Andre Przywara wrote:
> The Arm Mali Display Processor (DP) 5xx/6xx is a series of IP that scans
> out a framebuffer and hands the pixels over to a digital signal encoder.
> It supports multiple layers, scaling and rotation.
> 
> Convert the existing DT binding to DT schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/display/arm,malidp.txt           |  68 ----------
>  .../bindings/display/arm,malidp.yaml          | 116 ++++++++++++++++++
>  2 files changed, 116 insertions(+), 68 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/arm,malidp.txt
>  create mode 100644 Documentation/devicetree/bindings/display/arm,malidp.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


display@f080000: 'arm,malidp-arqos-value' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var1.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dtb
	arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dtb

