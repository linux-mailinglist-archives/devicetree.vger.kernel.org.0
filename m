Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB30B501DBA
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 23:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239329AbiDNVx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 17:53:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237250AbiDNVx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 17:53:57 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFCA377E8
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:51:31 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id g18so12441936ejc.10
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IWv2Ppbp50uTzsTbYA0OggS+HfcMIlPvUJ7mUKY3HEI=;
        b=jpVPYefQu+vId/3f5egszIn+HK5nNmft6hktSoVVoMwB7NsgD6J+XSQn5+0NH/VWpy
         VXjCbtOuADG+DrniheywOPAuqHUYmIbMlmpQM4SZTG2ymrScPAO9N3TVG4g4LXgCf37m
         1z3OH2jWXmMbPBBx9Yi2sjclyIwaE72EoZKY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IWv2Ppbp50uTzsTbYA0OggS+HfcMIlPvUJ7mUKY3HEI=;
        b=QcHTEtYD2ufRn8ldMZGw88NZu/Li4+QMOdUUUsgOtxZWtlgltcrvzNwc+23KG7Uaoq
         o68HBVGw4DzgiINRrZ3hz0/q7mZsG5sAN7U70S8BvmFq2iJcbUnVndDyGluFU8F8tl8S
         fqmlaQoGlvSM+wXYfsLjnt6cc/uQTr8P5zacYIXc57nEJuE2yPeUXfnRyZpghxaQJFLS
         zNFVJ0I80sG5m/106n4xyGH23mZwQz+PRPNU1LmUgmN/3v7KAJtDhQUdvExGg9mkv4M4
         VBZtL3HshJx4YOsoxm8ts4aQbLxtZwdRR+Xqc551U+fsXdWtxRzCmjtYDVT2JPHUgWNo
         ryfg==
X-Gm-Message-State: AOAM530BMKnV9CQFBgcVci+mAVsLGJX7Tf7CanYEoLURXWPwUwv2sQCO
        PltIczmm4O2n0bbJHyIV0dj/cDfLBsGAh+lvUhU=
X-Google-Smtp-Source: ABdhPJxeowkjwtwKX3Kqkxe8t5RbHKnGKeRQ+EEjz7n6APo0AfzAIT+jj07ouXnTvLsTSnoh3hHO+A==
X-Received: by 2002:a17:907:1b1b:b0:6e4:7fac:6ce0 with SMTP id mp27-20020a1709071b1b00b006e47fac6ce0mr3941351ejc.617.1649973089444;
        Thu, 14 Apr 2022 14:51:29 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id c13-20020a17090654cd00b006e0db351d01sm1056104ejp.124.2022.04.14.14.51.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 14:51:28 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id u17-20020a05600c211100b0038eaf4cdaaeso6801741wml.1
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:51:28 -0700 (PDT)
X-Received: by 2002:a05:600c:4f10:b0:38c:ae36:d305 with SMTP id
 l16-20020a05600c4f1000b0038cae36d305mr499148wmq.34.1649973087758; Thu, 14 Apr
 2022 14:51:27 -0700 (PDT)
MIME-Version: 1.0
References: <1649938766-6768-1-git-send-email-quic_sbillaka@quicinc.com>
 <1649938766-6768-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=Wmiv2WGhFCLYmXbWESNOh5FfobjNme85aU6YtN1SLVDA@mail.gmail.com>
 <81c3a9fb-4c92-6969-c715-ca085322f9c6@linaro.org> <CAE-0n50obe_aqzwQY-X1yH4emjjOErOJ_wj9sQe=HoWEZ3vjTw@mail.gmail.com>
 <CAD=FV=U4qtst5q--_1794Pdjsc7b_JMRAh+X_vr-9qJx5NtOrw@mail.gmail.com> <56453228-d4b2-c7e4-7b72-6de8637f2def@linaro.org>
