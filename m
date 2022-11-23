Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBE0D636ACA
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 21:19:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238859AbiKWUS1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 15:18:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239987AbiKWUSR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 15:18:17 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EBFF85A38
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 12:18:16 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id j4so29840634lfk.0
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 12:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ecST9nT/YcQwW35//EplrlkRqIWIVC66eBdnZLwwM+4=;
        b=QZQ/jJ7LjkL8hAeYXlFlOg1bxlT95iqex3nxXJ24iN/ZfpuN3mB3zvf2T4zslMD+g5
         mfAYwNdQ5MUD0WvmDjTILGmB+zMgPGuI/FlxGarsrblHRVx7MBK/nLJ4RxOYD2NTjtIt
         0O6YEh/5AfLIrLQvawbJ/bWrFyEYAldFCnTNedKUDQ3c82n1BwVBPztKsvXMujwNaQhL
         1mruzN2ERFvlhdgYLHD9qpYTI5CPlFN3JJjRMvrfDDZZE3DOblGKNG7oBnAdEmm/s03z
         golL4ZLItXDI0sNKPuKdkgp6cwsBWlQi7rS4T/DN8EKetDXdStgx2GF5dKsKBvc5HZIB
         4Jqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ecST9nT/YcQwW35//EplrlkRqIWIVC66eBdnZLwwM+4=;
        b=ouU+9+YAnOC8+eb/7XRxJoADk3FheuDFVUrhxu3LUAkfKp9NgUALJzra2IGpSmcP3w
         evBlukHZhr58AEr3H0W8xOVlLGPXtBnbCLn96AbkOATLNQvyn3Trm361iBZe4zWQs+gn
         kyMCUYoEDEECA8ann36nii9xzJXk7Ir/XA+8qn4nFYqPAvMeZBmB6nGVuo6hHM/LvgAJ
         3Ks9qEpokZY+qBQ0+NCrqP4TPXin5focCnfQCFE5DE73zb7brG20q1z2Hj5i8J1gVVQM
         PW0m9s8IPJQhXgHNuPIWxrHRvvsBgG78uHILygGOKJcoll2mDJCMxsYuoQRPeh8m7MmW
         tOVQ==
X-Gm-Message-State: ANoB5ploxrnaimrP+QeKIu1ybECA0MBCfN/mI1Fo4NUrAR/hls6/L5da
        wCzrmbgWE7uDmvJzpfHDwbRACw==
X-Google-Smtp-Source: AA0mqf4BQ4FuKuZDygKHET70fMHELwqB+ogCPgJHghJ08EZZIhz4651jCGxWeDveGnGlGKWQHheJXg==
X-Received: by 2002:ac2:43d9:0:b0:4a4:3059:af15 with SMTP id u25-20020ac243d9000000b004a43059af15mr4353327lfl.258.1669234694420;
        Wed, 23 Nov 2022 12:18:14 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v17-20020ac258f1000000b004a03eb21c4fsm81985lfo.288.2022.11.23.12.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 12:18:13 -0800 (PST)
Message-ID: <5fd29bdb-c93c-fa77-19ce-175fbfb8e639@linaro.org>
Date:   Wed, 23 Nov 2022 22:18:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 03/11] dt-bindings: display/msm: mdss-common: make
 clock-names required
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
 <20221122231235.3299737-4-dmitry.baryshkov@linaro.org>
 <40d5c7f3-148a-a5fa-fdf7-6fd301ec3a2d@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <40d5c7f3-148a-a5fa-fdf7-6fd301ec3a2d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 23/11/2022 12:19, Krzysztof Kozlowski wrote:
> On 23/11/2022 00:12, Dmitry Baryshkov wrote:
>> Mark clock-names property as required to be used on all MDSS devices.
> 
> This we see from the diff. Please tell why you are doing it. In some
> other recent bindings we dropped clock-names from required, so this is
> confusing.

Thanks for the question. It looks like you are correct and we do not 
need clock-names for the new mdss devices (only for the DPU devices and 
for the old qcom,mdss binding, but it's another story).

So, I'll drop this patch from the series. And for the next cycle I will 
check whether we can drop the clock-names from existing dtsi files (and 
from schema too).

-- 
With best wishes
Dmitry

