Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE0BB51112A
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 08:29:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235637AbiD0Gcj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 02:32:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358126AbiD0Gch (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 02:32:37 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4504DE6C51
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 23:29:27 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id d6so754501ede.8
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 23:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=K8oyBHvncka8QOuxVurfHP5Qvm/8ayFXPL0ri1Hxwjk=;
        b=m3P0h595/cxH6TPGp6tgK8WgD1U/PjCPDrbaGBNMBWbNogHctf22dyW7OUOQloRK6x
         9QAF/YRKaFweddPe+iLmEReQ53kV70F4UpWKwlJf+qtytGhlbTHqaPfr0QxahF5Riv6Z
         bSWk6869bQNtV/XVpPsakWpeaPreA4Y3ciZaqcluahF7KG6DA+8MCO9kmZUw7ihbf4Pi
         XULbeb/vde3E4nQARctxmi6ZwBc1c9rx6Jfyl0RaiZ9nhQr18SdnjZu1E+KMJqlIo9Q3
         64YTyO7Ren6jPJdcu8TMNfA9aEIqDug8whRwv6itfE9F1MFb7o6px55mGzEQ28fmAC0v
         a99w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=K8oyBHvncka8QOuxVurfHP5Qvm/8ayFXPL0ri1Hxwjk=;
        b=iMCGYXAgMw6g3bnE9f9g/+KWcEmLQyIbPR6j+dmii5yzGhNpcEITzxHp7yRTkqGHbt
         qPuZSfUO7Qb7RkUzevvZqQZc9HQlDnj4keW6GBdIcFV4xqGfpNk0mHZjcVjyhrrdlQP/
         K1bGTLPHJ0gZsEM2HGZxOHx6Ri6bv5do1OD2xis8ZOtBjlIBt4lgNBFSj7JP1EBvOLb9
         4p3b0MBlJq3Mqw+oFxL5SskyjWU+G+jvFBWcoBMq/Hp0ANfo+cok4sv6Yhyg3+6xPMJh
         DO0j+uHNqhdC8EWCltIIbiM+pQlWJ4FBpcrzJsFm1d+PgnxkW53UTG8pLJ61nKi/w3Ld
         z1OA==
X-Gm-Message-State: AOAM530yYzM3nsK3oq4mo8HhWNCP6tSXXGHM62v0KY7JjtP609aJTofD
        L6ejluHW14soFLXlRhGj/bGgIQ==
X-Google-Smtp-Source: ABdhPJyiH+tkWRQKE1BfXj3raZbEGjbGd47UV672sYu/ZXxxRQLAB794T/9Mhs/VtTcZR49g7nUVpA==
X-Received: by 2002:aa7:cb4d:0:b0:425:e24f:96ba with SMTP id w13-20020aa7cb4d000000b00425e24f96bamr16280457edt.214.1651040965788;
        Tue, 26 Apr 2022 23:29:25 -0700 (PDT)
Received: from [192.168.0.252] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o1-20020a170906774100b006efef41ac0dsm6130106ejn.215.2022.04.26.23.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 23:29:25 -0700 (PDT)
Message-ID: <345716e9-5624-5ba0-09f0-46e9850c546c@linaro.org>
Date:   Wed, 27 Apr 2022 08:29:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: PCI schema accepts unevaluated properties
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <42fbcb55-b6ef-906f-7584-62a6097a8639@linaro.org>
 <CAL_JsqJ3FiBci1+8oSOHA6GQ8Q3HHM3QcY+GFg=+KVZEQAnb6A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAL_JsqJ3FiBci1+8oSOHA6GQ8Q3HHM3QcY+GFg=+KVZEQAnb6A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 04:36, Rob Herring wrote:
> On Sat, Apr 23, 2022 at 5:46 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> Hi Rob,
>>
>> Dmitry pointed out interesting issue when writing PCI schema. Consider
>> the patch for Exynos PCI schema (which includes SNPS schema and
>> unevaluatedProperties:false):
>> https://pastebin.ubuntu.com/p/4SzxVP4N3j/
>>
>> This passes `make dt_binding_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/` without a
>> problem. It should not. The property is nowhere described, so
>> unevaluatedProperties should scream.
>>
>> Other bindings using unevaluated:false and some ref, also has this
>> issue. The additionalProperties:false (when there is no ref for other
>> schema) works correct.
> 
> This is because I never committed the fix for all this which explains the issue:
> 
>     dtschema: Strip 'additionalProperties: true' from schemas
> 
>     An 'additionalProperties: true' makes all properties evaluated, so an
>     'unevaluatedProperties: false' schema doesn't work when referencing a
>     schema with 'additionalProperties: true'.
> 
>     Really, 'additionalProperties: true' should be dropped, but it is used as
>     a flag for common schemas which are usually incomplete and included by
>     device specific schemas. Removing it would mean dropping the meta-schema
>     requiring either 'additionalProperties' or 'unevaluatedProperties'.
> 
>     Signed-off-by: Rob Herring <robh@kernel.org>
> 
> Since snps,dw-pcie.yaml defines 'additionalProperties: true',
> everything is evaluated...

Thanks for explanation.

> 
> This fix needed schema fixes to land before I committed this, but it
> was the end of the year and I guess I forgot about it. Now, it looks
> like we have more to fix. :(  25 to be exact:
> 
> Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.example.dtb:
> audio-subsystem@11400000: dma-controller@11420000: Unevaluated
> properties are not allowed ('#dma-channels', '#dma-requests',
> 'power-domains' were unexpected)

I'll fix the power-domains, but dma-channels/dma-requests should not
fail. This should be accepted through:
arm,pl330.yaml -> dma-controller.yaml -> dma-common.yaml

> Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.example.dtb:
> dma-controller@11420000: Unevaluated properties are not allowed
> ('#dma-channels', '#dma-requests', 'power-domains' were unexpected)
> Documentation/devicetree/bindings/ufs/ti,j721e-ufs.example.dtb:
> ufs-wrapper@4e80000: ufs@4000: Unevaluated properties are not allowed
> ('power-domains' was unexpected)
> Documentation/devicetree/bindings/ufs/ti,j721e-ufs.example.dtb:
> ufs-wrapper@4e80000: ufs@4000: Unevaluated properties are not allowed
> ('power-domains' was unexpected)
> Documentation/devicetree/bindings/ufs/ti,j721e-ufs.example.dtb:
> ufs@4000: Unevaluated properties are not allowed ('power-domains' was
> unexpected)

I'll fix it.

> Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.example.dtb:
> hdmi@10180000: Unevaluated properties are not allowed ('ddc-i2c-bus'
> was unexpected)
> Documentation/devicetree/bindings/net/mctp-i2c-controller.example.dtb:
> i2c-mux: i2c@1: Unevaluated properties are not allowed
> ('mctp-controller' was unexpected)
> Documentation/devicetree/bindings/net/mediatek-dwmac.example.dtb:
> ethernet@1101c000: Unevaluated properties are not allowed
> ('power-domains' was unexpected)
> Documentation/devicetree/bindings/net/wireless/mediatek,mt76.example.dtb:
> wifi@18000000: Unevaluated properties are not allowed ('reset-names'
> was unexpected)
> Documentation/devicetree/bindings/net/cdns,macb.example.dtb:
> ethernet@ff0c0000: Unevaluated properties are not allowed
> ('#stream-id-cells' was unexpected)
> Documentation/devicetree/bindings/net/dsa/microchip,ksz.example.dtb:
> switch@0: Unevaluated properties are not allowed ('reg',
> 'spi-max-frequency' were unexpected)
> Documentation/devicetree/bindings/net/dsa/microchip,ksz.example.dtb:
> switch@1: Unevaluated properties are not allowed ('reg',
> 'spi-max-frequency' were unexpected)
> Documentation/devicetree/bindings/net/dsa/realtek.example.dtb:
> switch@29: Unevaluated properties are not allowed ('reg' was
> unexpected)
> Documentation/devicetree/bindings/pci/apple,pcie.example.dtb:
> pcie@690000000: Unevaluated properties are not allowed
> ('power-domains' was unexpected)
> Documentation/devicetree/bindings/pci/socionext,uniphier-pcie.example.dtb:
> pcie@66000000: Unevaluated properties are not allowed
> ('legacy-interrupt-controller' was unexpected)
> Documentation/devicetree/bindings/mtd/mxc-nand.example.dtb:
> nand-controller@d8000000: Unevaluated properties are not allowed
> ('nand-bus-width', 'nand-ecc-mode' were unexpected)
> Documentation/devicetree/bindings/mtd/ingenic,nand.example.dtb:
> nand-controller@1: Unevaluated properties are not allowed
> ('ingenic,nemc-tAS', 'ingenic,nemc-tAH', 'ingenic,nemc-tBP',
> 'ingenic,nemc-tAW', 'ingenic,nemc-tSTRV' were unexpected)
> Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.example.dtb:
> mmc@84b0000: Unevaluated properties are not allowed ('interrupt-names'
> was unexpected)
> Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.example.dtb:
> mmc@84b1000: Unevaluated properties are not allowed ('interrupt-names'
> was unexpected)
> Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb: usb@0:
> usb@fe200000: Unevaluated properties are not allowed ('dma-coherent'
> was unexpected)
> Documentation/devicetree/bindings/usb/dwc3-xilinx.example.dtb:
> usb@fe200000: Unevaluated properties are not allowed ('dma-coherent'
> was unexpected)
> Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.example.dtb:
> flash@1: Unevaluated properties are not allowed ('rx-sample-delay-ns'
> was unexpected)
> Documentation/devicetree/bindings/spi/microchip,mpfs-spi.example.dtb:
> spi@20108000: Unevaluated properties are not allowed
> ('spi-max-frequency' was unexpected)
> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.example.dtb:
> flash@0: Unevaluated properties are not allowed
> ('nvidia,tx-clk-tap-delay', 'nvidia,rx-clk-tap-delay' were unexpected)

> Documentation/devicetree/bindings/spi/samsung,spi.example.dtb:
> audio-codec@0: Unevaluated properties are not allowed
> ('spi-max-frequency', 'controller-data' were unexpected)

I'll fix the audio-codec.

Best regards,
Krzysztof
