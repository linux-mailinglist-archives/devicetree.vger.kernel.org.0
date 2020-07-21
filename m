Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7C612278AF
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 08:11:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728056AbgGUGLG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 02:11:06 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:52146 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727780AbgGUGLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 02:11:05 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 06L6B0SI116101;
        Tue, 21 Jul 2020 01:11:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1595311860;
        bh=tCRyqOS7QzOz+wBhm7jyYwDjGFUQdR0oZraTRLE9x2o=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=AOH5LAosi8cUch/ZY9DGo2xBa3IgHzS7me//Pv4bvUZJ5jfSw/pxSASHQzN3MImTW
         ergQqRcmsg65xBfwpATW4z0VtxvJeohB5QxcUmLdYR7ZVRSWaOe5/GyRtK0smF6ANZ
         HA+kaipTWhr7Kc0aeDt2e9L+RqnDNvp2a+acpoX0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 06L6B06B009135
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 21 Jul 2020 01:11:00 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 21
 Jul 2020 01:10:59 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 21 Jul 2020 01:10:59 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 06L6A8JC091920;
        Tue, 21 Jul 2020 01:10:55 -0500
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
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 9/9] irqchip/ti-sci-inta: Add support for INTA directly connecting to GIC
Date:   Tue, 21 Jul 2020 11:40:07 +0530
Message-ID: <20200721061007.28324-10-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200721061007.28324-1-lokeshvutla@ti.com>
References: <20200721061007.28324-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Driver assumes that Interrupt parent to Interrupt Aggregator is always
Interrupt router. This is not true always and GIC can be a parent to
Interrupt Aggregator. Update the driver to detect the parent and request
the parent irqs accordingly.

Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/irqchip/irq-ti-sci-inta.c | 90 ++++++++++++++++++++++++++-----
 1 file changed, 77 insertions(+), 13 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index 7e3ebf6ed2cd..00c17ade118a 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -8,6 +8,7 @@
 
 #include <linux/err.h>
 #include <linux/io.h>
+#include <linux/irq.h>
 #include <linux/irqchip.h>
 #include <linux/irqdomain.h>
 #include <linux/interrupt.h>
@@ -128,6 +129,37 @@ static void ti_sci_inta_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(irq_desc_get_chip(desc), desc);
 }
 
