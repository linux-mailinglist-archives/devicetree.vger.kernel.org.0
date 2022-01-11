Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D683D48B5B2
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 19:33:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344959AbiAKSdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 13:33:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242661AbiAKSdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 13:33:10 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55F33C06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:33:06 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id h1so47113pls.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FanoeZhQY7FxJ7xchmDO1CUnX/wmanXy7A07snqKYas=;
        b=YjPJV/f/IitPO7NG7FBjrfnK2cfVxjLc+CS3rVqqg8IeajkWAHyPCZVYcAI+5NFjDp
         70SVsw8IfkfFk/1Q/IVa5CjjoB5wG09b4JX8GdvLGAHEBqEp4KdsemWKbdMMLd1+tlCB
         u+qb2EyinNgBv3YpZX3a/jrUsYYW25gm1jrzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FanoeZhQY7FxJ7xchmDO1CUnX/wmanXy7A07snqKYas=;
        b=hnijNrRlUHNAqW/JHOdB5oKwZQ/29/kSPBKocN1l5fYoDqti7Z7SgcbJhyCIrbri3a
         lSiKnH3VlpIlsfESIh/97swg2FbgVdU/1TWkL8qCZIWwZK9c2KYZa0Lyeg8165upxwix
         kwdUI/EWTn0Qlnc+LRQuiLzlZv43yvkCQraF7pNn7uTOuO0bBbRt2OVOMVNBeYANzlhm
         3lJbtCMoj+cJ4hcasCObW3bOWqIa+bFy43ouV9aqXa7KxDN3Trrfr+Pvm25SWhWQ9/v/
         c+MA5sB7GhjQVyEvOzfvcV5mR0NxbtWmbIxdcxWtRaGDDA2zr1ur59OLiD0WLQX54pi0
         ZF4g==
X-Gm-Message-State: AOAM532RBn5skOQhLSOcfWcS1wIjcxC+IEtLlBKnhQCY2oPj6zMzTovW
        C1on9F/b8yIE4GPjZuHQKuXNkQ==
X-Google-Smtp-Source: ABdhPJxZuRHYc0CH5iNOrC0FTuh+4IYudUNZaM0FYTshSKsCdp5FIYI0HUmRfmV1Y9hU3nXWqVaC6g==
X-Received: by 2002:a17:903:230f:b0:149:f2fe:edaf with SMTP id d15-20020a170903230f00b00149f2feedafmr5754411plh.149.1641925985719;
        Tue, 11 Jan 2022 10:33:05 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:3a09:a842:9ff2:6831])
        by smtp.gmail.com with ESMTPSA id h15sm4067850pfc.89.2022.01.11.10.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 10:33:05 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3] drm: of: Lookup if child node has panel or bridge
Date:   Wed, 12 Jan 2022 00:01:52 +0530
Message-Id: <20220111183152.494923-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some OF graphs don't require 'port' or 'ports' to represent the
downstream panel or bridge; instead it simply adds a child node
on a given parent node.

drm_of_find_panel_or_bridge can lookup panel or bridge for a given
node based on the OF graph port and endpoint and it fails to use
if the given node has a child panel or bridge.

This patch add support to lookup that given node has child panel
or bridge however that child node is neither a 'port' nor a 'ports'
node.

Example OF graph representation of DSI host, which has 'port'
but not has 'ports' and has child panel node.

dsi {
	compatible = "allwinner,sun6i-a31-mipi-dsi";
	#address-cells = <1>;
	#size-cells = <0>;

	port {
		dsi_in_tcon0: endpoint {
			remote-endpoint = <tcon0_out_dsi>;
	};

	panel@0 {
		reg = <0>;
	};
};

Example OF graph representation of DSI host, which has 'ports'
but not has 'port' and has child panel node.

dsi {
        compatible = "samsung,exynos5433-mipi-dsi";
        #address-cells = <1>;
        #size-cells = <0>;

	ports {
		#address-cells = <1>;
		#size-cells = <0>;

		port@0 {
			reg = <0>;

                	dsi_to_mic: endpoint {
                        	remote-endpoint = <&mic_to_dsi>;
                	};
                };
        };

        panel@0 {
                reg = <0>;
        };
};

Example OF graph representation of DSI host, which has neither
a 'port' nor a 'ports' but has child panel node.

dsi0 {
	compatible = "ste,mcde-dsi";
	#address-cells = <1>;
	#size-cells = <0>;

	panel@0 {
		reg = <0>;
	};
};

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- updated based on other usecase where 'ports' used along with child
Changes for v2:
- drop of helper
https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
- support 'port' alone OF graph
- updated comments
- added simple code

 drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 59d368ea006b..aeddd39b8df6 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 	if (panel)
 		*panel = NULL;
 
+	/**
+	 * Some OF graphs don't require 'port' or 'ports' to represent the
+	 * downstream panel or bridge; instead it simply adds a child node
+	 * on a given parent node.
+	 *
+	 * Lookup that child node for a given parent however that child is
+	 * neither a 'port' nor a 'ports' node.
+	 */
+	for_each_available_child_of_node(np, remote) {
+		if (of_node_name_eq(remote, "port") ||
+		    of_node_name_eq(remote, "ports"))
+			continue;
+
+		goto of_find_panel_or_bridge;
+	}
+
 	/*
 	 * of_graph_get_remote_node() produces a noisy error message if port
 	 * node isn't found and the absence of the port is a legit case here,
@@ -259,6 +275,8 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 		return -ENODEV;
 
 	remote = of_graph_get_remote_node(np, port, endpoint);
+
+of_find_panel_or_bridge:
 	if (!remote)
 		return -ENODEV;
 
-- 
2.25.1

