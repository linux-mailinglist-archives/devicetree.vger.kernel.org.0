Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9CD8690A8F
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 14:40:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbjBINkb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 08:40:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230215AbjBINkY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 08:40:24 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1424B46D44
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 05:40:23 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id hx15so6366157ejc.11
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 05:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G/9XwFYeUJst3WJ5sHdQjwXF4qwQvevEf5WU7yUqIXY=;
        b=OMw/A+V2/U2vAN546ixC6VrsB9usPnMiYZ1EGlPxuAOxWOMjTiKzuwiUruCmZ+0HlE
         5Sp63S1ZpYZVQTOqaN6t6gUA9o3xy9nImsCREWI5h3iMStvajaS1JjKUqPM6JkYgBpDE
         3+mnH2e1S1uHxCl553jXTY8nl0pus4Iln/TAoKk9arW14IzuDP4UvjXFPbUF/Pzn89id
         I8d/W49sVknCcIiL9D3riigh6YM0A6B/IjMwxl0l5IIhVgen/+gv8HChuEeE6vZI6rOV
         TnZmKKE8Ubb9EQcOZ1R5lTkJprUk20Ju7BsDrM92K7bamJBLiPFipfOn9InyaQ2UjivK
         IK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G/9XwFYeUJst3WJ5sHdQjwXF4qwQvevEf5WU7yUqIXY=;
        b=oQVlZEu0ty1aASOUID4Sybx1TO5sWoOL/beQbkTNa/YGwdEX7hpznG5wTlxBpiGyCX
         Z4ZTGtSYx8jp7QgjKYFLSc12/zR/YUX2BjHoqLqXP6alo/f2vgRUPB+J76RAOWfO+xmU
         WcxfBfhpl1pKidiWMAJgUi1rbRLS5vZzRJFhclJrP2mJHerCIK0bxhKSPv7BUBMPBoSj
         1KfxLhWGnhlvnWDJJ+OOYXAAxyFAPon/2H35aDCJCShEfIV9fWpWBSbvAIVCO7rnWq3U
         zEzIz8jZZRV5N623dr41IsxHp2vMjnXYnv2+xXbcaaYk1UoOFualqv6beiaRrZl8E5Ns
         qNBA==
X-Gm-Message-State: AO0yUKX01/HP++iG7XOWXBe81SAoQrdQ5DdBqMnwKWLbu1lsLc61Vrh5
        WPFN5v4ofbyEuEAkdRjeMjPwlw==
X-Google-Smtp-Source: AK7set/izK6rzb2b5i3ycv/Vv8MsWMV7WDdfIFo7kARlIFT3ylMk6KZs8PsO+wT3uFrG2bxHo8cvmw==
X-Received: by 2002:a17:906:4f99:b0:887:981:5f7c with SMTP id o25-20020a1709064f9900b0088709815f7cmr11967561eju.11.1675950021723;
        Thu, 09 Feb 2023 05:40:21 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id b5-20020a170906d10500b008784bc1dd05sm877502ejz.76.2023.02.09.05.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 05:40:20 -0800 (PST)
Message-ID: <dea3c40e-bdd8-1276-409d-3ddb35b004bc@linaro.org>
Date:   Thu, 9 Feb 2023 15:40:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: sm8350: reorder device nodes
Content-Language: en-GB
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
References: <20230206145707.122937-1-dmitry.baryshkov@linaro.org>
 <20230206145707.122937-5-dmitry.baryshkov@linaro.org>
 <20230209032841.ybqveepeyjqo63ql@ripper>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230209032841.ybqveepeyjqo63ql@ripper>
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

On 09/02/2023 05:28, Bjorn Andersson wrote:
> On Mon, Feb 06, 2023 at 04:57:03PM +0200, Dmitry Baryshkov wrote:
>> Start ordering DT nodes according to agreed order. Move apps SMMU, GIC,
>> timer, apps RSC, cpufreq ADSP and cDSP nodes to the end to the proper
>> position at the end of /soc/.
>>
> 
> I think "according to agreed order" means "sorted by address", but it
> would be nice to have that expressed in the message. If nothing else for
> others to know what such agreed order might be.
> 
> 
> Unfortunately this doesn't apply to my tree, and it's not clear where it
> failed. Could you please rebase this?

Done

-- 
With best wishes
Dmitry

