Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44225EC4B0
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 15:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232777AbiI0Nk2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 09:40:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232837AbiI0NkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 09:40:21 -0400
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86511B5E5D
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:40:18 -0700 (PDT)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.53])
        by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4McLHP4XT2z1P6vB;
        Tue, 27 Sep 2022 21:36:01 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 27 Sep
 2022 21:40:16 +0800
From:   Yuan Can <yuancan@huawei.com>
To:     <robh+dt@kernel.org>, <frowand.list@gmail.com>,
        <devicetree@vger.kernel.org>
CC:     <yuancan@huawei.com>
Subject: [PATCH] of: fdt: Remove unused struct fdt_scan_status
Date:   Tue, 27 Sep 2022 13:37:39 +0000
Message-ID: <20220927133739.98493-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After commit bba04d965d06("of/fdt: remove unused of_scan_flat_dt_by_path"), no
one use struct fdt_scan_status, so remove it.

Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/of/fdt.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 8e359e75efd8..7b571a631639 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -828,15 +828,6 @@ uint32_t __init of_get_flat_dt_phandle(unsigned long node)
 	return fdt_get_phandle(initial_boot_params, node);
 }
 
-struct fdt_scan_status {
-	const char *name;
-	int namelen;
-	int depth;
-	int found;
-	int (*iterator)(unsigned long node, const char *uname, int depth, void *data);
-	void *data;
-};
-
 const char * __init of_flat_dt_get_machine_name(void)
 {
 	const char *name;
-- 
2.17.1

