Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22E2C47557A
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 10:51:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241323AbhLOJv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 04:51:29 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:59815 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241311AbhLOJvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 04:51:25 -0500
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id 0E1CA580152;
        Wed, 15 Dec 2021 04:51:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 15 Dec 2021 04:51:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=1H6NDako2j0Yo
        SdZSzMJDj+RXSZgat1EU93Whc14SYU=; b=a5wjuX893CbfOQzVfQWl+IVLB+Eav
        K9IhSaFZv2sWkTu8InjZZIcXRUadWqvkCTsvA7eK6Vk0pIAJyhQAG1mXHTYdccEL
        hjKyiOAsgt+N8Tf/09LqptW84jtiFSGfY47sPF8QkS0uBBe0ymLFDi7eAS5D94Xw
        bXmwrIPLrjv8oCDdT29fq5ZoKdklCitXaCgKRhU/gPqFBLeip6KAAfmJKvkBU8YS
        DraBY1GxJK5ZfOeb18CQn4/+bvgFERCQEBjM/VQz7MbIXcp1XKbGx2h1OKCloLDA
        6ZvSVWjTJDTNhdsajz/z6fSxy11iook8X5Upb6r5zmOTKFiG39+iYYVPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=1H6NDako2j0YoSdZSzMJDj+RXSZgat1EU93Whc14SYU=; b=JeFHN5of
        9Ho38MYMUTPPfISw3mt34c140YK+vzQn/Sk7I2EJGQrBWUqQFRK9kkrGbMzUblkN
        da7EWHV3QAeukJj/XyEiPEAmaM4ELfHlCAEW4oRJp9hp43kPepglPHWPTsNTZ3NM
        fB/85CCEmbRS9EI/6ctOHdTqawu8cc6ZachRm1N65T+C19ytPqBZ4gqB1Z9tiR3K
        czPeni0kR7nFvHb4VGRJB+hbR1NXSM5ltwNmCFekdUlemgjOXija7lqCR1HbPeIl
        5YCTmxo+nqC75yghrKgP8ztVbHPydu/s/b2r+qYnP9tOHIyvVY3KzTdAKIJ84pWY
        VxIvqfFGCsFHXA==
X-ME-Sender: <xms:nLq5YTupnW5POeq54Cl8Rm7GHl1C0dsgvr8eQ1oEUt99nDy5HzTn-g>
    <xme:nLq5YUcshjPQUWkoMx0u9l-ArZctDuCD_dMc5LiojEWZ2bJ4Y4dXBgrQ_F8EgSJsz
    9jU2rf6VkfGGAfL9zM>
X-ME-Received: <xmr:nLq5YWz8vNZcQoE_CkC7drJm1JricTHZqnD24ZAqnJqjjxO-doT7UIDcwCw0oM_aFW817CJW6Hx7UFHt54PDmMVAteiWG4P2H4z8p08>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrledvgddtlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nLq5YSPus9lC54p2ATi79k5QBKjiPE00NWRxhkxZkFU20kub6npBMA>
    <xmx:nLq5YT-bF3i5M1MRFnZJQ5WMhU10A2cFHpAjCV01a4qeO0Kikn4Zog>
    <xmx:nLq5YSVQgpiOLs8khhKjIAYs6AEfs8yX84_I3cJliFIYod9dmFs76Q>
    <xmx:nbq5YW2pkYYl9zvtJVB7yg2e-95yDUj7y--pGWFSi4qvlwX-7EjHkg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Dec 2021 04:51:24 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v4 v5 2/4] drm/vc4: Support nomodeset
Date:   Wed, 15 Dec 2021 10:51:15 +0100
Message-Id: <20211215095117.176435-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211215095117.176435-1-maxime@cerno.tech>
References: <20211215095117.176435-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If we have nomodeset on the kernel command line we should have the
firmware framebuffer driver kept as is and not try to load the
full-blown KMS driver.

In this case, let's just register the v3d driver.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index 16abc3a3d601..d3cae84a4c4e 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -357,6 +357,9 @@ static int __init vc4_drm_register(void)
 {
 	int ret;
 
+	if (drm_firmware_drivers_only())
+		return -ENODEV;
+
 	ret = platform_register_drivers(component_drivers,
 					ARRAY_SIZE(component_drivers));
 	if (ret)
-- 
2.33.1

