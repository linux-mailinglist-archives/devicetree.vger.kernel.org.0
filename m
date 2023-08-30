Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EB0078DF72
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 22:14:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233228AbjH3ULt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 16:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234353AbjH3ULc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 16:11:32 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B149229F1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:06:02 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d7b79a4899bso1882288276.2
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693425868; x=1694030668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSyK+dHkjDMQS0UZZd2TV/HXC5yoOWbGzZSM7TZhYog=;
        b=Zxvxa2+cZLTNk1km6/vhj4O1X5VKW6S11csQuWW42jvzmzhT/mJ0foDDbDMTvug5Fx
         Rme5peHCGTrLr/XBRUqjQlQ34RTHjgFTRULWC/Tz2eX5ql+r2Dt0e+j/1cAPXflfbc1m
         WH9pT3rGoYuO7f0bNCSOQgr3F9MuKezzrN+2KEFiwE1gvW1xCy3IsDMegWU7vtV31ead
         Wbckz7c9aGsHv2u1jvHZN6hrZVHiBVmDoDloUxBmOy/BMW02sPcAXoL4DXIVjMkiUB6s
         HYXTeRLrfIoejq9w4fdtLnz1TczeVW8zi2EDtiDScr7vrH3j3iI8XDZgqezQPcHN0oCo
         s/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693425868; x=1694030668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZSyK+dHkjDMQS0UZZd2TV/HXC5yoOWbGzZSM7TZhYog=;
        b=Uh3MPNQUVowGCGcF3231gbt3jYQY1SJk/QE22FUfl4tu2oCIYRGKcT5ocDQ0CJOpSC
         sGdztT9LzpRAUQwkdO3GS5syajmTjKWU2Arm1iOKj2L4GKMYHdveVAiPWrEtCQYL2KQG
         30kIoXDTrEzqmwhs71kpO4tZNcM+F/SNXSjguQQLO0XHbgPoCHHiexYjSk8Eer+soW1P
         v+6/v4OEJBK3IuE7mIMZMzyCYvSEpEpiEKt6UX14LlsJSJ2sRSoBSdHq34JJdn7/Qo2k
         XXbFBxsIEF1l3T6wl29/UAzVl1cUxsEPsmlr06b0oGgH4bEcJ85FEN2jEAG8mkDsMsTS
         eJhQ==
X-Gm-Message-State: AOJu0Yywk3fIzrUS0tNlwvWSZIiW6XbFC/C7cTO5GCWPRBeg0v+vu0C6
        dH7r8bDWlyPObjj7A7ZAl7l1UGphjZGFDTam9rMmcQ==
X-Google-Smtp-Source: AGHT+IF3BC4QjQc9khz8UvoRWdeIpu1q8Bvmo2laKSOuKZOvmEKB3zwHspagVqx73Iha2+2P48AjcTOvasTtYpuNrM8=
X-Received: by 2002:a25:547:0:b0:d0f:846c:ef7b with SMTP id
 68-20020a250547000000b00d0f846cef7bmr3216161ybf.17.1693425868564; Wed, 30 Aug
 2023 13:04:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230830-topic-8550_dmac2-v1-0-49bb25239fb1@linaro.org> <20230830-topic-8550_dmac2-v1-5-49bb25239fb1@linaro.org>
In-Reply-To: <20230830-topic-8550_dmac2-v1-5-49bb25239fb1@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 30 Aug 2023 23:04:17 +0300
Message-ID: <CAA8EJpp2UbiknJ876ccCiSV2hDYdiGVRiQBdAEMM7e9z5OqK3A@mail.gmail.com>
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sm8550: Mark APPS SMMU as dma-coherent
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 30 Aug 2023 at 21:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Like on earlier flagship Qualcomm SoCs, the SMMU is dma-coherent.
> Mark it as such.

On earlier SoCs we marked Adreno SMMU as dma-coherent, not the apps
one. Only on sm8250 you've added dma-coherent to the apps smmu.

>
> Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
>  1 file changed, 1 insertion(+)

-- 
With best wishes
Dmitry
