Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1F46413467
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 15:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232227AbhIUNkH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 09:40:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233117AbhIUNkF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 09:40:05 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F41C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:37 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id h17so74561266edj.6
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 06:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=50ywJClKYNNJHw0EgAp8tDQ4aKzqvCPyiDhqvFv6IHQ=;
        b=K8z4s/hxqNne4QZooFk5O6RA/iRYgRlWPyox2mPUcYb/UG+OQBntG2ZA8d1OIwt/LG
         ODGUZeOpBCewuNZk/w2Fvh8kZtzY9vFRkQ98ZrZz4oAYQEvGJDn/DQ0t4NOgYiDzYP1P
         b88QqFfZ7tJW4RH00pZgydAn7IHFW2jUtMP9Vl5MFGlPMsIhT+GLImsQ2Cav6TiZ7JhU
         5xrx+mOwHf+AeF6v3is1X2CrW+xy+9b4L+drYnHiH8gwK5Vvq+tb/d9xN9UvuxuaRSoq
         hyYTGFGsPgsMz8uqaN4quiyzTqF8OjhRUsoCLntWrXujyCRfBiaWvGoFGYmZonjwWEjo
         joaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=50ywJClKYNNJHw0EgAp8tDQ4aKzqvCPyiDhqvFv6IHQ=;
        b=uOFnLIwW6aUSbjFvGRAwuu4kQfHfJXcqkXbAJBQn80/BzFaE7Ej5w5Uy2HBzz12Dpe
         Hxzgi9cEsSDdeqqDLVWvOYyZgSf9KWeME54XBD6h/vBPrv8L2f2WqZLVcQzJd9fYG982
         frS/YM50PV3+tZrB0H6cpbYUiXUALTrzgXXsuWdkGZOQNjmncjZy4ZRpOMiRM2GNSexx
         zpb+kxoMBcueYHgM1zu3KXi8KutrVk3bzZPjdv778+MRrfYwhbppcHKgPAShtGkl3BhC
         giSfl/Hvc8/qss6dyKF+vXkJ6blp+IqmkEEwrPNk4+3bg6iJPaFUuASKfSEdn3ZY+oh9
         fRQA==
X-Gm-Message-State: AOAM530ZM8w6VVzQkhwU2CigFX/0yjmwvc3l4PCOFX/ZwMVwWRhE7TNd
        ti+wd4UP2QL2JstxzFWvvqtxvw==
X-Google-Smtp-Source: ABdhPJxxleRPGs6xayLmhgiEEaDF9xTV7dSrhHJjW0fGFl4SZiuptOv5FHIVxYFFYPaUeE/ljZan+A==
X-Received: by 2002:a17:906:e1a:: with SMTP id l26mr34388704eji.231.1632231450847;
        Tue, 21 Sep 2021 06:37:30 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b3sm7915799edx.55.2021.09.21.06.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 06:37:30 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v7 05/22] soc: qcom: apr: Add GPR support
Date:   Tue, 21 Sep 2021 14:36:52 +0100
Message-Id: <20210921133709.4973-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm Generic Packet router aka GPR is the IPC mechanism found
in AudioReach next generation signal processing framework to perform
command and response messages between various processors.

GPR has concepts of static and dynamic port, all static services like
APM (Audio Processing Manager), PRM (Proxy resource manager) have
fixed port numbers where as dynamic services like graphs have dynamic
port numbers which are allocated at runtime. All GPR packet messages
will have source and destination domain and port along with opcode
and payload.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soc/qcom/Kconfig     |   2 +-
 drivers/soc/qcom/apr.c       | 166 +++++++++++++++++++++++++++++++++--
 include/linux/soc/qcom/apr.h |  58 ++++++++++++
 3 files changed, 219 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
index 79b568f82a1c..bfa2ab5772cf 100644
--- a/drivers/soc/qcom/Kconfig
+++ b/drivers/soc/qcom/Kconfig
@@ -199,7 +199,7 @@ config QCOM_WCNSS_CTRL
 	  firmware to a newly booted WCNSS chip.
 
 config QCOM_APR
-	tristate "Qualcomm APR Bus (Asynchronous Packet Router)"
+	tristate "Qualcomm APR/GPR Bus (Asynchronous/Generic Packet Router)"
 	depends on ARCH_QCOM || COMPILE_TEST
 	depends on RPMSG
 	depends on NET
