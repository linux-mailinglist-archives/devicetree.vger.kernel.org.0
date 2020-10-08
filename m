Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B4BB28734C
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 13:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725874AbgJHLZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 07:25:27 -0400
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:43547 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726012AbgJHLZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 07:25:27 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id B3B0058030D;
        Thu,  8 Oct 2020 07:25:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 08 Oct 2020 07:25:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=9MjtOof5vkiRK
        D0pvzPXMjb11wuehn5KVP/NaCvxQEE=; b=IrWmdEI5jn00DmOb+uEDDHHmVl1GV
        oOdIOH6jW+jh2RhktaLhwWVEMm4+LVgnPiwNFSkWO6CiT35thcptfEMbwNgztsh4
        xxVVOlk3Xs36MLIpp+5I/w7eit1FS2+Lambmyr4Lid0OBiEPzPMv/61Bq2elfCp8
        gRSu8LXJBV54EQQd7isG4jV5fPpsWt+ExFXEZLdTNlcqpZgCul7T8asWsp+gAEqe
        3zgLG4Zck+EIuUtWmgV/5VvqN+hvdedKgZdOPbTJ4kuK53TaXn0KT9lG7RJpZRIh
        ChthsOFSy+UWk6/9uSUtmvG2E8V+PhutNc6RKbiFGh/ZMG2TPAVJ9U0MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=9MjtOof5vkiRKD0pvzPXMjb11wuehn5KVP/NaCvxQEE=; b=jo/06Igj
        wHgVf8yzBpjcD2haP1bmqHYHoPf1dk1OWO5jJSodFcqF4m8N9JJcAwjjPUkadT6Z
        tvrlZjOGK8txSD+txdNigq7Pw/+OgzbO9dlLxGO+skB2FOCHHsXBRTam/jBQeLrb
        b4p68/MFf58fxizccbLVeXqSdQFry6AV4gX4HJIRlPFV8e6CRB9iGFNgh4IjHIcJ
        J0Ym7YwoYBqwP2AYULShYZwJZT+mgQ/eAxEJ/Rlgp+OXvxQLPMZ+MJKLAu9ulnr2
        JUyvZ1x0j4+kqi2ISdGBixOXJAU6RMX4Sec4g/mjHDrPVPyH8enF6RL1wfH+aPal
        CrARgjlhiiSfRw==
X-ME-Sender: <xms:I_d-X4eWpqp5HEttIXZO8VUNcM22adhrkEZXb6O9gP44OKah9ZpdMQ>
    <xme:I_d-X6N9lXJbFwWDEKOQbjIttnfi9OlOtuAcJ9QviibJzCkftA3KyGdcQYbbTi5q-
    KxpFBth5pSMBXGBsGE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgeelgddufecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:I_d-X5hIKzyk6QSPp3lpvQCwrPVjc_w_PDhwOhBVDckdQXyIKwW-xw>
    <xmx:I_d-X9_kqYLn_Gs8xaMDjABxAWXCj5QG2dvcyhtz0xkWEH6jAKT68A>
    <xmx:I_d-X0uRzuG4pa8B4xQ-IX95gC9uEqS6Sf1n4CVRRZpn3opKsZyl-A>
    <xmx:Jfd-X4NXMjQmzL73ESE6x7hdqbD8OiDXBmg_9IYUixf1nYaVXjIbOQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 70B563064682;
        Thu,  8 Oct 2020 07:25:23 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Eric Anholt <eric@anholt.net>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Hoegeun Kwon <hoegeun.kwon@samsung.com>
Subject: [PATCH 2/4] drm/vc4: kms: Document the muxing corner cases
Date:   Thu,  8 Oct 2020 13:25:17 +0200
Message-Id: <20201008112519.43691-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201008112519.43691-1-maxime@cerno.tech>
References: <20201008112519.43691-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We've had a number of muxing corner-cases with specific ways to reproduce
them, so let's document them to make sure they aren't lost and introduce
regressions later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 846fe8b3cb7a..3b5e62842901 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -612,6 +612,28 @@ static const struct drm_private_state_funcs vc4_load_tracker_state_funcs = {
 #define NUM_OUTPUTS  6
 #define NUM_CHANNELS 3
 
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
2.26.2

