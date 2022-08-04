Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A20589D55
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 16:17:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbiHDORV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 10:17:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240033AbiHDORU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 10:17:20 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFD9A4198C
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 07:17:18 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id f22so14543116edc.7
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 07:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=V3jLsfHepCtzmM3jqaIFNUTw4oeeGqLPVBJGqzP2VdM=;
        b=JkX7XwsJCHIlFiF0B5fxtl8ET99tlQYq3RS+0DqL8n+QyFBMY+jCN8PnuswadccSA5
         v0MdTihTLtD8ubvNIhYjEY+sngNIR8YxPzP/ayFfUmaggZkgLAMOBQ4VFkROAMr386p0
         BLiUb6KVyGjjtpbltPlz+BraNZwXSKA3psbVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=V3jLsfHepCtzmM3jqaIFNUTw4oeeGqLPVBJGqzP2VdM=;
        b=DWT9yUGHZD8Bl5PH+oAZe2D3fwvCM4g5sSJoQARY/fq2jEHpWsmtCFY/Tp36wMk4/R
         KQHvsdHR511+3HMXVi2NvAhaI6mFG3iVUR4PKSEXYcEj+StSJ9tU0RVEMmd2i4/UGKLk
         1vIyOsVibv6wR0eVxgO+Kcyf/NSy7Q38wyvHXYYsTNSLru1wxRNVQRg3EzGvK3P2a17f
         lqt+ncgqcPkCkjHgXhyGEQ+PynfrmsWkohMepZ5Jm0Wm0/U5+elO+Dskfq6FthbhQ/p9
         ORNeV21BG195ve3XGyhhMsUie3GAINZ6nxouVFHbul0odbHu3WEuNJUoV3+j9/F70ASy
         Swrg==
X-Gm-Message-State: ACgBeo17in8tCH3EdxUJagT2/J75E9BeMhU8AY/nbKctggjaPuLCDMM6
        36yJ14c5RojQCPppw7juLUe5XgmuSoX/D46N
X-Google-Smtp-Source: AA6agR7w8oKn6/+se9kR+0Dr5TQ+xaZH+dd7Y7Zy/Yf1qtW/50XbIJSLUTdgLhckVAZvJON0b9u4Fg==
X-Received: by 2002:aa7:cad3:0:b0:43c:e615:13e2 with SMTP id l19-20020aa7cad3000000b0043ce61513e2mr2188366edt.289.1659622637348;
        Thu, 04 Aug 2022 07:17:17 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id m16-20020a056402051000b0043ab81e4230sm721018edv.50.2022.08.04.07.17.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 07:17:12 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id j15so17350368wrr.2
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 07:17:11 -0700 (PDT)
X-Received: by 2002:a5d:5889:0:b0:21d:bccd:38e3 with SMTP id
 n9-20020a5d5889000000b0021dbccd38e3mr1554422wrf.659.1659622631172; Thu, 04
 Aug 2022 07:17:11 -0700 (PDT)
MIME-Version: 1.0
References: <1659608930-4370-1-git-send-email-quic_kalyant@quicinc.com>
In-Reply-To: <1659608930-4370-1-git-send-email-quic_kalyant@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 4 Aug 2022 07:16:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vo8GMLi=QfV=HXyVf=PTsOkntrc+OTsnQ5jMWYxSDFuQ@mail.gmail.com>
Message-ID: <CAD=FV=Vo8GMLi=QfV=HXyVf=PTsOkntrc+OTsnQ5jMWYxSDFuQ@mail.gmail.com>
Subject: Re: [v1] drm/msm/disp/dpu1: add support for hierarchical flush for
 dspp in sc7280
To:     Kalyan Thota <quic_kalyant@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Vinod Polimera <quic_vpolimer@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 4, 2022 at 3:29 AM Kalyan Thota <quic_kalyant@quicinc.com> wrote:
>
> +static void dpu_hw_ctl_set_dspp_hierarchical_flush(struct dpu_hw_ctl *ctx,
> +       enum dpu_dspp dspp, enum dpu_dspp_sub_blk dspp_sub_blk)
> +{
> +       uint32_t flushbits = 0, active = 0;

nit: don't init to 0 since you just override below.


> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
> index ac15444..8ecab91 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.h
> @@ -160,6 +160,9 @@ struct dpu_hw_ctl_ops {
>         uint32_t (*get_bitmask_dspp)(struct dpu_hw_ctl *ctx,
>                 enum dpu_dspp blk);
>
> +       void (*set_dspp_hierarchical_flush)(struct dpu_hw_ctl *ctx,
> +               enum dpu_dspp blk, enum dpu_dspp_sub_blk dspp_sub_blk);
> +

Given that most of the items in this list have kernel-doc comments
explaining them, probably you should have one for your new one too.

-Doug
