Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFE716E9F48
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 00:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232985AbjDTWtK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 18:49:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232944AbjDTWtJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 18:49:09 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BB13A92
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 15:49:05 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4edc114c716so976912e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 15:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682030944; x=1684622944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fdP8MC3XaEqA32rWPdIckKxRCI4GJxh3IXEDH13XKh4=;
        b=Uo5s2ZVJ8f0YtJNR2V/QAw9DClxjdNn9cqFYEbfOZQUbcrDWvI3kZIG/ZvuvSdVhU7
         pfh5B5a9RphGrqWEwNIRlbMY45cfKU38pWY1e0FY61FUJh0Jb1svYJ9R0LJakfx9tu3m
         nbekIr7F6ZW68EnD6s+zO6qcATzgxFBHn6w9fyAO0JcooAsehyLQcDBDOcntPm0NyGoN
         Oifnhlo7c89uxuHM+wDtJ0RnSGZNiKDCUdarMsAhcx8sziEmaqPjUGiTtCmM0BS8tN6v
         sj4Ln9lcUStQlwf/nzgnSZ0qMbfnh5CtcwwFPN++psWNdyfLRUKvJWy/6+3gbGTZVDBk
         ty5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682030944; x=1684622944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fdP8MC3XaEqA32rWPdIckKxRCI4GJxh3IXEDH13XKh4=;
        b=GP/KUSTxRP5w4Bk0b5SsieN1qtOeDqzJbGIx3yg5lfyYgCDCWrtlCe3rMDQAYLTDd1
         GYfJjR/qvpzPCBnXE0OCbAQYQ31g9nnZ+cFcZmTEKptS5cxx3kPoIfQkR9tlr4yOkrhA
         9UbJXShPMMUzSuSGdMvOMKZKmQXbTN168BAtrphTANqQWyB0Q0ShEQ6C9EX9aO0Lj2rC
         VF5zHPfdaOBAYyO05nQZjv50sChedD5fayzTe5S5r8n3gQctKnv766hUwR17ZTqKivkp
         0ZfT2C8BvgZdP8iH8WZCw3BuSaRh4UA+A2j/A0LMmhWcDfUNbPFBoR7UrbVnj4ADxzNO
         jP9A==
X-Gm-Message-State: AAQBX9cr0HuJYZ65URhXiWPiYxobUr1LbqPHfy9Z+gMk8yJHSOv2Fqdp
        X+kxWgTFPM7yl6AHb82Rq5Cpaw==
X-Google-Smtp-Source: AKy350ZInjPaVxyUTYhwDYw+L3xY8vOz8c952eS4vzPQ6cipzNOj58Pw/XifVqqdE8XeIyyL0HzukA==
X-Received: by 2002:ac2:4905:0:b0:4ed:c9b0:6a42 with SMTP id n5-20020ac24905000000b004edc9b06a42mr780084lfi.12.1682030944156;
        Thu, 20 Apr 2023 15:49:04 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id x13-20020ac2488d000000b004ef11b30a17sm94609lfc.91.2023.04.20.15.49.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 15:49:03 -0700 (PDT)
Message-ID: <d2b6ebad-dd38-0bb3-7c98-27cda45c7ed9@linaro.org>
Date:   Fri, 21 Apr 2023 01:49:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 10/13] drm/msm: mdss: Add SM6375 support
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev
References: <20230411-topic-straitlagoon_mdss-v2-0-5def73f50980@linaro.org>
 <20230411-topic-straitlagoon_mdss-v2-10-5def73f50980@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v2-10-5def73f50980@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2023 01:31, Konrad Dybcio wrote:
> Add support for MDSS on SM6375.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/gpu/drm/msm/msm_mdss.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

