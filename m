Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D15842BA629
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 10:30:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725942AbgKTJ3s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 04:29:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725824AbgKTJ3q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 04:29:46 -0500
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC7BDC0613CF
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 01:29:46 -0800 (PST)
Received: by mail-oi1-x243.google.com with SMTP id m13so9723668oih.8
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 01:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fPH8mrCMEezREYFMD3ZNWLYrrd6uERj/4DnYsMp+93E=;
        b=KlHd6adfqqq6zURrcaeaBVcby4HmEmMK32zwmLVMQaNIsUSuhURLn0xqeKgEhYZDHF
         RPUslFwLKSWidwTjIVUkLEcyLOvTnzJCMaR89bA0yExr1K7yCBBCH7mUs4fFsHzQhDvh
         hpca6vRf4IRq/9xcv3e/Q9yqpIVMv74gPxRSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fPH8mrCMEezREYFMD3ZNWLYrrd6uERj/4DnYsMp+93E=;
        b=HyNj/XfIEqY3ruQgLc/oXHXKxkt2y69w196Yf4BkUdtADxI3R4BOFXm28ZwuaKiS95
         NC0odgxphEeZdv50WrgQf4bu7/IrGG7PYbPWZN/joY+qST/hoViMKRbdgjfAM2QgAxKQ
         SNrXwHZ5KDioEPVTz/rjqWo7t+3kGXHBsxp6vbdvKGihD/0TAPw5DNwExTFR2on+Rqh8
         KgvDlf0ZtJTrPb5KXHR50ID0afPnKl6ZtitdfDw3dyCL4nRg3A+UII1+U9pNZ2I+frGG
         EoDFfxFun8zoDFXAhVQ/7LRNhADpBnglGN7xemv0lB02NgvQm3vx/zrdY4438/3/GNZ+
         i/hQ==
X-Gm-Message-State: AOAM533BU9jkG19JOZ3DCKfKEwdmT3dQ4rgRV3PNNQIEGtCnPHx+9Qn3
        cw2nuXo/4mZvUbd+Itv7u2r9IpmhBITJfMre1Bd5iQ==
X-Google-Smtp-Source: ABdhPJxBRgaWjMQUww6v7blQXCc/+7K4ZqWZN8B/y7DE/JOwQZL0cSxZL0ue6Toxi1WgOwMz18NdzQd/KHzufk4zRxA=
X-Received: by 2002:aca:4f14:: with SMTP id d20mr5874563oib.14.1605864586236;
 Fri, 20 Nov 2020 01:29:46 -0800 (PST)
MIME-Version: 1.0
References: <20201113152956.139663-1-maxime@cerno.tech> <20201113152956.139663-2-maxime@cerno.tech>
 <c08b5a11-3e28-4236-b516-01a3e52cc7a0@suse.de> <20201119153217.GE401619@phenom.ffwll.local>
 <a136d1bd-9712-fd81-900e-f10bfc5b3e8f@suse.de>
