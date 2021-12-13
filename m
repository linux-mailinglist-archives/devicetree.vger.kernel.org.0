Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4810D4723C2
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 10:25:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232116AbhLMJZ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 04:25:26 -0500
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27]:43299 "EHLO
        wnew2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232047AbhLMJZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 04:25:25 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.west.internal (Postfix) with ESMTP id 1A0442B0014C;
        Mon, 13 Dec 2021 04:25:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 13 Dec 2021 04:25:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=7jmrCIXairoj2
        k92Bls3rCi+HRGAZUgUDSdIAr+qd3w=; b=Xqu4nXaJgm0YY7mmzGaIkuQz+L+f+
        tP4MzMaCWVmdfwFf+irFqEOPebvNpfSWFucam697d8KjfZXid0/KI76WLhEJDewv
        y/HMj/HT7bsU2Y8VVzEfPrmEglS48ogrufABnfdZ3/ntRte5ltxy01One88kKcUt
        1jECO91/HUVD5UXROkAEE0CdhKjgZjLVTdRdatEDxWwzvB/006C5+50o6THTSXYL
        nmOH2nbHEHITZQCRP5azlBYLHZJSe+5+exDHSTZ1Z4mtWuPlA34KD8Mo0XKxpQyx
        QIYW8Ygtuwoz+oG3PvX94mvGfvYZSiAT3EM8XepBu7iSmLDpy6bSaP5YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=7jmrCIXairoj2k92Bls3rCi+HRGAZUgUDSdIAr+qd3w=; b=mcJ88QeW
        9NdxXH/qUh2jzxaSt97jMZH/QO9N9jIsHUYZ8oWgtfSf2KibYVhgHxDKhM3WSY7l
        JtdB93HGoOlo8nkib+G3g3VqeJPsXd8OL5hRlBpYPlmkHruc8FYbKGaCnw355l6S
        U2h6ixmbg6BgmQD9obx0HB7W+KdNp07VuPoJbRw9mypilYqXxWoQcd6xPNtuE47g
        UMda2Wr8nq4tLhiukA+UyDYQk5gF9W0h8XAtNDyy8sRrh3zT7gn7BVGeaeplmWkK
        KPN/jrxTMOmAehkUvjHsX3ai2e3ooUNn0W1IKwMObQ/AI6hGYCJoeXcqtGD/Y4zq
        JyJ8f2IyRBa25A==
X-ME-Sender: <xms:ghG3YXwjESVYeU3CXShNEa3PuhJuhN8VORdk53BMGaltGNJ-7pAgUg>
    <xme:ghG3YfSfc7T68_UrClJFmgTsVkyuxYV2cPuM8bzYLPEwtSLNLX1p3on2eHFFPSWz9
    vHXxoHstOQXQhfFCgs>
X-ME-Received: <xmr:ghG3YRWrQLtfS48tBz6GhRi4MKs3e44HjoYwiMv2sLuTklTNo9ARd7SvUTx9JuiADlHO3NWBvactKS4l6bnzkXHMbGCnQPBnIZEtHou6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeekgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ghG3YRgifQZ5n98_ebHaChiFubIiu7fAZFNVoUBRl1S9Ys1dYArWaw>
    <xmx:ghG3YZDYTKpzP5COzRvSlagxaC7P-chE2_vTZz2l8pUdetBGqS-pwg>
    <xmx:ghG3YaIx8JJ9LiX5ZLkZPTd7IhIXlHk93N3VTH0TCUl-f6pDU5CRUg>
    <xmx:ghG3YR5ep__OdL94e7nH0zM4gnnG2F1mg-UJ4njcsgY3BYHF8NfrqmEFkGM>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Dec 2021 04:25:21 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v3 3/3] drm/vc4: Notify the firmware when DRM is in charge
Date:   Mon, 13 Dec 2021 10:25:03 +0100
Message-Id: <20211213092503.57379-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211213092503.57379-1-maxime@cerno.tech>
References: <20211213092503.57379-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Once the call to drm_fb_helper_remove_conflicting_framebuffers() has
been made, simplefb has been unregistered and the KMS driver is entirely
in charge of the display.

Thus, we can notify the firmware it can free whatever resource it was
using to maintain simplefb functional.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index 8ab89f805826..e26897cb49a9 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -37,6 +37,8 @@
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_vblank.h>
 
+#include <soc/bcm2835/raspberrypi-firmware.h>
+
 #include "uapi/drm/vc4_drm.h"
 
 #include "vc4_drv.h"
@@ -215,6 +217,7 @@ static void vc4_match_add_drivers(struct device *dev,
 static int vc4_drm_bind(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
+	struct rpi_firmware *firmware = NULL;
 	struct drm_device *drm;
 	struct vc4_dev *vc4;
 	struct device_node *node;
@@ -251,10 +254,29 @@ static int vc4_drm_bind(struct device *dev)
 	if (ret)
 		return ret;
 
+	node = of_find_compatible_node(NULL, NULL, "raspberrypi,bcm2835-firmware");
+	if (node) {
+		firmware = rpi_firmware_get(node);
+		of_node_put(node);
+
+		if (!firmware)
+			return -EPROBE_DEFER;
+	}
+
 	ret = drm_aperture_remove_framebuffers(false, &vc4_drm_driver);
 	if (ret)
 		return ret;
 
+	if (firmware) {
+		ret = rpi_firmware_property(firmware,
+					    RPI_FIRMWARE_NOTIFY_DISPLAY_DONE,
+					    NULL, 0);
+		if (ret)
+			drm_warn(drm, "Couldn't stop firmware display driver: %d\n", ret);
+
+		rpi_firmware_put(firmware);
+	}
+
 	ret = component_bind_all(dev, drm);
 	if (ret)
 		return ret;
-- 
2.33.1