diff --git a/drivers/soc/qcom/apr.c b/drivers/soc/qcom/apr.c
index bfad71e540ad..d9e22e78ab59 100644
--- a/drivers/soc/qcom/apr.c
+++ b/drivers/soc/qcom/apr.c
@@ -17,8 +17,13 @@
 
 enum {
 	PR_TYPE_APR = 0,
+	PR_TYPE_GPR,
 };
 
+/* Some random values tbh which does not collide with static modules */
+#define GPR_DYNAMIC_PORT_START	0x10000000
+#define GPR_DYNAMIC_PORT_END	0x20000000
+
 struct packet_router {
 	struct rpmsg_endpoint *ch;
 	struct device *dev;
@@ -69,6 +74,83 @@ int apr_send_pkt(struct apr_device *adev, struct apr_pkt *pkt)
 }
 EXPORT_SYMBOL_GPL(apr_send_pkt);
 
+void gpr_free_port(gpr_port_t *port)
+{
+	struct packet_router *gpr = port->pr;
+	unsigned long flags;
+
+	spin_lock_irqsave(&gpr->svcs_lock, flags);
+	idr_remove(&gpr->svcs_idr, port->id);
+	spin_unlock_irqrestore(&gpr->svcs_lock, flags);
+
+	kfree(port);
+}
+EXPORT_SYMBOL_GPL(gpr_free_port);
+
+gpr_port_t *gpr_alloc_port(struct apr_device *gdev, struct device *dev,
+				gpr_port_cb cb,	void *priv)
+{
+	struct packet_router *pr = dev_get_drvdata(gdev->dev.parent);
+	gpr_port_t *port;
+	struct pkt_router_svc *svc;
+	int id;
+
+	port = kzalloc(sizeof(*port), GFP_KERNEL);
+	if (!port)
+		return ERR_PTR(-ENOMEM);
+
+	svc = port;
+	svc->callback = cb;
+	svc->pr = pr;
+	svc->priv = priv;
+	svc->dev = dev;
+	spin_lock_init(&svc->lock);
+
+	spin_lock(&pr->svcs_lock);
+	id = idr_alloc_cyclic(&pr->svcs_idr, svc, GPR_DYNAMIC_PORT_START,
+			      GPR_DYNAMIC_PORT_END, GFP_ATOMIC);
+	if (id < 0) {
+		dev_err(dev, "Unable to allocate dynamic GPR src port\n");
+		kfree(port);
+		spin_unlock(&pr->svcs_lock);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	svc->id = id;
+	spin_unlock(&pr->svcs_lock);
+
+	return port;
+}
+EXPORT_SYMBOL_GPL(gpr_alloc_port);
+
+static int pkt_router_send_svc_pkt(struct pkt_router_svc *svc, struct gpr_pkt *pkt)
+{
+	struct packet_router *pr = svc->pr;
+	struct gpr_hdr *hdr;
+	unsigned long flags;
+	int ret;
+
+	hdr = &pkt->hdr;
+
+	spin_lock_irqsave(&svc->lock, flags);
+	ret = rpmsg_trysend(pr->ch, pkt, hdr->pkt_size);
+	spin_unlock_irqrestore(&svc->lock, flags);
+
+	return ret ? ret : hdr->pkt_size;
+}
+
+int gpr_send_pkt(struct apr_device *gdev, struct gpr_pkt *pkt)
+{
+	return pkt_router_send_svc_pkt(&gdev->svc, pkt);
+}
+EXPORT_SYMBOL_GPL(gpr_send_pkt);
+
+int gpr_send_port_pkt(gpr_port_t *port, struct gpr_pkt *pkt)
+{
+	return pkt_router_send_svc_pkt(port, pkt);
+}
+EXPORT_SYMBOL_GPL(gpr_send_port_pkt);
+
 static void apr_dev_release(struct device *dev)
 {
 	struct apr_device *adev = to_apr_device(dev);
@@ -177,6 +259,59 @@ static int apr_do_rx_callback(struct packet_router *apr, struct apr_rx_buf *abuf
 	return 0;
 }
 
+static int gpr_do_rx_callback(struct packet_router *gpr, struct apr_rx_buf *abuf)
+{
+	uint16_t hdr_size, ver;
+	struct pkt_router_svc *svc = NULL;
+	struct gpr_resp_pkt resp;
+	struct gpr_hdr *hdr;
+	unsigned long flags;
+	void *buf = abuf->buf;
+	int len = abuf->len;
+
+	hdr = buf;
+	ver = hdr->version;
+	if (ver > GPR_PKT_VER + 1)
+		return -EINVAL;
+
+	hdr_size = hdr->hdr_size;
+	if (hdr_size < GPR_PKT_HEADER_WORD_SIZE) {
+		dev_err(gpr->dev, "GPR: Wrong hdr size:%d\n", hdr_size);
+		return -EINVAL;
+	}
+
+	if (hdr->pkt_size < GPR_PKT_HEADER_BYTE_SIZE || hdr->pkt_size != len) {
+		dev_err(gpr->dev, "GPR: Wrong packet size\n");
+		return -EINVAL;
+	}
+
+	resp.hdr = *hdr;
+	resp.payload_size = hdr->pkt_size - (hdr_size * 4);
+
+	/*
+	 * NOTE: hdr_size is not same as GPR_HDR_SIZE as remote can include
+	 * optional headers in to gpr_hdr which should be ignored
+	 */
+	if (resp.payload_size > 0)
+		resp.payload = buf + (hdr_size *  4);
+
+
+	spin_lock_irqsave(&gpr->svcs_lock, flags);
+	svc = idr_find(&gpr->svcs_idr, hdr->dest_port);
+	spin_unlock_irqrestore(&gpr->svcs_lock, flags);
+
+	if (!svc) {
+		dev_err(gpr->dev, "GPR: Port(%x) is not registered\n",
+			hdr->dest_port);
+		return -EINVAL;
+	}
+
+	if (svc->callback)
+		svc->callback(&resp, svc->priv, 0);
+
+	return 0;
+}
+
 static void apr_rxwq(struct work_struct *work)
 {
 	struct packet_router *apr = container_of(work, struct packet_router, rx_work);
@@ -189,6 +324,9 @@ static void apr_rxwq(struct work_struct *work)
 			case PR_TYPE_APR:
 				apr_do_rx_callback(apr, abuf);
 				break;
+			case PR_TYPE_GPR:
+				gpr_do_rx_callback(apr, abuf);
+				break;
 			default:
 				break;
 			}
@@ -227,8 +365,13 @@ static int apr_device_probe(struct device *dev)
 {
 	struct apr_device *adev = to_apr_device(dev);
 	struct apr_driver *adrv = to_apr_driver(dev->driver);
+	int ret;
 
-	return adrv->probe(adev);
+	ret = adrv->probe(adev);
+	if (!ret)
+		adev->svc.callback = adrv->gpr_callback;
+
+	return ret;
 }
 
 static void apr_device_remove(struct device *dev)
@@ -299,6 +442,10 @@ static int apr_add_device(struct device *dev, struct device_node *np,
 		dev_set_name(&adev->dev, "aprsvc:%s:%x:%x", adev->name,
 			     domain_id, svc_id);
 		break;
+	case PR_TYPE_GPR:
+		dev_set_name(&adev->dev, "gprsvc:%s:%x:%x", adev->name,
+			     domain_id, svc_id);
+		break;
 	default:
 		break;
 	}
@@ -316,7 +463,7 @@ static int apr_add_device(struct device *dev, struct device_node *np,
 	of_property_read_string_index(np, "qcom,protection-domain",
 				      1, &adev->service_path);
 
-	dev_info(dev, "Adding APR dev: %s\n", dev_name(&adev->dev));
+	dev_info(dev, "Adding APR/GPR dev: %s\n", dev_name(&adev->dev));
 
 	ret = device_register(&adev->dev);
 	if (ret) {
@@ -446,10 +593,16 @@ static int apr_probe(struct rpmsg_device *rpdev)
 		return -ENOMEM;
 
 	ret = of_property_read_u32(dev->of_node, "qcom,domain", &apr->dest_domain_id);
-	if (ret) /* try deprecated apr-domain property */
-		ret = of_property_read_u32(dev->of_node, "qcom,apr-domain",
-					   &apr->dest_domain_id);
-	apr->type = PR_TYPE_APR;
+
+	if (of_device_is_compatible(dev->of_node, "qcom,gpr")) {
+		apr->type = PR_TYPE_GPR;
+	} else {
+		if (ret) /* try deprecated apr-domain property */
+			ret = of_property_read_u32(dev->of_node, "qcom,apr-domain",
+						   &apr->dest_domain_id);
+		apr->type = PR_TYPE_APR;
+	}
+
 	if (ret) {
 		dev_err(dev, "Domain ID not specified in DT\n");
 		return ret;
@@ -534,6 +687,7 @@ EXPORT_SYMBOL_GPL(apr_driver_unregister);
 static const struct of_device_id pkt_router_of_match[] = {
 	{ .compatible = "qcom,apr"},
 	{ .compatible = "qcom,apr-v2"},
+	{ .compatible = "qcom,gpr"},
 	{}
 };
 MODULE_DEVICE_TABLE(of, pkt_router_of_match);
diff --git a/include/linux/soc/qcom/apr.h b/include/linux/soc/qcom/apr.h
index 7bca213a3f83..23c5b30f3511 100644
--- a/include/linux/soc/qcom/apr.h
+++ b/include/linux/soc/qcom/apr.h
@@ -7,6 +7,7 @@
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
 #include <dt-bindings/soc/qcom,apr.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 
 extern struct bus_type aprbus;
 
@@ -75,19 +76,65 @@ struct apr_resp_pkt {
 	int payload_size;
 };
 
+struct gpr_hdr {
+	uint32_t version:4;
+	uint32_t hdr_size:4;
+	uint32_t pkt_size:24;
+	uint32_t dest_domain:8;
+	uint32_t src_domain:8;
+	uint32_t reserved:16;
+	uint32_t src_port;
+	uint32_t dest_port;
+	uint32_t token;
+	uint32_t opcode;
+} __packed;
+
+struct gpr_pkt {
+	struct gpr_hdr hdr;
+	uint32_t payload[];
+};
+
+struct gpr_resp_pkt {
+	struct gpr_hdr hdr;
+	void *payload;
+	int payload_size;
+};
+
+#define GPR_HDR_SIZE			sizeof(struct gpr_hdr)
+#define GPR_PKT_VER			0x0
+#define GPR_PKT_HEADER_WORD_SIZE	((sizeof(struct gpr_pkt) + 3) >> 2)
+#define GPR_PKT_HEADER_BYTE_SIZE	(GPR_PKT_HEADER_WORD_SIZE << 2)
+
+#define GPR_BASIC_RSP_RESULT		0x02001005
+
+struct gpr_ibasic_rsp_result_t {
+	uint32_t opcode;
+	uint32_t status;
+};
+
+#define GPR_BASIC_EVT_ACCEPTED		0x02001006
+
+struct gpr_ibasic_rsp_accepted_t {
+	uint32_t opcode;
+};
+
 /* Bits 0 to 15 -- Minor version,  Bits 16 to 31 -- Major version */
 #define APR_SVC_MAJOR_VERSION(v)	((v >> 16) & 0xFF)
 #define APR_SVC_MINOR_VERSION(v)	(v & 0xFF)
 
+typedef int (*gpr_port_cb) (struct gpr_resp_pkt *d, void *priv, int op);
 struct packet_router;
 struct pkt_router_svc {
 	struct device *dev;
+	gpr_port_cb callback;
 	struct packet_router *pr;
 	spinlock_t lock;
 	int id;
 	void *priv;
 };
 
+typedef struct pkt_router_svc gpr_port_t;
+
 struct apr_device {
 	struct device	dev;
 	uint16_t	svc_id;
@@ -99,6 +146,8 @@ struct apr_device {
 	struct list_head node;
 };
 
+typedef struct apr_device gpr_device_t;
+
 #define to_apr_device(d) container_of(d, struct apr_device, dev)
 #define svc_to_apr_device(d) container_of(d, struct apr_device, svc)
 
@@ -107,10 +156,12 @@ struct apr_driver {
 	int	(*remove)(struct apr_device *sl);
 	int	(*callback)(struct apr_device *a,
 			    struct apr_resp_pkt *d);
+	int	(*gpr_callback)(struct gpr_resp_pkt *d, void *data, int op);
 	struct device_driver		driver;
 	const struct apr_device_id	*id_table;
 };
 
+typedef struct apr_driver gpr_driver_t;
 #define to_apr_driver(d) container_of(d, struct apr_driver, driver)
 
 /*
@@ -133,7 +184,14 @@ void apr_driver_unregister(struct apr_driver *drv);
 #define module_apr_driver(__apr_driver) \
 	module_driver(__apr_driver, apr_driver_register, \
 			apr_driver_unregister)
+#define module_gpr_driver(__gpr_driver) module_apr_driver(__gpr_driver)
 
 int apr_send_pkt(struct apr_device *adev, struct apr_pkt *pkt);
 
+gpr_port_t *gpr_alloc_port(gpr_device_t *gdev, struct device *dev,
+				gpr_port_cb cb, void *priv);
+void gpr_free_port(gpr_port_t *port);
+int gpr_send_port_pkt(gpr_port_t *port, struct gpr_pkt *pkt);
+int gpr_send_pkt(gpr_device_t *gdev, struct gpr_pkt *pkt);
+
 #endif /* __QCOM_APR_H_ */
-- 
2.21.0

