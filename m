Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3EBB9A303
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 00:37:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405283AbfHVWg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 18:36:27 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:34377 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404891AbfHVWg0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 18:36:26 -0400
Received: by mail-wm1-f65.google.com with SMTP id e8so8025697wme.1
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 15:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wEysXn0BHtJ7BnPMP+dSrHUvSy8/goLl6VzMxecNkns=;
        b=jsAQfXr+7d6NgmgJ41qH3Mu0sKABLrrvJCn4SK1J7CG8z0noPF0Y+A+5XSuZNqkS91
         5/2KcuI/YxULBHSC24f07+n+RffjQWhFiPtMHzCjNhg7t1PSLcXMB5XD9eiAkaT6gCHx
         YKCMHSYbPSRaioeHQM8gjafeFEzRGi9ETLCbqNiYhtqbWwOzfFoJqiL7vH6mMiVhVxxy
         rWthZkileeFCD3AIuohYC8B8nSM9JURPH9wSCJeDg44z16pkmd0n3qY3JHfwJw59VK5X
         1GkBXVzMMZPYeX5xzHZhHn+/kaD7rMPmNr9xHGPgLcBozfomQJkkWvXtTVcq01WSaTFe
         j8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wEysXn0BHtJ7BnPMP+dSrHUvSy8/goLl6VzMxecNkns=;
        b=JJDRg9uPVC8nWQ66lzpVnxlvGCcDYv1tV9kG2BU1K2wY2rrwju3Z+NtjnrcoTxBGBn
         qSwCbwEtze2bXigk80gW3I4LlgbKl7ZgarSSIXaBfMGZQfGAvLdwm7kMYg6Q5cdojeQC
         Ez8NclAYe+OX5iXHDMqWfProhkjWVBmPpUEu8Du6oRN9ujq0s5fQlG/XwaK+NCo9+dPX
         C+69R7umXzsymZ4aVKKksa22hO0lWaITRV61gqVcUUuD2wHLfujDR2TE9vBEWyYEiKpC
         Pp4jokA+sWQjIB9V8YaoyA8Pe7XIXTMeRxTBcglF9NtaAdJJiqQCUXM3ofzg+Suuudwr
         C/Uw==
X-Gm-Message-State: APjAAAWJqzGffAAhIBasF2UfPkzgXLBjW8AQyqyzoV6AN+TeqwWaqWik
        eP3rXOe2cm/c//1/vdJJYKwDpQ==
X-Google-Smtp-Source: APXvYqwcSpNSV6achN4zzlZQGUbq02JsajoyaVpGGk8j/JNIuQk3zkThhTljDwdQETSdVgHYzK6b4w==
X-Received: by 2002:a1c:f910:: with SMTP id x16mr1194320wmh.69.1566513383887;
        Thu, 22 Aug 2019 15:36:23 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id m188sm1886380wmm.32.2019.08.22.15.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 15:36:23 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 2/4] soundwire: core: add device tree support for slave devices
Date:   Thu, 22 Aug 2019 23:36:04 +0100
Message-Id: <20190822223606.6775-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822223606.6775-1-srinivas.kandagatla@linaro.org>
References: <20190822223606.6775-1-srinivas.kandagatla@linaro.org>
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
index 49f64b2115b9..c2eaeb5c38ed 100644
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
index f39a5815e25d..3ef265d2ee89 100644
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
@@ -112,3 +114,53 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
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
+			dev_err(dev, "Invalid Instance and Link ID\n");
+			continue;
+		}
+
+		id.unique_id = be32_to_cpup(addr++);
+		link_id = be32_to_cpup(addr);
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

