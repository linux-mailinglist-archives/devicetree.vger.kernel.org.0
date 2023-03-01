Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 728B26A755B
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 21:32:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjCAUc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Mar 2023 15:32:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjCAUc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Mar 2023 15:32:26 -0500
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38ADA497C2
        for <devicetree@vger.kernel.org>; Wed,  1 Mar 2023 12:32:25 -0800 (PST)
Received: by mail-il1-x131.google.com with SMTP id z5so9155823ilq.0
        for <devicetree@vger.kernel.org>; Wed, 01 Mar 2023 12:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYLUGupyjMeev27c+qWxeJczPJEjR3Ydgup+v8f48I0=;
        b=GmGgxIMa7jgrR0m+YdLsk7vfyL/4rJnMGC5mfcGR/R7G0gFYRjWDlZl3TA0bO7F+Qg
         RwBcF1jdEoNchqOUUlWul6LxOLORwwjrjhzZzDQPClEh29xaJAHBiR2Ma4FzFHT6dv+B
         O8/SdUNfByPhJ947xgUUtecxVu5h5xtRet+y4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYLUGupyjMeev27c+qWxeJczPJEjR3Ydgup+v8f48I0=;
        b=RK1PcszuW41FeDYYh0qI95heoesfi8fulNE+V3Y5Mk9L4igqQ22OU42VMyJcQf/sPB
         HAkc+w2obv8Pjhgqi423ixqf4j+mN+CrIJR9N4J1Kw8+B5cXjBjX1/7FF8DCZdeT6jk5
         EnpvdCfFc/M/8g1TppRsb0TpeAhnWQEYnNyjdZvSKXcSEdhEauqJZGGqiGqA6pbIPhna
         ALTuUkBA+EPZiqjX2gLRwd3pNPS7EFZo5kxzRzLzAQAvnd4CPjLa3lEAy4uWFZG8Ppjy
         +DaLaejxsgHVnTxIfhf6fsnfZNsvBsIprXwU2FhnQxD7IJQLXWx4QbictQA6o+Dry9g1
         d17w==
X-Gm-Message-State: AO0yUKUTdVZMB8FNfw8J5ZcdC9zMXMw1wB+S19WIsDTgWlWJqeJbbEqd
        052aNokdUMVRuEwKSK4Dvr2+T7cxFKyZ/mW9
X-Google-Smtp-Source: AK7set+wMrQnc45xPY4h9rTHgQZB/nDOlqZBpO7bFz1uQdviOT44hSnOyq8+l3F+G74pO1kpMygTbQ==
X-Received: by 2002:a05:6e02:12c8:b0:315:8340:1e9 with SMTP id i8-20020a056e0212c800b00315834001e9mr6916684ilm.4.1677702743104;
        Wed, 01 Mar 2023 12:32:23 -0800 (PST)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com. [209.85.166.51])
        by smtp.gmail.com with ESMTPSA id h8-20020a056638062800b003c295748836sm3841249jar.115.2023.03.01.12.32.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 12:32:21 -0800 (PST)
Received: by mail-io1-f51.google.com with SMTP id e11so2281980ioe.3
        for <devicetree@vger.kernel.org>; Wed, 01 Mar 2023 12:32:20 -0800 (PST)
X-Received: by 2002:a05:6602:14a:b0:745:b287:c281 with SMTP id
 v10-20020a056602014a00b00745b287c281mr3679858iot.2.1677702739460; Wed, 01 Mar
 2023 12:32:19 -0800 (PST)
MIME-Version: 1.0
References: <1676219337-6526-1-git-send-email-quic_vpolimer@quicinc.com> <CAD=FV=XvjFQ-7KNsW2YQQ-LzJonCcHz_rj-oOhB0jh_99ficKA@mail.gmail.com>
In-Reply-To: <CAD=FV=XvjFQ-7KNsW2YQQ-LzJonCcHz_rj-oOhB0jh_99ficKA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 1 Mar 2023 12:32:07 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VD2V=NvNCotU_bLH4LuGEO8W8a0sH0uc--KsaUsneSFg@mail.gmail.com>
Message-ID: <CAD=FV=VD2V=NvNCotU_bLH4LuGEO8W8a0sH0uc--KsaUsneSFg@mail.gmail.com>
Subject: Re: [PATCH v13 00/13] Add PSR support for eDP
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com,
        swboyd@chromium.org, quic_kalyant@quicinc.com,
        dmitry.baryshkov@linaro.org, quic_khsieh@quicinc.com,
        quic_vproddut@quicinc.com, quic_bjorande@quicinc.com,
        quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 1, 2023 at 11:06=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Sun, Feb 12, 2023 at 8:29=E2=80=AFAM Vinod Polimera
