Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C7442A8020
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 14:57:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730832AbgKEN5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 08:57:07 -0500
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:36045 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730501AbgKEN5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 08:57:07 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 77DB1580354;
        Thu,  5 Nov 2020 08:57:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 05 Nov 2020 08:57:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=ahqq3mKvcheaY
        D6jyfHj4iZQnwAzmUx6uRRdeU+4RlM=; b=g1UxlsMEXmK6weWc3muyX2uAocWrw
        iPLejKo2202zCb3rNG9cmd7UUADDmrd8/I/ThI5qqVe4wRkCMq6glb57+0tSrDTK
        X41GR9tyzSzlgkdY9+d4UGiEXHyt0zB1Vvi7vAHcOG+/8nGShycZziEHKT5DcHwA
        KIBpS3nhKcWlbFkip61pmdFg4aribnGW8yPuc1jAhxfHDKvr42Nqb90htDSIkw8z
        KQFTmO/4MgzmJUF8a1uHFDIWj9V9+Se15h9BjVp0HZOjBIc7Jt5Ehk6nBaensXbF
        iIaSM5uN1Zqg4luhXBZn/BcY/FViID8FnjUgoHCcgZwUlj5eGC+AID18Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=ahqq3mKvcheaYD6jyfHj4iZQnwAzmUx6uRRdeU+4RlM=; b=oOjJWWTw
        aaak7G8SKar9QgJqsnQEGM3Q1KuLdI0Zyft8Hv6LoOQ9Gd1942ITUrD9huE/H8t5
        MjXyuLDLQDpiMHfj5HCDTYKwMLTRHCRWevgWv7DcBRJZELlwJ0h94IKzQXIAFEK3
        /p4XXn7ntlCFZY6n0+HxkU+biLwUsP2PgkF9jtQIP1PVPQmI5hJKZlbJVExSLUPQ
        QWfq26Fpor6ubtqOwlnV7BBPNAv1ctqCyb0BOD1Xzq51gWVPhU4KV50gAd4qTJI6
        /E0KhHJIX+r87X5q6h9MCDwWWhC1nF+6QBEROHvwHXeT0dFPuDA/ZzeyafzLklXx
        Ot3GT9CgNGoXXQ==
X-ME-Sender: <xms:sgSkX7PfNiSIdvaxKz709l-cTs-dg80UydOyRLBRKFS40cBOH_jXVg>
    <xme:sgSkX18tUnN7SuS4wmH3jkuKWvlKuajfhcSntTjDm2c04ZDSCQR4_rsun7i3lg33b
    UTao8MzB2vWM3dQuf8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtjedgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgeenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sgSkX6QDtRvPCVfh78F9lDoXbJFHI5zEttnTbsvBTF0LxC63WnSbWw>
    <xmx:sgSkX_tQa0XSPodRu5tPo4sVmUSTfKwKUghUAE171WY-b8X3SxfYCw>
    <xmx:sgSkXzfBGoeBYl04kmNIUmczz6hqDkA2uGRgpswfFPnP6nZJnQIl-Q>
    <xmx:sgSkX78J-PAPfU8_yDvPyau-UBOzI-l0lU_HR_3ckEGid1tz1js9Xw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id E4D53306005C;
        Thu,  5 Nov 2020 08:57:05 -0500 (EST)
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
Subject: [PATCH v3 5/7] drm/vc4: kms: Document the muxing corner cases
Date:   Thu,  5 Nov 2020 14:56:54 +0100
Message-Id: <20201105135656.383350-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201105135656.383350-1-maxime@cerno.tech>
References: <20201105135656.383350-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We've had a number of muxing corner-cases with specific ways to reproduce
them, so let's document them to make sure they aren't lost and introduce
regressions later on.

Reviewed-by: Hoegeun Kwon <hoegeun.kwon@samsung.com>
Tested-by: Hoegeun Kwon <hoegeun.kwon@samsung.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index bb2efc5d2d01..499c6914fce4 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -662,6 +662,28 @@ static int vc4_load_tracker_obj_init(struct vc4_dev *vc4)
 	return drmm_add_action_or_reset(&vc4->base, vc4_load_tracker_obj_fini, NULL);
 }
 
+/*
+ * The BCM2711 HVS has up to 7 output connected to the pixelvalves and
+ * the TXP (and therefore all the CRTCs found on that platform).
+ *
+ * The naive (and our initial) implementation would just iterate over
+ * all the active CRTCs, try to find a suitable FIFO, and then remove it
+ * from the available FIFOs pool. However, there's a few corner cases
+ * that need to be considered:
+ *
+ * - When running in a dual-display setup (so with two CRTCs involved),
+ *   we can update the state of a single CRTC (for example by changing
+ *   its mode using xrandr under X11) without affecting the other. In
+ *   this case, the other CRTC wouldn't be in the state at all, so we
+ *   need to consider all the running CRTCs in the DRM device to assign
+ *   a FIFO, not just the one in the state.
+ *
+ * - Since we need the pixelvalve to be disabled and enabled back when
+ *   the FIFO is changed, we should keep the FIFO assigned for as long
+ *   as the CRTC is enabled, only considering it free again once that
+ *   CRTC has been disabled. This can be tested by booting X11 on a
+ *   single display, and changing the resolution down and then back up.
+ */
 static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 				      struct drm_atomic_state *state)
 {
-- 
2.28.0

