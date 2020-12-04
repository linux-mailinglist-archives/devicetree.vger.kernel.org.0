Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71E3D2CF086
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 16:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727075AbgLDPMw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 10:12:52 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:49173 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728048AbgLDPMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 10:12:51 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id B90F5580155;
        Fri,  4 Dec 2020 10:11:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 04 Dec 2020 10:11:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=loawgpLmPbgA3
        nCb+XpvKFd/3RaTfAsWsg5X+JboVzE=; b=dZWM+so3GBnxjy0vtjNG8gvn/X/GJ
        xREok1DL8mwEBn/sj42TQlzbBgj8q7Ykx5GXzqrywfcZy62tUZR3iEouEfcpZUG8
        G/kOgX+tWPktpQvKalqTdaermI/xdsJjWNyVV6APvGZxjydT46YezMEOO5FPYfNg
        yyZNbONzj3hrELLXSM+iHjJKSjEWqp1mVBl4e48WvFipRrvs5c0QQFFlzK7mseca
        XKZFSNDjbzvhdciI8M5/sVC0fuaqHHBCF/kH688qiXAfU9SraDmSkpbYtLCoc6G1
        F4eQ8f/lXilPTVpCiPd+aJtCExv9oeJev0OFQaENHbkODpJu6iDhZGCzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=loawgpLmPbgA3nCb+XpvKFd/3RaTfAsWsg5X+JboVzE=; b=j3vZmqVC
        1JwRWdIA1PDPRWiCjo4Ffq9W+ssAn8dbBxGUsCoO152/UsZvRBGoFpP7+c4VeAF5
        uyUTIaG5qxf+SwubUNHvTo5R4D3GnMxh4XuGqsp2Op+jlIjPGMpD6I2GYmoVwjsw
        Vb25NB8CaH3Qgl0YIpInR7MZBH6AyYTBAz627k3F9DtBUHuEQzmpE7urcl4fl2X7
        HCJ3UVGh55FIj0v0Q2iBtCahV75LuGC65I0SSOEWdl9Elxo7rJYHd5y8VZBqGyMg
        HNvxE/qhRZt/vultrDVDFYh5eGk4DG9y4vle0JRHuUNFhZBHkGOIIF9LzTQ+rbjD
        iUGYwiDEYLN2Jg==
X-ME-Sender: <xms:sVHKXx9BOHvWD3VXQU8EYoecqXPljXzj4PIR8UqUlIAEfRqVNuVHCg>
    <xme:sVHKXzRwTde-Va2JCoVGuZjDcAm7a9lPSZYhTBcVrK6RjuSJxaW7jjTTAO48d7-A5
    QTYufuojXwD4eyYwG8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgjeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sVHKX1fsZlWife8fm-YsfSWOaADe1on6pv0Zj-WrNoKMP4xJeb6zdQ>
    <xmx:sVHKX3CfEW-2P5TRCwBUg5B7sX9TWr3g57WvIOHfSqzqClvhJFSbQQ>
    <xmx:sVHKX3niTI0Nm9sRHizVcupuIWEWcNHUiRw9m3jnDs5_ZejXbh28-A>
    <xmx:sVHKX65YG-rrAmE1b1Qyg7X7PVrQaiMDCTyHjwjQckYrSxzvd7HD2w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 6579424005A;
        Fri,  4 Dec 2020 10:11:45 -0500 (EST)
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
Subject: [PATCH v2 3/7] drm/vc4: Simplify a bit the global atomic_check
Date:   Fri,  4 Dec 2020 16:11:34 +0100
Message-Id: <20201204151138.1739736-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201204151138.1739736-1-maxime@cerno.tech>
References: <20201204151138.1739736-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When we can't allocate a new channel, we can simply return instead of
having to handle both cases, and that simplifies a bit the code.

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index ba310c0ab5f6..8937eb0b751d 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -794,6 +794,7 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 			to_vc4_crtc_state(new_crtc_state);
 		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 		unsigned int matching_channels;
+		unsigned int channel;
 
 		/* Nothing to do here, let's skip it */
 		if (old_crtc_state->enable == new_crtc_state->enable)
@@ -834,14 +835,12 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 		 * but it works so far.
 		 */
 		matching_channels = hvs_new_state->unassigned_channels & vc4_crtc->data->hvs_available_channels;
-		if (matching_channels) {
-			unsigned int channel = ffs(matching_channels) - 1;
-
-			new_vc4_crtc_state->assigned_channel = channel;
-			hvs_new_state->unassigned_channels &= ~BIT(channel);
-		} else {
+		if (!matching_channels)
 			return -EINVAL;
-		}
+
+		channel = ffs(matching_channels) - 1;
+		new_vc4_crtc_state->assigned_channel = channel;
+		hvs_new_state->unassigned_channels &= ~BIT(channel);
 	}
 
 	return 0;
-- 
2.28.0

