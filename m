Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7A113FFEFB
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349203AbhICLWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349201AbhICLWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:37 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DA95C061760
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:37 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id q14so7730599wrp.3
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F17HnIrt9/nzW1yaaaZAs2cxj4cXVHJOTDX4ejIvA00=;
        b=eRe+qJCFn4R6wQU1sP2eHSPNfVdJu6ThLpBWpSzkWhPeghXsFynP1e8KzLI5gRAd28
         EKB/VKj/NlrYIOZDkJJSJ2i/0GqSITpdHbCOSc5MSizRyR3UGdfI80shlF48mGFuOLFv
         KQCECVH//5BRx0P53RzjKzqEo5u4qaEGuHsRs4wHz3TLG8ijwZjwS2z0WCgVrV/Bye6i
         RaaroPOxm7ESuQTuZd1hMjePi0qR1iO7tZTlyj+jA38Ff1xhTbe/yZKRgfqsYgxkEqxN
         AGyVC3a3BWvrvrzk2t+3kIOsS5X/UgOnNTbFGr87WZeW0mEAp3sSZjcQebcaTVAHUK5d
         kDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F17HnIrt9/nzW1yaaaZAs2cxj4cXVHJOTDX4ejIvA00=;
        b=GZVyCmBA1RZTIAObayP943y22IdqhOBKLTIq490HbSl5Wj3G6D4MOn0JkZrqWR5T82
         Zg6+tl0kJItKu3btCzhB/OCm4r67ufnlyu6tR4b8BD7OVlM/yTl8sVvB8Dr59Kyz4mJS
         w9h2aashHRBWT1y1ttkUtYIc5oRJOsKZhHjlHRbOzDarWBVFiaJJTbvFz8WHokdQehrD
         JESBD391Mj7LZ2sPE9UEWzdrAvk4aqV1YIZHlqXXLrrGNrf6bV2GN6HSgKxfxTbzMP2c
         RhWPR3tGDefYG7+mnoxiqgd3cF++Iw+1d6wDgxlNiHmkt+IxxG7qvvLMaYvsahR2h+2D
         IwXQ==
X-Gm-Message-State: AOAM533TUAXEMg5rlkcOoqtrHjvcYkIVms86hXzNYqkZMu0ph7EVVm6F
        P4128C/Obdgve/xiW1YLtsngVA==
X-Google-Smtp-Source: ABdhPJzKgkXe6eQN7v43rqQQmMR4S7T7qSZLNrawBZ5N1OAETygO7cwNvPDm5e3ngoxnFOEknR4mMA==
X-Received: by 2002:a5d:4d8c:: with SMTP id b12mr3401861wru.232.1630668095597;
        Fri, 03 Sep 2021 04:21:35 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:35 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 03/21] soc: qcom: apr: make code more reuseable
Date:   Fri,  3 Sep 2021 12:20:14 +0100
Message-Id: <20210903112032.25834-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

APR and other packet routers like GPR are pretty much same and
interact with other drivers in similar way.

Ex: GPR ports can be considered as APR services, only difference
is they are allocated dynamically.

Other difference is packet layout, which should not matter
with the apis abstracted. Apart from this the rest of the
functionality is pretty much identical across APR and GPR.

Make the apr code more reusable by abstracting it service level,
rather than device level so that we do not need to write
new drivers for other new packet routers like GPR.

This patch is in preparation to add GPR support to this driver.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soc/qcom/apr.c       | 129 +++++++++++++++++++++--------------
 include/linux/soc/qcom/apr.h |  12 +++-
 2 files changed, 90 insertions(+), 51 deletions(-)

diff --git a/drivers/soc/qcom/apr.c b/drivers/soc/qcom/apr.c
index 7abfc8c4fdc7..16990dc96688 100644
--- a/drivers/soc/qcom/apr.c
+++ b/drivers/soc/qcom/apr.c
@@ -15,13 +15,18 @@
 #include <linux/rpmsg.h>
 #include <linux/of.h>
 
