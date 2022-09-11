Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADC345B5198
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 00:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbiIKWv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 18:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbiIKWv0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 18:51:26 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70EC71F616
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:51:25 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id c39-20020a05683034a700b006540d515722so4765080otu.5
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date;
        bh=yf6us0hpX9C+LQcsMl8TWkCbnYmsi9yU4+2aJofZWvw=;
        b=f/VeRCwZVsc2aBLVrdb5X6p45wFZ7LLVVBaei228qrJLXXEfigzM9sj4Gshg4vg1bb
         5rNUz6HxDgfuF0du+GtbgGRgi/3vOC+xwV8qIJ6IFIc4mP0McTqVEKs7vTBsaPKwUDvo
         XOFaF32qNe1Daqp7zvrTEG8FfH3ZBJmc0lkKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yf6us0hpX9C+LQcsMl8TWkCbnYmsi9yU4+2aJofZWvw=;
        b=vyH6GBOtlr0p7SUaNB81hlsi/gdBI1Q4M5rTxBacBdc9Z9hKUTMJVMLGm3Z7C6bSKU
         cri9+t56kCxvYplmGocakNV4IICE/ewmeB0BQz1c4kvGjaB9Be0EYuR2Fv4n7YoPTjmX
         StY1J0L+XRUPKO7YkSrGk81fcnfZvT5DvUbXSHmaYb94YhjXJX6MesXJ+99yWpF3WGGy
         qoMz82jv5oA/H1BSua85ogTL60pxi/wG3bP78m3zayXoIM2S9t9J+mN2n8oi+TSlWk0f
         jqNXEOqfW6zL7NfKJyilqLdKsVwvSJ8vDY/Y5B5FEsWtCWWZbmqaJ3tyTh+NRkkvf8gx
         v9Gw==
X-Gm-Message-State: ACgBeo0pK7otpyjvx0w37VT9quxyOCWnmsebfgXhOJCd3pPwV5uC8qdD
        DLsr4ru6tc7glyaeth2KF0zPp0kWqF/mYP91DHkBeQ==
X-Google-Smtp-Source: AA6agR5dthMo/JycUE/0eQ7pE2kMS3cJLcSQDOaW/Qur0qtlVKXNbZbZ3G7tq0yONaPO7sO0TX9z8zeHVfIBJtcrz2w=
X-Received: by 2002:a9d:738c:0:b0:638:9962:8cb6 with SMTP id
 j12-20020a9d738c000000b0063899628cb6mr9426218otk.73.1662936684828; Sun, 11
 Sep 2022 15:51:24 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 11 Sep 2022 17:51:24 -0500
MIME-Version: 1.0
In-Reply-To: <1662621988-6873-1-git-send-email-quic_kalyant@quicinc.com>
References: <y> <1662621988-6873-1-git-send-email-quic_kalyant@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sun, 11 Sep 2022 17:51:24 -0500
Message-ID: <CAE-0n51x3um=CZFk0K0k=7XkgbUk7OixtTjr2oqkhOLOz7yzwg@mail.gmail.com>
Subject: Re: [v4] drm/msm/disp/dpu1: add support for dspp sub block flush in sc7280
To:     Kalyan Thota <quic_kalyant@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        y@qualcomm.com
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, quic_vpolimer@quicinc.com,
        dmitry.baryshkov@linaro.org, quic_abhinavk@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kalyan Thota (2022-09-08 00:26:28)
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> index a35ecb6..bbda09a 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c
> @@ -307,6 +309,31 @@ static void dpu_hw_ctl_update_pending_flush_dspp(struct dpu_hw_ctl *ctx,
>         }
>  }
>
> +static void dpu_hw_ctl_update_pending_flush_dspp_subblocks(
> +       struct dpu_hw_ctl *ctx, enum dpu_dspp dspp, u32 dspp_sub_blk)
> +{
> +       uint32_t flushbits = 0, active;

Please use u32 in the kernel. It's shorter.
