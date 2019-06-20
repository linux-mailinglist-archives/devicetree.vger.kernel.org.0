Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F4DE4C654
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 06:48:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725953AbfFTEsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 00:48:31 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:35766 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725872AbfFTEsa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jun 2019 00:48:30 -0400
Received: by mail-ot1-f68.google.com with SMTP id j19so1465467otq.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 21:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AJXIcsGFO5lMWZGuEosbW/Dq3JALel5VCKCAbEtYs6Y=;
        b=Yl5NlZzQPUN5Tci0Gf50JsXP4Oo8dpYdihclnZeT66LEb3dxzRiJhHirLoaUqRkGN3
         nd7drf2dBhfS2HA3AMSoOGDADxhZ4nLpQMvB1T2hAahMGJBa0/7+xUJ7aJ0B4ypcW6e5
         BSNJ2PwbPrdk+BCyPhpWGOWiUVhuLmDA6DGw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AJXIcsGFO5lMWZGuEosbW/Dq3JALel5VCKCAbEtYs6Y=;
        b=Qof7WIYwU1poJqed2wku6i7BpW2o0dXUpQoPP8ffTOAdltfS4td9izgzn3/jxPIEEt
         ZuYsLXXUl+dE/k2j2RhchZJE+vbM67biGHaafjBr1j8bzWFlkytYcIrgUKqGrZsrMIAR
         /qb95ivjDB4IDGdowfpOFps1Ln/iDV+F1A2NhXUhedwYq0ILjQmB9MEDbhbpQNGNg3b6
         u9CDIdrzVHG7TxQ3qS7s4ZsxS+Sgso6dZK+mGNHur5CK7Y/XWGjNfaZbDK5FfM1XvYg9
         2eJAfWEHmDuXegD6kIQPr3Zt4YMIBnpLOTrYL+csDmxEdU1PItynqunbZxpXC1yGtFaP
         bOFg==
X-Gm-Message-State: APjAAAXEfzlt/DSNZkaXIFEjDwUm6rMq5L6yWxnjW1Ubk7ZTI7nQspyI
        gV7TPc1O8L0J6h2dcB9dXqP0zvzu5WW3xw==
X-Google-Smtp-Source: APXvYqzrvA4+rrEUps9sgIft/VAzJ0N5Zlt3GqsFor3uGZcarrP6vH6RYsoFCxSe7TF3aJIartbi0Q==
X-Received: by 2002:a9d:624b:: with SMTP id i11mr6856552otk.23.1561006109959;
        Wed, 19 Jun 2019 21:48:29 -0700 (PDT)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com. [209.85.210.45])
        by smtp.gmail.com with ESMTPSA id d62sm7533379otb.35.2019.06.19.21.48.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jun 2019 21:48:29 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id e8so1429742otl.7
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 21:48:28 -0700 (PDT)
X-Received: by 2002:a9d:3ee:: with SMTP id f101mr10192019otf.311.1561006107360;
 Wed, 19 Jun 2019 21:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-5-daoyuan.huang@mediatek.com> <20190604112039.GA12168@chromium.org>
