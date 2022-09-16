Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0192C5BAF6C
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 16:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiIPOdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 10:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbiIPOdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 10:33:15 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 246B7B24B4
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 07:33:14 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id f14so34934630lfg.5
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 07:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Lx24Uds/aZyeM8qKYq2BB6CYUmdujTPU+nzMzC+aNWY=;
        b=we13Ci/14qECjFruSSClhB8FGy/6f76CLE9EzqfC+k470SWDtdmojUDnMlnkJho7Jd
         uFabc1qkY+m8mdhzMio8a6pMnmdaxSOH+byWWMe6zc0nzUvYqY7gKauvy5kdn2wBE9oh
         Bqp56TQEhSkE+JuE9P/MakjwP11fougKRphl1okSwP8x2ok9dcxb4C9pTmYII4d06d08
         OzI8LQLrOpAKL+DuAAX6viBS1fqhahnJO+rAfq6fVLNvo16XqegUh2UCsDH2X/aAqFgd
         UVb6f7zDfD6fupuwn4LTjkpWSdUU+FSongQq6SMIZU0h++aeYtVRU7/qoGDS4a7UFPnr
         kA5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Lx24Uds/aZyeM8qKYq2BB6CYUmdujTPU+nzMzC+aNWY=;
        b=OyQ5WAQX5PTHok1fToV4j5UKdIGGnAJH9eTh5vvbht8srjpEISezyokdgKzRIcPmJP
         fxwU43iZx2ft9ONMEsmWib9kIIQC5C5/SK+4IVKxY4uG4h87qYFyBIMG0kV0r1OwMPj2
         /y6IJTrBZBLWpEBe7dvb67dm0c4Gc5dzx4CDXIQcWLdM9kEr4HjpSoss58N9Z08d4/EQ
         iCk9r4/BUsQnUuPXXoSwS1n2+gIZBLZw6hyMsIyoM25vwzeA6cA8GlLa069JriuvYICt
         WcY/+pOLZxuVTfHoLe4zA9XiL9Dza5vs2NZMnVhOefNmcRBzj5FuARQOpw90MXOCS5QM
         mADg==
X-Gm-Message-State: ACrzQf1gj0G0ZsVINXCg3ugke58QApFQp5oIK+mmI2uHmTyJVwER6wJw
        JCNatMt+UX+WdKNMH1aQ0QgjLA==
X-Google-Smtp-Source: AMsMyM6y8UuySt2lK78RG21ORZ658Pel/HR6IBnTvCVXji1I98kE9vS4FKYKjkh/dV7zgPNLPPfenA==
X-Received: by 2002:a05:6512:1312:b0:492:e14d:54d4 with SMTP id x18-20020a056512131200b00492e14d54d4mr1696949lfu.469.1663338792487;
        Fri, 16 Sep 2022 07:33:12 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id j20-20020a056512345400b00493014c3d7csm3490136lfr.309.2022.09.16.07.33.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 07:33:12 -0700 (PDT)
Message-ID: <13abadfe-65ef-d2d6-6c26-ab1f294d82bd@linaro.org>
Date:   Fri, 16 Sep 2022 17:33:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [PATCH 0/7] arm64: dts: qcom: msm8996: fixes for CPU and GPU OPP
 tables
Content-Language: en-GB
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>
References: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/07/2022 17:04, Dmitry Baryshkov wrote:
> The commit 90173a954a22 ("arm64: dts: qcom: msm8996: Add CPU opps")
> added CPU OPP tables to msm8996.dtsi. However it went unnoticed that
> MSM8996 and MSM8996Pro have significant differences in the supported
> CPU frequencies. Moreover, differences between various speed bins were
> also not handled in the DT. Fix all these issues by splitting msm8996pro
> and fixing different opp-supported-hw.
> 
> Unlike previous attempts by Yassine Oudjana [1] [2], this patchset
> doesn't require changing the cpufreq driver, keeping compatibility with
> existing kernels (and thus easing backporting to stable kernels).
> Yassine's patches were changed to keep compatibility.
> 
> While we are at it, also apply fixes to GPU OPP tables to acount for
> small differences in supported frequencies.
> 
> [1] https://lore.kernel.org/linux-arm-msm/20220409035804.9192-1-y.oudjana@protonmail.com/
> [2] https://lore.kernel.org/linux-arm-msm/20220416025637.83484-1-y.oudjana@protonmail.com/
> 
> Dmitry Baryshkov (5):
>    dt-bindings: arm: qcom: separate msm8996pro bindings
>    arm64: dts: qcom: msm8996: fix supported-hw in cpufreq OPP tables
>    arm64: dts: qcom: msm8996: add support for speed bin 3
>    arm64: dts: qcom: msm8996: fix GPU OPP table
>    arm64: dts: qcom: msm8996pro: expand Adreno OPP table
> 
> Yassine Oudjana (2):
>    arm64: dts: qcom: msm8996: Add MSM8996 Pro support
>    arm64: dts: qcom: msm8996-xiaomi-scorpio, natrium: Use MSM8996 Pro
> 
>   .../devicetree/bindings/arm/qcom.yaml         |   5 +
>   arch/arm64/boot/dts/qcom/Makefile             |   4 +-
>   .../boot/dts/qcom/msm8996-xiaomi-common.dtsi  |   3 -
>   .../boot/dts/qcom/msm8996-xiaomi-gemini.dts   |   1 +
>   arch/arm64/boot/dts/qcom/msm8996.dtsi         | 112 ++++---
>   ...rium.dts => msm8996pro-xiaomi-natrium.dts} |   3 +-
>   ...rpio.dts => msm8996pro-xiaomi-scorpio.dts} |   3 +-
>   arch/arm64/boot/dts/qcom/msm8996pro.dtsi      | 291 ++++++++++++++++++
>   8 files changed, 369 insertions(+), 53 deletions(-)
>   rename arch/arm64/boot/dts/qcom/{msm8996-xiaomi-natrium.dts => msm8996pro-xiaomi-natrium.dts} (99%)
>   rename arch/arm64/boot/dts/qcom/{msm8996-xiaomi-scorpio.dts => msm8996pro-xiaomi-scorpio.dts} (99%)
>   create mode 100644 arch/arm64/boot/dts/qcom/msm8996pro.dtsi

Gracious ping. It would be nice to get CPU OPP tables sorted out.


-- 
With best wishes
Dmitry

