Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 441DC68FEA5
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 05:26:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229861AbjBIE0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 23:26:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbjBIEZw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 23:25:52 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA5D38B54
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 20:25:20 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id m15so389179ilh.9
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 20:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X3JCdbvKeiUcH/OkexvFMP8KnMjvRlzLquNMe2eJDPM=;
        b=YbUbDyPLqiPzWst58OZ6HfyZTQdO47nm+/kxW34nvPdgReGLE8CZKTkEAsRznj1YyQ
         Jo+m685SMmEizOIuzU3KvveGYv2W8fURphN+KyHUCLe4XS+I7UPupca2pJiRF0aZ7TYT
         glzF7jMl7nHOvLmU1nRcYvPKovPfoTljGDOPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X3JCdbvKeiUcH/OkexvFMP8KnMjvRlzLquNMe2eJDPM=;
        b=LQoFM95N2ueAwpAVQGiYTwva7LWEJzZbqRI11H1+3GKPf2+csrL3P9HoINPVKi7lfs
         m1ugSYr3zSL2CSQJ+MH0ERMlEVjv4fRxx5z2eKqElfWNeR85Fi9mFUBwIforvMArLtB+
         QsUXm4gntX4IKte7lBwHQll/MbpxtuOzsXLoHJmPMyHZna5gBpA4tzoXU0rmpcxMtxgX
         LG5cwgt/6JeTG1tF1SKkoj7PytK1SHTYgz5TF8nDOtAeZmRzcFfSGJGPSlCEKNGu6ikg
         pliL05v5TGual6Azux3Z6zdW9T4z36ZVM1sZnHhR8FAaJQyIL6hlFlOIDNGqW/iB3FkS
         TYQQ==
X-Gm-Message-State: AO0yUKXlsdpKGrfRHXw/7fnJgqe/2wrVPDkYbRcAieLjPZP4PxiI6bjn
        Eze3ZTcS3+eGDIEy0thlIIsfFAKM/ED//WlBaLE=
X-Google-Smtp-Source: AK7set9FaIukLNgaqSoBceMIl6m4uQmlKKEPJCHe/pr4lab7uGXm/vtNkYi8ZKVIqEbudJdmtj7IVg==
X-Received: by 2002:a05:6e02:5c1:b0:311:ad48:ff23 with SMTP id l1-20020a056e0205c100b00311ad48ff23mr2968267ils.11.1675916665285;
        Wed, 08 Feb 2023 20:24:25 -0800 (PST)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id y7-20020a02ce87000000b003a9cab5c5e3sm104072jaq.116.2023.02.08.20.24.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 20:24:24 -0800 (PST)
Received: by mail-il1-f170.google.com with SMTP id f10so395456ilc.7
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 20:24:24 -0800 (PST)
X-Received: by 2002:a92:b513:0:b0:310:9276:5d29 with SMTP id
 f19-20020a92b513000000b0031092765d29mr5213990ile.76.1675916663704; Wed, 08
 Feb 2023 20:24:23 -0800 (PST)
MIME-Version: 1.0
References: <1675863724-28412-1-git-send-email-quic_kalyant@quicinc.com>
 <CAD=FV=WbzmF_Jkwrcm27eqXaqNhGq_D=8yfCKqELET+=+EaLAA@mail.gmail.com> <BN0PR02MB8142207261497BE76A6EA07096D99@BN0PR02MB8142.namprd02.prod.outlook.com>
In-Reply-To: <BN0PR02MB8142207261497BE76A6EA07096D99@BN0PR02MB8142.namprd02.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 8 Feb 2023 20:24:08 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XVaEzyZybZ3JmFnPQkSZyw-3UfD0Mupt_adnnJcYy_iQ@mail.gmail.com>
Message-ID: <CAD=FV=XVaEzyZybZ3JmFnPQkSZyw-3UfD0Mupt_adnnJcYy_iQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Reserve DSPPs based on user request
To:     Kalyan Thota <kalyant@qti.qualcomm.com>
Cc:     "Kalyan Thota (QUIC)" <quic_kalyant@quicinc.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robdclark@chromium.org" <robdclark@chromium.org>,
        "swboyd@chromium.org" <swboyd@chromium.org>,
        "Vinod Polimera (QUIC)" <quic_vpolimer@quicinc.com>,
        "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "marijn.suijten@somainline.org" <marijn.suijten@somainline.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Feb 8, 2023 at 8:16 PM Kalyan Thota <kalyant@qti.qualcomm.com> wrote:
