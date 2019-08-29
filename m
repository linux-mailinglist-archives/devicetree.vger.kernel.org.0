Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 965ABA2107
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 18:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727926AbfH2Qgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 12:36:40 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:33384 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727046AbfH2Qgj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 12:36:39 -0400
Received: by mail-wr1-f66.google.com with SMTP id u16so4149124wrr.0
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 09:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0y/VQ+YRgpX5o2wxlaY+4cXYuAJOmCwTGDSCpRsawzo=;
        b=SPqD7twGvwKp/3dAhbuIEpOkZ9eaeoucN5AdbkgdF4l5oJwK1hz+UjQBg4gOXRhsSw
         uUEovH7aQyS6TaurJffN7ndkPrgHURGFkcxhxPuy1mqZAWZXbbCpdVH42AvFrbnECxGv
         ymHg9IcprUCOxLa7gVLxYoJkucRxYFsqyQ/VjpNX51Jsi4VchHHAo1fxQfTNETLrBdMh
         UMJo+o/eqMr5JyhOUayxGfsARNQ6V38hgnnPL3L79a3RKc1zu5+C86RsnIK/0LPwNvoP
         yhXmmRr3rvBtawUA4kapypIc2cX6yar6nGq5TKsCIGIZ24QGky6MGJkz7uf8/FAa0XfY
         jCCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0y/VQ+YRgpX5o2wxlaY+4cXYuAJOmCwTGDSCpRsawzo=;
        b=DmPgPC+dy0r7gD/wkUUF3u8l7Kxa2fAhC7uu1k6t1xplf2pwpT/qOwPmHb0QVxqkA8
         QllF6hCTaaMho4eTP969obxQsax9GhuWGmKkDEZMdrb2C+Eh+sNisUjV6du/kjRKZzqT
         QslU4h7aJbqRCN7ByCs68sZl3acUa5dj1oR5i3PK6q0jLYdflry3k1lpaiXlpQdujcNg
         JrEVe+OqE5SESzUyewslm5dxr8dbdKg+J67L9ikhvunaJi1zR1TPDQLRKiNslbnS9a83
         PyG/UuNBhSgyeW8G+qFLVRiv6XzAbKMcceomY9BJLNiBhOrYJ6y4tVthNu1hYQHZM1uf
         mUlA==
X-Gm-Message-State: APjAAAWAgBH/+6PBs+mVbMiZseZftMPOTWb60WeK3AcuV6h7peVK7Z2m
        dWb+Sxs0nhZjA8mO+qeSJL+XhQ==
X-Google-Smtp-Source: APXvYqxvtmZUogvHXPqiYxAGddjYnxODN6Beze5/yBnrfXMIqABIfOyxUyI7Dt9l7ZDVsWl1bPiyWA==
X-Received: by 2002:a5d:4e08:: with SMTP id p8mr10168260wrt.20.1567096598266;
        Thu, 29 Aug 2019 09:36:38 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id k9sm4398243wrq.15.2019.08.29.09.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 09:36:37 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 2/4] soundwire: core: add device tree support for slave devices
Date:   Thu, 29 Aug 2019 17:35:12 +0100
Message-Id: <20190829163514.11221-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
References: <20190829163514.11221-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support to parsing device tree based
SoundWire slave devices.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/bus.c   |  2 ++
 drivers/soundwire/bus.h   |  1 +
 drivers/soundwire/slave.c | 52 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 55 insertions(+)

diff --git a/drivers/soundwire/bus.c b/drivers/soundwire/bus.c
index 728db3ebad6e..d83d89b3b15a 100644
--- a/drivers/soundwire/bus.c
+++ b/drivers/soundwire/bus.c
@@ -79,6 +79,8 @@ int sdw_add_bus_master(struct sdw_bus *bus)
 	 */
 	if (IS_ENABLED(CONFIG_ACPI) && ACPI_HANDLE(bus->dev))
 		ret = sdw_acpi_find_slaves(bus);
+	else if (IS_ENABLED(CONFIG_OF) && bus->dev->of_node)
+		ret = sdw_of_find_slaves(bus);
 	else
 		ret = -ENOTSUPP; /* No ACPI/DT so error out */
 
diff --git a/drivers/soundwire/bus.h b/drivers/soundwire/bus.h
index 9d6ea7e447ff..cb482da914da 100644
--- a/drivers/soundwire/bus.h
+++ b/drivers/soundwire/bus.h
@@ -15,6 +15,7 @@ static inline int sdw_acpi_find_slaves(struct sdw_bus *bus)
 }
 #endif
 
+int sdw_of_find_slaves(struct sdw_bus *bus);
 void sdw_extract_slave_id(struct sdw_bus *bus,
 			  u64 addr, struct sdw_slave_id *id);
 
diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
index 4b522f6d1238..48a63ca130d2 100644
--- a/drivers/soundwire/slave.c
+++ b/drivers/soundwire/slave.c
@@ -2,6 +2,7 @@
 // Copyright(c) 2015-17 Intel Corporation.
 
 #include <linux/acpi.h>
+#include <linux/of.h>
 #include <linux/soundwire/sdw.h>
 #include <linux/soundwire/sdw_type.h>
 #include "bus.h"
@@ -35,6 +36,7 @@ static int sdw_slave_add(struct sdw_bus *bus,
 
 	slave->dev.release = sdw_slave_release;
 	slave->dev.bus = &sdw_bus_type;
+	slave->dev.of_node = of_node_get(to_of_node(fwnode));
 	slave->bus = bus;
 	slave->status = SDW_SLAVE_UNATTACHED;
 	slave->dev_num = 0;
@@ -113,3 +115,53 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
 }
 
 #endif
+
+/*
+ * sdw_of_find_slaves() - Find Slave devices in master device tree node
+ * @bus: SDW bus instance
+ *
+ * Scans Master DT node for SDW child Slave devices and registers it.
+ */
+int sdw_of_find_slaves(struct sdw_bus *bus)
+{
+	struct device *dev = bus->dev;
+	struct device_node *node;
+
+	for_each_child_of_node(bus->dev->of_node, node) {
+		int link_id, sdw_version, ret, len;
+		const char *compat = NULL;
+		struct sdw_slave_id id;
+		const __be32 *addr;
+
+		compat = of_get_property(node, "compatible", NULL);
+		if (!compat)
+			continue;
+
+		ret = sscanf(compat, "sdw%01x%04hx%04hx%02hhx", &sdw_version,
+			     &id.mfg_id, &id.part_id, &id.class_id);
+
+		if (ret != 4) {
+			dev_err(dev, "Invalid compatible string found %s\n",
+				compat);
+			continue;
+		}
+
+		addr = of_get_property(node, "reg", &len);
+		if (!addr || (len < 2 * sizeof(u32))) {
+			dev_err(dev, "Invalid Link and Instance ID\n");
+			continue;
+		}
+
+		link_id = be32_to_cpup(addr++);
+		id.unique_id = be32_to_cpup(addr);
+		id.sdw_version = sdw_version;
+
+		/* Check for link_id match */
+		if (link_id != bus->link_id)
+			continue;
+
+		sdw_slave_add(bus, &id, of_fwnode_handle(node));
+	}
+
+	return 0;
+}
-- 
2.21.0

