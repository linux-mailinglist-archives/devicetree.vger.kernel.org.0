Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0DF518429
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 14:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235091AbiECMYW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 08:24:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233203AbiECMYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 08:24:21 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EDE5E0E3
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 05:20:48 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id p4so19710296edx.0
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 05:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ATypDYM1Hgw+JVW3PULzGTbDtRMsM1D9mY5duLSApB8=;
        b=nTPHWz/N33wHk9/lw+L2kBwXpj5x0zVfhGA+f3kH4W/aXt6VouU0DMNzNmUjp5XfrE
         K76y2ic2byO67ladLMh+lxvi8IP+l/ePGavIhGKhT34T3glgPwr6fVBHRd9ZREtsB92g
         AJhWF1SLB90XBjVer6ZUVlmFBilUfU9osp2fD2TokRZJkojd7JQZig44vqLztvKrdCHM
         +54+fXN91uESKdnk8igkoV5CMxPBB4wuyZ2HcwbA+5qI2xpiuRmagbpTCZ6YADyAYlxd
         hAK8nHs25AEdRh7P5sGbG+iXN7r2w2u1SmZodHKtmbK2obcrZOTSH4vucwYamdWF6RJZ
         vXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ATypDYM1Hgw+JVW3PULzGTbDtRMsM1D9mY5duLSApB8=;
        b=0iPzbecMQuc9Yb1dW5ZYXt4o3+Fkpv5fv3qZ5mYAwORY+74mLNlMm8FY4SKxuJHfFu
         lvko4u354hew5P/CI5+CCv4QNyrtikJHDCDTzt93nr1J0OsF9iZtk+8dAGrNk90euOfX
         wDut1rYjdLXIitARhSlScWkQrkQSxf9laAF+x/ycFsvfND4cw0SybOMSR0+6aYC4/1bx
         gGRhb8h3AiSBtHA5Auu6xpnPnh7XmYoIXlIDw8DrQCyTnAboUTK3nMNU8QePYXmvZV41
         lS9JVWy16MpPXRuK3FvlcuCtHnJ0IU6Ccgehw06eMuJ0aIDo2mHRe5baAKawRAfMkwS5
         HTTg==
X-Gm-Message-State: AOAM531V949z4rvBYqs9fLktK9j+4+t+7VDBN6IN+4i63YOVMIXA6ymF
        RbfvWgUX3fwv2mlJHPfyoil2Kg==
X-Google-Smtp-Source: ABdhPJwPIztAKjsTj9360EQjP1NOUrsVE200KUaRbSlAtUqgg3AOW7qipEdvW2qW35onBNwtlqtoJg==
X-Received: by 2002:aa7:d842:0:b0:425:f329:33b1 with SMTP id f2-20020aa7d842000000b00425f32933b1mr17829071eds.74.1651580446747;
        Tue, 03 May 2022 05:20:46 -0700 (PDT)
Received: from [192.168.0.203] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ci18-20020a170907267200b006f3ef214e0esm4543127ejc.116.2022.05.03.05.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 05:20:46 -0700 (PDT)
Message-ID: <c3789226-849f-4a90-d68a-d0e46763c8ee@linaro.org>
Date:   Tue, 3 May 2022 14:20:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: remoteproc: mediatek: Fix optional
 reg-names for mtk,scp
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
References: <20220502192420.2548512-1-nfraprado@collabora.com>
 <20220502192420.2548512-2-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220502192420.2548512-2-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 21:24, Nícolas F. R. A. Prado wrote:
> The SCP has three memory regions: sram, l1tcm and cfg. Only sram is
> required, the other two are optional. Fix the dt-binding so that the
> optional regions can be omitted and passed in any order.

I commented for v1 - order is strict, so no for this change.

> 
> Also add the missing minItems to the reg property and update the
> description.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 
> ---
> 
> (no changes since v1)
> 
>  .../devicetree/bindings/remoteproc/mtk,scp.yaml      | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> index 823a236242de..ec9ddeb6ca2c 100644
> --- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> @@ -24,14 +24,20 @@ properties:
>    reg:
>      description:
>        Should contain the address ranges for memory regions SRAM, CFG, and
> -      L1TCM.
> +      L1TCM. Only SRAM is required, while CFG and L1TCM are optional.
> +    minItems: 1
>      maxItems: 3
>  
>    reg-names:
> +    minItems: 1
>      items:
>        - const: sram
> -      - const: cfg
> -      - const: l1tcm
> +      - enum:
> +          - l1tcm
> +          - cfg
> +      - enum:
> +          - l1tcm
> +          - cfg

Nope.

>  
>    clocks:
>      description:


Best regards,
Krzysztof
