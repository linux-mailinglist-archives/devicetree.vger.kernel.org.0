Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F05816CC66C
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 17:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234062AbjC1Pct (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 11:32:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232908AbjC1Pca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 11:32:30 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44FAF745
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 08:32:10 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id y20so16371353lfj.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 08:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680017529;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6kpJPb5YFzFq3dKnHkW0EYm3cbKljFaAKRN09G45xkk=;
        b=GFMyUty6jLFErND7rsuicmJVe+fKzEZclYqmm6ULU9RQq7ey5SI2H/+uELoaFpPM4E
         bexYbMx5kMxNlPdqdeuM9r04QTPLizjPYjRNdlIfrAqKgBfaezGVqGFzzpwyYe1Pa7SR
         Y0QASB4hZzeXKhpp/3ay0txNteuTICoeTli0O4uH2sx6IYX6plROtHCix6N/DkHMeIFV
         G0ZTwTgiFcajiE9QHYGkiAvIneLjaABEHo/uM5xEGQV8tLaNKtfZHoFpK10PSDb0U5kr
         A4Z2KWa97JsHJFNhBO6VHwm0Q9BTxaFr1Q3i51Q/sJL1PPERVSYeErHn0BEaq824qlM0
         Eakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680017529;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6kpJPb5YFzFq3dKnHkW0EYm3cbKljFaAKRN09G45xkk=;
        b=IArK3aJU78MbM8YvFf1n4AdOW/U7FyjUXE+rVKN5vkQpMU0mYHVP1v/zNhkboID4rP
         eDS4rbeaT0jCD/rjJpc4nsFkO1UZUXHzSAJKf3MSZP4ZIgsX/xhun8sGPzbxS15pZhaD
         t8C+dnus00/zN6OtBgTAAjoZbfUtMkQLAJcJKu92ASPZKOm7asEujzAwxI7WYBCLsiBa
         +xjGhXCSBpqbrWEdkQfGDRAoicFYVATQ4BohFSmo+299czNDWgN6upNPpTADoLaVECbM
         v/qtL3G/dzotXi4ShRvxjKwUpBmtSGYfdcCq8O30IHtBxse3glULh7Z9/+eRAnAGVru/
         lu0A==
X-Gm-Message-State: AAQBX9eZxsrA5SUW72nZg6Ar14d9yjKbshRmWp9NjxUHKtQBMvb/Q71X
        eO8V3M7Ol6DrV7w8fxFPVo6S7w==
X-Google-Smtp-Source: AKy350bTy8RE9QqIMjHPeexUwuLburZ3vMaCr3DV7vct3bL7+xdnv1gnc/gwwp0QNcPHuRwUpKkyww==
X-Received: by 2002:a05:6512:910:b0:4dd:9a38:1b9c with SMTP id e16-20020a056512091000b004dd9a381b9cmr4670977lft.20.1680017528925;
        Tue, 28 Mar 2023 08:32:08 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id x18-20020ac24892000000b004eae73a0530sm3352354lfc.39.2023.03.28.08.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 08:32:08 -0700 (PDT)
Message-ID: <06251057-59a4-e24e-cb18-c0095232622c@linaro.org>
Date:   Tue, 28 Mar 2023 18:32:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 14/14] drm/msm/a6xx: Add A610 speedbin support
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
 <20230223-topic-gmuwrapper-v4-14-e987eb79d03f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v4-14-e987eb79d03f@linaro.org>
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
> A610 is implemented on at least three SoCs: SM6115 (bengal), SM6125
> (trinket) and SM6225 (khaje). Trinket does not support speed binning
> (only a single SKU exists) and we don't yet support khaje upstream.
> Hence, add a fuse mapping table for bengal to allow for per-chip
> frequency limiting.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

