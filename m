Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 810C23C5ECB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 17:04:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235412AbhGLPHA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 11:07:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235402AbhGLPG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 11:06:57 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ADEBC0613E5
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 08:04:08 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id m68so2772044qke.7
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 08:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=isd/llWwr/Y0cL0WxQwwfUZGS9+zFVVnxXEoNVeoRKQ=;
        b=JTqNDAZEgzekdEwusOKFc/BA38hvqh2Q/Y0osda98t33A9XhabVx51fuWMSUG2X2k8
         PUGz839O2kQ17hLlv8qrvpsoe7ZeNnGZVrAq9ZhuzGIU+esN4VCDCF1WiRU2r5Y8eeX9
         waoFggrUUaK1Yrpp6/HAPHxdJAyUhC4iVEqJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=isd/llWwr/Y0cL0WxQwwfUZGS9+zFVVnxXEoNVeoRKQ=;
        b=qzlXERyjnjtTR8bTXSYesXWCynyWZ5ZB7c7YtiHne6CES61SRZwabg+lmXBed70gHC
         ufFtR9uTl1KuP2do/IFLaT6DrAdXWqQnDISdlVlh60XKqTvQeM4ub7ATmmJq8z5YQlEu
         U6ujVhtv8wc+ejrTVnN/+zhEUrDnWesnVqNam3S/3Pt4q9dEKLZBNcKBckZp2hFrv4qD
         DBF9VQ6CTjT/H0QY4w/1LN6INwD3FeJIBAhSdaxWc/GF09Y+WGPkr/H4PRVw4RRGZPkh
         wTSr7Uc/VOaiV3CmmB7N9CvSQx85/hE4XVEdH83GgrTj6rr7zlc8Ju3aYzVzcduhc199
         4W7A==
X-Gm-Message-State: AOAM530GbDKA643rsgpxYFN8LkS6vaBPx0pzqf3NgJC01/HB7a/k4IE9
        fEYOgKJe/TspYcm4saqcAnNsnp9JKTzAng==
X-Google-Smtp-Source: ABdhPJz22ugZkUfb7/WxFupROcPHRLT2bZamDMKrk+rB488iiHg9ZWOsjzsoR4VW3iHlL4RUbXTOiQ==
X-Received: by 2002:a37:6143:: with SMTP id v64mr7794145qkb.419.1626102247750;
        Mon, 12 Jul 2021 08:04:07 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id k17sm5559508qta.85.2021.07.12.08.04.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 08:04:07 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id g19so29473325ybe.11
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 08:04:06 -0700 (PDT)
X-Received: by 2002:a25:cc52:: with SMTP id l79mr63888238ybf.476.1626102245460;
 Mon, 12 Jul 2021 08:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <1624726268-14869-1-git-send-email-rajeevny@codeaurora.org>
 <1624726268-14869-2-git-send-email-rajeevny@codeaurora.org>
 <7f8562df-7e1f-dcfb-1c58-f1edd9dcc606@suse.de> <CAD=FV=V8CaKObbQTCsX2GrP=O8aJUaWLZY3zgBMRATtSn6Be4g@mail.gmail.com>
In-Reply-To: <CAD=FV=V8CaKObbQTCsX2GrP=O8aJUaWLZY3zgBMRATtSn6Be4g@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 12 Jul 2021 08:03:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wij=nih9c1Dxmh=3UFXsOvdbTHBqwXxsUa+rQfpuf4Wg@mail.gmail.com>
Message-ID: <CAD=FV=Wij=nih9c1Dxmh=3UFXsOvdbTHBqwXxsUa+rQfpuf4Wg@mail.gmail.com>
Subject: Re: [v8 1/6] drm/panel: add basic DP AUX backlight support
To:     Thomas Zimmermann <tzimmermann@suse.de>
Cc:     Rajeev Nandan <rajeevny@codeaurora.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@gmail.com>, Lyude Paul <lyude@redhat.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rob Herring <robh@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>,
        Kalyan Thota <kalyan_t@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 12, 2021 at 6:39 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Jul 12, 2021 at 2:41 AM Thomas Zimmermann <tzimmermann@suse.de> wrote:
> >
> > > +     ret = drm_dp_dpcd_read(aux, DP_EDP_DPCD_REV, edp_dpcd,
> > > +                            EDP_DISPLAY_CTL_CAP_SIZE);
> >
> > This creates a cyclic dependency between drm_kms_helper-ko and drm.ko.
> > drm_panel.c is in the latter, while drm_dp_dpcd_read() in
> > drm_dp_helper.c is in the former. Please fix.
>
> Yeah, this was reported Friday and I posted a patch to try to fix it:
>
> https://lore.kernel.org/lkml/20210709152909.1.I23eb4cc5a680341e7b3e791632a635566fa5806a@changeid/
>
> I see Rajeev had some feedback on it. Once I've dug out of my weekend
> email hole I'll take a look at plan to post a v2 ASAP.

Breadcrumbs: v2 of the fix is at:

https://lore.kernel.org/lkml/20210712075933.v2.1.I23eb4cc5a680341e7b3e791632a635566fa5806a@changeid/

I'm hoping this looks OK so we can get this resolved before it trips
too many people up.

-Doug
