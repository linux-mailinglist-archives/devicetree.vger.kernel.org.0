Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC7012B1ECF
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:32:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726899AbgKMPc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:32:27 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:38495 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726889AbgKMPcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 10:32:24 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 5C22B58032A;
        Fri, 13 Nov 2020 10:32:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 13 Nov 2020 10:32:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=9Yt2cwOa+QS/R
        0XuYmOUtR1pOo0NWYTATi8mTXUf3wI=; b=jdCkd1c9ri8svlnVBT8l/IoUsfPMq
        4B/9MhoG55cOk1GFZplbxI3wooJVbnb/5aTFtWfFc/6xg/vbx6QB5+Kw9K4Z/as/
        GD5yhZpL4IcsxhTw4C3vre78mgZpN6Shhy7nZ3VR7HI7zH97SS4jCK6JpGBJblw+
        iZN4A5RNGJcBT4Dpi/UMguNbfFnHDFqxJQ1PprLpHV+3+uir/wZQCYuFuNWq79SW
        wCl38qHEQLeHmlTmqfrZ9tgtNie/9V305Oc45v9xGDgOWA/RqMPyy5r9etWpEmHS
        Uhz9ZSBVnFCWKIKEi55zqtA0AbPjEMrDinoUDcDmVRQv5+BkME8JcxFAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=9Yt2cwOa+QS/R0XuYmOUtR1pOo0NWYTATi8mTXUf3wI=; b=HCSQ5bA3
        y9QO4/aJdBYVE+ofR0DBz3h5CqiVhBidVjn3SksUmeU0WSpr7G/0P/tDpBPmXyMf
        eoqnEC8u8nSfMGnSn8IPxphRgSMOjjAQJ49oaOw6kSrF0DePM72sOGR5+K1oRYnN
        XO6frBtC3q2ySbhDE69Fk0qQrmF+08OdWCm5HPVsuAaCPS2L/+9WnbJcM0u0uRSk
        XX2w1fUexBAcknCfCalYHPAN5PWL8V3ukVFN6QWFf7S1UEfbqVrjHP1i8wV0w3UT
        0oArc4L3epjVUmZD7DwNWBOlJJk1T30t1y6v/cofv8T2W1XtGuSJbU8agdcF2P4y
        Jz3YmgPJxGDxMw==
X-ME-Sender: <xms:B6euX7qLb1Q-X_CcctIZ0rgioX9Ra9lbmWkG1exakKZhV3hIck2lEw>
    <xme:B6euX1q2dY7W4yAcEWn5I3MTyN4X65SXfgZQ7PkaUo3jmtYrcRhrxSpYbrHvuXkwP
    r21xzkvv4_x0hdpuTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:B6euX4PYS4jUSHwXiG6u641q6zw8g-G9DsFGKKwh6aAlH2xcLrUcbw>
    <xmx:B6euX-5NeKSv3Q-MRfh_CMZkNuarPZTi5wG1ZtFxJQZhjPjaDTRVpQ>
    <xmx:B6euX67G6JTBq_TGJhqi-TbnA0rIRAHVdjfd6ioTRRvnoxIC8apeIg>
    <xmx:B6euX5QPnYeQVQ0br5zzF8Er-Bbp_VU4kxiJNAko4mQVyVHrN_fi1w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id D76133064AA7;
        Fri, 13 Nov 2020 10:32:22 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 5/8] drm/vc4: Simplify a bit the global atomic_check
Date:   Fri, 13 Nov 2020 16:29:53 +0100
Message-Id: <20201113152956.139663-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201113152956.139663-1-maxime@cerno.tech>
References: <20201113152956.139663-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When we can't allocate a new channel, we can simply return instead of
having to handle both cases, and that simplifies a bit the code.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 3d0065df10f9..3034a5a6637e 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -794,6 +794,7 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 			to_vc4_crtc_state(new_crtc_state);
 		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 		unsigned int matching_channels;
+		unsigned int channel;
 
 		/* Nothing to do here, let's skip it */
 		if ((old_crtc_state->enable && new_crtc_state->enable) ||
@@ -837,14 +838,12 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
 		 * but it works so far.
 		 */
 		matching_channels = hvs_state->unassigned_channels & vc4_crtc->data->hvs_available_channels;
-		if (matching_channels) {
-			unsigned int channel = ffs(matching_channels) - 1;
-
-			new_vc4_crtc_state->assigned_channel = channel;
-			hvs_state->unassigned_channels &= ~BIT(channel);
-		} else {
+		if (!matching_channels)
 			return -EINVAL;
-		}
+
+		channel = ffs(matching_channels) - 1;
+		new_vc4_crtc_state->assigned_channel = channel;
+		hvs_state->unassigned_channels &= ~BIT(channel);
 	}
 
 	return 0;
-- 
2.28.0

