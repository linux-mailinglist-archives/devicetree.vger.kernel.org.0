Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF99076F580
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 00:13:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbjHCWNa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 18:13:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231478AbjHCWN3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 18:13:29 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55B932737
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 15:13:27 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-c4cb4919bb9so1627915276.3
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 15:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691100806; x=1691705606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pKrgIpuXRGic6b6C+k3mhH+LzXEqNBKYd3T00BcALmA=;
        b=jPKgu+iiT2nEak06cLi5GKVS0paWCjfjSa8tgHxQjtr3eIHOBCiQN2V7RkbMu4Wff2
         QovtecUd9NiigJRkm2kqlPn36VyKhaOFaMeLwKT8VlJdT4fpQWUKN/QSZF5kFv5TvO5x
         GevgBbGfzvoCyN2QkM+87T5++4frW5rkkUYZK4FQiNYqGimVjVZeWLVhUI75+98lLgKy
         Ky/GJc+J731K10FMbY0KIS5VwWht98Z2sB5uskZx4WTdaDeC89ZAIueiLLTjkX1FSOlv
         TQeh4MEmI/AzppxZxXUIoW14tqQU4YLNd/MdHfvZznwp8zKU5sdyjgZir9OGC9i+nHRk
         Dqaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691100806; x=1691705606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKrgIpuXRGic6b6C+k3mhH+LzXEqNBKYd3T00BcALmA=;
        b=Fe91ilnpT+UnJviWlzuWsBpG0p+FVCJJqLwmL0UgL8apqfqCYwTTTUKgBaSzc9S1jW
         AKHQnRorj2KAgbm4w5f0BJU4kYfO2wDnHwhJrC8ICYT7c54NJZERaCH7Bie4t2Jqxvvy
         Pfh0WeauMrVrf917lu0mo2BmF/EVYqC50RhG2M9pb3/iXgCxOdM5HIRP2gp93rjKk6Rt
         rP8HbSio6hp/Ck4AAL6x1aw8u2DaHiKZQiULg5Qa757eCTYf/Hcwy/6qV2dC/bixjj1h
         pq6oJwb8KtU8k63SR1Bzvg6tupR1/+Y3eh+DPjAKHlY1hBj/KZFCnkc8j/W9UpQ3SL/l
         WqRw==
X-Gm-Message-State: ABy/qLYMRKSaHpOvFMl0j/UghiVmJ/HbYQc6Rfg8CkzyycI4gW+aZNVR
        m7S8uBzl7tXhv4FvfEBtgXhcq5ga39N78cif4AzUUA==
X-Google-Smtp-Source: APBJJlHZ7yvBgzplN6wNzGDnzG/pCcR0AGkTrE8Gsc0Q677Ie2EiJpTWqq5VDD/PB1rxSTWDCvZtg/T3zp3k8g0au60=
X-Received: by 2002:a05:6902:1895:b0:d05:f537:da99 with SMTP id
 cj21-20020a056902189500b00d05f537da99mr20258859ybb.46.1691100806499; Thu, 03
 Aug 2023 15:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230803194724.154591-1-danila@jiaxyga.com> <20230803194724.154591-3-danila@jiaxyga.com>
 <CAA8EJpoBZBLYQ5RUW7nGo+wsma2XiON9+rK8N-gjnfWTkb-7rA@mail.gmail.com> <1691097186.296866515@f749.i.mail.ru>
In-Reply-To: <1691097186.296866515@f749.i.mail.ru>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 4 Aug 2023 01:13:15 +0300
Message-ID: <CAA8EJpqdQ84wq03swhOd6Qz11QzdhBbW=r0cLNuoXsEY=vT9uA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/msm/dpu: Add SM7150 support
To:     Danila Tikhonov <danila@jiaxyga.com>
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org,
        neil.armstrong@linaro.org, rfoss@kernel.org, andersson@kernel.org,
        quic_khsieh@quicinc.com, quic_vpolimer@quicinc.com,
        quic_rmccann@quicinc.com, quic_jesszhan@quicinc.com,
        liushixin2@huawei.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        davidwronek@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Aug 2023 at 00:13, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> So here too I add new sm7150_vig_sblk_0 and sm7150_vig_sblk_1 with v3lite?
>
> static const struct dpu_sspp_sub_blks sm7150_vig_sblk_0 =
>     _VIG_SBLK(5, DPU_SSPP_SCALER_QSEED3LITE);
> static const struct dpu_sspp_sub_blks sm7150_vig_sblk_1 =
>     _VIG_SBLK(6, DPU_SSPP_SCALER_QSEED3LITE);

Yes, please, close to other sblk variables.

But the priorities should be 4 and 5 (and 1, 2, 3 for DMA).

>
> > +static const struct dpu_sspp_cfg sm7150_sspp[] = {
> > + {
> > + .name = "sspp_0", .id = SSPP_VIG0,
> > + .base = 0x4000, .len = 0x1f0,
> > + .features = VIG_SDM845_MASK,
> > - .sblk = &sm8250_vig_sblk_0, // &sm7150_vig_sblk_0
> > + .xin_id = 0,
> > + .type = SSPP_TYPE_VIG,
> > + .clk_ctrl = DPU_CLK_CTRL_VIG0,
> > + }, {
> > + .name = "sspp_1", .id = SSPP_VIG1,
> > + .base = 0x6000, .len = 0x1f0,
> > + .features = VIG_SDM845_MASK,
> > + .sblk = &sm8250_vig_sblk_1,  // &sm7150_vig_sblk_1
> > + .xin_id = 4,
> > + .type = SSPP_TYPE_VIG,
> > + .clk_ctrl = DPU_CLK_CTRL_VIG1,
> > + }, {
>
> --
> Best regards,
> Danila
>



-- 
With best wishes
Dmitry
