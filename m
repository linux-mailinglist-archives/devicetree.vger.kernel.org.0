Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5306571372
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 09:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbiGLHv2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 03:51:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232458AbiGLHv1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 03:51:27 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4E9F9C270
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:51:25 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id y11so6040616lfs.6
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZrFIt8F9N1X4RMbtLQXEkQDymA1m5MwO6fwtCs+pTX4=;
        b=Pylb32qF3GILfB+lcn/tDTMiqu5neaXiJd+TjKPouepYd8WxRXX8JpC9EBGwA4UFq9
         DUagA01g8oamdd+u1ceBFohbpjco9W0aFbpOVGkKkmXAQF6MW/gUR3vXZzUO9Jvll0pX
         UeqjyPTC6k12R0J/0Qpt+SuY0+Hk4wBdXqyPxz4Ohuor6rR9Q1DzIUsQTNT5v/89oTGx
         VnbVkxVCEx6Xy5Zrw7ZC2vTb0fJ1xhV1lWrd98KRKoa0z+R6kft+KU3llIfw0LA6tFPd
         rIUt7Cmcgh2/sWAiQlnSxSGLN01cGXHk6ve+pEn/JA5UyE8LdJefxw+Gt9/AjYrnL42/
         /w3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZrFIt8F9N1X4RMbtLQXEkQDymA1m5MwO6fwtCs+pTX4=;
        b=YG26FTXSa1id2yuI9o1bvlyBZlseoEtV3+9DPCV5qAzUUUvptIEA9ObuJx2QvMV9/V
         fdZIFnKr/F5tpM/v7Y8VJKhTDFQPaIiOLUGTEj+edVlz2L99Wc5zZkHp3aLyqB8TEyw3
         c0i0j8/GVHtOrGV9YWcIxJRat817XLg5NXV6bDKvPP/HaQVUI3XZKkM02XFTrGWZiPrt
         A4loTSq8dlb0LVknK0LpmHisUni9Io5ko6qhADioOF2z2ShVD2UsIPRkHM4sbgw5qtyv
         qRZez0hwf/xh4rFj5v++Pl2zCCG/zttax9J7rrnZGUy4YGBv3hLYKltS56B4VKSEMfpJ
         mzcQ==
X-Gm-Message-State: AJIora8MYdOw+jOB4AUGTLZgH9clW5kyAbuOYW98IkH6DsQGXt0VfZOf
        GwUvVJWEu3L1PH3D63qb2IQQjw==
X-Google-Smtp-Source: AGRyM1tYy/NNy4lhCjH90yu62C6nKh4qLFcJwq/30YuIninxYAiD5F+EuvrofzBlQW3iPC7Ege9GLg==
X-Received: by 2002:a05:6512:2210:b0:484:f174:bd51 with SMTP id h16-20020a056512221000b00484f174bd51mr14689892lfu.482.1657612284305;
        Tue, 12 Jul 2022 00:51:24 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id g7-20020a056512118700b0047f647414efsm2034115lfr.190.2022.07.12.00.51.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 00:51:23 -0700 (PDT)
Message-ID: <fe4dd875-c223-e70f-c935-064b0574fae2@linaro.org>
Date:   Tue, 12 Jul 2022 09:51:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: qcom: Add Xiaomi Mi Mix2s
 bindings
Content-Language: en-US
To:     MollySophia <mollysophia379@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20220709131935.50708-1-mollysophia379@gmail.com>
 <20220709131935.50708-2-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220709131935.50708-2-mollysophia379@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/07/2022 15:19, MollySophia wrote:
> Add documentation for "xiaomi,polaris" device.
> 
> Signed-off-by: MollySophia <mollysophia379@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 129cdd246223..80dff09bdc83 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -235,6 +235,11 @@ properties:
>                - xiaomi,lavender
>            - const: qcom,sdm660
>  
> +      - items:
> +          - enum:
> +              - xiaomi,polaris
> +          - const: qcom,sdm845

I propose to rebase on:
https://lore.kernel.org/all/20220524020411.GA2602849-robh@kernel.org/
or:
https://lore.kernel.org/all/20220628092253.21905-1-krzysztof.kozlowski@linaro.org/


Best regards,
Krzysztof
