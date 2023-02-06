Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4B568BB4E
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 12:22:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbjBFLWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 06:22:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229928AbjBFLWs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 06:22:48 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15469358F
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 03:22:46 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id l12so2369624edb.0
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 03:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XhsHQwvlEXsEH00VOxDhufQtl5xrtldVJBiemzWzN+Q=;
        b=PZ5eKoCgkHF43ZjOLchNOVMPGXcEm1LoxFaEdmziJtSEbnWbxsA4Us1UFQBE9f2maD
         kGNl5gyND1zK/qSIYtRwp1FRmzE6CJzR7MYHhY2JFaFzJiJxeU60SWGeIauvtfymvG56
         WNdb4RzHaIObXKGgVZc55fD4bGbU1+LQMtOEgL1YYtFPRHj4ntGevL+Q1P16xiuSezfy
         E+ilwt+i9XC+1t9HbFldGu7WrYF8folXKzfTd4aXwGLLIAj3LhTh2+AoibrSn9kNopp7
         hWl5NOetShpMpI9Hl+QpHVgDog1HGXgihm8c+Kma2oMtEjHAN5AziixcyRy3z6sZDqOQ
         WZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XhsHQwvlEXsEH00VOxDhufQtl5xrtldVJBiemzWzN+Q=;
        b=7a90Up+OtDFmg6QDjPg9Jv773CTaa4Ml0k0jPKoCgPtYLx17vhiERl+GHdyqAxF4v4
         vS6tlPJrl1c5kP3vhPMovItAmT1U0ndu+vRZ8v5AM3Xo8mBcFfGAAxKm2AISV8mDRGya
         S5oOHLtdrBQe/XxQCG6j9jGDvSj2tEBv7PqAaBluqX4VmZgVpzd2sgpXTu4sN7l9VrrC
         IFfyDEY06zbg6HF/GEzyWL0QC3jkuOrUlZZKYo/GeC0wO1yOnCnknMnHo0QpjRs/PD3u
         r/IQSA4bQ7+zq/NIjIwEOD7o6DXFMW2BxgauvaZCRQgtQWoPg9MApSXy3Yvyvax3YyNM
         ygaQ==
X-Gm-Message-State: AO0yUKXHddZiWtmdE52EFEa2o9YYScxtBjGQADPHm5MdA6iXjRnH5NQK
        TFyCUhtm7AN3L+A/0DMZlsvWCQ==
X-Google-Smtp-Source: AK7set/QXSx+xlzok3YT7LqHrvr9vnMxGjCoMErm9FyPlcBL/qsLFJOUBOfKnsozCi4EQfJOICO62g==
X-Received: by 2002:a50:bb27:0:b0:4aa:a172:6612 with SMTP id y36-20020a50bb27000000b004aaa1726612mr8607839ede.33.1675682564633;
        Mon, 06 Feb 2023 03:22:44 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id b12-20020a056402350c00b0049e210884dasm4924504edd.15.2023.02.06.03.22.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 03:22:44 -0800 (PST)
Message-ID: <a5635503-2d03-3996-a60f-f6255e407ca1@linaro.org>
Date:   Mon, 6 Feb 2023 13:22:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sm8350: add
 RPMH_REGULATOR_LEVEL_LOW_SVS_L1
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
References: <20230206002735.2736935-1-dmitry.baryshkov@linaro.org>
 <20230206002735.2736935-3-dmitry.baryshkov@linaro.org>
 <f563f3e9-2c50-4509-a44d-9406bc725a95@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <f563f3e9-2c50-4509-a44d-9406bc725a95@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 12:44, Konrad Dybcio wrote:
> 
> 
> On 6.02.2023 01:27, Dmitry Baryshkov wrote:
>> Add another power saving state used on SM8350.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   include/dt-bindings/power/qcom-rpmpd.h | 1 +
> Wrong patch?

And this patch is correct. sm8350 GPU OPP table uses this value (but as 
doesn't reference the rpmh's opp states, we don't have to add one there).

> 
> Konrad
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
>> index 4a30d10e6b7d..1bf8e87ecd7e 100644
>> --- a/include/dt-bindings/power/qcom-rpmpd.h
>> +++ b/include/dt-bindings/power/qcom-rpmpd.h
>> @@ -211,6 +211,7 @@
>>   #define RPMH_REGULATOR_LEVEL_MIN_SVS	48
>>   #define RPMH_REGULATOR_LEVEL_LOW_SVS_D1	56
>>   #define RPMH_REGULATOR_LEVEL_LOW_SVS	64
>> +#define RPMH_REGULATOR_LEVEL_LOW_SVS_L1	80
>>   #define RPMH_REGULATOR_LEVEL_SVS	128
>>   #define RPMH_REGULATOR_LEVEL_SVS_L0	144
>>   #define RPMH_REGULATOR_LEVEL_SVS_L1	192

-- 
With best wishes
Dmitry

