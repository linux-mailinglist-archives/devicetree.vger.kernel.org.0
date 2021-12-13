Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E2E0472C26
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:17:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231566AbhLMMRM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:17:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229766AbhLMMRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:17:12 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF21DC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:17:11 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id l10so3430962pgm.7
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=33+gK+FBAawqy1Xlgw+tWZEjy9/Dc+BeSr4WfUFv8Pc=;
        b=ao0yG9mTLFFH/Y7RcSGPn68V7wOI6Z1xy4VH+rm7Qh88HtpjOhjKf0MmOaMmlMksht
         g7LdAdOOhKmFkYJLGTYaMan+BHr9ES7T5EdNt7Rh/DRbw7u2qmWOSamNIdFEzaQ6eb0B
         Bof/WL+Cl0bCwbF9t4PWTOA4Td53wk4Cv5Uzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=33+gK+FBAawqy1Xlgw+tWZEjy9/Dc+BeSr4WfUFv8Pc=;
        b=fD7UxuxnwIwLgCEAMFwOcIYKMCpjzesdD/80mR9YOFftU5dTlUVqYGpDLXui2cp4SP
         7Nxp5gMDjrF/8mkCuPdThPCHzzqHvCa6tU4+C0I31bwmk5z5dF8VE9kx6wkQ/ccWkEAT
         DQ+favctOIeLrpVJTXHzict3UAWHzhCaM1RV57cPDjTWxr/iciajAzJCzdiGbpVDzgN/
         Evcq64fTvGa2NycHP510IHnJWXA3kkvPCfEOdAcMVI+E55pHFqJhSUcZY3TDZDo9XcGU
         /cNL9V9C3Q5OXqf3uPA/w8oMiuhFSTQ9lZl1nYZCiOL0dswsvE1y+vvUdrL9FKmcG5PJ
         LDrQ==
X-Gm-Message-State: AOAM533XMUH/1uDO1ucaODYP7sq31BoUvhNSCjAnnYTRWA4vqzUQh/rE
        2ToiwyvrO11Iiu4UrhfmhD8ABb4nePnpPg==
X-Google-Smtp-Source: ABdhPJwswBcGsi/zoTXxWSOcaMpMxq0FwtVpTGaO18gPZSMqZ3paD//VrUCcVaNytuOY/mGiTakoZw==
X-Received: by 2002:a63:7e42:: with SMTP id o2mr53571602pgn.296.1639397831310;
        Mon, 13 Dec 2021 04:17:11 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:a39d:db10:5743:a46e])
        by smtp.gmail.com with ESMTPSA id b18sm12642149pfl.121.2021.12.13.04.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 04:17:10 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] drm: of: Lookup if child node has panel or bridge
Date:   Mon, 13 Dec 2021 17:46:13 +0530
Message-Id: <20211213121613.3377432-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some OF graphs don't require 'ports' to represent the
downstream panel or bridge; instead it simply adds a child
node on a given parent node.

drm_of_find_panel_or_bridge can lookup panel or bridge for
a given node based on the OF graph port and endpoint and it
fails to use if the given node has a child panel or bridge.

This patch add support to lookup that given node has child
panel or bridge however that child node cannot be a 'port'
alone or it cannot be a 'port' node too.

Example OF graph representation of DSI host, which doesn't
have 'ports' and has child panel.

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

Example OF graph representation of DSI host, which doesn't
have 'ports' and has child bridge.

dsi {
	compatible = "allwinner,sun6i-a31-mipi-dsi";
	#address-cells = <1>;
	#size-cells = <0>;

	port {
		dsi_in_tcon0: endpoint {
			remote-endpoint = <tcon0_out_dsi>;
	};

	bridge@0 {
		reg = <0>;

		ports {
			#address-cells = <1>;
			#size-cells = <0>;

			bridge_out: port@1 {
				reg = <1>;

				bridge_out_panel: endpoint {
					remote-endpoint = <&panel_out_bridge>;
				};
			};
		};
	};
};

Example OF graph representation of DSI host, which doesn't
have 'ports' or 'port' and has child panel.

dsi0 {
	compatible = "ste,mcde-dsi";
	#address-cells = <1>;
	#size-cells = <0>;

	panel@0 {
		reg = <0>;
	};
};

Example OF graph representation of LTDC host, which doesn't
have 'ports' or child panel/bridge and has 'port'.

ltdc {
	compatible = "st,stm32-ltdc";
	#address-cells = <1>;
	#size-cells = <0>;

	port {
	};
};

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- drop of helper
https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
- support 'port' alone OF graph
- updated comments
- added simple code

 drivers/gpu/drm/drm_of.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 59d368ea006b..7d018ff8bc83 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -249,6 +249,27 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 	if (panel)
 		*panel = NULL;
 
+	/**
+	 * Some OF graphs don't require 'ports' to represent the downstream
+	 * panel or bridge; instead it simply adds a child node on a given
+	 * parent node.
+	 *
+	 * Lookup that child node for a given parent however that child
+	 * cannot be a 'port' alone or it cannot be a 'port' node too.
+	 */
+	if (!of_get_child_by_name(np, "ports")) {
+		if (of_get_child_by_name(np, "port") && (of_get_child_count(np) == 1))
+			goto of_graph_get_remote;
+
+		for_each_available_child_of_node(np, remote) {
+			if (of_node_name_eq(remote, "port"))
+				continue;
+
+			goto of_find_panel_or_bridge;
+		}
+	}
+
+of_graph_get_remote:
 	/*
 	 * of_graph_get_remote_node() produces a noisy error message if port
 	 * node isn't found and the absence of the port is a legit case here,
@@ -259,6 +280,8 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
 		return -ENODEV;
 
 	remote = of_graph_get_remote_node(np, port, endpoint);
+
+of_find_panel_or_bridge:
 	if (!remote)
 		return -ENODEV;
 
-- 
2.25.1

