Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA2056CC661
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 17:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233922AbjC1PcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 11:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234040AbjC1Pbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 11:31:45 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0379FF38
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 08:30:57 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id s20so12995468ljp.1
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 08:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680017454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f6Z3hi5xZpY0A+xzxH10t/g2IJeJJpC83ZgAnnPr4r8=;
        b=ClmAdxKaO+IvbX7WxxMeckWeSwBLmWZS6VF3VOIhXlPLy0T3H1VzIEW1bVGMtqWN1Y
         I1QUxWfEat758nykrdkLKr5HXj2Vh60Jpk8eas0vs7lW+SQlvmD3Ylnl6BcTIMS/+wnU
         3ryReA+B9YJgzEe7h/UjssBX8pdqHpB6Jp7goWYlUwqJq/KoHqWQUK14+AflgKT+qWYH
         sfzh4BuAORKzWYhu/WVwMS4AgNOytzjEq+PqMGpCrRi04T5mJ1RS5gnGK3oEcIx3lZg4
         IYgN4JfgezD6s461Z8eNyykS1b8LUDQbZt4I853YvlcCoa97VskKGOXlaCimCKYXe2LK
         r8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680017454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6Z3hi5xZpY0A+xzxH10t/g2IJeJJpC83ZgAnnPr4r8=;
        b=1ATfudJvZ8Wd0nw3UbY72k5SFOs+VMMdEYdFdllg9r3jJEUxryQbmYU/1d1M6EEiqA
         r3g2Y1MAIAQXhjRXAP4l0fpyjY3v4dEijL3poCBBDbG0P43wIz9h/qUXq9pneqjavnqJ
         O0EEk1hPCer4Dz5xlift/YglQrzxvA4BXBKqNiS1BVTv3T5JGKRekLFx5Anx8fPnNi3g
         84dhyeeZWSfWykjac0yZgMnIpoNM23+maNj1AT2OvwK/evCXAb6zw5WDu+IfVaPyhUot
         RwqDZMd8NAOt8LC+v0q6xO7/X/CTKXijrv+OOy3o5Ij/UvcEeR/fWc8GLD795m56Ez95
         o+kw==
X-Gm-Message-State: AAQBX9dgdujgAI0ihLiKOk806hG1E1QYC9wxYGc/ZvppUIEblD0fb/K3
        0QPYS988Rax9r80SoBtwLijnpw==
X-Google-Smtp-Source: AKy350bklgIv21W5yZ/4G5UcuAmEvWzN5s4DIXCp2M2RonQn4ByuJaeNtvsiX9cC+vQau4gr3ZNyUw==
X-Received: by 2002:a2e:7212:0:b0:2a0:4de2:db88 with SMTP id n18-20020a2e7212000000b002a04de2db88mr5008585ljc.44.1680017454043;
        Tue, 28 Mar 2023 08:30:54 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id c14-20020a05651c014e00b0029913364649sm5123502ljd.11.2023.03.28.08.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 08:30:53 -0700 (PDT)
Message-ID: <bf424375-6306-35b4-4560-1946695f8fee@linaro.org>
Date:   Tue, 28 Mar 2023 18:30:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 12/14] drm/msm/a6xx: Use adreno_is_aXYZ macros in
 speedbin matching
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
References: <20230223-topic-gmuwrapper-v4-0-e987eb79d03f@linaro.org>
 <20230223-topic-gmuwrapper-v4-12-e987eb79d03f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v4-12-e987eb79d03f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 17:28, Konrad Dybcio wrote:
> Before transitioning to using per-SoC and not per-Adreno speedbin
> fuse values (need another patchset to land elsewhere), a good
> improvement/stopgap solution is to use adreno_is_aXYZ macros in
> place of explicit revision matching. Do so to allow differentiating
> between A619 and A619_holi.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 18 +++++++++---------
>   drivers/gpu/drm/msm/adreno/adreno_gpu.h | 14 ++++++++++++--
>   2 files changed, 21 insertions(+), 11 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

