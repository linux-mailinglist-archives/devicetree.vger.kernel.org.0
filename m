Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF886576A4
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 13:50:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232618AbiL1Mug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 07:50:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232629AbiL1Mue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 07:50:34 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4B5C74E
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 04:50:32 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id i19so3557613ljg.8
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 04:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F8/YpCQ3OCyoXapLzBfKYsO+glpD+PxcQRfK5fsu1GI=;
        b=BbGSIBDlIWjIPzIpI3IS8aDjGCShQ4Bu4EaZZLSteCB334CyeQ2zI99HK430n63BZv
         VvW5PwkZvppnArmmmr9MBtM4JKjjbwArgtn31D7q92AGhpioi1jW7sRwXta/hJhtaVCw
         CDYK2FY2DwxH3UPzeL70VcgpwA4G/7mvUdulhiLMR4ECKQrf/RJOLdb6MLpm/dSoxH04
         Y0GS3HXH1F3F/p2Vr9vApS9jAOmJN3u+qsBaAprFlbOl454Sr4G4lhXkU08SAVBza48g
         dpBL6ht8pBHgI1OvLfJur13p1X50NjzD2Bl6KqgHRLnFWgriKUTYZhKUo2GBhebKNYaU
         q/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F8/YpCQ3OCyoXapLzBfKYsO+glpD+PxcQRfK5fsu1GI=;
        b=Eqwurq4g+uWVoREdv58MxPoA+yYZZ9WI5nKhCcxTVw1JQ5dKrAqjisXm8E8Mg7gMjK
         6Drg4qt6BtQOBygK0jRqW9ic+4HDbFVnU+qSYAIr95ZNlvfepX+aWqSdHSdavk0PWvqe
         ND4LrVDip0iJZgla+VuMt4zbiwAl7oGuCX6U0nJo6/17lqq+Fg/xxCN8DGTpAT7kM9qq
         Xw9PYku/5ZMkvDeGvOnA+nKkhgrBvK9mQJNKqUSWw3jyr9hPO45tgZGInLnycb4ffsh+
         Gky/p+m+benZdjM5jgYUfSR9DIVHbrUnb8IXgI/gJySb8DF7cvGUET+PGMayHte8JGWo
         vGIg==
X-Gm-Message-State: AFqh2ko72H8Nh1yJ8j+TCulQX18WcL43WGskyjchkrs1GrWrQqkBikOK
        1bkB185HDxyVFk+w8x2dtXgf5A==
X-Google-Smtp-Source: AMrXdXvRNE45JeWBAUysh9AkxSKTXg9GFLWAFCY6ZvmLFOEstMdgfpxXKelwMIq271rDCe9QBrN5cA==
X-Received: by 2002:a05:651c:8f:b0:27f:b083:e328 with SMTP id 15-20020a05651c008f00b0027fb083e328mr4823175ljq.8.1672231831200;
        Wed, 28 Dec 2022 04:50:31 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id s4-20020a05651c048400b0027fbc576464sm1061755ljc.137.2022.12.28.04.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 04:50:30 -0800 (PST)
Message-ID: <97a27c10-411e-8823-507c-ebb3f71a48ed@linaro.org>
Date:   Wed, 28 Dec 2022 14:50:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8350: add missing
 core_bi_pll_test_se GCC clock
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221228112456.31348-1-krzysztof.kozlowski@linaro.org>
 <d2e303d9-3ac4-f574-680f-4f5ccbf5ed13@linaro.org>
 <5001001a-203f-e832-f916-ce483b2d8ea1@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <5001001a-203f-e832-f916-ce483b2d8ea1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/12/2022 13:55, Krzysztof Kozlowski wrote:
> On 28/12/2022 12:37, Konrad Dybcio wrote:
>>
>>
>> On 28.12.2022 12:24, Krzysztof Kozlowski wrote:
>>> The GCC bindings expect core_bi_pll_test_se clock input, even if it is
>>> optional:
>>>
>>>    sm8350-mtp.dtb: clock-controller@100000: clock-names:2: 'core_bi_pll_test_se' was expected
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>> Is it even going to be used by anybody, or should we just drop
>> it on the driver side as per usual?
> 
> It's mentioned as possible parent, so there might be users somewhere...
> Or you want to say that other binding and DTS users cannot use that clock?

Yes. In the past few months we have been removing the core_bi_pll_test 
from the old clock drivers (and new clock drivers mostly lack them). 
Let's remove it from the rest of clock drivers.

> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