-struct apr {
+enum {
+	PR_TYPE_APR = 0,
+};
+
+struct packet_router {
 	struct rpmsg_endpoint *ch;
 	struct device *dev;
 	spinlock_t svcs_lock;
 	spinlock_t rx_lock;
 	struct idr svcs_idr;
 	int dest_domain_id;
+	int type;
 	struct pdr_handle *pdr;
 	struct workqueue_struct *rxwq;
 	struct work_struct rx_work;
@@ -44,21 +49,21 @@ struct apr_rx_buf {
  */
 int apr_send_pkt(struct apr_device *adev, struct apr_pkt *pkt)
 {
-	struct apr *apr = dev_get_drvdata(adev->dev.parent);
+	struct packet_router *apr = dev_get_drvdata(adev->dev.parent);
 	struct apr_hdr *hdr;
 	unsigned long flags;
 	int ret;
 
-	spin_lock_irqsave(&adev->lock, flags);
+	spin_lock_irqsave(&adev->svc.lock, flags);
 
 	hdr = &pkt->hdr;
 	hdr->src_domain = APR_DOMAIN_APPS;
-	hdr->src_svc = adev->svc_id;
+	hdr->src_svc = adev->svc.id;
 	hdr->dest_domain = adev->domain_id;
-	hdr->dest_svc = adev->svc_id;
+	hdr->dest_svc = adev->svc.id;
 
 	ret = rpmsg_trysend(apr->ch, pkt, hdr->pkt_size);
-	spin_unlock_irqrestore(&adev->lock, flags);
+	spin_unlock_irqrestore(&adev->svc.lock, flags);
 
 	return ret ? ret : hdr->pkt_size;
 }
@@ -74,7 +79,7 @@ static void apr_dev_release(struct device *dev)
 static int apr_callback(struct rpmsg_device *rpdev, void *buf,
 				  int len, void *priv, u32 addr)
 {
-	struct apr *apr = dev_get_drvdata(&rpdev->dev);
+	struct packet_router *apr = dev_get_drvdata(&rpdev->dev);
 	struct apr_rx_buf *abuf;
 	unsigned long flags;
 
@@ -100,11 +105,11 @@ static int apr_callback(struct rpmsg_device *rpdev, void *buf,
 	return 0;
 }
 
-
-static int apr_do_rx_callback(struct apr *apr, struct apr_rx_buf *abuf)
+static int apr_do_rx_callback(struct packet_router *apr, struct apr_rx_buf *abuf)
 {
 	uint16_t hdr_size, msg_type, ver, svc_id;
-	struct apr_device *svc = NULL;
+	struct pkt_router_svc *svc;
+	struct apr_device *adev;
 	struct apr_driver *adrv = NULL;
 	struct apr_resp_pkt resp;
 	struct apr_hdr *hdr;
@@ -145,12 +150,15 @@ static int apr_do_rx_callback(struct apr *apr, struct apr_rx_buf *abuf)
 	svc_id = hdr->dest_svc;
 	spin_lock_irqsave(&apr->svcs_lock, flags);
 	svc = idr_find(&apr->svcs_idr, svc_id);
-	if (svc && svc->dev.driver)
-		adrv = to_apr_driver(svc->dev.driver);
+	if (svc && svc->dev->driver) {
+		adev = svc_to_apr_device(svc);
+		adrv = to_apr_driver(adev->dev.driver);
+	}
 	spin_unlock_irqrestore(&apr->svcs_lock, flags);
 
-	if (!adrv) {
-		dev_err(apr->dev, "APR: service is not registered\n");
+	if (!adrv || !adev) {
+		dev_err(apr->dev, "APR: service is not registered (%d)\n",
+			svc_id);
 		return -EINVAL;
 	}
 
@@ -164,20 +172,26 @@ static int apr_do_rx_callback(struct apr *apr, struct apr_rx_buf *abuf)
 	if (resp.payload_size > 0)
 		resp.payload = buf + hdr_size;
 
-	adrv->callback(svc, &resp);
+	adrv->callback(adev, &resp);
 
 	return 0;
 }
 
 static void apr_rxwq(struct work_struct *work)
 {
-	struct apr *apr = container_of(work, struct apr, rx_work);
+	struct packet_router *apr = container_of(work, struct packet_router, rx_work);
 	struct apr_rx_buf *abuf, *b;
 	unsigned long flags;
 
 	if (!list_empty(&apr->rx_list)) {
 		list_for_each_entry_safe(abuf, b, &apr->rx_list, node) {
-			apr_do_rx_callback(apr, abuf);
+			switch (apr->type) {
+			case PR_TYPE_APR:
+				apr_do_rx_callback(apr, abuf);
+				break;
+			default:
+				break;
+			}
 			spin_lock_irqsave(&apr->rx_lock, flags);
 			list_del(&abuf->node);
 			spin_unlock_irqrestore(&apr->rx_lock, flags);
@@ -201,7 +215,7 @@ static int apr_device_match(struct device *dev, struct device_driver *drv)
 
 	while (id->domain_id != 0 || id->svc_id != 0) {
 		if (id->domain_id == adev->domain_id &&
-		    id->svc_id == adev->svc_id)
+		    id->svc_id == adev->svc.id)
 			return 1;
 		id++;
 	}
@@ -221,14 +235,14 @@ static int apr_device_remove(struct device *dev)
 {
 	struct apr_device *adev = to_apr_device(dev);
 	struct apr_driver *adrv;
-	struct apr *apr = dev_get_drvdata(adev->dev.parent);
+	struct packet_router *apr = dev_get_drvdata(adev->dev.parent);
 
 	if (dev->driver) {
 		adrv = to_apr_driver(dev->driver);
 		if (adrv->remove)
 			adrv->remove(adev);
 		spin_lock(&apr->svcs_lock);
-		idr_remove(&apr->svcs_idr, adev->svc_id);
+		idr_remove(&apr->svcs_idr, adev->svc.id);
 		spin_unlock(&apr->svcs_lock);
 	}
 
@@ -257,28 +271,39 @@ struct bus_type aprbus = {
 EXPORT_SYMBOL_GPL(aprbus);
 
 static int apr_add_device(struct device *dev, struct device_node *np,
-			  const struct apr_device_id *id)
+			  u32 svc_id, u32 domain_id)
 {
-	struct apr *apr = dev_get_drvdata(dev);
+	struct packet_router *apr = dev_get_drvdata(dev);
 	struct apr_device *adev = NULL;
+	struct pkt_router_svc *svc;
 	int ret;
 
 	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
 	if (!adev)
 		return -ENOMEM;
 
-	spin_lock_init(&adev->lock);
+	adev->svc_id = svc_id;
+	svc = &adev->svc;
+
+	svc->id = svc_id;
+	svc->pr = apr;
+	svc->priv = adev;
+	svc->dev = dev;
+	spin_lock_init(&svc->lock);
+
+	adev->domain_id = domain_id;
 
-	adev->svc_id = id->svc_id;
-	adev->domain_id = id->domain_id;
-	adev->version = id->svc_version;
 	if (np)
 		snprintf(adev->name, APR_NAME_SIZE, "%pOFn", np);
-	else
-		strscpy(adev->name, id->name, APR_NAME_SIZE);
 
-	dev_set_name(&adev->dev, "aprsvc:%s:%x:%x", adev->name,
-		     id->domain_id, id->svc_id);
+	switch (apr->type) {
+	case PR_TYPE_APR:
+		dev_set_name(&adev->dev, "aprsvc:%s:%x:%x", adev->name,
+			     domain_id, svc_id);
+		break;
+	default:
+		break;
+	}
 
 	adev->dev.bus = &aprbus;
 	adev->dev.parent = dev;
@@ -287,8 +312,7 @@ static int apr_add_device(struct device *dev, struct device_node *np,
 	adev->dev.driver = NULL;
 
 	spin_lock(&apr->svcs_lock);
-	idr_alloc(&apr->svcs_idr, adev, id->svc_id,
-		  id->svc_id + 1, GFP_ATOMIC);
+	idr_alloc(&apr->svcs_idr, svc, svc_id, svc_id + 1, GFP_ATOMIC);
 	spin_unlock(&apr->svcs_lock);
 
 	of_property_read_string_index(np, "qcom,protection-domain",
@@ -308,7 +332,7 @@ static int apr_add_device(struct device *dev, struct device_node *np,
 static int of_apr_add_pd_lookups(struct device *dev)
 {
 	const char *service_name, *service_path;
-	struct apr *apr = dev_get_drvdata(dev);
+	struct packet_router *apr = dev_get_drvdata(dev);
 	struct device_node *node;
 	struct pdr_service *pds;
 	int ret;
@@ -338,13 +362,14 @@ static int of_apr_add_pd_lookups(struct device *dev)
 
 static void of_register_apr_devices(struct device *dev, const char *svc_path)
 {
-	struct apr *apr = dev_get_drvdata(dev);
+	struct packet_router *apr = dev_get_drvdata(dev);
 	struct device_node *node;
 	const char *service_path;
 	int ret;
 
 	for_each_child_of_node(dev->of_node, node) {
-		struct apr_device_id id = { {0} };
+		u32 svc_id;
+		u32 domain_id;
 
 		/*
 		 * This function is called with svc_path NULL during
@@ -374,13 +399,13 @@ static void of_register_apr_devices(struct device *dev, const char *svc_path)
 				continue;
 		}
 
-		if (of_property_read_u32(node, "reg", &id.svc_id))
+		if (of_property_read_u32(node, "reg", &svc_id))
 			continue;
 
-		id.domain_id = apr->dest_domain_id;
+		domain_id = apr->dest_domain_id;
 
-		if (apr_add_device(dev, node, &id))
-			dev_err(dev, "Failed to add apr %d svc\n", id.svc_id);
+		if (apr_add_device(dev, node, svc_id, domain_id))
+			dev_err(dev, "Failed to add apr %d svc\n", svc_id);
 	}
 }
 
@@ -400,7 +425,7 @@ static int apr_remove_device(struct device *dev, void *svc_path)
 
 static void apr_pd_status(int state, char *svc_path, void *priv)
 {
-	struct apr *apr = (struct apr *)priv;
+	struct packet_router *apr = (struct packet_router *)priv;
 
 	switch (state) {
 	case SERVREG_SERVICE_STATE_UP:
@@ -415,16 +440,20 @@ static void apr_pd_status(int state, char *svc_path, void *priv)
 static int apr_probe(struct rpmsg_device *rpdev)
 {
 	struct device *dev = &rpdev->dev;
-	struct apr *apr;
+	struct packet_router *apr;
 	int ret;
 
 	apr = devm_kzalloc(dev, sizeof(*apr), GFP_KERNEL);
 	if (!apr)
 		return -ENOMEM;
 
-	ret = of_property_read_u32(dev->of_node, "qcom,apr-domain", &apr->dest_domain_id);
+	ret = of_property_read_u32(dev->of_node, "qcom,domain", &apr->dest_domain_id);
+	if (ret) /* try deprecated apr-domain property */
+		ret = of_property_read_u32(dev->of_node, "qcom,apr-domain",
+					   &apr->dest_domain_id);
+	apr->type = PR_TYPE_APR;
 	if (ret) {
-		dev_err(dev, "APR Domain ID not specified in DT\n");
+		dev_err(dev, "Domain ID not specified in DT\n");
 		return ret;
 	}
 
@@ -467,7 +496,7 @@ static int apr_probe(struct rpmsg_device *rpdev)
 
 static void apr_remove(struct rpmsg_device *rpdev)
 {
-	struct apr *apr = dev_get_drvdata(&rpdev->dev);
+	struct packet_router *apr = dev_get_drvdata(&rpdev->dev);
 
 	pdr_handle_release(apr->pdr);
 	device_for_each_child(&rpdev->dev, NULL, apr_remove_device);
@@ -504,20 +533,20 @@ void apr_driver_unregister(struct apr_driver *drv)
 }
 EXPORT_SYMBOL_GPL(apr_driver_unregister);
 
-static const struct of_device_id apr_of_match[] = {
+static const struct of_device_id pkt_router_of_match[] = {
 	{ .compatible = "qcom,apr"},
 	{ .compatible = "qcom,apr-v2"},
 	{}
 };
-MODULE_DEVICE_TABLE(of, apr_of_match);
+MODULE_DEVICE_TABLE(of, pkt_router_of_match);
 
-static struct rpmsg_driver apr_driver = {
+static struct rpmsg_driver packet_router_driver = {
 	.probe = apr_probe,
 	.remove = apr_remove,
 	.callback = apr_callback,
 	.drv = {
 		.name = "qcom,apr",
-		.of_match_table = apr_of_match,
+		.of_match_table = pkt_router_of_match,
 	},
 };
 
@@ -527,7 +556,7 @@ static int __init apr_init(void)
 
 	ret = bus_register(&aprbus);
 	if (!ret)
-		ret = register_rpmsg_driver(&apr_driver);
+		ret = register_rpmsg_driver(&packet_router_driver);
 	else
 		bus_unregister(&aprbus);
 
@@ -537,7 +566,7 @@ static int __init apr_init(void)
 static void __exit apr_exit(void)
 {
 	bus_unregister(&aprbus);
-	unregister_rpmsg_driver(&apr_driver);
+	unregister_rpmsg_driver(&packet_router_driver);
 }
 
 subsys_initcall(apr_init);
diff --git a/include/linux/soc/qcom/apr.h b/include/linux/soc/qcom/apr.h
index 137f9f2ac4c3..7bca213a3f83 100644
--- a/include/linux/soc/qcom/apr.h
+++ b/include/linux/soc/qcom/apr.h
@@ -79,6 +79,15 @@ struct apr_resp_pkt {
 #define APR_SVC_MAJOR_VERSION(v)	((v >> 16) & 0xFF)
 #define APR_SVC_MINOR_VERSION(v)	(v & 0xFF)
 
+struct packet_router;
+struct pkt_router_svc {
+	struct device *dev;
+	struct packet_router *pr;
+	spinlock_t lock;
+	int id;
+	void *priv;
+};
+
 struct apr_device {
 	struct device	dev;
 	uint16_t	svc_id;
@@ -86,11 +95,12 @@ struct apr_device {
 	uint32_t	version;
 	char name[APR_NAME_SIZE];
 	const char *service_path;
-	spinlock_t	lock;
+	struct pkt_router_svc svc;
 	struct list_head node;
 };
 
 #define to_apr_device(d) container_of(d, struct apr_device, dev)
+#define svc_to_apr_device(d) container_of(d, struct apr_device, svc)
 
 struct apr_driver {
 	int	(*probe)(struct apr_device *sl);
-- 
2.21.0