+/**
+ * ti_sci_inta_xlate_irq() - Translate hwirq to parent's hwirq.
+ * @inta:	IRQ domain corresponding to Interrupt Aggregator
+ * @irq:	Hardware irq corresponding to the above irq domain
+ *
+ * Return parent irq number if translation is available else -ENOENT.
+ */
+static int ti_sci_inta_xlate_irq(struct ti_sci_inta_irq_domain *inta,
+				 u16 vint_id)
+{
+	struct device_node *np = dev_of_node(&inta->pdev->dev);
+	u32 base, parent_base, size;
+	const __be32 *range;
+	int len;
+
+	range = of_get_property(np, "ti,interrupt-ranges", &len);
+	if (!range)
+		return vint_id;
+
+	for (len /= sizeof(*range); len >= 3; len -= 3) {
+		base = be32_to_cpu(*range++);
+		parent_base = be32_to_cpu(*range++);
+		size = be32_to_cpu(*range++);
+
+		if (base <= vint_id && vint_id < base + size)
+			return vint_id - base + parent_base;
+	}
+
+	return -ENOENT;
+}
+
 /**
  * ti_sci_inta_alloc_parent_irq() - Allocate parent irq to Interrupt aggregator
  * @domain:	IRQ domain corresponding to Interrupt Aggregator
@@ -139,30 +171,55 @@ static struct ti_sci_inta_vint_desc *ti_sci_inta_alloc_parent_irq(struct irq_dom
 	struct ti_sci_inta_irq_domain *inta = domain->host_data;
 	struct ti_sci_inta_vint_desc *vint_desc;
 	struct irq_fwspec parent_fwspec;
+	struct device_node *parent_node;
 	unsigned int parent_virq;
-	u16 vint_id;
+	u16 vint_id, p_hwirq;
+	int ret;
 
 	vint_id = ti_sci_get_free_resource(inta->vint);
 	if (vint_id == TI_SCI_RESOURCE_NULL)
 		return ERR_PTR(-EINVAL);
 
+	p_hwirq = ti_sci_inta_xlate_irq(inta, vint_id);
+	if (p_hwirq < 0) {
+		ret = p_hwirq;
+		goto free_vint;
+	}
+
 	vint_desc = kzalloc(sizeof(*vint_desc), GFP_KERNEL);
-	if (!vint_desc)
-		return ERR_PTR(-ENOMEM);
+	if (!vint_desc) {
+		ret = -ENOMEM;
+		goto free_vint;
+	}
 
 	vint_desc->domain = domain;
 	vint_desc->vint_id = vint_id;
 	INIT_LIST_HEAD(&vint_desc->list);
 
-	parent_fwspec.fwnode = of_node_to_fwnode(of_irq_find_parent(dev_of_node(&inta->pdev->dev)));
-	parent_fwspec.param_count = 2;
-	parent_fwspec.param[0] = inta->pdev->id;
-	parent_fwspec.param[1] = vint_desc->vint_id;
+	parent_node = of_irq_find_parent(dev_of_node(&inta->pdev->dev));
+	parent_fwspec.fwnode = of_node_to_fwnode(parent_node);
+	if (of_property_read_u32(parent_node, "#interrupt-cells",
+				 &parent_fwspec.param_count)) {
+		ret = -EINVAL;
+		goto free_vint_desc;
+	}
+
+	if (of_device_is_compatible(parent_node, "arm,gic-v3")) {
+		/* Parent is GIC */
+		parent_fwspec.param[0] = 0;
+		parent_fwspec.param[1] = p_hwirq - 32;
+		parent_fwspec.param[2] = IRQ_TYPE_LEVEL_HIGH;
+	} else {
+		/* Parent is Interrupt Router */
+		parent_fwspec.param[0] = p_hwirq;
+	}
 
 	parent_virq = irq_create_fwspec_mapping(&parent_fwspec);
 	if (parent_virq == 0) {
-		kfree(vint_desc);
-		return ERR_PTR(-EINVAL);
+		dev_err(&inta->pdev->dev, "Parent IRQ allocation failed\n");
+		ret = -EINVAL;
+		goto free_vint_desc;
+
 	}
 	vint_desc->parent_virq = parent_virq;
 
@@ -171,6 +228,11 @@ static struct ti_sci_inta_vint_desc *ti_sci_inta_alloc_parent_irq(struct irq_dom
 					 ti_sci_inta_irq_handler, vint_desc);
 
 	return vint_desc;
+free_vint_desc:
+	kfree(vint_desc);
+free_vint:
+	ti_sci_release_resource(inta->vint, vint_id);
+	return ERR_PTR(ret);
 }
 
 /**
@@ -555,15 +617,15 @@ static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	inta->vint = devm_ti_sci_get_of_resource(inta->sci, dev, pdev->id,
-						 "ti,sci-rm-range-vint");
+	inta->vint = devm_ti_sci_get_resource(inta->sci, dev, pdev->id,
+					      TI_SCI_RESASG_SUBTYPE_IA_VINT);
 	if (IS_ERR(inta->vint)) {
 		dev_err(dev, "VINT resource allocation failed\n");
 		return PTR_ERR(inta->vint);
 	}
 
-	inta->global_event = devm_ti_sci_get_of_resource(inta->sci, dev, pdev->id,
-						"ti,sci-rm-range-global-event");
+	inta->global_event = devm_ti_sci_get_resource(inta->sci, dev, pdev->id,
+					TI_SCI_RESASG_SUBTYPE_GLOBAL_EVENT_SEVT);
 	if (IS_ERR(inta->global_event)) {
 		dev_err(dev, "Global event resource allocation failed\n");
 		return PTR_ERR(inta->global_event);
@@ -594,6 +656,8 @@ static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&inta->vint_list);
 	mutex_init(&inta->vint_mutex);
 
+	dev_info(dev, "Interrupt Aggregator domain %d created\n", pdev->id);
+
 	return 0;
 }
 
-- 
2.27.0

