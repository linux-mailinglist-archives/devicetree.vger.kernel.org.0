Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F2502B9641
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 16:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727453AbgKSPcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 10:32:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727445AbgKSPcW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 10:32:22 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8664CC0613CF
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 07:32:21 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id w24so7135760wmi.0
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 07:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9CA+u5v5MZQU0Cijf9R85vpRjl6SxHe21W1/7WviTBk=;
        b=f7CSg0tWAXzvTAeyAFBNH9vEwhiuVjR8rw2/sZS0eOqH937OSEWC/G9VBfrmYJvjft
         CqBVjE1kOFjDO4vETUj9EgsGpFuw0uIRevPv+ctpLRG0YXn3NndDtKvytBswJ4OOy+sq
         k5+TZzH9gDjY8bHZ1auf5AD8D0rBR6B/l1mAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9CA+u5v5MZQU0Cijf9R85vpRjl6SxHe21W1/7WviTBk=;
        b=Hwvr7XeNMMAgTLXVX5dXr1gSmazCC9z+C/Okpq7rPn0LHUfETkOnZYq1aHaT00/+1T
         FpWedu5Do96Q4IShXbJ27q/N1Rpmc+fE3+aK9wbWHg7ya/xTFdsEcbWwry9+rlgunVUh
         rxWvybt5q9QDOaXh3hgY7Pg6AS69wS22C+tsCdmgKSFZGZxA9UJXw06vJw/tG1RkGyWs
         qGmiuqpl8NAf4+nW20iXSVWNmJEZf3VdmSyOQfM0wQqTVXIuI6RulVChccBz3mVnxAPy
         50JjJs6MVY4WMnE8PoeYfnxkM6ZWGgrCJMQ4tWnfNfQbjJLHnhqvbhqyo9mytjvrltbX
         pMeg==
X-Gm-Message-State: AOAM532biDBWKj6u2agGeQeAZlmC2oUnCzqazpa/jTA4h+ukwImVA61G
        NGl5n8wvEsX6vxhjgYIywQIWUw==
X-Google-Smtp-Source: ABdhPJw5zyTkZhzThU4ihl8uYdd68wZVmR45jaD/HluopOoNQerVBtPGyp1aO3HR7AxM0ZUZ27sbZw==
X-Received: by 2002:a1c:5f83:: with SMTP id t125mr5105057wmb.82.1605799940246;
        Thu, 19 Nov 2020 07:32:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id c2sm103857wrf.68.2020.11.19.07.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 07:32:19 -0800 (PST)
Date:   Thu, 19 Nov 2020 16:32:17 +0100
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Thomas Zimmermann <tzimmermann@suse.de>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        devicetree@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 1/8] drm: Introduce an atomic_commit_setup function
Message-ID: <20201119153217.GE401619@phenom.ffwll.local>
References: <20201113152956.139663-1-maxime@cerno.tech>
 <20201113152956.139663-2-maxime@cerno.tech>
 <c08b5a11-3e28-4236-b516-01a3e52cc7a0@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c08b5a11-3e28-4236-b516-01a3e52cc7a0@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 10:59:42AM +0100, Thomas Zimmermann wrote:
