Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6573C2B1ECC
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:32:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726884AbgKMPcX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:32:23 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:49543 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726864AbgKMPcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 10:32:20 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 4FD58580333;
        Fri, 13 Nov 2020 10:32:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 13 Nov 2020 10:32:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=7bfsWjTZyDOlt
        QkPS8XBY1LVaOtpcGUaALahRoERT+s=; b=lPjJH6xYlXxe6lxIrDVUBiD7RJhGg
        pY9CkWTuhtrLiOv21EH0DtcRFEuJJ4yRM3ppk3W66dszymMd3teDa/rbjsz2iMG/
        6aihY/DFYjxBWgEgZvHWcfoMCaAGK5oJZ3N74KyhUh81yWs7kLvaImTDHWz0BU8+
        r6qAbnsxBUlCnZfTznBToFBYhAvzGtVor7EEvoLF/pIDowG7IsoQkyc1sbInM9X2
        X+UttxkKwMmLusM6yrK973bAxjUN3syBUQ8uRcmvQ5wa7/Eix6H3Rv+6Jzkp8XHZ
        J8loFEbbDhBTXkTIsFepQJ9Z+SMq0Eju3tgr//MScZiX7gR295ZcWiPew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=7bfsWjTZyDOltQkPS8XBY1LVaOtpcGUaALahRoERT+s=; b=Y7YTllUE
        xf8mvUUiaM7ed2Fc0J/WzX7DhOtEOR4Od8pG3JO8OgS5WXFuZ/FkvrOvqldQ33o+
        PmABBGihs62dotq6wqYpOkBSUzHLw98KDnMsd6QtmAXKR8hiRYKXzoZh0m2ZPshl
        2wgJIsNGOECPs8a43vcj3semORDoIQTBQznTKHwRE8goWkcT86V6jnAT6eiFWbg0
        Li5o42zCUkkYB7Hj87jTGFfrEuBPBIJ9izP/JmwPSB8Hgk38srzvbJadLNDoF/8T
        uv8jG6QN9iO6BBBsc/vTm+EAEubKyDuQWu1j5rZcBZHG0addO+V8QG933DotVgNF
        SWWS5iandYRHjg==
X-ME-Sender: <xms:A6euX3TSYVhvKHNkMnCwhNAiY30hN9L1SCFTWU1rvk2dqOu3huSGrA>
    <xme:A6euX4zvoGfbTKSKuFqI3wlogaygs3d4LadK4kzf9OwW3QWXl0CFeuzUg659OuWbY
    Y3I6BTEfJ6PHV1fRas>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:A6euX80eLuvZ2TrZT5Fd7kTpb-GbHYm-dTtaQOukWyOdEAKvRmeCUg>
    <xmx:A6euX3C3LgLCnqsE3_vc-f_tY_5eAplXPG03jRe4JsUjX6IHo5nacQ>
    <xmx:A6euXwh_Nl7oDCEqLWKpTdC46xkY--G_EUdoQ2eSRKkwAsjTX5TcEg>
    <xmx:A6euXw6m4CdFz3AzNX5BlDB-bF_vg4fNb5iYLUItllJhOga7NDAGyQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id B7DC53064AB4;
        Fri, 13 Nov 2020 10:32:18 -0500 (EST)
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
Subject: [PATCH 2/8] drm: Document use-after-free gotcha with private objects
Date:   Fri, 13 Nov 2020 16:29:50 +0100
Message-Id: <20201113152956.139663-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201113152956.139663-1-maxime@cerno.tech>
References: <20201113152956.139663-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The private objects have a gotcha that could result in a use-after-free,
make sure it's properly documented.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 include/drm/drm_atomic.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
index 413fd0ca56a8..24b52b3a459f 100644
--- a/include/drm/drm_atomic.h
+++ b/include/drm/drm_atomic.h
@@ -248,6 +248,24 @@ struct drm_private_state_funcs {
  *    drm_dev_register()
  * 2/ all calls to drm_atomic_private_obj_fini() must be done after calling
  *    drm_dev_unregister()
+ *
+ * If that private object is used to store a state shared my multiple
+ * CRTCs, proper care must be taken to ensure that non-blocking commits are
+ * properly ordered to avoid a use-after-free issue.
+ *
+ * Indeed, assuming a sequence of two non-blocking commits on two different
+ * CRTCs using different planes and connectors, so with no resources shared,
+ * there's no guarantee on which commit is going to happen first. However, the
+ * second commit will consider the first private state its old state, and will
+ * be in charge of freeing it whenever the second commit is done.
+ *
+ * If the first commit happens after it, it will consider its private state the
+ * new state and will be likely to access it, resulting in an access to a freed
+ * memory region. A way to circumvent this is to store (and get a reference to)
+ * the crtc commit in our private state in
+ * &drm_mode_config_helper_funcs.atomic_commit_setup, and then wait for that
+ * commit to complete as part of
+ * &drm_mode_config_helper_funcs.atomic_commit_tail.
  */
 struct drm_private_obj {
 	/**
-- 
2.28.0

