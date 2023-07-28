Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAD2E766B57
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 13:06:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236014AbjG1LGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 07:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234278AbjG1LGk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 07:06:40 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B7A6271D
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 04:06:39 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3fbc63c2e84so21895975e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 04:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690542398; x=1691147198;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CU70Eh2OqmXn/mXGJvsy6fLIYE8In/MkQR/tQEWkQOM=;
        b=qc+LVsKsC9fZ7c+Rtm+B2SsFYCOiBYG5PWTpso7gwBhW+WfgE5FpsPvkjpvfFHSgFP
         StwtdmRslvH+8jrCQN8cxve8M3slE8/gQzVRrvDpdDe6+Opb1KHGXSeyCqVcK6BRsDcr
         l7X586fVfKFo2JKJeIGJIiiWduAhFhfe5vIY2ubTBAKrjg9BxrtNe7T5sxSfYWHg/UrV
         kgEmRQB3wj5p66rxdWRvFmSMk0KrbHQyK7QPSSAamjhP6m1Snkh6Hi2upAHmaGuOZ5gq
         /XhqobN4OCxcEPbfQSWZkLnmkGrMq01Ov+1q9i2Yl+zYniaL/2EjPgfP+2LUe+2J8IcY
         +qlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690542398; x=1691147198;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CU70Eh2OqmXn/mXGJvsy6fLIYE8In/MkQR/tQEWkQOM=;
        b=ab2+5qYQzQiA5lStJqr/KjazRyDESVu/6QB28cjTt9VZWqUylPS2fHWzDWr+UW9zfX
         IKxZlg5ccseQeWd1LCurmxDMd/h73t7NxEHUSlzguu8whMmmYoCpm7E/a6tSUoLyyIDn
         6FZPey97+cYOtl4c69jFYjBj6DpFq8nltTkOwu4YmVc8W2zpoYtiXtcvwlOtt1fK6xQY
         /UK6cCU5aYNBmG8u4Lgff9DiVJW0dTvAvAORZz4iZ10PH9s2qiIYZuFPO06ggQep0H8q
         TEOvxTaoSAhiwo42HZGgiv5EO+Pme1ORlYO9xsw0dPJRqC5ME/6t4E3D3GA9y7KPV6C5
         OQcQ==
X-Gm-Message-State: ABy/qLYz4wwXb/4NZloPQx2wusdbcv7TCiPBm1NOuGerwNl8eCzq4p+r
        7uDtc//pyNgMyOVm94s6qWr+zg==
X-Google-Smtp-Source: APBJJlHjVByBvBfppyeBdQWe2dS7fGbuNTvvMqTHXVJ0Cu9SAu5uwxXYOY65e950xrmaJkwlvIO39A==
X-Received: by 2002:a05:600c:20c4:b0:3fb:e643:1225 with SMTP id y4-20020a05600c20c400b003fbe6431225mr1636663wmm.13.1690542397797;
        Fri, 28 Jul 2023 04:06:37 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.48])
        by smtp.gmail.com with ESMTPSA id n5-20020a7bc5c5000000b003fbe4cecc3bsm6831870wmk.16.2023.07.28.04.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 04:06:37 -0700 (PDT)
Message-ID: <b5c44fc5-005d-6268-af68-85eda9c330ba@linaro.org>
Date:   Fri, 28 Jul 2023 12:06:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 20/50] dt-bindings: atmel-nand: add
 microchip,sam9x7-pmecc
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102636.266309-1-varshini.rajendran@microchip.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230728102636.266309-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/28/23 11:26, Varshini Rajendran wrote:
> Add microchip,sam9x7-pmecc to DT bindings documentation.
> 

Why? What's the underlying problem that motivated you do this patch?

> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  Documentation/devicetree/bindings/mtd/atmel-nand.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/atmel-nand.txt b/Documentation/devicetree/bindings/mtd/atmel-nand.txt
> index 50645828ac20..4598930851d9 100644
> --- a/Documentation/devicetree/bindings/mtd/atmel-nand.txt
> +++ b/Documentation/devicetree/bindings/mtd/atmel-nand.txt
> @@ -56,6 +56,7 @@ Required properties:
>  	"atmel,sama5d4-pmecc"
>  	"atmel,sama5d2-pmecc"
>  	"microchip,sam9x60-pmecc"
> +	"microchip,sam9x7-pmecc", "atmel,at91sam9g45-pmecc"
>  - reg: should contain 2 register ranges. The first one is pointing to the PMECC
>         block, and the second one to the PMECC_ERRLOC block.
>  
