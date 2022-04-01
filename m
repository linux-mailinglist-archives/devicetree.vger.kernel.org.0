Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6261C4EF85B
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 18:49:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349558AbiDAQvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 12:51:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349829AbiDAQvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 12:51:19 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CA8FF2B
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 09:38:20 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 989C88414B;
        Fri,  1 Apr 2022 18:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648831098;
        bh=MqxLzsbMhRw9VjH2aYnLwjjRt41X1WJA5IIkQnIaeKc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=MRTAu0ehn49Ah/srAbqEGWF0V52tcURfrzeRil1k5jXJokxNHQY8lUbIdcNJ52LOO
         ue3HStxqHJQKE9uy+DBd6msi0njZt21mpeVlTSwTUSv8ei7VRr6oz51sfDAkcedSIl
         kskXcdrA9gHhh4cxugzeHfbdPom49G9XISOwTYJPdch8LcUY3DEsbgKqU0UtVY4nWd
         0+FPDx1KZmIV9MrCv3nPnD+XKFJacIT8P26B1v8nhyoH/wnEovem9GQqixbSP2Hh6G
         npVC1KCXsG/kj/u1I7Qtz3tCzVnadVZMcz90HFED9/K6RH+8GFhn35SfGMe/arEyUQ
         hsif/MbF5wvog==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in of_get_drm_panel_display_mode()
Date:   Fri,  1 Apr 2022 18:37:54 +0200
Message-Id: <20220401163755.302548-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220401163755.302548-1-marex@denx.de>
References: <20220401163755.302548-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make the width-mm/height-mm panel properties mandatory in
of_get_drm_panel_display_mode(), print error message and
return -ve in case these DT properties are not present.
This is needed to correctly report panel dimensions.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Dmitry Osipenko <digetx@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/drm_modes.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 3f819c7a021b..45dc2d5c3ea6 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -761,12 +761,16 @@ int of_get_drm_panel_display_mode(struct device_node *np,
 		drm_bus_flags_from_videomode(&vm, bus_flags);
 
 	ret = of_property_read_u32(np, "width-mm", &width_mm);
-	if (ret && ret != -EINVAL)
+	if (ret < 0) {
+		pr_err("%pOF: invalid or missing width-mm DT property\n", np);
 		return ret;
+	}
 
 	ret = of_property_read_u32(np, "height-mm", &height_mm);
-	if (ret && ret != -EINVAL)
+	if (ret < 0) {
+		pr_err("%pOF: invalid or missing height-mm DT property\n", np);
 		return ret;
+	}
 
 	dmode->width_mm = width_mm;
 	dmode->height_mm = height_mm;
-- 
2.35.1

