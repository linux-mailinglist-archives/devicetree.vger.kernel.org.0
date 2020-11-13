Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC01F2B1EC9
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:32:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726731AbgKMPcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:32:24 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:33105 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726642AbgKMPcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 10:32:23 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id F2F06580339;
        Fri, 13 Nov 2020 10:32:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 13 Nov 2020 10:32:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=XC2ZaKZTeutJn
        lc52+o4Yrs/W8ZUi6uJS0KIQD96MTM=; b=YsUCXEGn+Ym7fNrCkXiQrbBVIsdX+
        5XfzJxxz7mC2kTpe7qV/dVEhtZyvd7p4wH7hLOFVhHnXNucVvWrRQweeQilWAk5g
        29PejJr1OYJJLGbMKXnZfkwzkZEw0iUG5nzpRPmSdBzM3dE+KexQ91Tt7W7NcpMz
        8TXMW7reRXAruHP4PzPM2otlLty0uygDFyvtAyXZ6Y2UZhIYHqwrxF/2azvyNgz8
        z6dYsOu1LkwFA4EUgZ0trxaZgqRFC+VfzoLNarfMKRG+lfEZkxC2P1lKbdXYXYwx
        jf4c7TzJgTgfk24ImlbC7aTWMufGP5hWL9IIBU8Ct4+DrRJbzH0ZmUD8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=XC2ZaKZTeutJnlc52+o4Yrs/W8ZUi6uJS0KIQD96MTM=; b=QD67iFBz
        pIKkuWZxjYPS1DZ8iBJEDhOZWbMEbq2m06rDtsj6ycEoX0sRjB5nb4p3LS8WqQ4Y
        Yk0IAKciHd4YSiAXe91SVw0TWZRaA8vnImlbLxS3gajQhktfFM8/cJeG1R7Wwk7E
        87ALpmtovclTl4jLtvD2Hzbvj5o3x3cMTIk/Mvg1SqTW7DtDGi7koOs2u3M4o33S
        Anq20+IM43yVUTn3iA0s0NVqtLYCX1VWIu12on6uszcFgKZu8j1c6JCu+5MrUu01
        CglePxVWAdje3GPFo95wTLyoaDMgrer+qXifdSCtYOy5td7zVwVRld74hp4uqMo5
        5Hdz8fkeIencnA==
X-ME-Sender: <xms:BaeuXyAAJXD5GmD6rJFzSihNWUAqEzdGQvSLeQhfn9fZiDeH8np3IQ>
    <xme:BaeuX8jpUyPjGJM7Qb-sMe2VggGjkdsp8Btnd0OSp4Dik1Ypn-Ccqggy1H7QQHQwQ
    71BFqXH111m_B2IGHY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:BaeuX1mShFqx_j3sphWVIawiNDPx50SYEv33JZDwLqX0pPMpKzweXQ>
    <xmx:BaeuXwyy3QLsIFEuaRvt6_uvV7skf98dcF6nY9qB0wfIJdo53oRvIg>
    <xmx:BaeuX3Rbry2J-fnx3HCtruCOxjbgAoeoo0hqNpO32FEBI7c4HWpQEQ>
    <xmx:BaeuXzqAT_3wnx4JXTT3S_mhjhYJvJAK3pAFrnW2UmoOsdw71yO7RA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 7BD783064AAA;
        Fri, 13 Nov 2020 10:32:21 -0500 (EST)
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
Subject: [PATCH 4/8] drm/vc4: kms: Simplify a bit the private obj state hooks
Date:   Fri, 13 Nov 2020 16:29:52 +0100
Message-Id: <20201113152956.139663-5-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201113152956.139663-1-maxime@cerno.tech>
References: <20201113152956.139663-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some fields that we're going to add cannot be just copied over to the
new state, and thus kmemdup is a bit unnecessary. Let's move to kzalloc
instead, and clean it up in the process.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index d6712924681e..3d0065df10f9 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -695,23 +695,25 @@ static int vc4_load_tracker_obj_init(struct vc4_dev *vc4)
 static struct drm_private_state *
 vc4_hvs_channels_duplicate_state(struct drm_private_obj *obj)
 {
+	struct vc4_hvs_state *old_state = to_vc4_hvs_state(obj->state);
 	struct vc4_hvs_state *state;
 
-	state = kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
 	if (!state)
 		return NULL;
 
 	__drm_atomic_helper_private_obj_duplicate_state(obj, &state->base);
 
+	state->unassigned_channels = old_state->unassigned_channels;
+
 	return &state->base;
 }
 
 static void vc4_hvs_channels_destroy_state(struct drm_private_obj *obj,
 					   struct drm_private_state *state)
 {
-	struct vc4_hvs_state *hvs_state;
+	struct vc4_hvs_state *hvs_state = to_vc4_hvs_state(state);
 
-	hvs_state = to_vc4_hvs_state(state);
 	kfree(hvs_state);
 }
 
-- 
2.28.0

