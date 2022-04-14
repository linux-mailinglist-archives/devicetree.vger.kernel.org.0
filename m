Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EC5D501C60
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 22:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234182AbiDNULv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 16:11:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346104AbiDNULt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 16:11:49 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 423BED62
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 13:09:23 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id u15so12028254ejf.11
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 13:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qgSOXhOj6eX2tVbThvNfdYmtN+IYIYkknh8Kxb94j9s=;
        b=oM2qYDjzsXJDUAHNx6vFqnV1+qnLdL1Xe5C3dzmC66+quS3wWWGkaNIQsO9Yy8nXam
         YG0sUWZXbEJhoHkK57/0Iw5a6LpPk/LwtPQH0w6pgdrknxCmSrmIE74V2aZZjHJfEvdO
         3quH4CB8aG16ID9RExDHT4l4sF/8MSw6AwssM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qgSOXhOj6eX2tVbThvNfdYmtN+IYIYkknh8Kxb94j9s=;
        b=mZAW29iDlNlKJjZILu1bod8HyK/uLyW9iP1xRcm1+K8Rbv5BWEFV6hwF2+1Zw+nC2w
         6aoonmhYHmCsszZOMeZLTVzDAjhYNKymGPNQichTcN+IddzCgCbR5uUTU4c4PGucjkh6
         YOD+dPpXBOsjuN/NYsno+DPgPF2pfsfQ9qnYzdlR/ISNc0JhcBRfzwS/zzSbnZzvqAF1
         TANaAqlCmBiSydjOjcHieqsg57zgrLEeM2vO3gmj4aweEFLoqGv9vZtmBnEYQ8ChE1w6
         lnCNF3+uuVQcrAGSGks5XTfTYaODBs5s0F9DkMed6etrXY24Y6xCDKbZTXRk5jgTPvck
         VzRg==
X-Gm-Message-State: AOAM532+WgTt7vGIRYubM5hh4CxOJqSMKzo1hmiD26KIVxxEUC28S0Ak
        JNB5CMg3HO83a4jYH0yhDtpj2uQQ0AoRgwU5koU=
X-Google-Smtp-Source: ABdhPJwBb3UHRYcHIc+qUKRBMjWyohIjjRvwUeEBPm0TmwwEMTvAkmQEZNRkTaarsByiaFHzTpR7bA==
X-Received: by 2002:a17:907:7b99:b0:6ec:9746:b5b5 with SMTP id ne25-20020a1709077b9900b006ec9746b5b5mr1803594ejc.392.1649966961513;
        Thu, 14 Apr 2022 13:09:21 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id f7-20020a0564021e8700b0041d03a94f27sm1505334edf.66.2022.04.14.13.09.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 13:09:19 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id e21so8355349wrc.8
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 13:09:18 -0700 (PDT)
X-Received: by 2002:a05:6000:1c15:b0:207:849a:648b with SMTP id
 ba21-20020a0560001c1500b00207849a648bmr3122026wrb.513.1649966957865; Thu, 14
 Apr 2022 13:09:17 -0700 (PDT)
MIME-Version: 1.0
References: <1649938766-6768-1-git-send-email-quic_sbillaka@quicinc.com>
 <1649938766-6768-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=Wmiv2WGhFCLYmXbWESNOh5FfobjNme85aU6YtN1SLVDA@mail.gmail.com>
 <81c3a9fb-4c92-6969-c715-ca085322f9c6@linaro.org> <CAE-0n50obe_aqzwQY-X1yH4emjjOErOJ_wj9sQe=HoWEZ3vjTw@mail.gmail.com>
In-Reply-To: <CAE-0n50obe_aqzwQY-X1yH4emjjOErOJ_wj9sQe=HoWEZ3vjTw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Apr 2022 13:09:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U4qtst5q--_1794Pdjsc7b_JMRAh+X_vr-9qJx5NtOrw@mail.gmail.com>
Message-ID: <CAD=FV=U4qtst5q--_1794Pdjsc7b_JMRAh+X_vr-9qJx5NtOrw@mail.gmail.com>
Subject: Re: [PATCH v7 1/4] drm/msm/dp: Add eDP support via aux_bus
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 14, 2022 at 12:40 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Dmitry Baryshkov (2022-04-14 12:16:14)
> >
> > I think it's too verbose and a bit incorrect.

Not sure which part you're asserting is incorrect, but shorter is OK w/ me too.


> > This is a bit saner:
> > /*
> >   * These ops do not make sense for eDP, since they are provided
> >   * by the panel-bridge corresponding to the attached eDP panel.
> >   */
> >
> > My question was whether we really need to disable them for eDP since for
> > eDP the detect and and get_modes will be overridden anyway.

Hmm, interesting. Probably for DRM_BRIDGE_OP_MODES that will work?
It's definitely worth confirming but from my reading of the code it
_probably_ wouldn't hurt.

One thing someone would want to confirm would be what would happen if
we move this code and the panel code to implement DRM_BRIDGE_OP_EDID
properly. It looks as if both actually ought to be implementing that
instead of DRM_BRIDGE_OP_MODES, at least in some cases. A fix for a
future day. Could we get into trouble if one moved before the other?
Then the panel would no longer override the eDP controller and the eDP
controller would try to read from a possibly unpowered panel?

So I guess in the end my preference would be that we know that driving
the EDID read from the controller isn't a great idea for eDP (since we
have no way to ensure that the panel is powered) so why risk it and
set the bit saying we can do it?


For hotplug/detect I'm even less confident that setting the bits would
be harmless. I haven't sat down and traced everything, but from what I
can see the panel _doesn't_ set these bits, does it? I believe that
the rule is that when every bridge in the chain _doesn't_ implement
detect/hotplug that the panel is always present. The moment someone
says "hey, I can detect" then it suddenly becomes _not_ always
present. Yes, I guess we could have the panel implement "detect" and
return true, but I'm not convinced that's actually better...


> And to go further, I'd expect that a bridge should expose the
> functionality that it supports, regardless of what is connected down the
> chain. Otherwise we won't be able to mix and match bridges because the
> code is brittle, making assumptions about what is connected.

From my point of view the bridge simply doesn't support any of the
three things when we're in eDP mode. Yes, it's the same driver. Yes,
eDP and DP share nearly the same signalling on the wire. Yes, it's
easily possible to make a single controller that supports DP and eDP.
...but the rules around detection and power sequencing are simply
different for the two cases. The controller simply _cannot_ detect
whether the panel is connected in the eDP case and it _must_ assume
that the panel is always connected. Yes, it has an HPD pin. No, that
HPD pin doesn't tell when the panel is present. The panel is always
present. The panel is always present.

So, IMO, it is _incorrect_ to say we can support HPD and DETECT if we
know we're in eDP mode.

-Doug
