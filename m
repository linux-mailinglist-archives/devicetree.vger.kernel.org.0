Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4253A230197
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 07:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726581AbgG1FSN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 01:18:13 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:47142 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726251AbgG1FSN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 01:18:13 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 06S5Hr7q096192;
        Tue, 28 Jul 2020 00:17:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1595913473;
        bh=v0P0kEwd+3S5M7UitmXi0NKwnurO9CWy6cgt5TsxxOE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=y8qo5FoEOghjSHCeAxTcRSEHPcGBo2c8DcN/OU23boG24kYwbZGaIbe2JBNO7GCXN
         DZ8om+o5h2vSfbfLP215WtmjboKExt3xsoFshW1ajNPPTBCjPRe9uf2VO+c8uiGVEH
         kLY3rYxQiW938CXs31OR77JB6JCXaeZFfefvp1qM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 06S5HrVe103801
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 28 Jul 2020 00:17:53 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 28
 Jul 2020 00:17:53 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 28 Jul 2020 00:17:53 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 06S5Hasv005947;
        Tue, 28 Jul 2020 00:17:49 -0500
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
Subject: [PATCH v5 03/10] firmware: ti_sci: Add support for getting resource with subtype
Date:   Tue, 28 Jul 2020 10:47:28 +0530
Message-ID: <20200728051735.6187-4-lokeshvutla@ti.com>
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

With SYSFW ABI 3.0 changes, interrupts coming out of an interrupt
controller is identified by a type and it is consistent across SoCs.
Similarly global events for Interrupt aggregator. So add an API to get
resource range using a resource type.

Acked-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/firmware/ti_sci.c              | 89 +++++++++++++++++++-------
 include/linux/soc/ti/ti_sci_protocol.h | 13 ++++
 2 files changed, 80 insertions(+), 22 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index a81ddec9e669..918117be4a73 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -3208,61 +3208,50 @@ u32 ti_sci_get_num_resources(struct ti_sci_resource *res)
 EXPORT_SYMBOL_GPL(ti_sci_get_num_resources);
 
 /**
- * devm_ti_sci_get_of_resource() - Get a TISCI resource assigned to a device
+ * devm_ti_sci_get_resource_sets() - Get a TISCI resources assigned to a device
  * @handle:	TISCI handle
  * @dev:	Device pointer to which the resource is assigned
  * @dev_id:	TISCI device id to which the resource is assigned
- * @of_prop:	property name by which the resource are represented
+ * @sub_types:	Array of sub_types assigned corresponding to device
+ * @sets:	Number of sub_types
  *
  * Return: Pointer to ti_sci_resource if all went well else appropriate
  *	   error pointer.
  */
-struct ti_sci_resource *
-devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
-			    struct device *dev, u32 dev_id, char *of_prop)
+static struct ti_sci_resource *
+devm_ti_sci_get_resource_sets(const struct ti_sci_handle *handle,
+			      struct device *dev, u32 dev_id, u32 *sub_types,
+			      u32 sets)
 {
 	struct ti_sci_resource *res;
 	bool valid_set = false;
-	u32 resource_subtype;
 	int i, ret;
 
 	res = devm_kzalloc(dev, sizeof(*res), GFP_KERNEL);
 	if (!res)
 		return ERR_PTR(-ENOMEM);
 
-	ret = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
-					      sizeof(u32));
-	if (ret < 0) {
-		dev_err(dev, "%s resource type ids not available\n", of_prop);
-		return ERR_PTR(ret);
-	}
-	res->sets = ret;
-
+	res->sets = sets;
 	res->desc = devm_kcalloc(dev, res->sets, sizeof(*res->desc),
 				 GFP_KERNEL);
 	if (!res->desc)
 		return ERR_PTR(-ENOMEM);
 
 	for (i = 0; i < res->sets; i++) {
-		ret = of_property_read_u32_index(dev_of_node(dev), of_prop, i,
-						 &resource_subtype);
-		if (ret)
-			return ERR_PTR(-EINVAL);
-
 		ret = handle->ops.rm_core_ops.get_range(handle, dev_id,
-							resource_subtype,
+							sub_types[i],
 							&res->desc[i].start,
 							&res->desc[i].num);
 		if (ret) {
 			dev_dbg(dev, "dev = %d subtype %d not allocated for this host\n",
-				dev_id, resource_subtype);
+				dev_id, sub_types[i]);
 			res->desc[i].start = 0;
 			res->desc[i].num = 0;
 			continue;
 		}
 
 		dev_dbg(dev, "dev = %d, subtype = %d, start = %d, num = %d\n",
-			dev_id, resource_subtype, res->desc[i].start,
+			dev_id, sub_types[i], res->desc[i].start,
 			res->desc[i].num);
 
 		valid_set = true;
