Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 974F8864A0
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732933AbfHHOp3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:45:29 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43160 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732477AbfHHOp2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:45:28 -0400
Received: by mail-wr1-f65.google.com with SMTP id p13so20623223wru.10
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 07:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gQsUN9otz53i+798oCmjIwQ25lOeJMqsNq1+5ZSboe4=;
        b=bBg9hWmJ7y9ITXnf/RUpzMmBm1dMxkO3dvI8GcOVJr+uDNPvAmb1nZyu7wE2NUjhuS
         j0Dxmis8+SqxdC+JpHAuH+366y7SZTF/lJHSsfZmViAE6unZX3s9OogyzcNCtQzGl2sd
         btP+oUVJoezzejYE8df8B1ZE3S4MAMGMOWGA9KfnDSgcY7p5WMPKnp48A/T25pHVxnMc
         efW31wyjURCwcDUXb3bUMByjsrqRFlpSxTG7ztDuZGx+yWrmLFqYMk6nhE+B6ZISVnVS
         b9ifriddy/Ucc3FG2BTdKRd+JBysy5nzJ8a3jfNUDUHXDN4kGq+/Z8dfyV5lKg59QxK7
         RzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gQsUN9otz53i+798oCmjIwQ25lOeJMqsNq1+5ZSboe4=;
        b=Nj1koPrMbTPsEtrWY4mfLBjxcaYohzBvxLQnEbLAbesOhzF94UwylZkzm5sySvhGRW
         F7XB0wd/oY4rEe62QAciWIh0Pjz+MJHZ/lvP8DuehxCCYwggD0PJzva6r9lu5Axtsb+N
         kOaMWYc3QTAB33xhwd/fNgvDiT8GAXDTbx7gRuEVZ9AGGriPLqcuYeqxMnL2QXNI/AhT
         QjAmnhvz9PwmUt5aXUDSkYpPii8Z0hNxslcqlt+NOcyDWmJW/Z/gCDll1SAuoT2UWOOW
         bVbGC2ev2AEnrlT1X7jWJjDkoMsJyVT27801jATVNV+IRCc4dph+d8qd4BCmbR+IsDrt
         wkFw==
X-Gm-Message-State: APjAAAWfkVGqnGisRe5CfySs4LkRDub60kFHahUxG64K4pgbO+ilbi1G
        IM/B/onQFPYOMcon/sOl84P8wg==
X-Google-Smtp-Source: APXvYqwYN1kfXVb5OXtdJdb4wj7sUrc0VGffou0emoMZdi2bIfubp1+8+fs7XsR6b/O3BS6L9vqENQ==
X-Received: by 2002:a5d:5348:: with SMTP id t8mr17003994wrv.159.1565275526729;
        Thu, 08 Aug 2019 07:45:26 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id g15sm2009060wrp.29.2019.08.08.07.45.25
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 07:45:25 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 2/4] soundwire: core: add device tree support for slave devices
Date:   Thu,  8 Aug 2019 15:45:02 +0100
Message-Id: <20190808144504.24823-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
References: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
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
 drivers/soundwire/slave.c | 47 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 50 insertions(+)

diff --git a/drivers/soundwire/bus.c b/drivers/soundwire/bus.c
index fe745830a261..324c54dc52fb 100644
--- a/drivers/soundwire/bus.c
+++ b/drivers/soundwire/bus.c
@@ -77,6 +77,8 @@ int sdw_add_bus_master(struct sdw_bus *bus)
 	 */
 	if (IS_ENABLED(CONFIG_ACPI) && ACPI_HANDLE(bus->dev))
 		ret = sdw_acpi_find_slaves(bus);
+	else if (IS_ENABLED(CONFIG_OF) && bus->dev->of_node)
+		ret = sdw_of_find_slaves(bus);
 	else
 		ret = -ENOTSUPP; /* No ACPI/DT so error out */
 
diff --git a/drivers/soundwire/bus.h b/drivers/soundwire/bus.h
index 3048ca153f22..ee46befedbd1 100644
--- a/drivers/soundwire/bus.h
+++ b/drivers/soundwire/bus.h
@@ -15,6 +15,7 @@ static inline int sdw_acpi_find_slaves(struct sdw_bus *bus)
 }
 #endif
 
+int sdw_of_find_slaves(struct sdw_bus *bus);
 void sdw_extract_slave_id(struct sdw_bus *bus,
 			  u64 addr, struct sdw_slave_id *id);
 
diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
index f39a5815e25d..8ab76f5d5a56 100644
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
@@ -112,3 +114,48 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
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
+		struct sdw_slave_id id;
+		const char *compat = NULL;
+		int unique_id, ret;
+		int ver, mfg_id, part_id, class_id;
+
+		compat = of_get_property(node, "compatible", NULL);
+		if (!compat)
+			continue;
+
+		ret = sscanf(compat, "sdw%x,%x,%x,%x",
+			     &ver, &mfg_id, &part_id, &class_id);
+		if (ret != 4) {
+			dev_err(dev, "Manf ID & Product code not found %s\n",
+				compat);
+			continue;
+		}
+
+		ret = of_property_read_u32(node, "sdw-instance-id", &unique_id);
+		if (ret) {
+			dev_err(dev, "Instance id not found:%d\n", ret);
+			continue;
+		}
+
+		id.sdw_version = ver - 0xF;
+		id.unique_id = unique_id;
+		id.mfg_id = mfg_id;
+		id.part_id = part_id;
+		id.class_id = class_id;
+		sdw_slave_add(bus, &id, of_fwnode_handle(node));
+	}
+	return 0;
+}
-- 
2.21.0

