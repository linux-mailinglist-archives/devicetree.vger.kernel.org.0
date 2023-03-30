Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EA986D028A
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 13:07:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231216AbjC3LHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 07:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231209AbjC3LHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 07:07:16 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F828A5A
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:06:56 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id h11so17031947lfu.8
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680174414;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9kFJmqVtwWUVcG0Lm77E8KR/5HB12mJDwmxwNxlca4Y=;
        b=MFvFzXX1r4xhnuFRY/R1MFnE209UmkelijbgG2Vrk/L7TQYmN8nTaG0YHI2rrvIphZ
         Z6SAivtRQja82JiRCBVPW5cdHQzUmKc6GlRMg3wONwRdSGzK+uqUCU/T8vXU14H4K1Uu
         KSsUdvUbyfBq+RDAeQWtAGIo2uVH998lCRNd+v3IwxHdZqdyxGHvWge789LsDWAVKPCp
         j1sZhT5pSAEqx+m+IcYr8P+2PDF8LKPQ4+4Q1nkTGcTq4Yu4vib7/WNK6fXJCJU58dtK
         rG6K4FAM8NO2teunq6ld3eNfYhg1NAjdt3baQar5hWaE9ov4RQuKn7Jk6GPgrU4ZrH6w
         KI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680174414;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9kFJmqVtwWUVcG0Lm77E8KR/5HB12mJDwmxwNxlca4Y=;
        b=onNo+YepQiD72LdZVyHjaeuT9Merf5Qdk9STUmdlUI9MFviv/rFmFswPHcs6ur4ncO
         33npsgZfS/E4qH2IGGooKBe+IWKQ+F5bejwUM7MF3rxZRM449S8S/tEPam5Jz51J3Tur
         PYPKQQs9qEm6uApv2qoTQm823FcQOD2tdSDX7/FWwaGigqtusA6GifpdzauEVPw569jK
         7ccdLnDFxhCMmEn9d5zilfMlLWijYaPPzPfkuD0/yE5DA+phTAXQf8vajEl9jl9yvLYX
         ZiZoOX/SRk9EW0w16yPbfFLBkFbZC0+8TZkMMdDIeisxOSu8v/WSfkUaoN53VEmBczUT
         oU+Q==
X-Gm-Message-State: AAQBX9cMUMwpG4UIy9kziKqrUSgLmVA5LmUL5OOPA0l5Akn20f0vI0aN
        T+5KWNklBo11pc/iyocZSxKk0Q==
X-Google-Smtp-Source: AKy350ZOwZSifMJ0COgNwwfI8Ff4NZPvJrvXq9pF7O3gWwfbrZxZjTu20qbb3ttl1T+NHD9CSza3rw==
X-Received: by 2002:ac2:5a4c:0:b0:4d5:a689:7580 with SMTP id r12-20020ac25a4c000000b004d5a6897580mr6377686lfn.47.1680174413683;
        Thu, 30 Mar 2023 04:06:53 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id t7-20020a19ad07000000b004e8451948desm5835252lfc.227.2023.03.30.04.06.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 04:06:53 -0700 (PDT)
Message-ID: <34470797-493c-d99b-4d0c-0f9381c5b7c1@linaro.org>
Date:   Thu, 30 Mar 2023 13:06:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RFC PATCH 0/3] drm/msm/a5xx: scale MX following the frequency
 changes
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230329222500.1131836-1-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230329222500.1131836-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
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



On 30.03.2023 00:24, Dmitry Baryshkov wrote:
> Konrad brought up the topic of scaling the MX domain according to the
> OPP changes. Here is my RFC for this functionality. I post it as an RFC
> for two reasons:
> 
> 1) I'm not sure that we should scale MX if we are not scaling main
> voltage following the CPR3
It should be ok, however..
> 
[...]

> Dmitry Baryshkov (3):
>   dt-bindings: display/msm/gpu: allow specifying MX domain A5xx
>   drm/msm/a5xx: scale MX domain following the frequncy changes
This is a stopgap solution, CPR is a child of MX.

Konrad
>   arm64: dts: qcom: specify power domains for the GPU
> 
>  .../devicetree/bindings/display/msm/gpu.yaml  |  9 +++-
>  arch/arm64/boot/dts/qcom/msm8996.dtsi         | 14 ++++-
>  drivers/gpu/drm/msm/adreno/a5xx_gpu.c         | 52 +++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a5xx_gpu.h         |  3 ++
>  4 files changed, 76 insertions(+), 2 deletions(-)
> 
