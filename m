Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6849F4ED0EE
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 02:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352120AbiCaAfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 20:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233372AbiCaAfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 20:35:41 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3905644740
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 17:33:55 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id w25so26335046edi.11
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 17:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DYujwTSODoLsl28pxL/Kco6cVNKp164PEtJvRGhch7g=;
        b=LIfdAANbRqTkPOnpxYpODahOeq58jhaQDCbRX0ewZFvKdXZeAW4AkHth/rY399jQeA
         s29OfqcQ4X/oZAuMTJw1TZ+twD9KjvNly58+Betnq8PEp5NRg2YclK4NhtOUXif3D+OG
         B9DpasiswvJSuUWGNYlmZLBqNlkOp2jMpijmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DYujwTSODoLsl28pxL/Kco6cVNKp164PEtJvRGhch7g=;
        b=jQoHUkKX8FCzWMwOvGBntQZp+wmFo/d//X8RTI++TcdWyvbsPAPplJ53RuQYOWDaA/
         0+9jVwdFv5YGLvcFNscWkPfNhdrTbBRNUzaS28lxS9RrZmoBHWQym1YiWe6kK8kXZXYn
         3B3Z/JnUA6uLY6l1mwrA44V3xqMjjQtGbgXC3q9EYKJoukknkZ63uJyRRwBLIEGAy3WC
         XRoASXESCMaC0n02tydmzodQdJdrZkCZg3hyeY0hKcocZU2pZTyIfcQiidWTISwbzpBQ
         SOLAEtFP3GETz4SHdZRE5po2xpX1zTYlFtY4GRKmKDby5ENRfr9gybWuSa+1zQyx5CFb
         0BEQ==
X-Gm-Message-State: AOAM533tX2FLU3oexIWN33hFev/xuamVwJo+xDdcMxmk1+k4jeBHYTPC
        kqitSfzCM/myw9oRSOc6XMNSXTJ9TTqfDvfy
X-Google-Smtp-Source: ABdhPJxEIOjyFPJXsDN0Iol8Q2ax4JfS2KOIyulGCbwpYupJ11qKEaBMD4iqVcyopj3Y8xm+K+d20A==
X-Received: by 2002:aa7:cac4:0:b0:418:85b7:adec with SMTP id l4-20020aa7cac4000000b0041885b7adecmr13951030edt.231.1648686833851;
        Wed, 30 Mar 2022 17:33:53 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id d24-20020a1709067a1800b006e021f4c1c3sm8781378ejo.166.2022.03.30.17.33.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 17:33:53 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id n35so13270990wms.5
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 17:33:52 -0700 (PDT)
X-Received: by 2002:a05:600c:19ca:b0:38c:b84f:421a with SMTP id
 u10-20020a05600c19ca00b0038cb84f421amr2260341wmq.118.1648686832035; Wed, 30
 Mar 2022 17:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com>
 <1648656179-10347-2-git-send-email-quic_sbillaka@quicinc.com> <daec6ea4-abb1-05e6-ad49-b0a418a1f43e@linaro.org>
In-Reply-To: <daec6ea4-abb1-05e6-ad49-b0a418a1f43e@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 30 Mar 2022 17:33:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UTYQXngXmA_civiCMDctZr6tJNjNXynQuCwxvgiJijLg@mail.gmail.com>
Message-ID: <CAD=FV=UTYQXngXmA_civiCMDctZr6tJNjNXynQuCwxvgiJijLg@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] drm/msm/dp: Add eDP support via aux_bus
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        quic_aravindh@quicinc.com
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

Hi,

On Wed, Mar 30, 2022 at 4:19 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
> > +             bridge->ops =
> > +                     DRM_BRIDGE_OP_DETECT |
> > +                     DRM_BRIDGE_OP_HPD |
> > +                     DRM_BRIDGE_OP_MODES;
>
> I think OP_MODES should be used for eDP, shouldn't it?

No. It's confusing, but basically to get the power sequencing correct
we end up driving the EDID read from the panel driver in the eDP case.

-Doug
