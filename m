Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F4118230196
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 07:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726533AbgG1FSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 01:18:10 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:33682 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726251AbgG1FSJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 01:18:09 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 06S5HnqN042203;
        Tue, 28 Jul 2020 00:17:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1595913469;
        bh=/D5VA7+K8MPVBXvUkuEX+a8cL3vO3llLk69PPnVxhR4=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=bCcO5AQU3sE8a28vKNShobaqZBLnrEg8LW9I32qaFMzVsGyTiTliXHgOVI24FwB6V
         oRsWG3JPKaH0la9cr0/5LNOnZ9cIjAOjWVSt2j9nkfsX/PgP+GLuebhQr4vE7txrbR
         QPehh4Bu5bJ9ImyFKVWwJe9WeN+La+RcwfJGTL2k=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 06S5HnRs028707;
        Tue, 28 Jul 2020 00:17:49 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 28
 Jul 2020 00:17:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 28 Jul 2020 00:17:49 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 06S5Hasu005947;
        Tue, 28 Jul 2020 00:17:45 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
CC:     Thomas Gleixner <tglx@linutronix.de>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v5 02/10] firmware: ti_sci: Drop unused structure ti_sci_rm_type_map
Date:   Tue, 28 Jul 2020 10:47:27 +0530
Message-ID: <20200728051735.6187-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200728051735.6187-1-lokeshvutla@ti.com>
References: <20200728051735.6187-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

struct ti_sci_rm_type_map is no longer used. Drop its definition and its
declarations.

Acked-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/firmware/ti_sci.c | 56 +--------------------------------------
 1 file changed, 1 insertion(+), 55 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 930a65ed78ad..a81ddec9e669 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -64,22 +64,6 @@ struct ti_sci_xfers_info {
 	spinlock_t xfer_lock;
 };
 
-/**
- * struct ti_sci_rm_type_map - Structure representing TISCI Resource
- *				management representation of dev_ids.
- * @dev_id:	TISCI device ID
- * @type:	Corresponding id as identified by TISCI RM.
- *
- * Note: This is used only as a work around for using RM range apis
- *	for AM654 SoC. For future SoCs dev_id will be used as type
- *	for RM range APIs. In order to maintain ABI backward compatibility
- *	type is not being changed for AM654 SoC.
- */
-struct ti_sci_rm_type_map {
-	u32 dev_id;
-	u16 type;
-};
-
 /**
  * struct ti_sci_desc - Description of SoC integration
  * @default_host_id:	Host identifier representing the compute entity
@@ -87,14 +71,12 @@ struct ti_sci_rm_type_map {
  * @max_msgs: Maximum number of messages that can be pending
  *		  simultaneously in the system
  * @max_msg_size: Maximum size of data per message that can be handled.
- * @rm_type_map: RM resource type mapping structure.
  */
 struct ti_sci_desc {
 	u8 default_host_id;
 	int max_rx_timeout_ms;
 	int max_msgs;
 	int max_msg_size;
-	struct ti_sci_rm_type_map *rm_type_map;
 };
 
 /**
@@ -1710,33 +1692,6 @@ static int ti_sci_cmd_core_reboot(const struct ti_sci_handle *handle)
 	return ret;
 }
 
-static int ti_sci_get_resource_type(struct ti_sci_info *info, u16 dev_id,
-				    u16 *type)
-{
-	struct ti_sci_rm_type_map *rm_type_map = info->desc->rm_type_map;
-	bool found = false;
-	int i;
-
-	/* If map is not provided then assume dev_id is used as type */
-	if (!rm_type_map) {
-		*type = dev_id;
-		return 0;
-	}
-
-	for (i = 0; rm_type_map[i].dev_id; i++) {
-		if (rm_type_map[i].dev_id == dev_id) {
-			*type = rm_type_map[i].type;
-			found = true;
-			break;
-		}
-	}
-
-	if (!found)
-		return -EINVAL;
-
-	return 0;
-}
-
 /**
  * ti_sci_get_resource_range - Helper to get a range of resources assigned
  *			       to a host. Resource is uniquely identified by
@@ -1760,7 +1715,6 @@ static int ti_sci_get_resource_range(const struct ti_sci_handle *handle,
 	struct ti_sci_xfer *xfer;
 	struct ti_sci_info *info;
 	struct device *dev;
-	u16 type;
 	int ret = 0;
 
 	if (IS_ERR(handle))
@@ -1780,15 +1734,9 @@ static int ti_sci_get_resource_range(const struct ti_sci_handle *handle,
 		return ret;
 	}
 
-	ret = ti_sci_get_resource_type(info, dev_id, &type);
-	if (ret) {
-		dev_err(dev, "rm type lookup failed for %u\n", dev_id);
-		goto fail;
-	}
-
 	req = (struct ti_sci_msg_req_get_resource_range *)xfer->xfer_buf;
 	req->secondary_host = s_host;
-	req->type = type & MSG_RM_RESOURCE_TYPE_MASK;
+	req->type = dev_id & MSG_RM_RESOURCE_TYPE_MASK;
 	req->subtype = subtype & MSG_RM_RESOURCE_SUBTYPE_MASK;
 
 	ret = ti_sci_do_xfer(info, xfer);
@@ -3352,7 +3300,6 @@ static const struct ti_sci_desc ti_sci_pmmc_k2g_desc = {
 	/* Limited by MBOX_TX_QUEUE_LEN. K2G can handle upto 128 messages! */
 	.max_msgs = 20,
 	.max_msg_size = 64,
-	.rm_type_map = NULL,
 };
 
 /* Description for AM654 */
@@ -3363,7 +3310,6 @@ static const struct ti_sci_desc ti_sci_pmmc_am654_desc = {
 	/* Limited by MBOX_TX_QUEUE_LEN. K2G can handle upto 128 messages! */
 	.max_msgs = 20,
 	.max_msg_size = 60,
-	.rm_type_map = NULL,
 };
 
 static const struct of_device_id ti_sci_of_match[] = {
-- 
2.27.0

