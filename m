Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A685D6369DD
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 20:26:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237461AbiKWT0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 14:26:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236472AbiKWTZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 14:25:58 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69C5DC604D
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 11:25:55 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id s24so22461977ljs.11
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 11:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t1DObvPh+Rx+Hqegn0XLyYJdliwmlAQX29QBWofxvPA=;
        b=zusNWTQ0ZtK82/Ue7pGOHYNeKWcg2Ze4ZkbOTBvSyG4O9vOzVzpYdgtbzTQSADp2O0
         vYDxc7B4D1FK1U7DuxqIKxfpDF/Of+Pp7MPdvTk0HyTvUgWAKXEGrXxhNzeP2i+LyrUo
         BSQTTlJ5Qr0BSru3RYd2CIxZ0ApnHiuvpBLQzmCKW2/nUSkfyQCSMIcuYRUGcoy1kdAz
         8UsvIRYvXSnsnZC6brAQOvdNsqdrjnZ6InTX2p2yaHZORdrIC9HRRUGI99+eXjPu7sjU
         VUDluoan1yjaBrHZBnampED/dPUujN6SmSB7wjm13/mUqHHS5JN7cjH8tkSctlPYst2/
         U1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t1DObvPh+Rx+Hqegn0XLyYJdliwmlAQX29QBWofxvPA=;
        b=ny9Hb8LzkXwxmtKMuxwAmAR3rabgAa+35fNGpJ/KJPY9alD7RGxNhufc7+xcSaF6Iz
         pyoo3CiKC89HrMCgPw6sRpqWQ871yQcQQ2R6d2LgChydYrSN1c3jECIgFn8+GHgfmPHG
         YsDS0ZlgKV4VlCOLQIssdkiKbsE8rvraF5NCYSSYpaGlBSZAK8kwdf1Av1OXRPup9pyM
         PNvhcfCsfBGaBMk48O8NMzgzYKGvER/J5oY/jd52rAXT6MEFtVawOBuqWIbsWOMv322r
         6qMk1MtIzWewbSnev4AoOC4t55SY3SbJeUzv0STbZh6xkBLuTm6iOrB+k2YGkDiYKxuN
         tCyw==
X-Gm-Message-State: ANoB5pmxhDT4eZfSiBqR5ilu266YqaQAAt72Vu/1xew+j+Ca3OxWPvj4
        8xKgzVUhTZynXi9kZBOvsfAenQ==
X-Google-Smtp-Source: AA0mqf6sCm6NBHdvo+56rXL7omxWiAryfayByRNrgP0gPV7565DlqGRPl39qHB5E1kDK52xUUGeikg==
X-Received: by 2002:a2e:a375:0:b0:277:7c00:e130 with SMTP id i21-20020a2ea375000000b002777c00e130mr3104784ljn.268.1669231553655;
        Wed, 23 Nov 2022 11:25:53 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i29-20020a196d1d000000b004a459799bc3sm2996182lfc.283.2022.11.23.11.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 11:25:53 -0800 (PST)
Message-ID: <879739ef-41a7-3470-da0d-6aa7c8654e0a@linaro.org>
Date:   Wed, 23 Nov 2022 21:25:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 01/11] dt-bindings: display/msm: *dpu.yaml: split
 required properties clauses
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
 <20221122231235.3299737-2-dmitry.baryshkov@linaro.org>
 <3f796546-f9ac-353c-9f5b-870f77726da6@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <3f796546-f9ac-353c-9f5b-870f77726da6@linaro.org>
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

On 23/11/2022 12:15, Krzysztof Kozlowski wrote:
> On 23/11/2022 00:12, Dmitry Baryshkov wrote:
>> Per Krzysztof's request, move a clause requiring certain properties to
>> the file where they are declared.
>>
> 
> Commit msg could be a bit more generic, without naming me (there are few
> Krzysztofs), e.g.:
> 
> Require only properties declared in given schema, which makes the code a
> bit more readable and easy to follow.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Ack, thank you

> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

