Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C9BD63F2A1
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 15:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbiLAOVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 09:21:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231851AbiLAOVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 09:21:03 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DEBBBD8AB
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 06:20:59 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id l8so2014696ljh.13
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 06:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bU1Vwk5Tmv4K9L2VLdgCnaQGUjWEJsKp00x/W3heURk=;
        b=HS1BLG4qnjMDc4F3JIRikYOrGBGxN1wAY476bEDpuo+WAy0l/myC7qWNbJ8WoADIsL
         6mMQmex8rDOvMcRa+wyPDQZo1SOfeQwtz2KeMFlOpa40Ddgq9WyhQQP1QSaGyyVBzQvi
         /6DmuCbycX/0jnTI9dzR1jAd3QX4uT2o2tgqlq/41IUN4r1iVIF7GZ4+EpxzFvS0kCs3
         bdPNup/X2bH1XpQtApW+tUIJciD6sZkQOn9MHTAlNa0CFjnVWtelOiZ7PAXlUKPgUF9l
         cE0SrNwDnBr6gAZfaOmJuSFct5DirKH6PukFuE9+rPKFz8wZ22M5syrwMwC3Dua7Go0w
         3mUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bU1Vwk5Tmv4K9L2VLdgCnaQGUjWEJsKp00x/W3heURk=;
        b=KYDOxsZ+aJl844tewZRvN8HQuCjZhvT40A/wSjRf6sm12PKd7pE9TMuyhxb3VrjMRK
         Qsiw+pGdJOFto3o6gM+U18VsdcocWS28Abca9Nz6g822HxlZj7xGwB/tRTtaZ8xDdmg2
         ctTo0oc5uSX+QKB2f7kKQWH+r6MDZ2a7NYR6dFMI62KQVo4JMobb4/QROUL35SZqGeS5
         vt5EsrW61f2yIUCbUQZO9qVQpJUBWK2eydCkXSt6dHG5/gStBv9eS4UaqgEPmtVXPsoa
         9DY/uk+kBjxF32JEGBlvCzQ4TtLZ34YZAsWA9n0Ab7s+tX3w+KO8BIjOQbPSvchawQto
         AsTA==
X-Gm-Message-State: ANoB5pmZu4VDhr/ebECUcQbMb5SVfyKAuv+sKW3DBPo78I9/dvSu4E96
        g2UQU+oLXpc2i4vB/EubNK5gNmpXxIEh7Q==
X-Google-Smtp-Source: AA0mqf6J6k0OFCFa1BM3BigB8Pj/um7/adyO77ipGhIpgb1e4AaxHzi419P6M5zNn9+T+qn9jTTtdw==
X-Received: by 2002:a2e:b631:0:b0:277:890a:f1cc with SMTP id s17-20020a2eb631000000b00277890af1ccmr21408432ljn.395.1669904458058;
        Thu, 01 Dec 2022 06:20:58 -0800 (PST)
Received: from [192.168.1.101] (95.49.124.14.neoplus.adsl.tpnet.pl. [95.49.124.14])
        by smtp.gmail.com with ESMTPSA id z22-20020a056512309600b004b4b5bde0c2sm653174lfd.279.2022.12.01.06.20.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 06:20:57 -0800 (PST)
Message-ID: <1cdcafab-5dae-09af-3101-9f7d57bed189@linaro.org>
Date:   Thu, 1 Dec 2022 15:20:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 3/4] dt-bindings: arm: qcom,ids: Add SoC IDs for SM6115 /
 SM4250 and variants
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        a39.skl@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20221201141619.2462705-1-bhupesh.sharma@linaro.org>
 <20221201141619.2462705-4-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221201141619.2462705-4-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1.12.2022 15:16, Bhupesh Sharma wrote:
> Add SoC IDs for Qualcomm SM6115 / SM4250 and variants.
> 
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  include/dt-bindings/arm/qcom,ids.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
> index 5e0524991e99..8f5324dd3ff2 100644
> --- a/include/dt-bindings/arm/qcom,ids.h
> +++ b/include/dt-bindings/arm/qcom,ids.h
> @@ -125,11 +125,13 @@
>  #define QCOM_ID_IPQ8071A		396
>  #define QCOM_ID_IPQ6018			402
>  #define QCOM_ID_IPQ6028			403
> +#define QCOM_ID_SM4250			417
>  #define QCOM_ID_IPQ6000			421
>  #define QCOM_ID_IPQ6010			422
>  #define QCOM_ID_SC7180			425
>  #define QCOM_ID_SM6350			434
>  #define QCOM_ID_SM8350			439
> +#define QCOM_ID_SM6115			444
>  #define QCOM_ID_SC8280XP		449
>  #define QCOM_ID_IPQ6005			453
>  #define QCOM_ID_QRB5165			455
> @@ -137,6 +139,8 @@
>  #define QCOM_ID_SM7225			459
>  #define QCOM_ID_SA8295P			460
>  #define QCOM_ID_SA8540P			461
> +#define QCOM_ID_QCM4290			469
> +#define QCOM_ID_QCS4290			470
>  #define QCOM_ID_SM8450_2		480
>  #define QCOM_ID_SM8450_3		482
>  #define QCOM_ID_SC7280			487
