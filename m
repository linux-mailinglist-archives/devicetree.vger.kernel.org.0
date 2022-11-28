Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 399AC63A316
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 09:31:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbiK1IbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 03:31:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230123AbiK1IbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 03:31:03 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9534F175B8
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 00:30:59 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id h5so8044409ljk.11
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 00:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v/ms0T42AkTk/cRIo1vElQWeWjhxMFGnKH3PD3tFd1E=;
        b=O2M1PTCZR8mt3SUeRtG/QwPNxjnOQgrcUY6YdERup7cd75uBh+Ws0VRZxw4StQAWkY
         99qI8nNJxzuN815YqbnaiOLcETih2O3NRW/T+WZsae3+bkpki1aRB5CjhtJnBBCa3iuA
         LgRhoXVIyWRf1wUnTmjMEdunU7zURcsqL2Ku4otT+mJqahqq50o7w/9JlK/J7Q12h3kD
         ftuYK0EogtFWZYXMxPRXbxSmZ3nbJP7tnqPYqWPb3SYUL/Kpy8Smax1ATIDVfgdru+oh
         Q/4YdB1kaRzzlDct90W/I85516LVc4iq/QvCHJJfOYQXkjE4mZ7IF6s4b2L5yoAIttRk
         FF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v/ms0T42AkTk/cRIo1vElQWeWjhxMFGnKH3PD3tFd1E=;
        b=N0OI9fGCNSYBaQQQkk5J17DaCSOblUp03UkVPtSZXkmx+4o1st1zTcge+clbmevDyv
         AgNtvVarD5YYPbrC0uq5nk6ZqK0IznhdL1c++KGnRXPgdtpYxayLRhmOH6qK6imzc2O8
         4XHHnsvw/tZYwPjDjMUS7CmU+zgVqInO4arX/dcNtdjHHxklj5TgSCMPGE3hVog/jy3h
         iHayHmmnLx0brTgGxU59LLKEzBMPo/3apasPgoGjE5mdn4bHyI3onyCJZp1bFtxN/vdQ
         27rrASBp3u8+nqED3Pg/gCqNHZnBgZQXtqdf2eb1YkX56g1pZ6Khe/Zvag1D7rgswqTp
         omxw==
X-Gm-Message-State: ANoB5pkXTM3nQoV1vAYzTwreE9Tv39BTXk79Pz04mXH3Qx64yBeTKOLx
        M17y3+1qj9+T6Rb7nPWQzkfv1A==
X-Google-Smtp-Source: AA0mqf4WQ9BxGq6ZLYloTIYn8qMg3Dvz6GHoFpf2EVL4IylUTMzOzfulKTdziNdCWcyL1QCPXRfvyg==
X-Received: by 2002:a2e:a884:0:b0:277:37a8:ba87 with SMTP id m4-20020a2ea884000000b0027737a8ba87mr10275610ljq.14.1669624257906;
        Mon, 28 Nov 2022 00:30:57 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o4-20020ac25b84000000b004b4b9beb0eesm1633968lfn.50.2022.11.28.00.30.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 00:30:57 -0800 (PST)
Message-ID: <61f1a1e5-bd2c-4a22-66f7-1935154b35ad@linaro.org>
Date:   Mon, 28 Nov 2022 09:30:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH V5 1/2] dt-bindings: firmware: qcom-scm: Add optional
 interrupt
To:     Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@somainline.org, robimarko@gmail.com,
        quic_gurus@quicinc.com, quic_rjendra@quicinc.com
References: <20221123204615.25358-1-quic_sibis@quicinc.com>
 <20221123204615.25358-2-quic_sibis@quicinc.com>
 <3cda9005-d7a5-56f0-d1d2-fd6c1cb36fc3@linaro.org>
 <7b6ffbb4-80fb-610a-c839-e3bf1668d4ed@quicinc.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7b6ffbb4-80fb-610a-c839-e3bf1668d4ed@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2022 06:57, Sibi Sankar wrote:

>>
>> Which devices have interrupts?
>>
>> We talked about it here:
>> https://lore.kernel.org/all/2464d90f-64e9-5e3c-404b-10394c3bc302@quicinc.com/
>> and here:
>> https://lore.kernel.org/all/c20edd0d-7613-5683-60e7-54317cac6e0b@linaro.org/
>>
>> But I still don't get which devices support it and which do not.
> 
> lol, I thought we reached a consensus earlier because of the "ok" and
> R-b. Like I explained earlier the bootloader would be adding interrupt
> on the fly, wouldn't such cases cause binding check failure if we list
> all the devices supporting it? 

What type of failure? I don't get. Is this interrupt valid for SM8250?
SDM845? MSM8996? and so on? Now you make it valid.

> Also some of the SM8450 devices in the
> wild would be running firmware not having the feature but I guess
> eventually most of the them will end up supporting the feature in the
> end.

That's not what I meant. Your patch describes the case for one variant
but you are affecting all of them.



Best regards,
Krzysztof