@@ -3280,6 +3269,62 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 	return ERR_PTR(-EINVAL);
 }
 
+/**
+ * devm_ti_sci_get_of_resource() - Get a TISCI resource assigned to a device
+ * @handle:	TISCI handle
+ * @dev:	Device pointer to which the resource is assigned
+ * @dev_id:	TISCI device id to which the resource is assigned
+ * @of_prop:	property name by which the resource are represented
+ *
+ * Return: Pointer to ti_sci_resource if all went well else appropriate
+ *	   error pointer.
+ */
+struct ti_sci_resource *
+devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
+			    struct device *dev, u32 dev_id, char *of_prop)
+{
+	struct ti_sci_resource *res;
+	u32 *sub_types;
+	int sets;
+
+	sets = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
+					       sizeof(u32));
+	if (sets < 0) {
+		dev_err(dev, "%s resource type ids not available\n", of_prop);
+		return ERR_PTR(sets);
+	}
+
+	sub_types = kcalloc(sets, sizeof(*sub_types), GFP_KERNEL);
+	if (!sub_types)
+		return ERR_PTR(-ENOMEM);
+
+	of_property_read_u32_array(dev_of_node(dev), of_prop, sub_types, sets);
+	res = devm_ti_sci_get_resource_sets(handle, dev, dev_id, sub_types,
+					    sets);
+
+	kfree(sub_types);
+	return res;
+}
+EXPORT_SYMBOL_GPL(devm_ti_sci_get_of_resource);
+
+/**
+ * devm_ti_sci_get_resource() - Get a resource range assigned to the device
+ * @handle:	TISCI handle
+ * @dev:	Device pointer to which the resource is assigned
+ * @dev_id:	TISCI device id to which the resource is assigned
+ * @suub_type:	TISCI resource subytpe representing the resource.
+ *
+ * Return: Pointer to ti_sci_resource if all went well else appropriate
+ *	   error pointer.
+ */
+struct ti_sci_resource *
+devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
+			 u32 dev_id, u32 sub_type)
+{
+	return devm_ti_sci_get_resource_sets(handle, dev, dev_id, &sub_type, 1);
+}
+EXPORT_SYMBOL_GPL(devm_ti_sci_get_resource);
+
 static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
 				void *cmd)
 {
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 9531ec823298..68e47f6324be 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -220,6 +220,9 @@ struct ti_sci_rm_core_ops {
 				    u16 *range_start, u16 *range_num);
 };
 
+#define TI_SCI_RESASG_SUBTYPE_IR_OUTPUT		0
+#define TI_SCI_RESASG_SUBTYPE_IA_VINT		0xa
+#define TI_SCI_RESASG_SUBTYPE_GLOBAL_EVENT_SEVT	0xd
 /**
  * struct ti_sci_rm_irq_ops: IRQ management operations
  * @set_irq:		Set an IRQ route between the requested source
@@ -556,6 +559,9 @@ u32 ti_sci_get_num_resources(struct ti_sci_resource *res);
 struct ti_sci_resource *
 devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 			    struct device *dev, u32 dev_id, char *of_prop);
+struct ti_sci_resource *
+devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
+			 u32 dev_id, u32 sub_type);
 
 #else	/* CONFIG_TI_SCI_PROTOCOL */
 
@@ -609,6 +615,13 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 {
 	return ERR_PTR(-EINVAL);
 }
+
+static inline struct ti_sci_resource *
+devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
+			 u32 dev_id, u32 sub_type);
+{
+	return ERR_PTR(-EINVAL);
+}
 #endif	/* CONFIG_TI_SCI_PROTOCOL */
 
 #endif	/* __TISCI_PROTOCOL_H */
-- 
2.27.0

