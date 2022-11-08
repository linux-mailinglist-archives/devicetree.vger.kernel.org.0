Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E69A3621E5D
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 22:15:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbiKHVPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 16:15:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbiKHVPP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 16:15:15 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF5D50F06
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 13:15:14 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id d20so22948771ljc.12
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 13:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TbPSXqBkkfsvy6sh0R6QLPf4hCgHc3rDcYUsSV8QWAw=;
        b=gq3BauSNoIQY8OsQReR2/NvF09kGSEZx51qdGVmKUYIUteqzHQQ5J2TnLGb2gefFa/
         66mzynqqNlKLZY2kx74CtQADZIfTPWdGr+5ssjYmxfxCpJgL/xyfq5TI0ZUqDrcatlMF
         xiVLW5M++2vI6ENo5p5rDUHK2ZZXwo81A+Hp26+sU00A3RfwzSgl1wv9jVTvLHXH/6HO
         WJywjXUdU44T1Yx4GweCVL5Cy4y+rNrKlSwVIvYv791IKImsObPWrQ6mLXKARM6BQQio
         jkxVCEs/kOCqhlMPkclREiGtlgPn85HnFq3NQiJS8izHFlulLo0wgwJB8be2jIDStm7r
         zC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TbPSXqBkkfsvy6sh0R6QLPf4hCgHc3rDcYUsSV8QWAw=;
        b=WeVgZ+lkSuiOBKCJsns6uJPrCDuxG7RyBF/hShsRFZaM9cIb5/APQF9Zxv4hP8IHXB
         f4+tbhha65OtYyYaLMrtQ668zb9v+gpSgRDJ9rQXF1kcea/3o1rLayrxDi+AMm+fNBei
         ezNBOeiia9FbCijtwlDIq2SJcOVCRGUBYpXw8FKR8GuqmGr4/7YPpK9zNM2GKchA7dUv
         /AifZpnIHEdYfFIlw6yoPxC9ZLALdNj9snrR5sZvqYdSYPAWIGA0ZlnyWwEbj+8h5IeL
         WvIp3aclfSyKNZInbru7AHyWiZfOvgzWcUlrB2zAiPPvC+K0Vah8Sb+7aEF9SZmDrl2E
         ibKg==
X-Gm-Message-State: ACrzQf1Y7mSzEnsMoigumPZZYfltO47e6q3+KtRc9f6yg4/DWy5sJ36+
        xLPE/9zm0BMnHHD0/XVsWE6D/A==
X-Google-Smtp-Source: AMsMyM7WIn32uNwx5DstbReB/5SJTwpZj+9Ij378/4SmbHtfHmPVJdupIAz9ZY92s7CNJTzU3Lfmaw==
X-Received: by 2002:a2e:9cd9:0:b0:277:489a:40b1 with SMTP id g25-20020a2e9cd9000000b00277489a40b1mr19393074ljj.367.1667942112646;
        Tue, 08 Nov 2022 13:15:12 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s17-20020a056512315100b0048a934168c0sm1931190lfi.35.2022.11.08.13.15.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 13:15:12 -0800 (PST)
Message-ID: <d721d484-84d3-f380-3bbc-43dad139bdee@linaro.org>
Date:   Tue, 8 Nov 2022 22:15:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 07/18] dt-bindings: msm: dsi-controller-main: Add
 compatible strings for every current SoC
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        robdclark@gmail.com, quic_abhinavk@quicinc.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org
Cc:     Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221107235654.1769462-1-bryan.odonoghue@linaro.org>
 <20221107235654.1769462-8-bryan.odonoghue@linaro.org>
 <aeb59d3c-34d0-f00a-bfc3-524cd03acb71@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aeb59d3c-34d0-f00a-bfc3-524cd03acb71@linaro.org>
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

On 08/11/2022 13:46, Dmitry Baryshkov wrote:
> On 08/11/2022 02:56, Bryan O'Donoghue wrote:
>> Currently we do not differentiate between the various users of the
>> qcom,mdss-dsi-ctrl. The driver is flexible enough to operate from one
>> compatible string but, the hardware does have some significant differences
>> in the number of clocks.
>>
>> To facilitate documenting the clocks add the following compatible strings
>>
>> - qcom,mdss-dsi-ctrl-apq8064
> 
> Generic comment: I think we'd better follow the arm/qcom-soc.yaml and 
> use qcom,soc-something as compat string. This would leave us with 
> qcom,apq8064-dsi-ctrl

That's a requirement. Only existing patterns are allowed to continue,
but here all there is no such pattern.

Best regards,
Krzysztof

