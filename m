Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2E4271421C
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 04:43:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjE2CnK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 May 2023 22:43:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjE2CnJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 May 2023 22:43:09 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36C9BAF
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 19:43:08 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-568a1011488so274817b3.0
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 19:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685328187; x=1687920187;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IEJy3ZwHzEy4yCdUkI2WmoNuXKG8YRae4C35/I9rrQI=;
        b=pca0tv3H16nEDflyHqTLct4q2s14vmeOwMRRAIuPZlGGf8r/09QyYaKd5+smAXfi91
         +ObXTXFYeHA9EUL7qRxyl84sYdTjazxwuHuUp0NvyQtQrqueIA5/frwVrNvOUBD/IURk
         zK0y+TJf8Ww1BtCSttM9A7dJ5jN6zBPgrKQ6c8DrJf1z243qY8+k29PIo1zpkdZRRqi3
         Bh74HCgKKz8RjzlOOjPG3mtHsfp5dcCMlu2ZjsPoO7c1l8sDEDO0YQl/tpNgkXnu8okX
         GLAgVfdYWeuqxiTVaPvLwci1XlJpo+Uc90hESJUs8EALEC5LJS5sanx/tw267tM3BpLI
         jLvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685328187; x=1687920187;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IEJy3ZwHzEy4yCdUkI2WmoNuXKG8YRae4C35/I9rrQI=;
        b=hEHmIQFuuF8v/I+vMYkQNAX+3wRj9BuEZe6gM0U1wZBh1vTtLVVv7IuBeP0ZI+G0DH
         0WmCVMhXbMDrbGPUaT2OkyPWWftaSTQFSWND6HA/qr2REY2ZUgEW/67WZGtAl5ZubkA8
         FmsbRfkjEQpQmEwgBB65bFlBFszSRzeZ/CjYRDBO6fqeEwxf39EZiWQh3j2jfdrAjxhe
         D2uaajript+rCMMvdBxGPs0hC+M/dZp+piFgihnN1wdXX45X0xspLYEkG2LSZvzzyTzs
         ql20moMH532YQt/H+m2gqXFfo9/xuCM40BfJ+RVMpx2etjtH0oGfSRw+WNdcNGnEr0/D
         +QIA==
X-Gm-Message-State: AC+VfDx7yJjcSMbxXIgNvUSX7EudN3ere8R8w7wfO6JCA3BXw0vak//r
        KwUalhPn03dYAdZgnctghG8ZNPel86Btt6n0MEN7Vw==
X-Google-Smtp-Source: ACHHUZ5XV/gF2y/I0UIU3VnTl0YmVllZOQBSSNK7fEM/ZUZqxnFUeDIcm7rVQlBnxW/2PI1fPmCsA3C5q16msloHh3Y=
X-Received: by 2002:a81:4982:0:b0:565:ef60:3f2f with SMTP id
 w124-20020a814982000000b00565ef603f2fmr3962824ywa.44.1685328186991; Sun, 28
 May 2023 19:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230417-topic-dpu_regbus-v1-0-06fbdc1643c0@linaro.org>
In-Reply-To: <20230417-topic-dpu_regbus-v1-0-06fbdc1643c0@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 29 May 2023 05:42:56 +0300
Message-ID: <CAA8EJpo8X7KrrXoButyW0d1Lz=a5Stw2inFGt2R7KJ+2NTX6wA@mail.gmail.com>
Subject: Re: [PATCH 0/5] MDSS reg bus interconnect
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Apr 2023 at 18:30, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Apart from the already handled data bus (MAS_MDP_Pn<->DDR), there's
> another path that needs to be handled to ensure MDSS functions properly,
> namely the "reg bus", a.k.a the CPU-MDSS interconnect.
>
> Gating that path may have a variety of effects.. from none to otherwise
> inexplicable DSI timeouts..
>
> This series tries to address the lack of that.
>
> Example path:
>
> interconnects = <&bimc MASTER_AMPSS_M0 0 &config_noc SLAVE_DISPLAY_CFG 0>;

If we are going to touch the MDSS interconnects, could you please also
add the rotator interconnect to the bindings?
We do not need to touch it at this time, but let's not have to change
bindings later again.

>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Konrad Dybcio (5):
>       dt-bindings: display/msm: Add reg bus interconnect
>       drm/msm/dpu1: Rename path references to mdp_path
>       drm/msm/mdss: Rename path references to mdp_path
>       drm/msm/mdss: Handle the reg bus ICC path
>       drm/msm/dpu1: Handle the reg bus ICC path
>
>  .../bindings/display/msm/mdss-common.yaml          |  1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c      | 10 +++----
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            | 34 ++++++++++++++++-----
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h            |  5 ++--
>  drivers/gpu/drm/msm/msm_mdss.c                     | 35 ++++++++++++++--------
>  5 files changed, 57 insertions(+), 28 deletions(-)
> ---
> base-commit: d3f2cd24819158bb70701c3549e586f9df9cee67
> change-id: 20230417-topic-dpu_regbus-abc94a770952
>
> Best regards,
> --
> Konrad Dybcio <konrad.dybcio@linaro.org>
>


-- 
With best wishes
Dmitry
