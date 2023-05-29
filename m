Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08B4D7149BC
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 14:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjE2M4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 08:56:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjE2M4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 08:56:25 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1512FC7
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 05:56:23 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f3b314b1d7so3386496e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 05:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685364981; x=1687956981;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4kMFfJbf4XWQRQofGy/2ExiTeQJT1aHojFUaBWm+VSo=;
        b=BcDC1g2wM+Hky7zS2L1tkWnaCDYLDXZq2kb6pZOERWNUGx4d4jTjMFTHA07E9ApWSs
         w+dyPzzFDF3mjciTlbZNFVMzL/VqivyhhPdPLFa3yzhOHRSao2rqJFFI8bD3+OYBthlK
         cq0H0qxoBbufK5TxSEmJmBpx8zfFHFOi9XoKYMSWvS22GfCJQRLB+Ff4jk+3MSMU5qY4
         slPIAevDm7tgAQ5UqsacisFeDInVrT4+dS8H3vtMsofj414q5j61MyW00wyoYBurH+bv
         y7HCbVbew2INxWhgZ3swJESm6zOzcDUMSK3Ixg87sQZFddSnkj1j3UTgIYdzbaMlDnMK
         aloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685364981; x=1687956981;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4kMFfJbf4XWQRQofGy/2ExiTeQJT1aHojFUaBWm+VSo=;
        b=Ym5/SbHsAxcUPT0P8VTHgXDjKaQfQientybFmsAoQ2Mv1udDZI/nce9FMt2dRQImd1
         X2S5oQRuwoZePq4/uRIUWsxvz9SZkUvk9bf9K5Byc/6oC0x1SE26xU5tLIyQyT1QZI3j
         1t7zkUxD3/ZiGeRhLY83loApAXHOPuy1gbwVKary0HRbmekhVKWkt74UotGYzF1u4yAH
         U4z26StFGCLByyY3YiHNWzWoCgy85LDfFwWp2cuiL8MAhqpJnftOA7gYpr/HAWk10t1L
         kZ1ZriAS9h5j/Bu+55ZVopitqvykyHGTCgpJ0iFUOinpllt7+6F29dF5Ibfah/fT2TEP
         9z9g==
X-Gm-Message-State: AC+VfDzduAfs4s06fGI9WckeTExXmGmoHoJW5GWv6C64EOE+G3d+vf6C
        M5BWsqUexHBZJYvWWq3yDrQ7LQ==
X-Google-Smtp-Source: ACHHUZ5SDvE89GclIQVxV0l3jEskTCdcupX432GYZIWoRyUD9NsdvqkL1Ne2Cb1FwCZlHaWbxFlAnQ==
X-Received: by 2002:a19:750c:0:b0:4eb:18d:91de with SMTP id y12-20020a19750c000000b004eb018d91demr3416851lfe.43.1685364981202;
        Mon, 29 May 2023 05:56:21 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id d12-20020ac241cc000000b004f2529c71c1sm1959695lfi.260.2023.05.29.05.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 05:56:20 -0700 (PDT)
Message-ID: <8bbdc1c3-7caf-c189-9c81-a26efc79c4f0@linaro.org>
Date:   Mon, 29 May 2023 15:56:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [Freedreno] [PATCH 4/7] drm/msm/mdp5: Add MDP5 configuration for
 MSM8226
Content-Language: en-GB
To:     Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230308-msm8226-mdp-v1-0-679f335d3d5b@z3ntu.xyz>
 <20230308-msm8226-mdp-v1-4-679f335d3d5b@z3ntu.xyz>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230308-msm8226-mdp-v1-4-679f335d3d5b@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/05/2023 12:44, Luca Weiss wrote:
> Add the required config for the v1.1 MDP5 found on MSM8226.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>   drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c | 82 ++++++++++++++++++++++++++++++++
>   1 file changed, 82 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

