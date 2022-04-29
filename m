Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91A47515005
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 17:56:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357479AbiD2P7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 11:59:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378543AbiD2P7k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 11:59:40 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BDD883B06
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:56:21 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id k2so11353157wrd.5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5YkjOkdMrTLUHQuUqGIwhkj1JaETsfvX42SuSe3Gl3c=;
        b=wGWFMuyL8G17A8QeN70Nd7L1AvMS/VUBX4pCfSaT7DmNIFF525gn/kuapKDIobv/Dw
         j5jQw1mgI/weBA4GjjkmHsSNmyubi0AwZS96UxUtt4/pYYvcuhXq8HYdOlrdmoi8ifU/
         Zhfpg56YtVKU3nfZHEUlCczPySy0sqoBjEWh1Lz2R2yUdcc5fz6qSgxp7nFGFxOmSNGB
         9oDQyIHz6swPKY3c/7xKNREwugmsRAy0LXI1uWrmtfbm6Hw1NvK90TcDko2Le9kySWX8
         fE2PAAPuwklQm9ZADLAAq2+vYB5g7vpSqL9GnDr2kLLHWzkkBB52gjfDSSBMwzDUqiuY
         z3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5YkjOkdMrTLUHQuUqGIwhkj1JaETsfvX42SuSe3Gl3c=;
        b=I7OEiTevwiD32WwfsRkqV91jWt+AVPUl32SASgLoAsRRb2LHDmIxEw8Z0F7ar/DKWe
         ednWti9Fa8b9dQH8Wh4Jqy19FTauY2kTal4MVvPWEDYMyjB/fE29U1JsXLxG/1WLyxvH
         AMvyMgRJz7MVMcPUEC9W2vcprf7zeR66ZX6etxwMlDxUykYOn0vLPSvcdgwn/eyLfI2D
         F2ex82yEIDhWDAD+GAs1JaFWLpPftdy4eVURy/CL20CryMdPofgBRxdKSgoTidqA6uDZ
         SmQjIhw+5JUXftPA0PPSjNkW3bybWUc6B3MrkM0AmCZ8pwDHiIuaZc3NSN90HG2P+gSW
         rwBA==
X-Gm-Message-State: AOAM532FcuAzgi/a93qipm3pyepjcpLEk4iObcKlOn83WY/Z9fs9zlWM
        OVHFgCpe9xC8bTyylcbaL77bHA==
X-Google-Smtp-Source: ABdhPJyg+nRz/2sRbQZ8PEJCtNIu7XO4S8NmiLPPoLyrEyCLFXywlMFZRqV1WgHniqt4fGttwAKXSw==
X-Received: by 2002:a5d:6e0d:0:b0:207:a4d9:7950 with SMTP id h13-20020a5d6e0d000000b00207a4d97950mr30514142wrz.477.1651247779788;
        Fri, 29 Apr 2022 08:56:19 -0700 (PDT)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id e3-20020a05600c4e4300b00393e40b41d6sm7023968wmq.15.2022.04.29.08.56.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 08:56:19 -0700 (PDT)
Message-ID: <7aa5d553-04ad-5198-153c-39a9375a6a12@linaro.org>
Date:   Fri, 29 Apr 2022 16:56:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 0/9] nvmem: sfp: binding updates and additions
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Walle <michael@walle.cc>, Andrew Lunn <andrew@lunn.ch>
References: <20220428181703.2194171-1-sean.anderson@seco.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220428181703.2194171-1-sean.anderson@seco.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28/04/2022 19:16, Sean Anderson wrote:
> This adds several properties to the Layerscape Security Fuse Processor
> (SFP) necessary for writing. Although the Linux driver does not use
> these bindings, I plan to use them in U-Boot [1]. It also adds a new
> compatibles for Trust Architecture (TA) 2.1 devices. In addition, it
> also adds an SFP binding for all TA 2.1 and 3.0 devices.
> 
> I would like to get this series merged for 5.18. As noted in patch 2,
> making the clock property mandatory is not an ABI break, but if this is
> not applied then it would become an ABI break. The absolute minimum
> patches to apply for this would be patches 2 and 5. The rest (including
> the regmap changes) could be deferred if necessary.
> 
> [1] https://lore.kernel.org/u-boot/7c8e206a-cd40-2a77-6282-7f4bead2b13a@seco.com/T/#m591f8425b6f096ab3d54e6f7bd258e41cfa4c43b
> 
> Changes in v3:
> - Update commit message to note that this binding has not yet been
>    present in a relase, so it is OK to make otherwise breaking changes.
> 
> Changes in v2:
> - Mention "regulator" in the description for ta-prog-sfp-supply
> - Convert sfp driver to use regmap
> - Fix various typos in commit messages
> 
> Sean Anderson (9):
>    dt-bindings: nvmem: sfp: Fix typo
>    dt-bindings: nvmem: sfp: Add clock properties
>    dt-bindings: nvmem: sfp: Add TA_PROG_SFP supply
>    dt-bindings: nvmem: sfp: Add compatible binding for TA 2.1 SFPs
>    arm64: dts: ls1028a: Update SFP binding to include clock
>    ARM: dts: layerscape: Add SFP binding for TA 2.1 devices
>    ARM: dts: Add SFP binding for TA 3.0 devices
>    nvmem: sfp: Use regmap
>    nvmem: sfp: Add support for TA 2.1 devices
> 

I have applied all the patches except 5/9, 6/9, and 7/9 dts patches 
which need to go via dts maintainer tree.

--srini

>   .../bindings/nvmem/fsl,layerscape-sfp.yaml    | 30 ++++++++++++++--
>   arch/arm/boot/dts/ls1021a.dtsi                |  7 ++++
>   .../arm64/boot/dts/freescale/fsl-ls1012a.dtsi |  8 +++++
>   .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  5 ++-
>   .../arm64/boot/dts/freescale/fsl-ls1043a.dtsi |  8 +++++
>   .../arm64/boot/dts/freescale/fsl-ls1046a.dtsi |  8 +++++
>   .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi |  8 +++++
>   .../arm64/boot/dts/freescale/fsl-ls208xa.dtsi |  8 +++++
>   .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi |  8 +++++
>   drivers/nvmem/Kconfig                         |  1 +
>   drivers/nvmem/layerscape-sfp.c                | 36 ++++++++++++++-----
>   11 files changed, 115 insertions(+), 12 deletions(-)
> 
