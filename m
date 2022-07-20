Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DC6757B202
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 09:46:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232123AbiGTHqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 03:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240206AbiGTHqe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 03:46:34 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FF7C691C0
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:46:30 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id bf9so28810776lfb.13
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yDflIxoarjB5o8BktCyGSkrFxpci5KW41k5dQXOh/OM=;
        b=F/g5Mnv5Fn54CNkdIskc5A1G8ON5CauuUvtrWNo43pDn9FibqAnLuNDsO8LDpOJug6
         lA+F8nqDtIGwr2NK2M9Ff3DkixcwpqVCST+6aL9qSJKVGHjhrxWzwBdvObmdTg4MS7B9
         8xLStuvcJP5X8pKS/I6ewgdheN9BeCyuJDcjCJg7dCuH9adQDRSB5qo20IazBG+Lt3Jq
         kcEghAtC51KkqZTrvKmor3gsExW40GKuEGpKjPrNZNfEePoxMIoXdrllD1H/Jvd28iyU
         xjIupL+wCFLPPmZ6tPekONz2/D2pBSWBLxWwPmsXgsB7/khhYd1w2FEI7eKL7hLzFb3w
         vAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yDflIxoarjB5o8BktCyGSkrFxpci5KW41k5dQXOh/OM=;
        b=uhIU3RTq3ZQjrnoG0k7ZJyyK54/cF1bAGZvNrKz8gCtAc122tTkJwzPYjhXeSY5EmM
         On4I4YIHQghMarx3ABfnBYspghDwAq5/onSI69BvvWsq4Wotl/AKle4G+YnCUMD8qYPh
         l2vEfluSPZPw2MtxjBce8vn6CxaVv/gy894pxw9DHjYDnYkHDzlSYpG+mBCyhBc/2jVj
         yuquUjf6U5nD8ZYoX9dTCwbgB0xzuW8Nsr5o5sBUdeWEFVH8yjWEdfBmigk1jxjMdauc
         c8i5/8tvs3mviRZVFuWeDAKUuoLs9A9IXSbUPVB6oAuUR2mNn8nhQ03XHU9UB8E6Ka0D
         elIg==
X-Gm-Message-State: AJIora/uGKnKTN+Pi3uoHJ6gDg8REIEnTCFggkGwKL/tAkCFo9JfJ7hR
        4s2Fj/wH4ZysIjEQ7HWcTcPTew==
X-Google-Smtp-Source: AGRyM1sT5bgHDxy8DSYTlUWHlh221BK9GLwPQVyzaqyJP5TiqJi8GlzJc1JuCB1ahJiW5hFyfMImjw==
X-Received: by 2002:a05:6512:3b0a:b0:489:da13:180a with SMTP id f10-20020a0565123b0a00b00489da13180amr19808084lfv.489.1658303188829;
        Wed, 20 Jul 2022 00:46:28 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id c11-20020a056512074b00b004866226ea34sm3635722lfs.215.2022.07.20.00.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 00:46:28 -0700 (PDT)
Message-ID: <4cc6a276-4cbe-506a-6425-677c56469645@linaro.org>
Date:   Wed, 20 Jul 2022 09:46:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: arm: qcom: Document additional sku6 for
 sc7180 pazquel
Content-Language: en-US
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Henry Sun <henrysun@google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220720073755.1.Ifab936517646b3876dd31b6e9b1b58a858529e57@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720073755.1.Ifab936517646b3876dd31b6e9b1b58a858529e57@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 09:38, Yunlong Jia wrote:
> The difference between sku6 and sku4 is that there is no esim
> 
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 4dd18fbf20b6..aebeefdab27f 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -410,6 +410,7 @@ properties:
>        - description: Google Pazquel with LTE and Parade (newest rev)
>          items:
>            - const: google,pazquel-sku4
> +          - const: google,pazquel-sku6

This looks wrong, did you test it?

Best regards,
Krzysztof
