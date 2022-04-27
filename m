Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E817510EDD
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 04:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356970AbiD0Cjv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 22:39:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356820AbiD0Cjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 22:39:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C93E43DDD1
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 19:36:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6DB9861C3C
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 02:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB97CC385A0
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 02:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1651026998;
        bh=FpJHEDq7kqmI5mzYzWS1UP2Ju3YpDVF3JfV2KnAovyI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=satLcVK7OKqjvQUv4U2H3cq4Q6hHawev6LGU8FxnJzriJf8upVJN/Z+RNC/b6cISW
         88ON11Si+of9z35/LKNZdIj37o9aZAolErEv+oYuLhfr3yAbjopd5D7/O+Q5pgpZzM
         JXf00wydIy0+XGOAcq+Fc+4P8hT/NZGhYjk4D4qNB8E7SWnAFsC4kI3AMmbhh9nv/E
         oP9QK8XCeYYIUjY8yF16MhmYLRnk048AWSyJWj+G6rNXsOPeAH/9/MVBi4BnBYm33i
         Jn7Awq4Fmo8+NDityWN0JBzGATb9dwj80fXm3t1BUdpNuQeeZ9ilj4c26hAzVv7Vxy
         BJ+kGU5LbM2uA==
Received: by mail-pl1-f169.google.com with SMTP id u7so385608plg.13
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 19:36:38 -0700 (PDT)
X-Gm-Message-State: AOAM532ui9x4NrUU1odrP0sJbGXYhIk5bW5UcRkYIJO6N5r1jXhgVMWT
        2U1P+T1uwcCuf8lV0G+jNYtCTLi8kvPgR3BRsA==
X-Google-Smtp-Source: ABdhPJz7ejAdKBBEV+8Iwz/8Co/E7CD2Ru5+pLHkxEEgPJi/sRjkWdsXtNFMNt3JYfUaUP5PGa0nTgwMawHb6yKcV4E=
X-Received: by 2002:a17:90a:3486:b0:1d9:3abd:42ed with SMTP id
 p6-20020a17090a348600b001d93abd42edmr21885662pjb.32.1651026998201; Tue, 26
 Apr 2022 19:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <42fbcb55-b6ef-906f-7584-62a6097a8639@linaro.org>
In-Reply-To: <42fbcb55-b6ef-906f-7584-62a6097a8639@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 26 Apr 2022 21:36:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ3FiBci1+8oSOHA6GQ8Q3HHM3QcY+GFg=+KVZEQAnb6A@mail.gmail.com>
Message-ID: <CAL_JsqJ3FiBci1+8oSOHA6GQ8Q3HHM3QcY+GFg=+KVZEQAnb6A@mail.gmail.com>
Subject: Re: PCI schema accepts unevaluated properties
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 23, 2022 at 5:46 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Hi Rob,
>
> Dmitry pointed out interesting issue when writing PCI schema. Consider
> the patch for Exynos PCI schema (which includes SNPS schema and
> unevaluatedProperties:false):
> https://pastebin.ubuntu.com/p/4SzxVP4N3j/
>
> This passes `make dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/` without a
> problem. It should not. The property is nowhere described, so
> unevaluatedProperties should scream.
>
> Other bindings using unevaluated:false and some ref, also has this
> issue. The additionalProperties:false (when there is no ref for other
> schema) works correct.

This is because I never committed the fix for all this which explains the issue:

    dtschema: Strip 'additionalProperties: true' from schemas

    An 'additionalProperties: true' makes all properties evaluated, so an
    'unevaluatedProperties: false' schema doesn't work when referencing a
    schema with 'additionalProperties: true'.

    Really, 'additionalProperties: true' should be dropped, but it is used as
    a flag for common schemas which are usually incomplete and included by
    device specific schemas. Removing it would mean dropping the meta-schema
    requiring either 'additionalProperties' or 'unevaluatedProperties'.

    Signed-off-by: Rob Herring <robh@kernel.org>

Since snps,dw-pcie.yaml defines 'additionalProperties: true',
everything is evaluated...

