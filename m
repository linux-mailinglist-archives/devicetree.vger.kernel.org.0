Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E98C42CF087
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 16:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730411AbgLDPNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 10:13:36 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:49725 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730364AbgLDPNg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 10:13:36 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id AE75C580161;
        Fri,  4 Dec 2020 10:11:48 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 04 Dec 2020 10:11:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=fHQHuQ/PkJme6
        483Y/djcfJyememcLr8rJkZd+O9uNU=; b=F5yFKq1p9Ww1hiLLxt/AtNGHlst4l
        u3fqOwV4PQcVnlazHT4n2WI0N98zH21dQhQMOVKkv0gFfegl1V1ue5R2pLsmJw4Y
        9GrSqnUicwC4aaE3oCzF5oTuCDT96Z8VyWYDDpuLpNjC/7d5zn+iNyGHP6EwXA+O
        tGXDLnQXU99oqR8yedTJftD3xUxyUdBfS3M6FDG5CbIONjihoKrCygYqCuZhUZhh
        fm+aBfWPt3NmpYOSQc38SmsM7OhTmstQIId/UMaUetjoiatx4GD1jBscmXAp91L8
        3PeS9pbxqgPY960cpo8VJ7I+coEXyyC3TYV15N1SNOa+8N/y4ERRqJk2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=fHQHuQ/PkJme6483Y/djcfJyememcLr8rJkZd+O9uNU=; b=FaLgjtaY
        29HtnZDONOnnnxZDE748YUbM1xC7xBqO6e33/WWEKch0UDVxHaZAweX8Zi/5UkFL
        TARNTzJZEQTWC90mC+j/AwstkhutMnUvACMm5FTgH7dT2ruTAniZB3DBdBuCWyLP
        DJxRCCoFyKioaA+dq3feBRg91NynUSrtqvG+o1i+PQ8Fjv2YsJYl8i71Pti2qIYT
        J6dJZA6NKonJ2JO1trjNJxRutFGJZGcMJshEbWMe8VlRJyXEKFx1TO+uUYf9Z3qJ
        YrbLljeJ2Ds/rueJ2pegXYZ1IfWZRmOFPDbhQi1sdGDbNLU8LWPfnPcWaE7S591F
        nzuMf+hvKVU7AA==
X-ME-Sender: <xms:tFHKXwpCtPhoDL8tErizTS9L349SzewHD1eEX0ckwQbSvw-V3HtqvA>
    <xme:tFHKXyVT89iTO-TvyF9z8Y5IqhFzFBlrIAeP9dRhyvAdVfOj4AP6dt7LPDtUfZPHK
    bT04gLxYCNN8oAEbes>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgjeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tFHKXxqm3ui5fOh7Ci8fEa0R-uDsN1S6abooHqAMSbkcHQBURQ42KQ>
    <xmx:tFHKXxDtHTj_rQUxd8fhjNB_TRH3izr784jHqkfzyLvCXRiwfd3q0g>
    <xmx:tFHKX1jHfAu2hKvMYsDWAPbOPrAHl8TjXhVObtXGhjPcaDIloX3H_A>
    <xmx:tFHKX6BU3PlaSRa0F3c93vM4fmsuvSybB_oXgbQv6_k1isXm0m0nsw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 368D024005B;
        Fri,  4 Dec 2020 10:11:48 -0500 (EST)
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
        Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH v2 5/7] drm/vc4: kms: Remove unassigned_channels from the HVS state
Date:   Fri,  4 Dec 2020 16:11:36 +0100
Message-Id: <20201204151138.1739736-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201204151138.1739736-1-maxime@cerno.tech>
References: <20201204151138.1739736-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HVS state now has both unassigned_channels that reflects the
channels that are not used in the associated state, and the in_use
boolean for each channel that says whether or not a particular channel
is in use.

Both express pretty much the same thing, and we need the in_use variable
to properly track the commits, so let's get rid of unassigned_channels.

Suggested-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index fdd698df5fbe..fa40c44eb770 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -39,7 +39,6 @@ static struct vc4_ctm_state *to_vc4_ctm_state(struct drm_private_state *priv)
 
 struct vc4_hvs_state {
 	struct drm_private_state base;
-	unsigned int unassigned_channels;
 
 	struct {
 		unsigned in_use: 1;
@@ -798,7 +797,6 @@ vc4_hvs_channels_duplicate_state(struct drm_private_obj *obj)
 
 	__drm_atomic_helper_private_obj_duplicate_state(obj, &state->base);
 
-	state->unassigned_channels = old_state->unassigned_channels;
 
 	for (i = 0; i < HVS_NUM_CHANNELS; i++) {
 		state->fifo_state[i].in_use = old_state->fifo_state[i].in_use;
@@ -849,7 +847,6 @@ static int vc4_hvs_channels_obj_init(struct vc4_dev *vc4)
 	if (!state)
 		return -ENOMEM;
 
-	state->unassigned_channels = GENMASK(HVS_NUM_CHANNELS - 1, 0);
 	drm_atomic_private_obj_init(&vc4->base, &vc4->hvs_channels,
 				    &state->base,
 				    &vc4_hvs_state_funcs);
@@ -893,12 +890,17 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 	struct vc4_hvs_state *hvs_new_state;
 	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
 	struct drm_crtc *crtc;
+	unsigned int unassigned_channels;
 	unsigned int i;
 
 	hvs_new_state = vc4_hvs_get_global_state(state);
 	if (!hvs_new_state)
 		return -EINVAL;
 
+	for (i = 0; i < HVS_NUM_CHANNELS; i++)
+		if (!hvs_new_state->fifo_state[i].in_use)
+			unassigned_channels |= BIT(i);
+
 	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		struct vc4_crtc_state *old_vc4_crtc_state =
 			to_vc4_crtc_state(old_crtc_state);
@@ -918,8 +920,6 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 		/* If we're disabling our CRTC, we put back our channel */
 		if (!new_crtc_state->enable) {
 			channel = old_vc4_crtc_state->assigned_channel;
-
-			hvs_new_state->unassigned_channels |= BIT(channel);
 			hvs_new_state->fifo_state[channel].in_use = false;
 			new_vc4_crtc_state->assigned_channel = VC4_HVS_CHANNEL_DISABLED;
 			continue;
@@ -949,13 +949,13 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 		 * the future, we will need to have something smarter,
 		 * but it works so far.
 		 */
-		matching_channels = hvs_new_state->unassigned_channels & vc4_crtc->data->hvs_available_channels;
+		matching_channels = unassigned_channels & vc4_crtc->data->hvs_available_channels;
 		if (!matching_channels)
 			return -EINVAL;
 
 		channel = ffs(matching_channels) - 1;
 		new_vc4_crtc_state->assigned_channel = channel;
-		hvs_new_state->unassigned_channels &= ~BIT(channel);
+		unassigned_channels &= ~BIT(channel);
 		hvs_new_state->fifo_state[channel].in_use = true;
 	}
 
-- 
2.28.0