> <quic_vpolimer@quicinc.com> wrote:
> >
> > Changes in v2:
> >   - Use dp bridge to set psr entry/exit instead of dpu_enocder.
> >   - Don't modify whitespaces.
> >   - Set self refresh aware from atomic_check.
> >   - Set self refresh aware only if psr is supported.
> >   - Provide a stub for msm_dp_display_set_psr.
> >   - Move dp functions to bridge code.
> >
> > Changes in v3:
> >   - Change callback names to reflect atomic interfaces.
> >   - Move bridge callback change to separate patch as suggested by Dmitr=
y.
> >   - Remove psr function declaration from msm_drv.h.
> >   - Set self_refresh_aware flag only if psr is supported.
> >   - Modify the variable names to simpler form.
> >   - Define bit fields for PSR settings.
> >   - Add comments explaining the steps to enter/exit psr.
> >   - Change DRM_INFO to drm_dbg_db.
> >
> > Changes in v4:
> >   - Move the get crtc functions to drm_atomic.
> >   - Add atomic functions for DP bridge too.
> >   - Add ternary operator to choose eDP or DP ops.
> >   - Return true/false instead of 1/0.
> >   - mode_valid missing in the eDP bridge ops.
> >   - Move the functions to get crtc into drm_atomic.c.
> >   - Fix compilation issues.
> >   - Remove dpu_assign_crtc and get crtc from drm_enc instead of dpu_enc=
.
> >   - Check for crtc state enable while reserving resources.
> >
> > Changes in v5:
> >   - Move the mode_valid changes into a different patch.
> >   - Complete psr_op_comp only when isr is set.
> >   - Move the DP atomic callback changes to a different patch.
> >   - Get crtc from drm connector state crtc.
> >   - Move to separate patch for check for crtc state enable while
> > reserving resources.
> >
> > Changes in v6:
> >   - Remove crtc from dpu_encoder_virt struct.
> >   - fix crtc check during vblank toggle crtc.
> >   - Misc changes.
> >
> > Changes in v7:
> >   - Add fix for underrun issue on kasan build.
> >
> > Changes in v8:
> >   - Drop the enc spinlock as it won't serve any purpose in
> > protetcing conn state.(Dmitry/Doug)
> >
> > Changes in v9:
> >   - Update commit message and fix alignment using spaces.(Marijn)
> >   - Misc changes.(Marijn)
> >
> > Changes in v10:
> >   - Get crtc cached in dpu_enc during obj init.(Dmitry)
> >
> > Changes in v11:
> >   - Remove crtc cached in dpu_enc during obj init.
> >   - Update dpu_enc crtc state on crtc enable/disable during self refres=
h.
> >
> > Changes in v12:
> >   - Update sc7180 intf mask to get intf timing gen status
> > based on DPU_INTF_STATUS_SUPPORTED bit.(Dmitry)
> >   - Remove "clear active interface in the datapath cleanup" change
> > as it is already included.
> >
> > Changes in v13:
> >   - Move core changes to top of the series.(Dmitry)
> >   - Drop self refresh aware disable change after psr entry.(Dmitry)
> >
> > Vinod Polimera (13):
> >   drm: add helper functions to retrieve old and new crtc
> >   drm/bridge: use atomic enable/disable callbacks for panel bridge
> >   drm/bridge: add psr support for panel bridge callbacks
> >   drm/msm/disp/dpu: check for crtc enable rather than crtc active to
> >     release shared resources
> >   drm/msm/disp/dpu: get timing engine status from intf status register
> >   drm/msm/disp/dpu: wait for extra vsync till timing engine status is
> >     disabled
> >   drm/msm/disp/dpu: reset the datapath after timing engine disable
> >   drm/msm/dp: use atomic callbacks for DP bridge ops
> >   drm/msm/dp: Add basic PSR support for eDP
> >   drm/msm/dp: use the eDP bridge ops to validate eDP modes
> >   drm/msm/disp/dpu: use atomic enable/disable callbacks for encoder
> >     functions
> >   drm/msm/disp/dpu: add PSR support for eDP interface in dpu driver
> >   drm/msm/disp/dpu: update dpu_enc crtc state on crtc enable/disable
> >     during self refresh
>
> I'm curious what the plan is for landing this series. I could land the
> first two in drm-misc if you want, but I'm a lowly committer and so I
> couldn't make an immutable branch for you nor can I officially Ack the
> changes to land in your branch. That means you'd be blocked for an
> extra version. Do you already have a plan? If not, then maybe we need
> to get in touch with one of the maintainers [1] of drm-misc? That's
> documented [2] to be in their set of responsibilities.
>
> [1] https://drm.pages.freedesktop.org/maintainer-tools/repositories.html#=
drm-misc-repository
> [2] https://drm.pages.freedesktop.org/maintainer-tools/maintainer-drm-mis=
c.html#maintainer-s-duties

The above question about how we'd land this is still a good one, but
perhaps less relevant quite yet because, at least in my testing, the
current series doesn't work. :-/

I know previous versions worked, so I went back and tried older
versions. It turns out that v12 _does_ work for me, but v13 doesn't
work. The difference is very small. I'm assuming you made some changes
in v13 and they looked so small that you just sent v13 out without
testing? ...or, of course, there's always a possibility that I messed
up in testing this myself, though I did repeat my results and they
were consistent.

FWIW, my testing was roughly to do this on a device that had a
PSR-enabled eDP display:

echo "dp_catalog_ctrl_set_psr" > /sys/kernel/debug/tracing/set_ftrace_filte=
r
echo function > /sys/kernel/debug/tracing/current_tracer
echo 1 > /sys/kernel/debug/tracing/tracing_on
cat /sys/kernel/debug/tracing/trace_pipe

I should see a splat in the trace buffers each time PSR is entered or
exited. On v12 I get splats as the cursor on my screen blinks. On v13,
it's just silence.

Please confirm that you tested v13. If you're confident that v13 works
then I can dig further myself.

-Doug
