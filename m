Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29796611112
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 14:20:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbiJ1MUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 08:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230159AbiJ1MUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 08:20:10 -0400
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 357542DA95
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:20:05 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id s125so5458090oib.6
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:20:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oXfLpDCmhpYq4HH4XZjvhvxoznYz709MBGPQiDR4vds=;
        b=0W7UuF3B2PHUxn5PVGGCSitfN8W3kYcVro8NY7ePCO0tAGZzUEUB+6iy6/PVkItkGq
         l423Zzv9W7dXVILzZJ6ggNBr4/lkARhTipjjISGRNthxtzGe07cJAEExv+CG5QGV3uqw
         noOQR5UKysX3n/qC7Y85L+UPaCpjSqVuyHzWFvW1VCxBhCpSsbR3irQPqPHDdPUwyXeJ
         /3cewhAXSgmtzkfxCuf0E4Scz0h8hgBxeyilgZByRB6n+sm1O86xccv+v1SswcqDYK7L
         gwojML/v79ZvpP4mj3oTPHWKsuXUwaEv2UCMW2cwZFGhgGf4p1MVGlBxGurDW50o952G
         ZBeg==
X-Gm-Message-State: ACrzQf0W+nXc46qGzOG6u2DlTaEmsUQpwXuGzm36TPgpvfU0XSIno52w
        VwL5h6HImKvn3qNLM/xQfw==
X-Google-Smtp-Source: AMsMyM7ApNXmyllBFXT9bjWaGtbPJryCpIgtjZ+9Z85lvm0/ygNxIxaaj+kVgkY/pzoI3f/RSgFFQg==
X-Received: by 2002:a05:6808:1404:b0:355:4cd4:b10b with SMTP id w4-20020a056808140400b003554cd4b10bmr7941560oiv.207.1666959604826;
        Fri, 28 Oct 2022 05:20:04 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id el21-20020a056870f69500b0013c955f64dbsm24173oab.41.2022.10.28.05.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 05:20:04 -0700 (PDT)
Received: (nullmailer pid 1079528 invoked by uid 1000);
        Fri, 28 Oct 2022 12:20:05 -0000
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        linux-stm32@st-md-mailman.stormreply.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20221027225020.215149-1-marex@denx.de>
References: <20221027225020.215149-1-marex@denx.de>
Message-Id: <166695949015.1076858.14693081553001271349.robh@kernel.org>
Subject: Re: [PATCH 1/3] [RFC] dt-bindings: nvmem: syscon: Add syscon backed nvmem bindings
Date:   Fri, 28 Oct 2022 07:20:05 -0500
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,PP_MIME_FAKE_ASCII_TEXT,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 28 Oct 2022 00:50:18 +0200, Marek Vasut wrote:
> Add trivial bindings for driver which permits exposing syscon backed
> register to userspace. This is useful e.g. to expose U-Boot boot
> counter on various platforms where the boot counter is stored in
> random volatile register, like STM32MP15xx TAMP_BKPxR register.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Rafał Miłecki <rafal@milecki.pl>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dts:24.17-35: Warning (reg_format): /example-0/tamp@5c00a000/nvmem-syscon:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dts:22.26-25.15: Warning (unit_address_vs_reg): /example-0/tamp@5c00a000/nvmem-syscon: node has a reg or ranges property, but no unit name
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dts:22.26-25.15: Warning (avoid_default_addr_size): /example-0/tamp@5c00a000/nvmem-syscon: Relying on default #address-cells value
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dts:22.26-25.15: Warning (avoid_default_addr_size): /example-0/tamp@5c00a000/nvmem-syscon: Relying on default #size-cells value
Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: Warning (unique_unit_address_if_enabled): Failed prerequisite 'avoid_default_addr_size'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/nvmem/nvmem-syscon.example.dtb: tamp@5c00a000: 'nvmem-syscon' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

