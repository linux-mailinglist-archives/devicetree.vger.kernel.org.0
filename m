Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2263A611D49
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 00:15:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbiJ1WPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 18:15:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbiJ1WPy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 18:15:54 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF87420883F
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 15:15:53 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id z30so4366023qkz.13
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 15:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RJEWhN+vdUzoNPUpigEBlncx5XDsdOxq86enB/CAh84=;
        b=SkWJPdFhfWGhg9HO7bbPVL+g3r3ROOQ335yVeqHXCgzQgQq11sXHUabWF4THEUxASd
         ZLldonVCLGzjeGe4TIROWdqo5cuXoTISaoXKksULnzXQ/4bmxOHWgK5kGqWRu5MuXj8f
         TtA7lm+7MLGCUx+dM2f2SwgJzURoi4pFnA0nrfTNNWfvK/HfMhO1n5EQKLJXZCNtnegg
         RbxoZOmDoRkhPmL9eyZ+1PqWqHuKccqBIijqNjDHFYtzWxfTY6Vwx+U1F8clXa8GyGuG
         E+vjpdndoIblg78FeqKHFd62CNp5s8yB8XfctwiHi0N5wCoewQa51JKohSvX44poWzON
         fkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RJEWhN+vdUzoNPUpigEBlncx5XDsdOxq86enB/CAh84=;
        b=gFvkUesNv9tjlNmA0a9iTwub/g/jroJGz3A9QJNI7+75hOMMh9HMoYGkfFfLKxiMQl
         h831Vh8BDKRThRJVUEJD3xa8ccpEdscm22sGY3FSWYUbnZxKzQ5QODbY0njK0m8Lh/Mw
         EKwikLiQ1iaqlaGgLoBELYF2zQmeKXxQF8hOJJc+DKT7m9gACMr1Hx+8Ry5qnjzlZQny
         nK5tHu9c6nUC6Awq5cjaElloYLRGHetvVGq9NBJwiPsorBTFrBszQHGEz8MKXxUeZFn5
         5OkgY3yrhK7HcoGEH6IloZgWbMM3M2127prAdXMQiJe9+tszBrWz5D+8qvY4bTWNFByC
         AgUQ==
X-Gm-Message-State: ACrzQf3Uqofbj13TjK4gZv9oY91r0sCUXNKqyjej8gr4qIzY5646O3Ug
        Tr7JpPeqFOMcRxjC953zGBJnZQ==
X-Google-Smtp-Source: AMsMyM7nOfQRc9IjTp/cjsKRHptBM5bv2/N8D5i4fHhIjcEPUnSOiLNjfb/YfAMsFowoFJRTZITLLg==
X-Received: by 2002:a05:620a:12e6:b0:6f9:fef4:3619 with SMTP id f6-20020a05620a12e600b006f9fef43619mr1165487qkl.424.1666995353009;
        Fri, 28 Oct 2022 15:15:53 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id br16-20020a05620a461000b006bbb07ebd83sm3715434qkb.108.2022.10.28.15.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 15:15:52 -0700 (PDT)
Message-ID: <0ada5a42-02f4-50ce-e65c-1a5fa9966900@linaro.org>
Date:   Fri, 28 Oct 2022 18:15:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 09/10] dt-bindings: interconnect: qcom,msm8998-bwmon: Add
 sc8280xp bwmon instances
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221028034155.5580-1-quic_bjorande@quicinc.com>
 <20221028034155.5580-10-quic_bjorande@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028034155.5580-10-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2022 23:41, Bjorn Andersson wrote:
> The sc8280xp platform has two BWMON instances, one v4 and one v5. Extend
> the existing qcom,msm8998-bwmon and qcom,sc7280-llcc-bwmon to describe
> these.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  .../devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
> index be29e0b80995..223cd6ecf279 100644
> --- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
> +++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
> @@ -25,9 +25,14 @@ properties:
>        - items:
>            - enum:
>                - qcom,sc7280-cpu-bwmon
> +              - qcom,sc8280xp-bwmon

qcom,sc8280xp-cpu-bwmon
To match sc7280. I think it's better than my initial choice for
qcom,sdm845-bwmon without the cpu part.



Best regards,
Krzysztof