In-Reply-To: <20190604112039.GA12168@chromium.org>
From:   Alexandre Courbot <acourbot@chromium.org>
Date:   Thu, 20 Jun 2019 13:48:15 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
Message-ID: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
Subject: Re: [RFC v2 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
To:     Tomasz Figa <tfiga@chromium.org>
Cc:     Daoyuan Huang <daoyuan.huang@mediatek.com>,
        Hans Verkuil <hans.verkuil@cisco.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        matthias.bgg@gmail.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
        yuzhao@chromium.org, zwisler@chromium.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
        Sj Huang <sj.huang@mediatek.com>, christie.yu@mediatek.com,
        holmes.chiou@mediatek.com, frederic.chen@mediatek.com,
        Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
        Rynn.Wu@mediatek.com,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
        Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 4, 2019 at 8:20 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > +
> > +     ret = mdp_vpu_get_locked(mdp);
> > +     if (ret < 0)
> > +             goto err_load_vpu;
>
> This shouldn't happen in open(), but rather the latest possible point in
> time. If one needs to keep the VPU running for the time of streaming, then
> it should be start_streaming. If one can safely turn the VPU off if there is
> no frame queued for long time, it should be just in m2m job_run.
>
> Generally the userspace should be able to
> just open an m2m device for querying it, without any side effects like
> actually powering on the hardware or grabbing a hardware instance (which
> could block some other processes, trying to grab one too).

OTOH looking at the code of mdp_vpu_get_locked(), we do the whole
rproc_boot and VPU init procedure if we were the only user. So I can
understand we want to avoid doing this too often.

Maybe mdp_vpu_get_locked() can be reorganized in a better way. I feel
like the call to mdp_vpu_register() should be done in probe, and maybe
we can use runtime PM (with a reasonable timeout) to control the rproc
and VPU init?


>
> > +
> > +     mutex_unlock(&mdp->m2m_lock);
> > +
> > +     mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);
> > +
> > +     return 0;
> > +
> > +err_load_vpu:
> > +     mdp_frameparam_release(ctx->curr_param);
> > +err_param_init:
> > +     v4l2_m2m_ctx_release(ctx->m2m_ctx);
> > +err_m2m_ctx:
> > +     v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> > +     v4l2_fh_del(&ctx->fh);
> > +err_ctrls_create:
> > +     v4l2_fh_exit(&ctx->fh);
> > +     mutex_unlock(&mdp->m2m_lock);
> > +err_lock:
>
> Incorrect naming of all the error labels here.
>
> > +     kfree(ctx);
> > +
> > +     return ret;
> > +}
> [snip]
> > +enum mdp_ycbcr_profile mdp_map_ycbcr_prof_mplane(struct v4l2_format *f,
> > +                                              u32 mdp_color)
> > +{
> > +     struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > +
> > +     if (MDP_COLOR_IS_RGB(mdp_color))
> > +             return MDP_YCBCR_PROFILE_FULL_BT601;
> > +
> > +     switch (pix_mp->colorspace) {
> > +     case V4L2_COLORSPACE_JPEG:
> > +             return MDP_YCBCR_PROFILE_JPEG;
> > +     case V4L2_COLORSPACE_REC709:
> > +     case V4L2_COLORSPACE_DCI_P3:
> > +             if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +                     return MDP_YCBCR_PROFILE_FULL_BT709;
> > +             return MDP_YCBCR_PROFILE_BT709;
> > +     case V4L2_COLORSPACE_BT2020:
> > +             if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +                     return MDP_YCBCR_PROFILE_FULL_BT2020;
> > +             return MDP_YCBCR_PROFILE_BT2020;
> > +     }
> > +     /* V4L2_COLORSPACE_SRGB or else */
> > +     if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +             return MDP_YCBCR_PROFILE_FULL_BT601;
> > +     return MDP_YCBCR_PROFILE_BT601;
>
> Putting this under the default clause of the switch statement would be
> cleaner and the comment wouldn't be needed.
>
> [snip]
> > +struct mdp_frameparam *mdp_frameparam_init(void)
> > +{
> > +     struct mdp_frameparam *param;
> > +     struct mdp_frame *frame;
> > +
> > +     param = kzalloc(sizeof(*param), GFP_KERNEL);
> > +     if (!param)
> > +             return ERR_PTR(-ENOMEM);
>
> We could just embed mdp_frameparam into the mdp_m2m_ctx struct and then
> wouldn't need any dynamic allocation here anymore. And as a side effect, the
> function could be just made void, because it couldn't fail.
>
> > +
> > +     INIT_LIST_HEAD(&param->list);
> > +     mutex_init(&param->lock);
> > +     param->state = 0;
> > +     param->limit = &mdp_def_limit;
> > +     param->type = MDP_STREAM_TYPE_UNKNOWN;
>
> We always seem to use MDP_STREAM_TYPE_BITBLT in this driver.
>
> > +     param->frame_no = 0;
>
> No need for explicit initialization to 0.
>
> Best regards,
> Tomasz
>
