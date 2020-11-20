Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD22B2BAC2D
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 15:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727262AbgKTOuj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 09:50:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726490AbgKTOui (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 09:50:38 -0500
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B271C0613CF
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 06:50:38 -0800 (PST)
Received: by mail-ot1-x342.google.com with SMTP id f16so8906080otl.11
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 06:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EeI3XLfy7zjsuDZBUbVYM32ABWixxEmS/QJ4voVy8+M=;
        b=Welndezy4dnXpFm8GpZ1B4/WENLIZem76oGzDjBA8bl9Im0RCk48Vtk/XtBQ3ixymD
         NAtTANDJ+mxNFTtae9Q50S7AUx0MvB3XOPoW4vOeid9PwYauIP08FCgmHQSlnYGus5MH
         clyWTyGUOO6Aejjd9JbbqR1N6gjYt86iR1/zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EeI3XLfy7zjsuDZBUbVYM32ABWixxEmS/QJ4voVy8+M=;
        b=TJjP4LObmfy8CcIHv9YjfyhiPMlH9C73F2d14FoQOemcYtbFwpOmuFy7PbE3w/14GO
         mXKkvky/DlMgbIjxiE7J7SerLrFwcLaw9LuFgETCYsHflzU3nohy1t6Ws/EUljwCBWBh
         VMB3tYqbXmKZwWrzMYLxOH0PuhIewpu+5fGT+fS8o+3aRHjT1gbscSgc698MdGemYqOo
         OTYZ6akxLO6iHXcHbAC9FR7vw815Fy1zvWwyTaf585XiILiS7BaJYj1cFXfP5yW/oqfY
         uVdaeF9+793KqKEaTihDNE3uB2AnFTMl8HLO+3hXNuRv6J1DUAiq9on9S4K+MB15Xt0g
         yJAw==
X-Gm-Message-State: AOAM532/07JoR/JFwebPAYQYacQ1oo+UzMd7PMuLSJA4XXl9BSYkUeRM
        9bPaZFOjxbTXe4sNULIrDNV2UfQSsbSPYkf6A907mw==
X-Google-Smtp-Source: ABdhPJxcS7IFOWMbsT3luPnCBcXCxKmPhyxdlJw1ml257trqvITcFuPLWk+cqU2xmQJ7cvucBRcu6ZRbIj0N1C794sE=
X-Received: by 2002:a9d:27a5:: with SMTP id c34mr13608755otb.303.1605883837875;
 Fri, 20 Nov 2020 06:50:37 -0800 (PST)
MIME-Version: 1.0
References: <20201113152956.139663-1-maxime@cerno.tech> <20201113152956.139663-2-maxime@cerno.tech>
 <20201113210240.GX401619@phenom.ffwll.local> <20201120133418.kllxy5nisjtb5jab@gilmour>
In-Reply-To: <20201120133418.kllxy5nisjtb5jab@gilmour>
From:   Daniel Vetter <daniel@ffwll.ch>
Date:   Fri, 20 Nov 2020 15:50:26 +0100
Message-ID: <CAKMK7uF0PP7Sok9phvM=P=upbjSHHQbw5dexfPEe_2qGFsEN8Q@mail.gmail.com>
Subject: Re: [PATCH 1/8] drm: Introduce an atomic_commit_setup function
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 2:34 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Daniel,
>
> Thanks for your review
>
> On Fri, Nov 13, 2020 at 10:02:40PM +0100, Daniel Vetter wrote:
> > > +    * is not used by the atomic helpers.
> > > +    *
> > > +    * This function is called at the end of
> > > +    * drm_atomic_helper_setup_commit(), so once the commit has been
> > > +    * properly setup across the generic DRM object states. It allows
> > > +    * drivers to do some additional commit tracking that isn't related to a
> > > +    * CRTC, plane or connector, typically a private object.
> > > +    *
> > > +    * This hook is optional.
> > > +    */
> > > +   int (*atomic_commit_setup)(struct drm_atomic_state *state);
> >
> > I think the kerneldoc for drm_private_obj should also explain when it is
> > necessary to use this, and when not:
> >
> > - when the private state is a tied to an existing drm object (drm_crtc,
> >   drm_plane or drm_crtc) and never moves, then sufficient synchronization
> >   is already guaranteed by that superior object. This could even hold
> >   when the private object can be e.g. reassigned between planes, but
> >   always stays on the same crtc.
> >
> > - if the private state object can be globally reassigned, then
> >   drm_crtc_commit synchronization points need to be set up in
> >   ->atomic_commit_setup and waited on as the first step in
> >   ->atomic_commit_tail
>
> Does the comment added on patch 2 sufficient for you, or would you
> extend it / make it clearer?

Lol stateless reviewer. Yeah I think the text there is good, but we
probably want to make sure there's links to all the other pieces in
all the places. So maybe replace "typically in a private object" with
"tracked in a struct drm_private_obj" so we get that link. And maybe a
note to look there for additional information.

Same in the other places. In generally I think you can never have too
many links in kerneldoc, since they're both useful in the generated
html, but also for navigating the code with cscope or similar (at
least here this works splendidly).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