In-Reply-To: <a136d1bd-9712-fd81-900e-f10bfc5b3e8f@suse.de>
From:   Daniel Vetter <daniel@ffwll.ch>
Date:   Fri, 20 Nov 2020 10:29:35 +0100
Message-ID: <CAKMK7uGpcK+bJfq5FLxXjPumS4iFvsXzRTdQ67XbbU1D47bfBA@mail.gmail.com>
Subject: Re: [PATCH 1/8] drm: Introduce an atomic_commit_setup function
To:     Thomas Zimmermann <tzimmermann@suse.de>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        David Airlie <airlied@linux.ie>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 9:39 AM Thomas Zimmermann <tzimmermann@suse.de> wro=
te:
>
> Hi
>
> Am 19.11.20 um 16:32 schrieb Daniel Vetter:
> > On Thu, Nov 19, 2020 at 10:59:42AM +0100, Thomas Zimmermann wrote:
> >> Hi
> >>
> >> Am 13.11.20 um 16:29 schrieb Maxime Ripard:
> >>> Private objects storing a state shared across all CRTCs need to be
> >>> carefully handled to avoid a use-after-free issue.
> >>>
> >>> The proper way to do this to track all the commits using that shared
> >>> state and wait for the previous commits to be done before going on wi=
th
> >>> the current one to avoid the reordering of commits that could occur.
> >>>
> >>> However, this commit setup needs to be done after
> >>> drm_atomic_helper_setup_commit(), because before the CRTC commit
> >>> structure hasn't been allocated before, and before the workqueue is
> >>> scheduled, because we would be potentially reordered already otherwis=
e.
> >>>
> >>> That means that drivers currently have to roll their own
> >>> drm_atomic_helper_commit() function, even though it would be identica=
l
> >>> if not for the commit setup.
> >>>
> >>> Let's introduce a hook to do so that would be called as part of
> >>> drm_atomic_helper_commit, allowing us to reuse the atomic helpers.
> >>>
> >>> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >>> ---
> >>>    drivers/gpu/drm/drm_atomic_helper.c      |  6 ++++++
> >>>    include/drm/drm_modeset_helper_vtables.h | 18 ++++++++++++++++++
> >>>    2 files changed, 24 insertions(+)
> >>>
> >>> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/dr=
m_atomic_helper.c
> >>> index ddd0e3239150..7d69c7844dfc 100644
> >>> --- a/drivers/gpu/drm/drm_atomic_helper.c
> >>> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> >>> @@ -2083,8 +2083,11 @@ int drm_atomic_helper_setup_commit(struct drm_=
atomic_state *state,
> >>>     struct drm_plane *plane;
> >>>     struct drm_plane_state *old_plane_state, *new_plane_state;
> >>>     struct drm_crtc_commit *commit;
> >>> +   const struct drm_mode_config_helper_funcs *funcs;
> >>>     int i, ret;
> >>> +   funcs =3D state->dev->mode_config.helper_private;
> >>> +
> >>>     for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
> >>>             commit =3D kzalloc(sizeof(*commit), GFP_KERNEL);
> >>>             if (!commit)
> >>> @@ -2169,6 +2172,9 @@ int drm_atomic_helper_setup_commit(struct drm_a=
tomic_state *state,
> >>>             new_plane_state->commit =3D drm_crtc_commit_get(commit);
> >>>     }
> >>> +   if (funcs && funcs->atomic_commit_setup)
> >>> +           return funcs->atomic_commit_setup(state);
> >>> +
> >>>     return 0;
> >>>    }
> >>>    EXPORT_SYMBOL(drm_atomic_helper_setup_commit);
> >>> diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/d=
rm_modeset_helper_vtables.h
> >>> index f2de050085be..56470baf0513 100644
> >>> --- a/include/drm/drm_modeset_helper_vtables.h
> >>> +++ b/include/drm/drm_modeset_helper_vtables.h
> >>> @@ -1396,6 +1396,24 @@ struct drm_mode_config_helper_funcs {
> >>>      * drm_atomic_helper_commit_tail().
> >>>      */
> >>>     void (*atomic_commit_tail)(struct drm_atomic_state *state);
> >>> +
> >>> +   /**
> >>> +    * @atomic_commit_setup:
> >>> +    *
> >>> +    * This hook is used by the default atomic_commit() hook implemen=
ted in
> >>> +    * drm_atomic_helper_commit() together with the nonblocking helpe=
rs (see
> >>> +    * drm_atomic_helper_setup_commit()) to extend the DRM commit set=
up. It
> >>> +    * is not used by the atomic helpers.
> >>> +    *
> >>> +    * This function is called at the end of
> >>> +    * drm_atomic_helper_setup_commit(), so once the commit has been
> >>> +    * properly setup across the generic DRM object states. It allows
> >>> +    * drivers to do some additional commit tracking that isn't relat=
ed to a
> >>> +    * CRTC, plane or connector, typically a private object.
> >>> +    *
> >>> +    * This hook is optional.
> >>> +    */
> >>> +   int (*atomic_commit_setup)(struct drm_atomic_state *state);
> >>
> >> It feels hacky and screwed-on to me. I'd suggest to add an
> >> atomic_commit_prepare callback that is called by drm_atomic_helper whe=
re it
> >> currently calls drm_atomic_helper_setup_commit(). The default implemen=
tation
> >> would include setup_commit and prepare_planes. Some example code for
> >> drm_atomic_helper.c
> >>
> >> static int commit_prepare(state)
> >> {
> >>      drm_atomic_helper_setup_commit(state)
> >>
> >>      drm_atomic_helper_prepare_planes(state)
> >> }
> >>
> >> int drm_atomic_helper_commit()
> >> {
> >>      if (async_update) {
> >>              ...
> >>      }
> >>
> >>      if (funcs->atomic_commit_prepare)
> >>              funcs->atomic_commit_prepare(state)
> >>      else
> >>              commit_prepare(state)
> >>
> >>      /* the rest of the current function below */
> >>      INIT_WORK(&state->commit_work, commit_work);
> >>      ...
> >> }
> >>
> >> Drivers that implement atomic_commit_prepare would be expected to call
> >> drm_atomic_helper_setup_commit() and drm_atomic_helper_prepare_planes(=
) or
> >> their own implementation of them.
> >>
> >> The whole construct mimics how commit tails work.
> >
> > Yeah what I suggested is a bit much midlayer, but we've done what you
> > suggested above with all drivers rolling their own atomic_commit. It
> > wasn't pretty. There's still drivers like vc4 which haven't switched, a=
nd
> > which have their own locking and synchronization.
> >
> > Hence why I think the callback approach here is better, gives drivers l=
ess
> > excuses to roll their own and make a mess.
>
> But it sounds like you'll regret this. As soon as a driver has to do
> additional stuff at the beginning of the setup function, another helper
> will be required, and so on. Maybe rather go with the commit_prepare
> helper and push driver authors to not use it.

For the other thing we already have callbacks (it's prepare_plane).
The use case for this is also fairly minimal (and this should be clear
when the kerneldoc is fully updated).

The thing is, avoiding the midlayer mistake doesn't mean no callbacks.
It just means the topmost entry point should be a driver callback too,
and ideally all the pieces are still fairly modular. We check all
these boxes.

Your option otoh means a bunch more code in vc4 (after Maxime's series
is done) for not much reason. Plus I'm really not seeing the concern.
Also, rule of thumb is to do clean design when we have 3 cases, and
hack things up for the first 2. We're at 1.

Also note that the 2nd part of this is also not in the
atomic_commit_tail callback. But we get away with that because the
driver handling can be done at the top of atomic_commit_tail, hence
there's no need for an atomic_commit_wait_for_dependencies.
-Daniel

>
> Best regards
> Thomas
>
> > -Daniel
> >
>
> --
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
> (HRB 36809, AG N=C3=BCrnberg)
> Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer



--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
