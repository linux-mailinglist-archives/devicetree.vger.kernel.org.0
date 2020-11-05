Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 536F92A8022
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 14:57:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730501AbgKEN5L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 08:57:11 -0500
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:60797 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730833AbgKEN5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 08:57:10 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 48AB858034D;
        Thu,  5 Nov 2020 08:57:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 05 Nov 2020 08:57:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=hWlAHgQH+g+Mv
        ospHQE2cb55Vwe5xuw6jSHi5p+SiLE=; b=BMQTAea59Avv3rHDaw/MXWPKVcn5A
        OuCSXn/2xVPqvOcTiyVOSyjaFZf1IDuma7+iNj8EI2zVVH9R8ivYNUY6ThlqIFaq
        I81+xGkvcrWi5ElpRVd2rnk6NagsOALsdJpf+WREoV6WI2dsLxYpZDrMAOBb4f3+
        H6WxwNhE2kfRB2Kz4nhGyeofa3rZtvQlbbKa5UYt8/gMKUHlnvmHYYOIsOGPclXL
        /9BFA0wppLBushPEtarOnEFu67FsaJ5K4TxbzQTllPG0pgt6Jmwe0vjWOyzg7SAV
        8ObtdueY96G/vYa/acaRH1Cgtt66/8nJ4qGPYB/TXon9G/uGCMjyDtMgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=hWlAHgQH+g+MvospHQE2cb55Vwe5xuw6jSHi5p+SiLE=; b=pddcawyP
        dof6meHJoijInv5A9HQhhC+E1VGEjR+dVg4pym24I6bKDdwuM4+gCFX4BYWdHNga
        PvFpiMd6RloWajNmaz5rzZ/jOnZzoKyPKH2RJ5nPnBu66Z1uLdN2ueIdm4UGrVBD
        LNP8vasPV2FXGqX1smyKrzZ9PvP+d2LJA2q7bacf1PF6/p/YE/BzildFewaJbjs9
        MPTRwTYscdQJTHmClAbN2GzzztO0g24+Z4x57wnmxI3raeUP9PTpuA/qV/jMvT9c
        Tr78mD2y5KGIhEljbJJOm/Tv+llndmBBJ0nSqsdSKe+VUGxvogZuGZF6iJfvm/AB
        b9O6ZKJTlHi1nA==
X-ME-Sender: <xms:tASkX48ydHysvdAI0pdrde6oj7EPBuDoURxP1FyRfQmoWggDSVn8Qg>
    <xme:tASkXwsdsEg2Ds1E8L6uZfy7RpBm2ZxdNPRxv7Sy8Rygo6i17eMWLRFkAmLiZOgHd
    c4sMx_1h6mA0JefNz0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtjedgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgeenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tQSkX-CXmHTnhvMX1w4A722_37rN1y1OooIc2g6qZJ4wzUDp5j4u5w>
    <xmx:tQSkX4dWz0S6R40XaIsvZXaGnUmKF2Q7kzo0SZw8Yw9YE-F-Aw67SA>
    <xmx:tQSkX9PlvKb8VWPSCWwR3LSv_SnrXjGEbtCk7SnLW2uhmbugT7lRcg>
    <xmx:tQSkX-tlHIbtzDhLFk_lEHW8GcpITsNyhpM5Mix0sj6v0NYsJnFkeQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id B1D93306005E;
        Thu,  5 Nov 2020 08:57:08 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Eric Anholt <eric@anholt.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Hoegeun Kwon <hoegeun.kwon@samsung.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH v3 7/7] drm/vc4: kms: Don't disable the muxing of an active CRTC
Date:   Thu,  5 Nov 2020 14:56:56 +0100
Message-Id: <20201105135656.383350-8-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201105135656.383350-1-maxime@cerno.tech>
References: <20201105135656.383350-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current HVS muxing code will consider the CRTCs in a given state to
setup their muxing in the HVS, and disable the other CRTCs muxes.

However, it's valid to only update a single CRTC with a state, and in this
situation we would mux out a CRTC that was enabled but left untouched by
the new state.

Fix this by setting a flag on the CRTC state when the muxing has been
changed, and only change the muxing configuration when that flag is there.