In-Reply-To: <56453228-d4b2-c7e4-7b72-6de8637f2def@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Apr 2022 14:51:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XjVb7tP4acjOQgg2_8oCbOxqTopJE1PUKdf2noQCHg=Q@mail.gmail.com>
Message-ID: <CAD=FV=XjVb7tP4acjOQgg2_8oCbOxqTopJE1PUKdf2noQCHg=Q@mail.gmail.com>
Subject: Re: [PATCH v7 1/4] drm/msm/dp: Add eDP support via aux_bus
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        Aravind Venkateswaran <quic_aravindh@quicinc.com>,
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

On Thu, Apr 14, 2022 at 2:16 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> > Hmm, interesting. Probably for DRM_BRIDGE_OP_MODES that will work?
> > It's definitely worth confirming but from my reading of the code it
> > _probably_ wouldn't hurt.
> >
> > One thing someone would want to confirm would be what would happen if
> > we move this code and the panel code to implement DRM_BRIDGE_OP_EDID
> > properly. It looks as if both actually ought to be implementing that
> > instead of DRM_BRIDGE_OP_MODES, at least in some cases. A fix for a
> > future day. Could we get into trouble if one moved before the other?
> > Then the panel would no longer override the eDP controller and the eDP
> > controller would try to read from a possibly unpowered panel?
>
> That would depend on the way the get_edid would be implemented in DP
> driver. Currently the edid is cached via the
> dp_display_process_hpd_high() -> dp_panel_read_sink_caps() call chain.
>
> With this patchset, the dp_hpd_plug_handle() ->
> dp_display_usbpd_configure_cb() -> dp_display_process_hpd_high() will be
> called too late for the get_modes/get_edid (from dp_bridge's enable() op).
>
> There is another issue. drm_panel has only get_modes() callback, so
> panel_bridge can not implement get_edid() unless we extend the panel
> interface (which might be a good idea).

Ah, that makes sense and explains why the current panel code does the
EDID reading in its get_modes() function even though get_modes() is
_documented_ that it doesn't read the EDID. ;-) I guess it's another
of the "let's move some people over to the new way but we'll keep the
old code working". Definitely makes it hard to understand at times.


> > For hotplug/detect I'm even less confident that setting the bits would
> > be harmless. I haven't sat down and traced everything, but from what I
> > can see the panel _doesn't_ set these bits, does it? I believe that
> > the rule is that when every bridge in the chain _doesn't_ implement
> > detect/hotplug that the panel is always present. The moment someone
> > says "hey, I can detect" then it suddenly becomes _not_ always
> > present. Yes, I guess we could have the panel implement "detect" and
> > return true, but I'm not convinced that's actually better...
>
> I think it makes sense to implement OP_DETECT in panel bridge (that
> always returns connector_status_connected) at least to override the
> possible detect ops in previous bridges.

So I truly don't know the right answer, but are you sure that's the
best design? I _think_ that panel_bridge is used for all kinds of
panels, right? So what if there's some type of display that uses a
panel but there's still a mechanism that supports physical detection
of the panel? By implementing "detect" in the generic panel_bridge
then you're _preventing_ anyone higher up in the chain from
implementing it and you're forcing it to be "always connected".

For instance, we could come up with a new display standard called
"pluggable eDP" that is just like eDP except that you can physically
detect it. This imaginary new display standard is different from DP
because it has eDP power sequencing (fully powers the display off when
the screen is off) but it's hot pluggable! It introduces a new pin
that goes to the DP controller called RT-HPD for "really, truly hot
plug detect" that works even when the panel is off. The existing "HPD"
pin continues to mean that the panel is read to communicate. If the
drm_panel hardcodes "always connected" then I can't implement my
"pluggable eDP" system, right? However, if we leave it just like it is
today then my new system would be easy to implement. ;-)

The above example is obviously not truly a real one but I guess my
point is that I find it more intuitive / useful to say that we should
only implement "detect" if we truly think we can detect and that if
nobody says they can detect then we must be always connected.

As an aside; I think in general it's not always easy to fit every
possible graphics system into these "bridge chains" and the simple
sequence of pre-enable, enable, etc, so we have to do our best and
accept the fact that sometimes we'll need special cases. Dave
Stephenson's patches [1] should tell us that, at least.

[1] https://lore.kernel.org/all/cover.1646406653.git.dave.stevenson@raspberrypi.com/


-Doug
