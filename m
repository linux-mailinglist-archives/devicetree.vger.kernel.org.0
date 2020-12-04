Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B49C2CF084
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 16:15:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730413AbgLDPMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 10:12:31 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:34833 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730437AbgLDPMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 10:12:30 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id ACFE058014A;
        Fri,  4 Dec 2020 10:11:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 04 Dec 2020 10:11:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=htw4BN7D61w4M
        7Cito8Y46Sc4WvlrBIzXGUsXaCkB/Y=; b=f8yVKY1nwgfu8NouzACCVRWPwYEOq
        eud4GJF54I+ue86vSD6wPviymyAmmlBCekALWYe6H2fVwhzNeWmmLGeQa9iPIul+
        /lb+TLdTkkbjVm9qGiHNjS9A7Gl21TBfsF7EsENzsOEmrKd20Xv8QEffVQPpD1zJ
        9LJEmPFdmlkNXHDPHGL4NcjNLc/z84p2BBqIO5lzmNAHzxVKPASppPRHivFB8QoT
        CW4mymlwmcifQsbT/UTYqGC6O0nD9S981PFSpHeXHFKXpdDQ1eVsNOTubfF1L4xA
        Yrp0ftqBa+pae4lAJtjqRkkkjP+2gY9+lv0PfGi1iVraZL44BHYt0gEUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=htw4BN7D61w4M7Cito8Y46Sc4WvlrBIzXGUsXaCkB/Y=; b=WSbbbSid
        12WKlYy1G7awu5VVHCj3NPRS6jRXgWMAe0+E0DmsQDOnW/FJ/LF0vXUH1iBtUq0p
        +Z5KaSBdpYvYRG3WF6VRord0GIOs8XT5KpDXbydjdQww+KGZYYvAcCyE/YHsQj14
        g8nU/upm7m6jN0WdyzT6Zfn7tQXhr2CT50XfxE/sEOy2qfWSDBddo1VGcIftLlBM
        h54xO9ajkFWAQg5rfhkcJI8CmpDBiHEj/06trYjE/NL/ZZAfTtAXQSJBU2KhPrk7
        cPVj8nS0m2bMwyoEZ+AmO6WJy7JJ+KQ0UyAYCoMhkMS+l34NgglKhoAR4dDcbb8F
        L3l8tn+vFW8KPQ==
X-ME-Sender: <xms:rlHKXyw9Hr0i1VZ9P8lNwUO15qVICAMqANwu5n36PYlR5o_tLDuA2A>
    <xme:rlHKX35G-hh5PpbDIKnArtKTedQ3cxIXJGRHXZ-_9-EOS4mGNHWXIQOlyzvHfKEwg
    _fjPTROJTJJFIf9slQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgjeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rlHKX0Uv328ljG7RYDOvLqwezCYrB8dqUY4PrdAEK90Ju83rdwe07w>
    <xmx:rlHKX70mmcSh4_b0kWMvKBZIMIpHDcpGEBKzDMwpxX8qdEPbVgAovw>
    <xmx:rlHKXx3QCdO3TKAxUbh9Mbl9USiQXzavV-dch_7KxViGoDcbjwgZDQ>
    <xmx:sFHKXz-ovjRdBz8M1qCaEjfAS2gNFay-IqDnV1xYGjgDXs_bJiv4aQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 91C3E24005B;
        Fri,  4 Dec 2020 10:11:42 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>
Cc:     devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH v2 1/7] drm: Introduce an atomic_commit_setup function
Date:   Fri,  4 Dec 2020 16:11:32 +0100
Message-Id: <20201204151138.1739736-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201204151138.1739736-1-maxime@cerno.tech>
References: <20201204151138.1739736-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Private objects storing a state shared across all CRTCs need to be
carefully handled to avoid a use-after-free issue.

The proper way to do this to track all the commits using that shared
state and wait for the previous commits to be done before going on with
the current one to avoid the reordering of commits that could occur.

However, this commit setup needs to be done after
drm_atomic_helper_setup_commit(), because before the CRTC commit
structure hasn't been allocated before, and before the workqueue is
scheduled, because we would be potentially reordered already otherwise.

That means that drivers currently have to roll their own
drm_atomic_helper_commit() function, even though it would be identical
if not for the commit setup.

Let's introduce a hook to do so that would be called as part of
drm_atomic_helper_commit, allowing us to reuse the atomic helpers.

Suggested-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/drm_atomic_helper.c      |  9 +++++++++
 include/drm/drm_modeset_helper_vtables.h | 21 +++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index f9170b4b22e7..f754e21b96eb 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -2034,6 +2034,9 @@ crtc_or_fake_commit(struct drm_atomic_state *state, struct drm_crtc *crtc)
  * should always call this function from their
  * &drm_mode_config_funcs.atomic_commit hook.
  *
+ * Drivers that need to extend the commit setup to private objects can use the
+ * &drm_mode_config_helper_funcs.atomic_commit_setup hook.
+ *
  * To be able to use this support drivers need to use a few more helper
  * functions. drm_atomic_helper_wait_for_dependencies() must be called before
  * actually committing the hardware state, and for nonblocking commits this call
@@ -2077,8 +2080,11 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
 	struct drm_plane *plane;
 	struct drm_plane_state *old_plane_state, *new_plane_state;
 	struct drm_crtc_commit *commit;
+	const struct drm_mode_config_helper_funcs *funcs;
 	int i, ret;
 
+	funcs = state->dev->mode_config.helper_private;
+
 	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		commit = kzalloc(sizeof(*commit), GFP_KERNEL);
 		if (!commit)
@@ -2155,6 +2161,9 @@ int drm_atomic_helper_setup_commit(struct drm_atomic_state *state,
 		new_plane_state->commit = drm_crtc_commit_get(commit);
 	}
 
+	if (funcs && funcs->atomic_commit_setup)
+		return funcs->atomic_commit_setup(state);
+
 	return 0;
 }
 EXPORT_SYMBOL(drm_atomic_helper_setup_commit);
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index 4efec30f8bad..0ebb3f191bbc 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1406,6 +1406,27 @@ struct drm_mode_config_helper_funcs {
 	 * drm_atomic_helper_commit_tail().
 	 */
 	void (*atomic_commit_tail)(struct drm_atomic_state *state);
+
+	/**
+	 * @atomic_commit_setup:
+	 *
+	 * This hook is used by the default atomic_commit() hook implemented in
+	 * drm_atomic_helper_commit() together with the nonblocking helpers (see
+	 * drm_atomic_helper_setup_commit()) to extend the DRM commit setup. It
+	 * is not used by the atomic helpers.
+	 *
+	 * This function is called at the end of
+	 * drm_atomic_helper_setup_commit(), so once the commit has been
+	 * properly setup across the generic DRM object states. It allows
+	 * drivers to do some additional commit tracking that isn't related to a
+	 * CRTC, plane or connector, tracked in a &drm_private_obj structure.
+	 *
+	 * Note that the documentation of &drm_private_obj has more details on
+	 * how one should implement this.
+	 *
+	 * This hook is optional.
+	 */
+	int (*atomic_commit_setup)(struct drm_atomic_state *state);
 };
 
 #endif
-- 
2.28.0

