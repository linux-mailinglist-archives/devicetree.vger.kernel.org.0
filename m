Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDCE6D38D7
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 17:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230497AbjDBPoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 11:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbjDBPoC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 11:44:02 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43FF18805
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 08:44:00 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id b6so7840812ljr.1
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 08:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680450239;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8jXhcT5ZVw1OvQ2qjM62gp4jmz1Chro5Ew3RaPugUX0=;
        b=vmjyzEB8Q2LRKXisvJ5vw0iEDdeP1zteah9BoGMk2wu89tKXwsIJ5SLD1Num8XYLlY
         nyvXxB+3DJM63pM1Mb+cEu/uLvI5pGoYB+Al1LGnC7N7FfqnMGl7kTOOCS27UgSGpd0y
         kJg60dEhsOKK2gAkWM/S+LcOm5sEQxGb1kLcp7fBYLZbBWcIfssbZKnTC4jrRVzMKYQ9
         1Ywjb1KOKzDJyQEw0q0viRqNJWdqR6o4phLElQ9aN1hBakNScRj0ES1Xk5z8AxOJJt0M
         +LShuRN+U8SAXvGightjg12Jl+m9vSxV+wvjlUrnQYL4arer17yYGraL/lStU4YT5jUM
         ouwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680450239;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8jXhcT5ZVw1OvQ2qjM62gp4jmz1Chro5Ew3RaPugUX0=;
        b=GntM5skk+YWuRKDYMc7mKX+pmELvbU0geMoqjq87nuX1Utj2GarvO7/JfJA8VzJyHN
         Lla9+KkNUTVxudD80rlt3/Dg1CBzRrhNbG5oE6siEoyfOyqaLC1b/U1uH8BukmKM2WHc
         cPCS6LV+VaJ+P++Gd1S678gWbeiCZsq4dxV4PJNM7iy0PmyoIQY8hhriM0FX9P3YjLgT
         XfEnra5vI1Ako0EwvETtS8qE83BXBcvK2r7YTLFglnZIzArdGoyx/jLo+es0ijdquz7x
         RD8sIBR59bOE2ghyJ4/dE2Mnt3C5AhkNd6IIRQIbtDpwfUFHdJWzXcwCaShZ0N7Ta2Hi
         L4zQ==
X-Gm-Message-State: AAQBX9chy1j4kznRpolhDzQ6VzM6+fcRs3+Hmt7AohelQpoN650OqKfK
        yLsPLTr/LkOYR8D7wSPztiT2xQ==
X-Google-Smtp-Source: AKy350Y5aEPWgsceuXkfIdTFwafBhWN+FGbs5H/6SNUrjipWa9ZUTqU9oADjjxRPo9rQbefvS5Srwg==
X-Received: by 2002:a2e:9bc7:0:b0:293:4c17:9998 with SMTP id w7-20020a2e9bc7000000b002934c179998mr9990534ljj.11.1680450239095;
        Sun, 02 Apr 2023 08:43:59 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id q16-20020a2e8750000000b002935632b3f8sm1300173ljj.14.2023.04.02.08.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 08:43:58 -0700 (PDT)
Message-ID: <51451dc1-14d5-595b-589e-1cbcb5468180@linaro.org>
Date:   Sun, 2 Apr 2023 18:43:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v6 01/15] drm/msm/adreno: adreno_gpu: Don't set OPP
 scaling clock w/ GMU
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
References: <20230223-topic-gmuwrapper-v6-0-2034115bb60c@linaro.org>
 <20230223-topic-gmuwrapper-v6-1-2034115bb60c@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v6-1-2034115bb60c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/04/2023 14:54, Konrad Dybcio wrote:
> Recently I contributed the switch to OPP API for all Adreno generations.
> I did however also skip over the fact that GPUs with a GMU don't specify
> a core clock of any kind in the GPU node. While that didn't break
> anything, it did introduce unwanted spam in the dmesg:
> 
> adreno 5000000.gpu: error -ENOENT: _opp_set_clknames: Couldn't find clock with name: core_clk
> 
> Guard the entire logic so that it's not used with GMU-equipped GPUs.
> 
> Fixes: 9f251f934012 ("drm/msm/adreno: Use OPP for every GPU generation")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/gpu/drm/msm/adreno/adreno_gpu.c | 24 ++++++++++++++----------
>   1 file changed, 14 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

