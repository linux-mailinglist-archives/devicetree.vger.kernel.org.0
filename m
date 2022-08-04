Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E53D58A00F
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 19:54:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231563AbiHDRyz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 13:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbiHDRyy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 13:54:54 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD3836AA24
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 10:54:53 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id r5so240838iod.10
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 10:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Q94Q2VDlGnfmsIVyKku4OjRypxckGbu+KvrwMMNdhgs=;
        b=lvlLlE7olQ5iMWyiRKxfNMtkZzWDdxp8/mVxNcRkMZH6idmzmJ+atn9c5BDlpGUrKu
         FVhK6HEEUsRFAHOdZY+MRmjSYBywMpoNw2sneaMMNrqkdn8AZoP1vdPmR1Ls7aHDiEyc
         l5HOCLI+BuYNahdSsPJrSNvwqhvEx7O6pe8qE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Q94Q2VDlGnfmsIVyKku4OjRypxckGbu+KvrwMMNdhgs=;
        b=C2erg/tcjgNSC03pd0w8HR7QWRIJLmtxLpcxA1X6W9Oaxs/XzZh0DMNe3JfRjz5VFw
         ajTlMlaDhHdbvMvkwVRnG3eWaAiciaML/xNmPUA+0Tpxe8QEjEgZoKwCT0E0oF1gb35k
         kjREj5mqOpDpsBcDuMO0nNYWzdhK+V2vr9jbSS+RO6hsmKld+KxzfuSGuKijzTbkz9Pa
         Vuqw15DnRg/kko4wLXcDAS1VPfjDpjMPpnmpvzLtOkSqOGKfhUgRxGHj/Rc6wfj5eZyo
         IohBkg5L59pf27PMvBBZ7JzwCORt/mDI4Z65dOm4EFAWjKM+fHS0H66Hz4Hho72kZMjq
         IA0g==
X-Gm-Message-State: ACgBeo2bJmAADLXelWd1VPpenSEr6kbeV6gCFvxTWTpy6j3oCM8vLVsH
        w3iEK2xCOQlSa+ZzZga5X54mNNaPosdByN4A
X-Google-Smtp-Source: AA6agR4sUBRJEgPr5s/YxuWsHxllqywodfwaMfwJ4XjWmCG8xdHdaJBOYdORFnN/7x6uiqiEPnV1DQ==
X-Received: by 2002:a05:6602:2a47:b0:67c:3ea9:1a97 with SMTP id k7-20020a0566022a4700b0067c3ea91a97mr1255172iov.180.1659635692786;
        Thu, 04 Aug 2022 10:54:52 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com. [209.85.166.46])
        by smtp.gmail.com with ESMTPSA id x8-20020a026f08000000b00339dfa082a7sm703518jab.109.2022.08.04.10.54.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 10:54:51 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id c185so255992iof.7
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 10:54:51 -0700 (PDT)
X-Received: by 2002:a05:6638:2614:b0:33f:5bc2:b385 with SMTP id
 m20-20020a056638261400b0033f5bc2b385mr1356611jat.246.1659635690978; Thu, 04
 Aug 2022 10:54:50 -0700 (PDT)
MIME-Version: 1.0
References: <1657544224-10680-1-git-send-email-quic_vpolimer@quicinc.com>
 <CAD=FV=U_GStziLOCVLs_FC_2Vr=ykGfbb4ZtUp79iV8V=B0cEA@mail.gmail.com> <CAG3jFyv3up0o4S+UYMKaAjanKL6hxCNtEa5zQTQEeNREab-NRA@mail.gmail.com>
