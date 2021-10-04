Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C251E42140C
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 18:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235724AbhJDQ2L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 12:28:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236969AbhJDQ2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 12:28:10 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF8CC061745
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 09:26:21 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id y197so20958929iof.11
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 09:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zwhqowoXzJuFipJCtXxoOJgFbLCEZ6oYYj5nkHsrECU=;
        b=MjEdSbK7Tf/fjpwb7Yk8F5uzjjTjzIGJNCAM0AEiXbPEAqmsbThEErq1rFhLkU0Pta
         d5vOOgij05XSR2qDWiwkwKR3oszOUa03sJ7u/knuZOTnSnBXzQwUSxHHz65obtXMIARC
         64mx8oYDuueywYKk07LC4kFvOT9gQI7XVr05I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zwhqowoXzJuFipJCtXxoOJgFbLCEZ6oYYj5nkHsrECU=;
        b=1XqzQwzspQHBtGKrJ9CRebZw8mnqg/l+7FqLSSOVr/d/oC54Xyd7ZnEr3OeiQNECWR
         5zArnLGUX38PP/z1NS0P0Zx6PhYUhR9eQxf3dsHSVoQQj8PcW7mkeWIna2QudM+RCDXE
         DdMxQpdkGR+DmgFBpFUqZDMBSDEZOl0Bd4YTwJqvafJFQIh8RdlnlqMlU70fXib1kFyl
         waEwHHZr9GM49tsYHEAjZnPJwKi42ZheAmwplV9yElgHL3erltmNLrWg5TwkohB7V/qV
         q5IwQ9lA3ilK0jKunsJtFR+5hbmRH+o7bZXF2BJSeNTeh3TvmsM8KWc98ulunuPgW2J5
         Wveg==
X-Gm-Message-State: AOAM530jXlMmG+ISEyuNmuXS8jJ0UqvXdEkJnJUJ0DLk/98l7WH8t/vW
        MWc5qf0nCg3v8a4Mnzk4IIGiCDydkL8HlQ==
X-Google-Smtp-Source: ABdhPJzBprAWCu8wnDKEA5y5QeA+0IFlNhk6GAAvjBxvsl1btSJB55KElitex1YFd6a0YzOIuWlBAg==
X-Received: by 2002:a6b:5910:: with SMTP id n16mr9972236iob.203.1633364780889;
        Mon, 04 Oct 2021 09:26:20 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id s8sm9314326ilt.47.2021.10.04.09.26.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Oct 2021 09:26:19 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id h129so21020592iof.1
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 09:26:19 -0700 (PDT)
X-Received: by 2002:a6b:6a0c:: with SMTP id x12mr9867780iog.177.1633364778729;
 Mon, 04 Oct 2021 09:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210914202202.1702601-1-dianders@chromium.org>
 <20210914132020.v5.2.I62e76a034ac78c994d40a23cd4ec5aeee56fa77c@changeid> <CAMuHMdWy+aASNevg8nc9LTvR9QNrGYZQnB3sYYLDRfEU1w_idg@mail.gmail.com>
In-Reply-To: <CAMuHMdWy+aASNevg8nc9LTvR9QNrGYZQnB3sYYLDRfEU1w_idg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 4 Oct 2021 09:26:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W07iZigvNaxv1WodhQZVm8hD-1NxTuBuapJYifi6ROng@mail.gmail.com>
Message-ID: <CAD=FV=W07iZigvNaxv1WodhQZVm8hD-1NxTuBuapJYifi6ROng@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] drm/edid: Break out reading block 0 of the EDID
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Steev Klimaszewski <steev@kali.org>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus W <linus.walleij@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Jani Nikula <jani.nikula@intel.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Oct 4, 2021 at 8:42 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> > -       if ((edid = kmalloc(EDID_LENGTH, GFP_KERNEL)) == NULL)
> > +       edid = (u8 *)drm_do_get_edid_base_block(get_edid_block, data,
> > +                                               &connector->edid_corrupt,
> > +                                               &connector->null_edid_counter);
> > +       if (IS_ERR_OR_NULL(edid)) {
> > +               if (IS_ERR(edid))
>
> So edid is an error code, not a valid pointer...
>
> > +                       connector_bad_edid(connector, edid, 1);
>
> ... while connector_bad_edid() expects edid to be a valid pointer,
> causing a crash:
>
> Unable to handle kernel NULL pointer dereference at virtual address

Sigh. Thanks for the report and analysis. I guess I don't have any
displays reporting invalid EDIDs to test with. Hopefully this will
help:

https://lore.kernel.org/r/20211004092100.1.Ic90a5ebd44c75db963112be167a03cc96f9fb249@changeid/

-Doug
