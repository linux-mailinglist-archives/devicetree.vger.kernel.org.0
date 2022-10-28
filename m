Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9834F6110FB
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 14:14:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbiJ1MOl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 08:14:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbiJ1MOj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 08:14:39 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE4BC13F0D
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:14:30 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id g7so7985939lfv.5
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 05:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BKq/BAGmscRdIakGFeHMFgaXLKmHS1XLU04+kzk8aUs=;
        b=mv0vzwMwoeoZPKSMypkyY+Zixy9IODdXpl1NaNgcwFr13k/Cq3iR5BWo2kftrQBv2I
         xq3dclF155wKsn4N/Ai4J63MUjsPzDyF8g9bUERvA6OQn63WM2qVUcpiRRcX1/g/T3JT
         0mpwwlsXkLy0VqTUCmtl/E2kXwWDazMjjJp0kvIhQu3+NofIePwF1G0E7lKYAflMm8nL
         35rtBStM1Mzd0GvnlN++VAzHn7rUdIfUvi7D+5H1T7NGpwXkCNGOwuAaTpNW7utfQuw0
         GuHdIdeI2PYbRCLMw6j+DTyUn7duJp4b8zhRhCDbfFshKnWFcbji4WXU+TJD8lBq9vOW
         BGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BKq/BAGmscRdIakGFeHMFgaXLKmHS1XLU04+kzk8aUs=;
        b=rc+Picux7Jh5tFeWwIlz3iPXlANp09ykgctF5k0y/22HYKxl/MB81oMEcduxm+wgcP
         Qi2BboBlzhk2HdI2UX/uFEHmesE1StlQl954lB0RFOpf7pTibzzr6QJbH4ElFu3uGgLa
         /H2E1YdBDxqCkFif1ebaX0phk9qzqGVtdGsNF/Km3NBztVMeC5yCU0DUYZGkrAGw1ZvY
         RRIjtYHiuEgEs9tDgRVpjWTIcyh+GvxMGyKTrCnK9ojXJuZweaPLTTdG9d50FiHPZklb
         HDbZNRH+2psQS+b4kwXpxMzZx6edUErodUUT5WJmvllF9HQNtGvtMqeXNDlCMUatFhvJ
         I/Kw==
X-Gm-Message-State: ACrzQf3ZghG7k2IhfBWgMrdVXbyWHp6QU0LyJ6tgjH9qsJ+sgvoIa1QF
        l3MERuwJKIILOCE4z577k3ppdA==
X-Google-Smtp-Source: AMsMyM4eQd3Q/pRYd6iLWMrAfdgYq54z9EEnAEBplA25vQFQtwxb0tbZEkLhPVoctzD6fNHh+Ia1eQ==
X-Received: by 2002:ac2:44b6:0:b0:4a2:5084:6163 with SMTP id c22-20020ac244b6000000b004a250846163mr19435844lfm.446.1666959269207;
        Fri, 28 Oct 2022 05:14:29 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c11-20020a056512324b00b0048af3c090f8sm544422lfr.13.2022.10.28.05.14.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 05:14:28 -0700 (PDT)
Message-ID: <9cde097d-2cec-7222-7e38-efefc4ad1c94@linaro.org>
Date:   Fri, 28 Oct 2022 15:14:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v1 2/9] drm/msm/dpu: Refactor sc7280_pp location
Content-Language: en-GB
To:     Robert Foss <robert.foss@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        airlied@linux.ie, daniel@ffwll.ch, quic_kalyant@quicinc.com,
        swboyd@chromium.org, angelogioacchino.delregno@somainline.org,
        loic.poulain@linaro.org, quic_vpolimer@quicinc.com,
        vkoul@kernel.org, dianders@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Jonathan Marek <jonathan@marek.ca>, vinod.koul@linaro.org,
        quic_jesszhan@quicinc.com
References: <20221028120812.339100-1-robert.foss@linaro.org>
 <20221028120812.339100-3-robert.foss@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221028120812.339100-3-robert.foss@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/10/2022 15:08, Robert Foss wrote:
> The sc7280_pp declaration is not located by the other _pp
> declarations, but rather hidden around the _merge_3d
> declarations. Let's fix this to avoid confusion.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