> Hi
> 
> Am 13.11.20 um 16:29 schrieb Maxime Ripard:
> > Private objects storing a state shared across all CRTCs need to be
> > carefully handled to avoid a use-after-free issue.
> > 
> > The proper way to do this to track all the commits using that shared
> > state and wait for the previous commits to be done before going on with
> > the current one to avoid the reordering of commits that could occur.
> > 
> > However, this commit setup needs to be done after
> > drm_atomic_helper_setup_commit(), because before the CRTC commit
> > structure hasn't been allocated before, and before the workqueue is
> > scheduled, because we would be potentially reordered already otherwise.
> > 
> > That means that drivers currently have to roll their own
> > drm_atomic_helper_commit() function, even though it would be identical
> > if not for the commit setup.
> > 
> > Let's introduce a hook to do so that would be called as part of
> > drm_atomic_helper_commit, allowing us to reuse the atomic helpers.
> > 
> > Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >   drivers/gpu/drm/drm_atomic_helper.c      |  6 ++++++
> >   include/drm/drm_modeset_helper_vtables.h | 18 ++++++++++++++++++
> >   2 files changed, 24 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> > index ddd0e3239150..7d69c7844dfc 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -2083,8 +2083,11 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
> >   	struct drm_plane *plane;
> >   	struct drm_plane_state *old_plane_state, *new_plane_state;
> >   	struct drm_crtc_commit *commit;
> > +	const struct drm_mode_config_helper_funcs *funcs;
> >   	int i, ret;
> > +	funcs = state->dev->mode_config.helper_private;
> > +
> >   	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> >   		commit = kzalloc(sizeof(*commit), GFP_KERNEL);
> >   		if (!commit)
> > @@ -2169,6 +2172,9 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
> >   		new_plane_state->commit = drm_crtc_commit_get(commit);
> >   	}
> > +	if (funcs && funcs->atomic_commit_setup)
> > +		return funcs->atomic_commit_setup(state);
> > +
> >   	return 0;
> >   }
> >   EXPORT_SYMBOL(drm_atomic_helper_setup_commit);
> > diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
> > index f2de050085be..56470baf0513 100644
> > --- a/include/drm/drm_modeset_helper_vtables.h
> > +++ b/include/drm/drm_modeset_helper_vtables.h
> > @@ -1396,6 +1396,24 @@ struct drm_mode_config_helper_funcs {
> >   	 * drm_atomic_helper_commit_tail().
> >   	 */
> >   	void (*atomic_commit_tail)(struct drm_atomic_state *state);
> > +
> > +	/**
> > +	 * @atomic_commit_setup:
> > +	 *
> > +	 * This hook is used by the default atomic_commit() hook implemented in
> > +	 * drm_atomic_helper_commit() together with the nonblocking helpers (see
> > +	 * drm_atomic_helper_setup_commit()) to extend the DRM commit setup. It
> > +	 * is not used by the atomic helpers.
> > +	 *
> > +	 * This function is called at the end of
> > +	 * drm_atomic_helper_setup_commit(), so once the commit has been
> > +	 * properly setup across the generic DRM object states. It allows
> > +	 * drivers to do some additional commit tracking that isn't related to a
> > +	 * CRTC, plane or connector, typically a private object.
> > +	 *
> > +	 * This hook is optional.
> > +	 */
> > +	int (*atomic_commit_setup)(struct drm_atomic_state *state);
> 
> It feels hacky and screwed-on to me. I'd suggest to add an
> atomic_commit_prepare callback that is called by drm_atomic_helper where it
> currently calls drm_atomic_helper_setup_commit(). The default implementation
> would include setup_commit and prepare_planes. Some example code for
> drm_atomic_helper.c
> 
> static int commit_prepare(state)
> {
> 	drm_atomic_helper_setup_commit(state)
> 
> 	drm_atomic_helper_prepare_planes(state)
> }
> 
> int drm_atomic_helper_commit()
> {
> 	if (async_update) {
> 		...
> 	}
> 
> 	if (funcs->atomic_commit_prepare)
> 		funcs->atomic_commit_prepare(state)
> 	else
> 		commit_prepare(state)
> 
> 	/* the rest of the current function below */
> 	INIT_WORK(&state->commit_work, commit_work);
> 	...
> }
> 
> Drivers that implement atomic_commit_prepare would be expected to call
> drm_atomic_helper_setup_commit() and drm_atomic_helper_prepare_planes() or
> their own implementation of them.
> 
> The whole construct mimics how commit tails work.

Yeah what I suggested is a bit much midlayer, but we've done what you
suggested above with all drivers rolling their own atomic_commit. It
wasn't pretty. There's still drivers like vc4 which haven't switched, and
which have their own locking and synchronization.

Hence why I think the callback approach here is better, gives drivers less
excuses to roll their own and make a mess.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
