Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDFC2B2628
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 22:02:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726087AbgKMVCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 16:02:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725981AbgKMVCq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 16:02:46 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F5BC0613D1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 13:02:44 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id a65so11365101wme.1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 13:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/9yPJV30pVcKkDL4/XdGIjl9qOHXH9yCBC3h+QTAx7c=;
        b=YEc1MMKTaPTIbTHLZH+Nl6FZMZP4Lkir8aiylqp9RQK6iKBY5jL+vOxEBj+y34os6d
         nOUtM3HxEhPE0+sFhHFUYLMVqu62BfN2JFJ4vIpZwQXxCDiN7qT7CjY8A0SOpyPz8DiJ
         643tv9q2wOSUHZN/40brvQ8oMycTrCv7AtO0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/9yPJV30pVcKkDL4/XdGIjl9qOHXH9yCBC3h+QTAx7c=;
        b=LTMgfFjvgDy728kfe15JIwDFDu37fyw8+AgXj9RwX1hhAqvzEznLhHlagwLU7+xXG3
         393MAX+OPhdFtxEnKcet6kVY8NiZxQHenH3WBKGxYvqoScBOe/N1Ee3NzO0drHLzHQM0
         eyoBIemR+1lAveZFmSgTJXNUKeCPh3ihYJGrEYwCfmeG+QHpvuKLGSPrWUo2VUufkjWI
         RtuKZqgknrZ7b40EEZkxv0ug9m8UrRgsV2Kzi2V0Q+XFrE5Ebr0CpkEDcBKtg4UZw1Kr
         2czZPXv5/i6qgAYkh/y8rMNdTmjEkJeEqkUE3yOfOC+oUVweIbD1/HIk3VX1ok99s05h
         nHLA==
X-Gm-Message-State: AOAM532CJG1ixYhSeWZ/uIjsxIQQWKyJ2BwanAy263wmm+to7+8LppWs
        V2R3y0kibv72tRyYIGcuFHpOdg==
X-Google-Smtp-Source: ABdhPJycSjeEZ4roZjLqZrcoeszqo3iWVlMz1UIZF1iy5IlZnr3YJRfEkA8Z653H7SISTQAeFFhW3A==
X-Received: by 2002:a05:600c:2244:: with SMTP id a4mr4393082wmm.144.1605301363350;
        Fri, 13 Nov 2020 13:02:43 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id m21sm20856770wmi.3.2020.11.13.13.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 13:02:42 -0800 (PST)
Date:   Fri, 13 Nov 2020 22:02:40 +0100
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        devicetree@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 1/8] drm: Introduce an atomic_commit_setup function
Message-ID: <20201113210240.GX401619@phenom.ffwll.local>
References: <20201113152956.139663-1-maxime@cerno.tech>
 <20201113152956.139663-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201113152956.139663-2-maxime@cerno.tech>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 13, 2020 at 04:29:49PM +0100, Maxime Ripard wrote:
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

Should probably wait with merging until we have the entire vc4 user ready
too. And I think the kerneldoc needs to be further improved, see
suggestions below.

> ---
>  drivers/gpu/drm/drm_atomic_helper.c      |  6 ++++++
>  include/drm/drm_modeset_helper_vtables.h | 18 ++++++++++++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index ddd0e3239150..7d69c7844dfc 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -2083,8 +2083,11 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
>  	struct drm_plane *plane;
>  	struct drm_plane_state *old_plane_state, *new_plane_state;
>  	struct drm_crtc_commit *commit;
> +	const struct drm_mode_config_helper_funcs *funcs;
>  	int i, ret;
>  
> +	funcs = state->dev->mode_config.helper_private;
> +
>  	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>  		commit = kzalloc(sizeof(*commit), GFP_KERNEL);
>  		if (!commit)
> @@ -2169,6 +2172,9 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
>  		new_plane_state->commit = drm_crtc_commit_get(commit);
>  	}
>  
> +	if (funcs && funcs->atomic_commit_setup)
> +		return funcs->atomic_commit_setup(state);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_setup_commit);
> diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
> index f2de050085be..56470baf0513 100644
> --- a/include/drm/drm_modeset_helper_vtables.h
> +++ b/include/drm/drm_modeset_helper_vtables.h
> @@ -1396,6 +1396,24 @@ struct drm_mode_config_helper_funcs {
>  	 * drm_atomic_helper_commit_tail().
>  	 */
>  	void (*atomic_commit_tail)(struct drm_atomic_state *state);
> +
> +	/**
> +	 * @atomic_commit_setup:
> +	 *
> +	 * This hook is used by the default atomic_commit() hook implemented in
> +	 * drm_atomic_helper_commit() together with the nonblocking helpers (see
> +	 * drm_atomic_helper_setup_commit()) to extend the DRM commit setup. It

I think a link from drm_atomic_helper_setup_commit to this new hook here
would be useful too, maybe together with a note that waiting for these
additional synchronization points can be done at the start of
atomic_commit_tail.

> +	 * is not used by the atomic helpers.
> +	 *
> +	 * This function is called at the end of
> +	 * drm_atomic_helper_setup_commit(), so once the commit has been
> +	 * properly setup across the generic DRM object states. It allows
> +	 * drivers to do some additional commit tracking that isn't related to a
> +	 * CRTC, plane or connector, typically a private object.
> +	 *
> +	 * This hook is optional.
> +	 */
> +	int (*atomic_commit_setup)(struct drm_atomic_state *state);

I think the kerneldoc for drm_private_obj should also explain when it is
necessary to use this, and when not:

- when the private state is a tied to an existing drm object (drm_crtc,
  drm_plane or drm_crtc) and never moves, then sufficient synchronization
  is already guaranteed by that superior object. This could even hold
  when the private object can be e.g. reassigned between planes, but
  always stays on the same crtc.

- if the private state object can be globally reassigned, then
  drm_crtc_commit synchronization points need to be set up in
  ->atomic_commit_setup and waited on as the first step in
  ->atomic_commit_tail


Also I just realized that a drm_private_state->obj backpointer to
drm_private_obj might be rather useful. Or at least more consistent with
all the other state objects.

Cheers, Daniel


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
