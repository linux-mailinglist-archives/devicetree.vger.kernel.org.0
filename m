Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E86A65AE4F
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:43:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230243AbjABInA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:43:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231967AbjABImz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:42:55 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F6E326C7
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:42:54 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id y25so40740381lfa.9
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OWvF5+vr/Y64Ptz2w29CVGpnxPAEM00KyTudEWOCB+c=;
        b=ZT3+V6ElE+qywIVBNCUI5U9FbAVjRsbYf3C4VXBQupVxoDIGRh8vvjNIHHGVdr8It8
         xxC9iL49MPBhmU4+xqlEKkSXZ6QFqDvlgxqGqAToAxfJNqyfXbp0NUKGPQoAptXRNt1R
         CJ97hCqwb6kKE1UK7ECHKtTFCWIIwlV7vxLcFHGzFdbdZOot91ZxmX32B9fp3wiDG+fx
         0XrgA9lDEMYPdkvdr7mVupbNabQbvvC8nsX/9/wYCDfksIkWkfvUBhK5lzIuIJ/8auwm
         LUpeRk5xN/+EWYcfRawdXQMtn6T8rn+aZ/SwKixMMvgiqclRGQ9xP0ciSNci+4JPj8YR
         b/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWvF5+vr/Y64Ptz2w29CVGpnxPAEM00KyTudEWOCB+c=;
        b=0sVgRHrbLBuQCHEbpSXVDDz1SRS6Ri8JOElLUIxSOBtv9ZOeS5ZUPCwkaTWE1Uxrpo
         V5jGqH4gRFFDrUnPeeGKb20peQ0it/53B1mV+SdzBwJLsz+EtNoE8udLhlyMhqips/az
         h1yna4n8SIL2XULsJ05YLArclQCB3b+BUq0cGuDfXLQ2YFc1RTZcELZyiwgEcS9J8qkI
         z+oNepC/6lQCrwDYH9FOZFMUhusItHJz3tUZQ1V940fTugZdL+Qh6D5Y9WamyHqbe4C2
         bBPRGxOJ0Z07YBZRgMrZTsuu/NbMp8rppT5/u+mKL62g0gPDNVnaUmcIpc1kcEhnCwQq
         2rBQ==
X-Gm-Message-State: AFqh2kr7mJO4dZtMtzizPmc1jYKDXtmJUfCHm/KEqX1y19PyuBep9i2w
        O6OvQreCwJ+WmFVzw5mJXF2TEg==
X-Google-Smtp-Source: AMrXdXsI4Ou649kbQ8+5XYPK7FkTEVxjQoPyOjEeO2mPSLjGXHq6vU8R37Zp83JxoSfEjInJjEMGUw==
X-Received: by 2002:a05:6512:3c88:b0:4b4:e4a1:2fc6 with SMTP id h8-20020a0565123c8800b004b4e4a12fc6mr13368192lfv.68.1672648972742;
        Mon, 02 Jan 2023 00:42:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bi2-20020a0565120e8200b004b543f38b7csm4428375lfb.21.2023.01.02.00.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 00:42:52 -0800 (PST)
Message-ID: <ddc1153f-6b73-4c37-8b36-891a84ace081@linaro.org>
Date:   Mon, 2 Jan 2023 09:42:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [RFT PATCH] arm64: dts: qcom: sc8280xp: remove GCC from CX power
 domain
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221230155502.115205-1-krzysztof.kozlowski@linaro.org>
 <20221230171619.om5mfvsp7gwatvu6@builder.lan>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221230171619.om5mfvsp7gwatvu6@builder.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,TVD_SUBJ_WIPE_DEBT autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/12/2022 18:16, Bjorn Andersson wrote:
> On Fri, Dec 30, 2022 at 04:55:02PM +0100, Krzysztof Kozlowski wrote:
>> Bindings do not allow power-domain property in GCC clock controller and
>> documentation does not indicate that GCC is part of VDD_CX.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Maybe the bindings should be fixed? Maybe this was added as workaround?
>> Anyway looking at documentation I do not see such relation, except
>> downstream vdd_cx-supply (which is the same as in other SoCs and we do
>> not represent it in upstream).
> 
> The GCC itself is powered by CX and the GDSC power-domains exposed by
> GCC are powered by CX.
> 
> It's fairly recently that we started attempting to scale CX - and
> attempted to suspend things. But this is probably how it should be
> represented on all platforms.
> 
> 
> So let's fix the binding instead.

Sure.

Best regards,
Krzysztof