Fixes: 87ebcd42fb7b ("drm/vc4: crtc: Assign output to channel automatically")
Reviewed-by: Hoegeun Kwon <hoegeun.kwon@samsung.com>
Tested-by: Hoegeun Kwon <hoegeun.kwon@samsung.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h |  1 +
 drivers/gpu/drm/vc4/vc4_kms.c | 82 ++++++++++++++++++++---------------
 2 files changed, 48 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 014113823647..325b53ff11b3 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -524,6 +524,7 @@ struct vc4_crtc_state {
 	struct drm_mm_node mm;
 	bool feed_txp;
 	bool txp_armed;
+	bool needs_muxing;
 	unsigned int assigned_channel;
 
 	struct {
diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 0a231ae500e5..7ef164afa9e2 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -226,10 +226,7 @@ static void vc5_hvs_pv_muxing_commit(struct vc4_dev *vc4,
 {
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
-	unsigned char dsp2_mux = 0;
-	unsigned char dsp3_mux = 3;
-	unsigned char dsp4_mux = 3;
-	unsigned char dsp5_mux = 3;
+	unsigned char mux;
 	unsigned int i;
 	u32 reg;
 
@@ -237,50 +234,59 @@ static void vc5_hvs_pv_muxing_commit(struct vc4_dev *vc4,
 		struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc_state);
 		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 
-		if (!crtc_state->active)
+		if (!vc4_state->needs_muxing)
 			continue;
 
 		switch (vc4_crtc->data->hvs_output) {
 		case 2:
-			dsp2_mux = (vc4_state->assigned_channel == 2) ? 0 : 1;
+			mux = (vc4_state->assigned_channel == 2) ? 0 : 1;
+			reg = HVS_READ(SCALER_DISPECTRL);
+			HVS_WRITE(SCALER_DISPECTRL,
+				  (reg & ~SCALER_DISPECTRL_DSP2_MUX_MASK) |
+				  VC4_SET_FIELD(mux, SCALER_DISPECTRL_DSP2_MUX));
 			break;
 
 		case 3:
-			dsp3_mux = vc4_state->assigned_channel;
+			if (vc4_state->assigned_channel == VC4_HVS_CHANNEL_DISABLED)
+				mux = 3;
+			else
+				mux = vc4_state->assigned_channel;
+
+			reg = HVS_READ(SCALER_DISPCTRL);
+			HVS_WRITE(SCALER_DISPCTRL,
+				  (reg & ~SCALER_DISPCTRL_DSP3_MUX_MASK) |
+				  VC4_SET_FIELD(mux, SCALER_DISPCTRL_DSP3_MUX));
 			break;
 
 		case 4:
-			dsp4_mux = vc4_state->assigned_channel;
+			if (vc4_state->assigned_channel == VC4_HVS_CHANNEL_DISABLED)
+				mux = 3;
+			else
+				mux = vc4_state->assigned_channel;
+
+			reg = HVS_READ(SCALER_DISPEOLN);
+			HVS_WRITE(SCALER_DISPEOLN,
+				  (reg & ~SCALER_DISPEOLN_DSP4_MUX_MASK) |
+				  VC4_SET_FIELD(mux, SCALER_DISPEOLN_DSP4_MUX));
+
 			break;
 
 		case 5:
-			dsp5_mux = vc4_state->assigned_channel;
+			if (vc4_state->assigned_channel == VC4_HVS_CHANNEL_DISABLED)
+				mux = 3;
+			else
+				mux = vc4_state->assigned_channel;
+
+			reg = HVS_READ(SCALER_DISPDITHER);
+			HVS_WRITE(SCALER_DISPDITHER,
+				  (reg & ~SCALER_DISPDITHER_DSP5_MUX_MASK) |
+				  VC4_SET_FIELD(mux, SCALER_DISPDITHER_DSP5_MUX));
 			break;
 
 		default:
 			break;
 		}
 	}
-
-	reg = HVS_READ(SCALER_DISPECTRL);
-	HVS_WRITE(SCALER_DISPECTRL,
-		  (reg & ~SCALER_DISPECTRL_DSP2_MUX_MASK) |
-		  VC4_SET_FIELD(dsp2_mux, SCALER_DISPECTRL_DSP2_MUX));
-
-	reg = HVS_READ(SCALER_DISPCTRL);
-	HVS_WRITE(SCALER_DISPCTRL,
-		  (reg & ~SCALER_DISPCTRL_DSP3_MUX_MASK) |
-		  VC4_SET_FIELD(dsp3_mux, SCALER_DISPCTRL_DSP3_MUX));
-
-	reg = HVS_READ(SCALER_DISPEOLN);
-	HVS_WRITE(SCALER_DISPEOLN,
-		  (reg & ~SCALER_DISPEOLN_DSP4_MUX_MASK) |
-		  VC4_SET_FIELD(dsp4_mux, SCALER_DISPEOLN_DSP4_MUX));
-
-	reg = HVS_READ(SCALER_DISPDITHER);
-	HVS_WRITE(SCALER_DISPDITHER,
-		  (reg & ~SCALER_DISPDITHER_DSP5_MUX_MASK) |
-		  VC4_SET_FIELD(dsp5_mux, SCALER_DISPDITHER_DSP5_MUX));
 }
 
 static void
@@ -787,17 +793,23 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 		unsigned int matching_channels;
 
+		/* Nothing to do here, let's skip it */
+		if ((old_crtc_state->enable && new_crtc_state->enable) ||
+		    (!old_crtc_state->enable && !new_crtc_state->enable)) {
+			new_vc4_crtc_state->needs_muxing = false;
+			continue;
+		}
+
+		/* Muxing will need to be modified, mark it as such */
+		new_vc4_crtc_state->needs_muxing = true;
+
+		/* If we're disabling our CRTC, we put back our channel */
 		if (old_crtc_state->enable && !new_crtc_state->enable) {
 			hvs_state->unassigned_channels |= BIT(old_vc4_crtc_state->assigned_channel);
 			new_vc4_crtc_state->assigned_channel = VC4_HVS_CHANNEL_DISABLED;
+			continue;
 		}
 
-		if (!new_crtc_state->enable)
-			continue;
-
-		if (new_vc4_crtc_state->assigned_channel != VC4_HVS_CHANNEL_DISABLED)
-			continue;
-
 		/*
 		 * The problem we have to solve here is that we have
 		 * up to 7 encoders, connected to up to 6 CRTCs.
-- 
2.28.0

