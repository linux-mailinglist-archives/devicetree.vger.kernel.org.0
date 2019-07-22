Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D203C6F8B4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 07:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbfGVFIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 01:08:50 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:59612 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbfGVFIu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 01:08:50 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M58ipL004333;
        Mon, 22 Jul 2019 00:08:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563772124;
        bh=NXMck+gWL+ZhFNIIzS8+Yu5xfh+I2+Hms8p5U9ZMGTg=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=u2enEBDBf/47PD+0jAPm7PcqLky2zlQoi9NUeaHYbISEwc2sbMobfZPJxgxBl2SsA
         BkB/4mf5mPnY1QGUxUP/aJ4ltsnY1MSaiNVNSnfBSp/NxXrAG78m13LzZJMJFziacJ
         8ASA9DiXVCAUCsD0HjEuNV100BbGSdZHy7ZxIDkM=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M58ibS010969
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 00:08:44 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 00:08:43 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 00:08:43 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M58bwM039856;
        Mon, 22 Jul 2019 00:08:41 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 1/5] firmware: ti_sci: Allow for device shared and exclusive requests
Date:   Mon, 22 Jul 2019 10:37:53 +0530
Message-ID: <20190722050757.29893-2-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722050757.29893-1-lokeshvutla@ti.com>
References: <20190722050757.29893-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sysfw provides an option for requesting exclusive access for a
device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
not used, the device is meant to be shared across hosts. Once a device
is requested from a host with this flag set, any request to this
device from a different host will be nacked by sysfw. Current tisci
driver enables this flag for every device requests. But this may not
be true for all the devices. So provide a separate commands in driver
for exclusive and shared device requests.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/firmware/ti_sci.c              | 45 ++++++++++++++++++++++++--
 include/linux/soc/ti/ti_sci_protocol.h |  3 ++
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index cdee0b45943d..4126be9e3216 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -635,6 +635,7 @@ static int ti_sci_get_device_state(const struct ti_sci_handle *handle,
 
 /**
  * ti_sci_cmd_get_device() - command to request for device managed by TISCI
+ *			     that can be shared with other hosts.
  * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
  * @id:		Device Identifier
  *
@@ -642,11 +643,29 @@ static int ti_sci_get_device_state(const struct ti_sci_handle *handle,
  * usage count by balancing get_device with put_device. No refcounting is
  * managed by driver for that purpose.
  *
- * NOTE: The request is for exclusive access for the processor.
- *
  * Return: 0 if all went fine, else return appropriate error.
  */
 static int ti_sci_cmd_get_device(const struct ti_sci_handle *handle, u32 id)
+{
+	return ti_sci_set_device_state(handle, id, 0,
+				       MSG_DEVICE_SW_STATE_ON);
+}
+
+/**
+ * ti_sci_cmd_get_device_exclusive() - command to request for device managed by
+ *				       TISCI that is exclusively owned by the
+ *				       requesting host.
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ *
+ * Request for the device - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_device with put_device. No refcounting is
+ * managed by driver for that purpose.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_get_device_exclusive(const struct ti_sci_handle *handle,
+					   u32 id)
 {
 	return ti_sci_set_device_state(handle, id,
 				       MSG_FLAG_DEVICE_EXCLUSIVE,
@@ -665,6 +684,26 @@ static int ti_sci_cmd_get_device(const struct ti_sci_handle *handle, u32 id)
  * Return: 0 if all went fine, else return appropriate error.
  */
 static int ti_sci_cmd_idle_device(const struct ti_sci_handle *handle, u32 id)
+{
+	return ti_sci_set_device_state(handle, id, 0,
+				       MSG_DEVICE_SW_STATE_RETENTION);
+}
+
+/**
+ * ti_sci_cmd_idle_device_exclusive() - Command to idle a device managed by
+ *					TISCI that is exclusively owned by
+ *					requesting host.
+ * @handle:	Pointer to TISCI handle as retrieved by *ti_sci_get_handle
+ * @id:		Device Identifier
+ *
+ * Request for the device - NOTE: the client MUST maintain integrity of
+ * usage count by balancing get_device with put_device. No refcounting is
+ * managed by driver for that purpose.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int ti_sci_cmd_idle_device_exclusive(const struct ti_sci_handle *handle,
+					    u32 id)
 {
 	return ti_sci_set_device_state(handle, id,
 				       MSG_FLAG_DEVICE_EXCLUSIVE,
@@ -2894,7 +2933,9 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	core_ops->reboot_device = ti_sci_cmd_core_reboot;
 
 	dops->get_device = ti_sci_cmd_get_device;
+	dops->get_device_exclusive = ti_sci_cmd_get_device_exclusive;
 	dops->idle_device = ti_sci_cmd_idle_device;
+	dops->idle_device_exclusive = ti_sci_cmd_idle_device_exclusive;
 	dops->put_device = ti_sci_cmd_put_device;
 
 	dops->is_valid = ti_sci_cmd_dev_is_valid;
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 6c610e188a44..9531ec823298 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -97,7 +97,10 @@ struct ti_sci_core_ops {
  */
 struct ti_sci_dev_ops {
 	int (*get_device)(const struct ti_sci_handle *handle, u32 id);
+	int (*get_device_exclusive)(const struct ti_sci_handle *handle, u32 id);
 	int (*idle_device)(const struct ti_sci_handle *handle, u32 id);
+	int (*idle_device_exclusive)(const struct ti_sci_handle *handle,
+				     u32 id);
 	int (*put_device)(const struct ti_sci_handle *handle, u32 id);
 	int (*is_valid)(const struct ti_sci_handle *handle, u32 id);
 	int (*get_context_loss_count)(const struct ti_sci_handle *handle,
-- 
2.21.0

