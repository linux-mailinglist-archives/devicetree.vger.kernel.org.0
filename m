Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 869765F06DC
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 10:52:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiI3Iwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 04:52:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbiI3Iwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 04:52:41 -0400
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71E84166F27
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 01:52:40 -0700 (PDT)
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.53])
        by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4Mf3pM4gl3zHpvw;
        Fri, 30 Sep 2022 16:50:19 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 16:52:38 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Fri, 30 Sep
 2022 16:52:38 +0800
From:   Yang Yingliang <yangyingliang@huawei.com>
To:     <devicetree@vger.kernel.org>
CC:     <robh+dt@kernel.org>, <frowand.list@gmail.com>,
        <yangyingliang@huawei.com>
Subject: [PATCH -next 1/2] of/address: introduce of_address_count() helper
Date:   Fri, 30 Sep 2022 17:08:44 +0800
Message-ID: <20220930090845.503815-2-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220930090845.503815-1-yangyingliang@huawei.com>
References: <20220930090845.503815-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce of_address_count() helper to count the IO resources
instead of open-coding it.

Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/of/address.c       | 11 +++++++++++
 include/linux/of_address.h |  7 +++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 96f0a12e507c..e32846a9a8d5 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -848,6 +848,17 @@ int of_address_to_resource(struct device_node *dev, int index,
 }
 EXPORT_SYMBOL_GPL(of_address_to_resource);
 
+int of_address_count(struct device_node *np)
+{
+	struct resource res;
+	int count = 0;
+
+	while (of_address_to_resource(np, count, &res) == 0)
+		count++;
+
+	return count;
+}
+
 /**
  * of_iomap - Maps the memory mapped IO for a given device_node
  * @np:		the device whose io range will be mapped
diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index 45598dbec269..63027e8f3397 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -43,6 +43,7 @@ extern u64 of_translate_dma_address(struct device_node *dev,
 extern u64 of_translate_address(struct device_node *np, const __be32 *addr);
 extern int of_address_to_resource(struct device_node *dev, int index,
 				  struct resource *r);
+extern int of_address_count(struct device_node *np);
 extern void __iomem *of_iomap(struct device_node *device, int index);
 void __iomem *of_io_request_and_map(struct device_node *device,
 				    int index, const char *name);
@@ -127,6 +128,7 @@ static inline bool of_dma_is_coherent(struct device_node *np)
 #ifdef CONFIG_OF
 extern int of_address_to_resource(struct device_node *dev, int index,
 				  struct resource *r);
+extern int of_address_count(struct device_node *np);
 void __iomem *of_iomap(struct device_node *node, int index);
 #else
 static inline int of_address_to_resource(struct device_node *dev, int index,
@@ -139,6 +141,11 @@ static inline void __iomem *of_iomap(struct device_node *device, int index)
 {
 	return NULL;
 }
+
+static inline int of_address_count(struct device_node *np)
+{
+	return 0;
+}
 #endif
 #define of_range_parser_init of_pci_range_parser_init
 
-- 
2.25.1

