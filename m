Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C318E46B29B
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 06:49:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231218AbhLGFwh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 00:52:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbhLGFwh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 00:52:37 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48B65C061746
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 21:49:07 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id z6so8665333plk.6
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 21:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1KDzFg9UJvJcv5oD+yqgslacyH8b6y34UOPGPd05YOk=;
        b=drb8lSpo8KfgEDmv786Qv+VSS5VtPPqbUIhbXKSGDp75DoJkIfdWtVJMUUp4SMFQye
         hhgG7IAXKb19hm7O7rvqNk51RY9PEuGF2U6mobtTI3X6AfZW1cmNVfwTW0xMf00m0mu2
         8DQrZX9NIuT6YNffTam9zEayW4pJX7g/DM4MA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1KDzFg9UJvJcv5oD+yqgslacyH8b6y34UOPGPd05YOk=;
        b=NOdNSy1hg8TlT4k7Neu21N7uG7E0+K/U6ZlOM3PET9htJo5kxQ+fcbFnBNyDRtp6qp
         1mZIxgW9y57p3qfaW0OpX8cWJ38uyfRlQ/6896fHWEM/eOL8jIzEsvuweSasP52biGMX
         nWKY8x8cOpg/Eh296hWbJizXOADLHpfMAlBa8exSLPoZay8zTcWYN0AXpudsU4WeDgQD
         ImkKzFtwhdlsIBT6gk122g9wHPFB61jhyCIDda56iJEOrWM6bygrQeOAtFXN/zlZo7k3
         h7hUqONhiU+my0QZmkx4iGeth4DA+rLFi0T1HlDq4j/hnLYQHrKDtDWS76H5nrZi9Gdn
         MH7A==
X-Gm-Message-State: AOAM530W/tPa+LbUZ/gHmEw3Zpezk+FUv3cACkpdOoVl6LWIvxba3Mmd
        1dyAf3Ayk3p9qI8PjPxIVZ3FGA==
X-Google-Smtp-Source: ABdhPJyXbI4ejT/QvJ/CfzgO4JFVmgPTPRdhR7RhCQmW0+CwjHbkuEZou/+bapcAJ1KjTTXFTwBGAg==
X-Received: by 2002:a17:903:18d:b0:142:8ab:d11f with SMTP id z13-20020a170903018d00b0014208abd11fmr49391383plg.47.1638856146790;
        Mon, 06 Dec 2021 21:49:06 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:ac1e:ca0f:5f0a:c85a])
        by smtp.gmail.com with ESMTPSA id f7sm14496352pfv.89.2021.12.06.21.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 21:49:06 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <a.hajda@samsung.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/2] of: Add helper to lookup non port child node
Date:   Tue,  7 Dec 2021 11:17:46 +0530
Message-Id: <20211207054747.461029-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207054747.461029-1-jagan@amarulasolutions.com>
References: <20211207054747.461029-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add of_get_non_port_child() helper that can be used to lookup
non port child nodes.

Some OF graphs don't require 'ports' to represent the next output
instead, it simply adds a child node on a given parent node. This
helper lookup that child node, however that child node is not a
'port' on given parent as 'port' based nodes are looked up via
of_graph_get_remote_node().

Example OF graph representation of DSI host, which doesn't
have 'ports'.

dsi {
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/of/base.c  | 29 +++++++++++++++++++++++++++++
 include/linux/of.h |  6 ++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 61de453b885c..31bbf885b0f8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -854,6 +854,35 @@ struct device_node *of_get_compatible_child(const struct device_node *parent,
 }
 EXPORT_SYMBOL(of_get_compatible_child);
 
+/**
+ * of_get_non_port_child - Find the non port child node for a given parent
+ * @node:	parent node
+ *
+ * This function looks for child node which is not port child for given parent.
+ *
+ * Return: A node pointer if found, with refcount incremented, use
+ * of_node_put() on it when done.
+ * Returns NULL if node is not found.
+ */
+struct device_node *of_get_non_port_child(const struct device_node *parent)
+{
+	struct device_node *child;
+
+	for_each_child_of_node(parent, child) {
+		if (of_node_name_eq(child, "port"))
+			continue;
+
+		if (!of_device_is_available(child)) {
+			of_node_put(child);
+			continue;
+		}
+		break;
+	}
+
+	return child;
+}
+EXPORT_SYMBOL(of_get_non_port_child);
+
 /**
  * of_get_child_by_name - Find the child node by name for a given parent
  * @node:	parent node
diff --git a/include/linux/of.h b/include/linux/of.h
index ff143a027abc..3e699becef82 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -290,6 +290,7 @@ extern struct device_node *of_get_next_child(const struct device_node *node,
 extern struct device_node *of_get_next_available_child(
 	const struct device_node *node, struct device_node *prev);
 
+extern struct device_node *of_get_non_port_child(const struct device_node *parent);
 extern struct device_node *of_get_compatible_child(const struct device_node *parent,
 					const char *compatible);
 extern struct device_node *of_get_child_by_name(const struct device_node *node,
@@ -678,6 +679,11 @@ static inline bool of_have_populated_dt(void)
 	return false;
 }
 
+static inline struct device_node *of_get_non_port_child(const struct device_node *parent)
+{
+	return NULL;
+}
+
 static inline struct device_node *of_get_compatible_child(const struct device_node *parent,
 					const char *compatible)
 {
-- 
2.25.1

