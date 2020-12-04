Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18BDA2CF186
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 17:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729135AbgLDQFI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 11:05:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725923AbgLDQFH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 11:05:07 -0500
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com [IPv6:2607:f8b0:4864:20::c42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A707C061A51
        for <devicetree@vger.kernel.org>; Fri,  4 Dec 2020 08:04:27 -0800 (PST)
Received: by mail-oo1-xc42.google.com with SMTP id l10so1487503ooh.1
        for <devicetree@vger.kernel.org>; Fri, 04 Dec 2020 08:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B14rR4AZkurW75Q+ndSfco0uuoIDnVkupSwLEcF0bVg=;
        b=fXtum5RyfeG5XVamWMiv3u4tZLC9RYd2oYwdKwLKKssIun0NoBIehS8dJhwymA4ve0
         CnCrpQmtCZmP4A5qI2Rj/ZQVU616gsf2hobIh4gsL3MLvcBr2b4FeF7+f33oB7wr5Ony
         tcJKpHCh7VESFkqdZtGtZg5hIgwZiSgBvvEjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B14rR4AZkurW75Q+ndSfco0uuoIDnVkupSwLEcF0bVg=;
        b=Q2MtUfZ0xd1iGSVh82JA3YjYStX1GNPZJdw66IawTf5N8gmz2R9TkI03h0ShZJzkOB
         JyrOhsBtey6eHH6tVKHRk0lCe5dpqh0Xap9trQjo7aEKXfnOEjcr4st/Q1RBFiRJMCxM
         2V1+0oZiDyxYDyqFBaG8MCRVju81l2Kvsp5abbs2xuyJhKLfYPvAjmpc48pYkWuyQGPx
         tio6GYYcxEKTla4Uoeo/eBnXSIyTYh9VGbiyQibff99ped8iNYF96Hbbzouv9sh457t9
         3g8HocwYZZij8xX9l59N4xnBlA/cnZ0fEiukD4pOha57//pT00BNYUXvzFWHItqrtxyJ
         B7og==
X-Gm-Message-State: AOAM530WiLu4kcoDJ0Avx01Ew/9UCbUyc6k+wIfXKisVZ7dZjFoHGnss
        Dn9T3PfAZKUiKnAO4XhYxyXlk3rmbM+0eFApR4K+lQ==
X-Google-Smtp-Source: ABdhPJwpjgPd6FSBOBIa6aQ0a/8cbsEQNXUGYkVJJ2LUV16VhbmY+APbwmxZowptpZgCAF+PdhJa/vj8FTHcjA80oIY=
X-Received: by 2002:a4a:8582:: with SMTP id t2mr3979308ooh.89.1607097866631;
 Fri, 04 Dec 2020 08:04:26 -0800 (PST)
MIME-Version: 1.0
References: <20201204151138.1739736-1-maxime@cerno.tech> <20201204151138.1739736-2-maxime@cerno.tech>
In-Reply-To: <20201204151138.1739736-2-maxime@cerno.tech>
From:   Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Fri, 4 Dec 2020 17:04:15 +0100
Message-ID: <CAKMK7uEZaRx9Bj_N_DLvut-Z9FmZU=xGmVtCps29DiH2YN9Pfg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] drm: Introduce an atomic_commit_setup function
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 4, 2020 at 4:11 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Private objects storing a state shared across all CRTCs need to be
> carefully handled to avoid a use-after-free issue.
>
> The proper way to do this to track all the commits using that shared
> state and wait for the previous commits to be done before going on with
> the current one to avoid the reordering of commits that could occur.
>
> However, this commit setup needs to be done after
> drm_atomic_helper_setup_commit(), because before the CRTC commit
> structure hasn't been allocated before, and before the workqueue is
> scheduled, because we would be potentially reordered already otherwise.
>
> That means that drivers currently have to roll their own
> drm_atomic_helper_commit() function, even though it would be identical
> if not for the commit setup.
>
> Let's introduce a hook to do so that would be called as part of
> drm_atomic_helper_commit, allowing us to reuse the atomic helpers.
>
> Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

r-b: me too

Cheers, Daniel

> ---
>  drivers/gpu/drm/drm_atomic_helper.c      |  9 +++++++++
>  include/drm/drm_modeset_helper_vtables.h | 21 +++++++++++++++++++++
>  2 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index f9170b4b22e7..f754e21b96eb 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -2034,6 +2034,9 @@ crtc_or_fake_commit(struct drm_atomic_state *state, struct drm_crtc *crtc)
>   * should always call this function from their
>   * &drm_mode_config_funcs.atomic_commit hook.
>   *
> + * Drivers that need to extend the commit setup to private objects can use the
> + * &drm_mode_config_helper_funcs.atomic_commit_setup hook.
> + *
>   * To be able to use this support drivers need to use a few more helper
>   * functions. drm_atomic_helper_wait_for_dependencies() must be called before
>   * actually committing the hardware state, and for nonblocking commits this call
> @@ -2077,8 +2080,11 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
>         struct drm_plane *plane;
>         struct drm_plane_state *old_plane_state, *new_plane_state;
>         struct drm_crtc_commit *commit;
> +       const struct drm_mode_config_helper_funcs *funcs;
>         int i, ret;
>
> +       funcs = state->dev->mode_config.helper_private;
> +
>         for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>                 commit = kzalloc(sizeof(*commit), GFP_KERNEL);
>                 if (!commit)
> @@ -2155,6 +2161,9 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
>                 new_plane_state->commit = drm_crtc_commit_get(commit);
>         }
>
> +       if (funcs && funcs->atomic_commit_setup)
> +               return funcs->atomic_commit_setup(state);
> +
>         return 0;
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_setup_commit);
> diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
> index 4efec30f8bad..0ebb3f191bbc 100644
> --- a/include/drm/drm_modeset_helper_vtables.h
> +++ b/include/drm/drm_modeset_helper_vtables.h
> @@ -1406,6 +1406,27 @@ struct drm_mode_config_helper_funcs {
>          * drm_atomic_helper_commit_tail().
>          */
>         void (*atomic_commit_tail)(struct drm_atomic_state *state);
> +
> +       /**
> +        * @atomic_commit_setup:
> +        *
> +        * This hook is used by the default atomic_commit() hook implemented in
> +        * drm_atomic_helper_commit() together with the nonblocking helpers (see
> +        * drm_atomic_helper_setup_commit()) to extend the DRM commit setup. It
> +        * is not used by the atomic helpers.
> +        *
> +        * This function is called at the end of
> +        * drm_atomic_helper_setup_commit(), so once the commit has been
> +        * properly setup across the generic DRM object states. It allows
> +        * drivers to do some additional commit tracking that isn't related to a
> +        * CRTC, plane or connector, tracked in a &drm_private_obj structure.
> +        *
> +        * Note that the documentation of &drm_private_obj has more details on
> +        * how one should implement this.
> +        *
> +        * This hook is optional.
> +        */
> +       int (*atomic_commit_setup)(struct drm_atomic_state *state);
>  };
>
>  #endif
> --
> 2.28.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
