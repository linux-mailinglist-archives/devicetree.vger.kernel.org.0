Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D1B16E9F5C
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 00:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233067AbjDTWvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 18:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233059AbjDTWvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 18:51:52 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C9C448B
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 15:51:49 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4edc7cc6f46so972968e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 15:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682031107; x=1684623107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b7QDRXKQ5hEltVWkohh/QXgJnh9OCjsLGfPd++gOLfA=;
        b=LR8pUUbhaGDkE+APTpcOJs7zvaHbRrsVVMz2qJfsgX7rM0XgeZvqz+HoDdyw4ZxdPx
         5T/GSSKeOaMPLWoBvds284aCFAi3vXuAaEQNvFANBN/3rxp00gODiZQyGFXJauu/RNp6
         EV6nAFiDKsjMrrunm3fqOGHih/lN8RIkij0mDU7QoI5mELo7k/Kng3njtzPOev6Ay8x+
         UngncmNIUqS4Hfv8yOYRn5yUIfH7TaQKXdfHaVWD1Dg0dZjYy5gO37+PZ/3oBCGPHh14
         +sTsPNMhX3r7dICW1+mvHbmSH7D/mpOGMFmWFE1PkURs5Go0uuYbDLuq44LyW3mq6Ui2
         hO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682031107; x=1684623107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b7QDRXKQ5hEltVWkohh/QXgJnh9OCjsLGfPd++gOLfA=;
        b=c+qmp8pRGg+bP4smQox8CoE7NFBcBa1liu2/e96tyg2MkYqwNmWsq1Rld0VsEQFoxw
         0+R0t3TCx9Zeq6qPq/QOEm780p+HerZ9tiUCK4b30F9hMT8VmsNhRIceYRqs76yz0iyz
         S2IJWh28DWdonnv/grjLrBBGKIB6APc7L2TmIE0o/kRWOl263Jj1f1xydGW4ipvm4E3X
         QPmnUBSTzQCtAgXSlJTT+ZpPRI7qAVNwm8AGmon6zU+nHQH5dc9Y3LXB7tyC+0ACNaa2
         jOMKazEGw1Qhq0tGJo8rO9alGIiJY4mh8fLmTf9JSKRo2oa+lh+fzA9csUTYlLoQ7MlU
         L9Xw==
X-Gm-Message-State: AAQBX9ej6FgrjXNrY+Qv76riyWPcLHAqi1So/dj7EP/pUOIWN3U3nNp2
        zxqvvMdAjXZc6MHjNA9+CO1P+g==
X-Google-Smtp-Source: AKy350brXa4fPcfhE4CuqDFqBnzK8W8G0OiORNrCpAz3eFIlV9t2VCSeZ7cFZTuLt/qlGi7mNq743A==
X-Received: by 2002:ac2:53a8:0:b0:4ec:8812:d6ba with SMTP id j8-20020ac253a8000000b004ec8812d6bamr754618lfh.15.1682031107371;
        Thu, 20 Apr 2023 15:51:47 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id p18-20020a2e7412000000b002a8bb20e534sm387643ljc.108.2023.04.20.15.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 15:51:46 -0700 (PDT)
Message-ID: <837ae9c8-c92a-6cff-501e-eecb6ef0e3b1@linaro.org>
Date:   Fri, 21 Apr 2023 01:51:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 12/13] iommu/arm-smmu-qcom: Add SM6350 DPU compatible
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
        iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20230411-topic-straitlagoon_mdss-v2-0-5def73f50980@linaro.org>
 <20230411-topic-straitlagoon_mdss-v2-12-5def73f50980@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v2-12-5def73f50980@linaro.org>
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
> From: Konrad Dybcio <konrad.dybcio@somainline.org>
> 
> Add the SM6350 DPU compatible to clients compatible list, as it also
> needs the workarounds.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
>   1 file changed, 1 insertion(+)

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