This fix needed schema fixes to land before I committed this, but it
was the end of the year and I guess I forgot about it. Now, it looks
like we have more to fix. :(  25 to be exact:

Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.example.dtb:
audio-subsystem@11400000: dma-controller@11420000: Unevaluated
properties are not allowed ('#dma-channels', '#dma-requests',
'power-domains' were unexpected)
Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.example.dtb:
dma-controller@11420000: Unevaluated properties are not allowed
('#dma-channels', '#dma-requests', 'power-domains' were unexpected)
Documentation/devicetree/bindings/ufs/ti,j721e-ufs.example.dtb:
ufs-wrapper@4e80000: ufs@4000: Unevaluated properties are not allowed
('power-domains' was unexpected)
Documentation/devicetree/bindings/ufs/ti,j721e-ufs.example.dtb:
ufs-wrapper@4e80000: ufs@4000: Unevaluated properties are not allowed
('power-domains' was unexpected)
Documentation/devicetree/bindings/ufs/ti,j721e-ufs.example.dtb:
ufs@4000: Unevaluated properties are not allowed ('power-domains' was
unexpected)
Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.example.dtb:
hdmi@10180000: Unevaluated properties are not allowed ('ddc-i2c-bus'
was unexpected)
Documentation/devicetree/bindings/net/mctp-i2c-controller.example.dtb:
i2c-mux: i2c@1: Unevaluated properties are not allowed
('mctp-controller' was unexpected)
Documentation/devicetree/bindings/net/mediatek-dwmac.example.dtb:
ethernet@1101c000: Unevaluated properties are not allowed
('power-domains' was unexpected)
Documentation/devicetree/bindings/net/wireless/mediatek,mt76.example.dtb:
wifi@18000000: Unevaluated properties are not allowed ('reset-names'
was unexpected)
Documentation/devicetree/bindings/net/cdns,macb.example.dtb:
ethernet@ff0c0000: Unevaluated properties are not allowed
('#stream-id-cells' was unexpected)
Documentation/devicetree/bindings/net/dsa/microchip,ksz.example.dtb:
switch@0: Unevaluated properties are not allowed ('reg',
'spi-max-frequency' were unexpected)
Documentation/devicetree/bindings/net/dsa/microchip,ksz.example.dtb:
switch@1: Unevaluated properties are not allowed ('reg',
'spi-max-frequency' were unexpected)
Documentation/devicetree/bindings/net/dsa/realtek.example.dtb:
switch@29: Unevaluated properties are not allowed ('reg' was
unexpected)
Documentation/devicetree/bindings/pci/apple,pcie.example.dtb:
pcie@690000000: Unevaluated properties are not allowed
('power-domains' was unexpected)
Documentation/devicetree/bindings/pci/socionext,uniphier-pcie.example.dtb:
pcie@66000000: Unevaluated properties are not allowed
('legacy-interrupt-controller' was unexpected)
Documentation/devicetree/bindings/mtd/mxc-nand.example.dtb:
nand-controller@d8000000: Unevaluated properties are not allowed
('nand-bus-width', 'nand-ecc-mode' were unexpected)
Documentation/devicetree/bindings/mtd/ingenic,nand.example.dtb:
nand-controller@1: Unevaluated properties are not allowed
('ingenic,nemc-tAS', 'ingenic,nemc-tAH', 'ingenic,nemc-tBP',
'ingenic,nemc-tAW', 'ingenic,nemc-tSTRV' were unexpected)
Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.example.dtb:
mmc@84b0000: Unevaluated properties are not allowed ('interrupt-names'
was unexpected)
Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.example.dtb:
mmc@84b1000: Unevaluated properties are not allowed ('interrupt-names'
was unexpected)
Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb: usb@0:
usb@fe200000: Unevaluated properties are not allowed ('dma-coherent'
was unexpected)
Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb:
usb@fe200000: Unevaluated properties are not allowed ('dma-coherent'
was unexpected)
Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.example.dtb:
flash@1: Unevaluated properties are not allowed ('rx-sample-delay-ns'
was unexpected)
Documentation/devicetree/bindings/spi/microchip,mpfs-spi.example.dtb:
spi@20108000: Unevaluated properties are not allowed
('spi-max-frequency' was unexpected)
Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.example.dtb:
flash@0: Unevaluated properties are not allowed
('nvidia,tx-clk-tap-delay', 'nvidia,rx-clk-tap-delay' were unexpected)
Documentation/devicetree/bindings/spi/samsung,spi.example.dtb:
audio-codec@0: Unevaluated properties are not allowed
('spi-max-frequency', 'controller-data' were unexpected)

I'll look at it more tomorrow.

Rob