>
> Hi Doug,
>
> Have you picked the core change to program dspp's  (below) ? the current series will go on top of it.
> https://patchwork.kernel.org/project/linux-arm-msm/patch/1671542719-12655-1-git-send-email-quic_kalyant@quicinc.com/

I didn't pick v11 of it like you link, but I did pick v12 of the same
patch. In my response I said that I picked 5 patches, this series plus
[1] where [1] is:

[1] https://lore.kernel.org/all/1674814487-2112-1-git-send-email-quic_kalyant@quicinc.com/


> Thanks,
> Kalyan
>
> >-----Original Message-----
> >From: Doug Anderson <dianders@chromium.org>
> >Sent: Wednesday, February 8, 2023 10:44 PM
> >To: Kalyan Thota (QUIC) <quic_kalyant@quicinc.com>
> >Cc: dri-devel@lists.freedesktop.org; linux-arm-msm@vger.kernel.org;
> >freedreno@lists.freedesktop.org; devicetree@vger.kernel.org; linux-
> >kernel@vger.kernel.org; robdclark@chromium.org; swboyd@chromium.org;
> >Vinod Polimera (QUIC) <quic_vpolimer@quicinc.com>;
> >dmitry.baryshkov@linaro.org; Abhinav Kumar (QUIC)
> ><quic_abhinavk@quicinc.com>; marijn.suijten@somainline.org
> >Subject: Re: [PATCH v3 0/4] Reserve DSPPs based on user request
> >
> >WARNING: This email originated from outside of Qualcomm. Please be wary of
> >any links or attachments, and do not enable macros.
> >
> >Hi,
> >
> >On Wed, Feb 8, 2023 at 5:42 AM Kalyan Thota <quic_kalyant@quicinc.com>
> >wrote:
> >>
> >> This series will enable color features on sc7280 target which has
> >> primary panel as eDP
> >>
> >> The series removes DSPP allocation based on encoder type and allows
> >> the DSPP reservation based on user request via CTM.
> >>
> >> The series will release/reserve the dpu resources when ever there is a
> >> topology change to suit the new requirements.
> >>
> >> Kalyan Thota (4):
> >>   drm/msm/dpu: clear DSPP reservations in rm release
> >>   drm/msm/dpu: add DSPPs into reservation upon a CTM request
> >>   drm/msm/dpu: avoid unnecessary check in DPU reservations
> >>   drm/msm/dpu: reserve the resources on topology change
> >>
> >>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.h    |  2 +
> >>  drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c | 58 ++++++++++++++++------
> >-------
> >>  drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c      |  2 +
> >>  3 files changed, 37 insertions(+), 25 deletions(-)
> >
> >I tried out your changes, but unfortunately it seems like there's something wrong.
> >:( I did this:
> >
> >1. Picked your 5 patches to the chromeos-5.15 tree (this series plus [1])
> >
> >2. Put them on herobrine villager.
> >
> >3. Booted up with no external display plugged in.
> >
> >4. Tried to enable night light in the ChromeOS UI.
> >
> >5. Night light didn't turn on for the internal display.
> >
> >
> >I also tried applying them to the top of msm-next (had to resolve some small
> >conflicts). Same thing, night light didn't work.
> >
> >
> >I thought maybe this was because the Chrome browser hasn't been updated to
> >properly use atomic_check for testing for night light, so I hacked my herobrine
> >device tree to not mark "mdss_dp" as "okay". Now there's _only_ an eDP display.
> >Same thing, night light didn't work.
> >
> >
> >I could only get night light to work for the internal display if I plugged and
> >unplugged an external display in.
> >
> >
> >Is the above the behavior that's expected right now?
> >
> >
> >[1] https://lore.kernel.org/all/1674814487-2112-1-git-send-email-
> >quic_kalyant@quicinc.com/