In-Reply-To: <CAG3jFyv3up0o4S+UYMKaAjanKL6hxCNtEa5zQTQEeNREab-NRA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 4 Aug 2022 10:54:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VL2ATy=Ap5fAVxMYZZ5G6_8pdFGw=gdOc=PuqiOPHMow@mail.gmail.com>
Message-ID: <CAD=FV=VL2ATy=Ap5fAVxMYZZ5G6_8pdFGw=gdOc=PuqiOPHMow@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Add PSR support for eDP
To:     Robert Foss <robert.foss@linaro.org>
Cc:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Aug 4, 2022 at 9:21 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> On Fri, 29 Jul 2022 at 02:22, Doug Anderson <dianders@chromium.org> wrote:
> >
> > Hi,
> >
> > On Mon, Jul 11, 2022 at 5:57 AM Vinod Polimera
> > <quic_vpolimer@quicinc.com> wrote:
> > >
> > > Changes in v2:
> > >   - Use dp bridge to set psr entry/exit instead of dpu_enocder.
> > >   - Don't modify whitespaces.
> > >   - Set self refresh aware from atomic_check.
> > >   - Set self refresh aware only if psr is supported.
> > >   - Provide a stub for msm_dp_display_set_psr.
> > >   - Move dp functions to bridge code.
> > >
> > > Changes in v3:
> > >   - Change callback names to reflect atomic interfaces.
> > >   - Move bridge callback change to separate patch as suggested by Dmitry.
> > >   - Remove psr function declaration from msm_drv.h.
> > >   - Set self_refresh_aware flag only if psr is supported.
> > >   - Modify the variable names to simpler form.
> > >   - Define bit fields for PSR settings.
> > >   - Add comments explaining the steps to enter/exit psr.
> > >   - Change DRM_INFO to drm_dbg_db.
> > >
> > > Changes in v4:
> > >   - Move the get crtc functions to drm_atomic.
> > >   - Add atomic functions for DP bridge too.
> > >   - Add ternary operator to choose eDP or DP ops.
> > >   - Return true/false instead of 1/0.
> > >   - mode_valid missing in the eDP bridge ops.
> > >   - Move the functions to get crtc into drm_atomic.c.
> > >   - Fix compilation issues.
> > >   - Remove dpu_assign_crtc and get crtc from drm_enc instead of dpu_enc.
> > >   - Check for crtc state enable while reserving resources.
> > >
> > > Changes in v5:
> > >   - Move the mode_valid changes into a different patch.
> > >   - Complete psr_op_comp only when isr is set.
> > >   - Move the DP atomic callback changes to a different patch.
> > >   - Get crtc from drm connector state crtc.
> > >   - Move to separate patch for check for crtc state enable while
> > > reserving resources.
> > >
> > > Changes in v6:
> > >   - Remove crtc from dpu_encoder_virt struct.
> > >   - fix crtc check during vblank toggle crtc.
> > >   - Misc changes.
> > >
> > > Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> > > Signed-off-by: Kalyan Thota <quic_kalyant@quicinc.com>
> > > Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> > >
> > > Vinod Polimera (10):
> > >   drm/msm/disp/dpu: clear dpu_assign_crtc and get crtc from connector
> > >     state instead of dpu_enc
> > >   drm: add helper functions to retrieve old and new crtc
> > >   drm/msm/dp: use atomic callbacks for DP bridge ops
> > >   drm/msm/dp: Add basic PSR support for eDP
> > >   drm/msm/dp: use the eDP bridge ops to validate eDP modes
> > >   drm/bridge: use atomic enable/disable callbacks for panel bridge
> > >   drm/bridge: add psr support for panel bridge callbacks
> > >   drm/msm/disp/dpu: use atomic enable/disable callbacks for encoder
> > >     functions
> > >   drm/msm/disp/dpu: add PSR support for eDP interface in dpu driver
> > >   drm/msm/disp/dpu: check for crtc enable rather than crtc active to
> > >     release shared resources
> > >
> > >  drivers/gpu/drm/bridge/panel.c              |  68 ++++++++--
> > >  drivers/gpu/drm/drm_atomic.c                |  60 +++++++++
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c    |  17 ++-
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c |  56 +++++----
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h |   8 --
> > >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c     |   2 +-
> > >  drivers/gpu/drm/msm/dp/dp_catalog.c         |  81 ++++++++++++
> > >  drivers/gpu/drm/msm/dp/dp_catalog.h         |   4 +
> > >  drivers/gpu/drm/msm/dp/dp_ctrl.c            |  73 +++++++++++
> > >  drivers/gpu/drm/msm/dp/dp_ctrl.h            |   3 +
> > >  drivers/gpu/drm/msm/dp/dp_display.c         |  31 +++--
> > >  drivers/gpu/drm/msm/dp/dp_display.h         |   2 +
> > >  drivers/gpu/drm/msm/dp/dp_drm.c             | 184 ++++++++++++++++++++++++++--
> > >  drivers/gpu/drm/msm/dp/dp_drm.h             |   9 +-
> > >  drivers/gpu/drm/msm/dp/dp_link.c            |  36 ++++++
> > >  drivers/gpu/drm/msm/dp/dp_panel.c           |  22 ++++
> > >  drivers/gpu/drm/msm/dp/dp_panel.h           |   6 +
> > >  drivers/gpu/drm/msm/dp/dp_reg.h             |  27 ++++
> > >  include/drm/drm_atomic.h                    |   7 ++
> > >  19 files changed, 631 insertions(+), 65 deletions(-)
> >
>
> Which tree does this series apply to?

It ought to apply to msm-next, but as I mentioned in my reply to patch
#1 it doesn't apply to the top of msm-next. I think I also had to
manually apply a few of the later patches with "patch -p1".

-Doug
