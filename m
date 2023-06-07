Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF44D726832
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 20:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjFGSM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 14:12:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbjFGSMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 14:12:30 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D2CF26BA
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 11:11:54 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5149aafef44so1791196a12.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 11:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686161512; x=1688753512;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=38gFDOgOs7OiOboCZ97J7wgn0Fj+LylW3p4y2EEpitY=;
        b=lpv2yfhVs1ay4EQ/axvCEim0SnJftwinn+5AL4kiudbnjwRCz8+AwbFewKwK0pYXcm
         m4xcxqBrZWkCJNQ5XkGbLldksMjNL9ys+rNBkLDmbLCdIS5ovgRA6+kR91H3dMyS9lkZ
         ROCeEHqh98oSIg6SOUfyHh03KqzwZ64+uehdKviePDHwXNinpPey5n/s09H46aPU7x2t
         +ePVU/JemqY8zfkFP1BUkfD9o8yZ3DFNxS2idpdLqTUCXbei+uyv8Lsar8NP0kdz5ybr
         AL7jEWg4R/F5Cinb+UXx0txTu7jweBEOImKOeeHWgb3fm5EMclTY6D2nAHKp9olqMoUk
         OPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686161512; x=1688753512;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=38gFDOgOs7OiOboCZ97J7wgn0Fj+LylW3p4y2EEpitY=;
        b=MyB81BHZGW9TRXyIFA2w21S6ONcMzabGe05pCmBqQqSn+EEr3JCFLbjvNBnMi30EuQ
         BenJ6rmY8fFKp/mBQp5rRCQE5iN5AJO6BVv6FqW4XQgX70QY+47kY6fPDhyXc0zLQeEn
         y6hmr3SppzjuBfdu2uZIFi2LrdpVdOZNe4YOZiDhE27gnTk+vx8FzLIicwfjdDsDdPPn
         r2hsEdB72YeZXTBvM1WnoDlTDtpolDHyk8hIFxfcM8zYt44ssoagg+pq9rsrMFqkbc2b
         odF3uwdybcLT/SdPXDAS9GErNHfxwyDAChIs4BPhlFWPO1ovgcbWNveApLvyQE5BE9xO
         4mQA==
X-Gm-Message-State: AC+VfDwhJvwzCT2ZFD/dOQ1KRUqpQkHAiJr8Q6d8gILoHzO2wNh5FuZE
        QngycBkHEux3gzjiyfb6T6THJw==
X-Google-Smtp-Source: ACHHUZ6QlGsiXyrJcXM30ikCxTwLf17/dt+bW4ffQAr6CkTuL+AYvsWCQwfGH415M7X/kOv0SIGcWQ==
X-Received: by 2002:aa7:c3da:0:b0:514:7f39:aa80 with SMTP id l26-20020aa7c3da000000b005147f39aa80mr4770123edr.18.1686161512431;
        Wed, 07 Jun 2023 11:11:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id g16-20020a056402181000b005149cb5ee2dsm6427652edy.82.2023.06.07.11.11.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 11:11:51 -0700 (PDT)
Message-ID: <7107e83a-c607-41da-f606-277400d40010@linaro.org>
Date:   Wed, 7 Jun 2023 20:11:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v6 04/12] dt-bindings: display/msm: Add SM6350 MDSS
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev
References: <20230411-topic-straitlagoon_mdss-v6-0-dee6a882571b@linaro.org>
 <20230411-topic-straitlagoon_mdss-v6-4-dee6a882571b@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v6-4-dee6a882571b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 14:43, Konrad Dybcio wrote:
> Document the SM6350 MDSS.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../bindings/display/msm/qcom,sm6350-mdss.yaml     | 213 +++++++++++++++++++++
>  1 file changed, 213 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

