Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C5665B202E
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:11:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231812AbiIHOL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231475AbiIHOL0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:11:26 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C038A1D59
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:11:24 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id v6so6657134ljj.0
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=o3OotFGc4zQb4T1etN8tA5qJ2OKFzMyTl9qsFJ7tIeo=;
        b=GMlEMT15K7e8wundvnjKKiFp+5WSTRSv9HE+qMfJkko93+KlsoM6ZAWvPUFyrvb3s3
         kdGImWCvPd9JMSqYz91qX6yrBCJKYTu7FhZTaeGVQEz20VCOqzzpJBGBQiyRZIZkAGrF
         G77e13UzyXEjotfPjWpFQLP3Fleab5TwfsF0QZNGxXhl/WJY7Yay0NMH8b7NDi1CzG7O
         IdYKXbdn5uD4f5VcFONhu7RzYG/bhvKODttGt5z89L1LdKw+tkWAyQzZxqrNmpaN8ntu
         yA/bBYASlJRxyXI4XmMKLRlkrxMNgUrzL8J8ysrbrpdS+c5cF3j2JllaP1lFwpjTrB7B
         Cydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=o3OotFGc4zQb4T1etN8tA5qJ2OKFzMyTl9qsFJ7tIeo=;
        b=wcFR8wIQ7UwT3WYR/UwND+vK5yMSzykjGSi2cZ2oMSdxDNah+9TsMVo4t0cPygSJzK
         OrEAIYnIPjydY+HN1CfBnQ0ldXDPYGCKOvXVDc1xdC1o1UOxxnPULdbP4YeB+ti+Z/Jd
         yhEDRNgsfpVWeGISeT9ZmfE1/7JcqMvYteKRIfj4Qn1EoQNFpZEn5B9AtKv4ncHagdmL
         GRaEq7cuMhUtZ1bzBYshnahasP4IlExaY7PlKNo5rwA/sR5paLcL7ypC/NtDUjqHuH4J
         /qNkuV4CH7q8sECY2bksEJogUrVaLN8Ep3siv+UMSD4zVKRyj2zpQ7NO4Mm8COWI56bM
         wbwA==
X-Gm-Message-State: ACgBeo2CJr05Wj/aEFM7u9o8/epfzqF0doTCYMRljZg4xPXv+9+l2nq2
        RI6E9RJFEHorVdBYcpH/gKzfzQ==
X-Google-Smtp-Source: AA6agR6aTA4lP/gd7HEc42s9ZZ6P5V/ewmsp1xku/A5U67jnYBHwWQsUuQ4IXsdHJvmcTqOITzRJjA==
X-Received: by 2002:a2e:be89:0:b0:25f:e95a:7c6e with SMTP id a9-20020a2ebe89000000b0025fe95a7c6emr2423281ljr.468.1662646282632;
        Thu, 08 Sep 2022 07:11:22 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b00498f51af149sm19257lfr.308.2022.09.08.07.11.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:11:22 -0700 (PDT)
Message-ID: <e09e3dc0-1abe-d7c5-e05c-a4d5e1f2911b@linaro.org>
Date:   Thu, 8 Sep 2022 16:11:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 01/11] dt-bindings: msm: dsi-controller-main: Drop
 redundant phy-names
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
 <20220907000105.786265-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-2-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 02:00, Bryan O'Donoghue wrote:
> Adding in msm8939 which is based msm8916 dtsi I stumbled across a binding
> check complaining about the phy name for msm8916 which we were reusing for
> msm8939.
> 
> The currently inconsistent upstream dtsi naming of "dsi" and "dsi-phy" is
> not captured in the yaml for this driver.
> 
> The driver however doesn't care about the name of DSI phy, hence the yaml
> check is redundant.
> 
> Both Krzysztof and Rob suggested we could drop the phy-names entirely if it
> really isn't a dependency.
> 
> So, drop the inconsistent and unnecessary phy-names field from the yaml.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
