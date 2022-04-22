Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233AE50B970
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 16:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1448073AbiDVOGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 10:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351486AbiDVOGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 10:06:45 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A4435A155
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:52 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id el3so5747863edb.11
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R+w/lFm+gTC9eW9lBYMMnUgARDTN948ashX6/88jSSk=;
        b=ghMiyWVM5DKXsssoViKphQIWceZP/fjd3ty8ZXt7WVjJwP3cN3O9IT7qFAE/Jj/Qdw
         cR9jYLzNJMz5r3gE7L5BLvMguTvA0g7jVmzMc9rN0pTwKYDEQo4/M8O2xgTv2G8CrHaT
         U2LEsQ4bPR/y/gfgsnT9qyWh/kRicE14xKEec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R+w/lFm+gTC9eW9lBYMMnUgARDTN948ashX6/88jSSk=;
        b=Z8sJrzgPhnYxXVM4hmPNomvPwY+5aAeKEKmuG0RuF9Rb6S3Ve12/flcoSLfysn2Jvb
         GbhH1vFLPGkBJtbOkbu/1JFe6Vt/Sl/WusQGFpHeVgZiyIXwUGAVQV3VgrIDRv/kzfLL
         lNG7Uz5mutChFKSqLbA3ll3gD7tG7ijepyWepJsMB1RmqqdRxRaRwDwp3mUFqrsZ3sUF
         Z7SSkKZ515buog8BSsu5mM6Z4eqC/xJXqjelHpO5RwOV/fsiPbwr0rOikjbGly92BjGz
         NTt5myUt79uLSp8gHe7RRvjyaB6aKuM57ol/S7EDhcYOPS3rrEtRNS8Moq592/rnWHMj
         L0kw==
X-Gm-Message-State: AOAM531ReHsmGkcDE2jGqPoe66X3cL3wCcDsYdu0FYHVV8tNCyG0Y1C9
        7yTMCVC9fcinrSiXGsvE7S1+SqwwR7dg9S3lFSI=
X-Google-Smtp-Source: ABdhPJxUuanBQn77XSNxY5odH8Iseryj3YPmau3XiVkO8/BVB+t3Q9TAEnjBc9V62J2faXBq77RNiw==
X-Received: by 2002:aa7:c50a:0:b0:41d:794d:5f12 with SMTP id o10-20020aa7c50a000000b0041d794d5f12mr5087021edq.150.1650636230549;
        Fri, 22 Apr 2022 07:03:50 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id q17-20020a170906771100b006ef7d5b7a83sm779435ejm.2.2022.04.22.07.03.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 07:03:49 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id ay11-20020a05600c1e0b00b0038eb92fa965so8033136wmb.4
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:49 -0700 (PDT)
X-Received: by 2002:a05:600c:502b:b0:38f:f7c6:3609 with SMTP id
 n43-20020a05600c502b00b0038ff7c63609mr4367415wmr.15.1650636228521; Fri, 22
 Apr 2022 07:03:48 -0700 (PDT)
MIME-Version: 1.0
References: <1650618666-15342-1-git-send-email-quic_sbillaka@quicinc.com> <1650618666-15342-3-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1650618666-15342-3-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 22 Apr 2022 07:03:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XhznD3Nuiku9mS5YKFVX0GB8qxQZe8m8AgGCQz=a2chQ@mail.gmail.com>
Message-ID: <CAD=FV=XhznD3Nuiku9mS5YKFVX0GB8qxQZe8m8AgGCQz=a2chQ@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] drm/msm/dp: Support only IRQ_HPD and REPLUG
 interrupts for eDP
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
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
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Steev Klimaszewski <steev@kali.org>
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

On Fri, Apr 22, 2022 at 2:11 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> The panel-edp enables the eDP panel power during probe, get_modes
> and pre-enable. The eDP connect and disconnect interrupts for the eDP/DP
> controller are directly dependent on panel power. As eDP display can be
> assumed as always connected, the controller driver can skip the eDP
> connect and disconnect interrupts. Any disruption in the link status
> will be indicated via the IRQ_HPD interrupts.
>
> So, the eDP controller driver can just enable the IRQ_HPD and replug
> interrupts. The DP controller driver still needs to enable all the
> interrupts.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> ---
> Changes in v9:
>   - add comment explaining the interrupt status register
>
> Changes in v8:
>   - add comment explaining the interrupt status return
>
> Changes in v7:
>   - reordered the patch in the series
>   - modified the return statement for isr
>   - connector check modified to just check for eDP
>
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 16 ++++++++++------
>  drivers/gpu/drm/msm/dp/dp_display.c | 22 +++++++++++++++++++++-
>  2 files changed, 31 insertions(+), 7 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
