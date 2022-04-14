Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEB4D501973
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 19:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244332AbiDNRES (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 13:04:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243048AbiDNREL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 13:04:11 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15D08AC905
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 09:40:27 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id s25so6615527edi.13
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 09:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uNCknelIIQ0A0jhcGpNkNt/itvQulq3csLsSq+jMi4k=;
        b=OFD1FNp9YuGu2v7rR5vIDLHqSlz5x0ooKxLOUUFLXVcVscIABJa9XczVMvEG6Hdpic
         QEwuykdd5CFYaIM4fwYl2u3dNKd7uLY+YmmM3txQhfvMJ2+kl0ds92uwsXIkXH97bUKc
         WjRgnLpsfAzXQuHotizBIDeTEdVOmrYFEECKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uNCknelIIQ0A0jhcGpNkNt/itvQulq3csLsSq+jMi4k=;
        b=kkPKByAJ5uucrhdxEILnVDmLogvxlwucXhKjVsYZxKCniVBw7dKVeBUYHo9J+FiO5t
         mdI/arspFAZTKpXYXvFPILbBVB/vq1lBD5wqvEV+TATUcaRqFYz7jb19z5JpHbnhnDdw
         v2MWIHwikGtQsc/KPkM3gLnh3NblEwxLgIOtvbAR1u7iZQ8jbOm6cahQhAclWh8hS0TD
         J60YD95fn468WJI4WSL6tb+9KoCV8YqQyHP4VRVINmd8ootQCfxse65ViCmSRSXy/ksj
         kmN+7SvywnV/y/UZJkm/SNnJ39Tp7GwzpTx3d5yEYPe2w0vQb2wzFL3TLwNwh9BF+2Bb
         L9uw==
X-Gm-Message-State: AOAM533CE6pFrgBE1TgCu1yaCIEvRpYejfCdUdK62H9HlbaAZr4rRfgD
        vsUp3859o4rL91g/TrgD7FarxCJYuIZt+zEZ
X-Google-Smtp-Source: ABdhPJyQB7DOPuE0y2RNpH5Ohur8gTB+xXhB5XQM0Giz5mZcdlyTztDMaw+XpPqbsh1CMp2VJxWYYQ==
X-Received: by 2002:aa7:cac8:0:b0:410:cc6c:6512 with SMTP id l8-20020aa7cac8000000b00410cc6c6512mr3921248edt.408.1649954425314;
        Thu, 14 Apr 2022 09:40:25 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id q14-20020a17090622ce00b006e898c912e5sm776807eja.217.2022.04.14.09.40.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 09:40:21 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id i20so7667164wrb.13
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 09:40:19 -0700 (PDT)
X-Received: by 2002:adf:c14d:0:b0:207:a28f:f5dd with SMTP id
 w13-20020adfc14d000000b00207a28ff5ddmr2647776wre.679.1649954418519; Thu, 14
 Apr 2022 09:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <1649938766-6768-1-git-send-email-quic_sbillaka@quicinc.com> <1649938766-6768-5-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1649938766-6768-5-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Apr 2022 09:40:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xrsnk0PYENn5Een1xdUc9B1DKy8jvd1itKbFkvHAivMg@mail.gmail.com>
Message-ID: <CAD=FV=Xrsnk0PYENn5Een1xdUc9B1DKy8jvd1itKbFkvHAivMg@mail.gmail.com>
Subject: Re: [PATCH v7 4/4] Support the eDP modes given by panel
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 14, 2022 at 5:20 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> The eDP controller does not have a reliable way keep panel
> powered on to read the sink capabilities. So, the controller
> driver cannot validate if a mode can be supported by the
> source. We will rely on the panel driver to populate only
> the supported modes for now.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index c7277f0..0f18a16 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -998,6 +998,14 @@ enum drm_mode_status dp_bridge_mode_valid(struct drm_bridge *bridge,
>                 return -EINVAL;
>         }
>
> +       /*
> +        * The eDP controller currently does not have a reliable way of
> +        * enabling panel power to read sink capabilities. So, we rely
> +        * on the panel driver to populate only supported modes for now.
> +        */
> +       if (dp->is_edp)
> +               return MODE_OK;

As discussed out-of-band, I agree that this is the right thing for now
and making this assumption won't break anything. In general the set of
eDP panels is known ahead of time it's fairly unlikely someone would
set things up so that a panel couldn't use the mode it was reporting.

Longer term we should figure out a way to solve this but it doesn't
have to be today. To properly implement mode_valid() we've got to
combine knowledge from the panel (mostly rates supported and number of
lanes supported) with the controller (rates supported, number of lanes
supported/hooked up on this board).

In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
