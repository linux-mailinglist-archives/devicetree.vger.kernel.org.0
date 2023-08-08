Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68E78774513
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231852AbjHHSg3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:36:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232653AbjHHSgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:36:06 -0400
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4EAB2D1DC
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 11:01:57 -0700 (PDT)
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.55])
        by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RKp6t6l0wzVjMr;
        Tue,  8 Aug 2023 17:39:18 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 8 Aug
 2023 17:41:12 +0800
From:   Ruan Jinjie <ruanjinjie@huawei.com>
To:     <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
CC:     <ruanjinjie@huawei.com>
Subject: [PATCH -next] of: unittest: Remove redundant of_match_ptr()
Date:   Tue, 8 Aug 2023 17:40:43 +0800
Message-ID: <20230808094043.2732158-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver depends on CONFIG_OF, it is not necessary to use
of_match_ptr() here.

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/of/unittest.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index e5b0eea8011c..3444386ceb02 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1696,7 +1696,7 @@ static struct platform_driver unittest_driver = {
 	.remove_new		= unittest_remove,
 	.driver = {
 		.name		= "unittest",
-		.of_match_table	= of_match_ptr(unittest_match),
+		.of_match_table	= unittest_match,
 	},
 };
 
@@ -1797,7 +1797,7 @@ static struct platform_driver unittest_gpio_driver = {
 	.remove_new = unittest_gpio_remove,
 	.driver	= {
 		.name		= "unittest-gpio",
-		.of_match_table	= of_match_ptr(unittest_gpio_id),
+		.of_match_table	= unittest_gpio_id,
 	},
 };
 
@@ -2624,7 +2624,7 @@ static struct platform_driver unittest_i2c_bus_driver = {
 	.remove_new		= unittest_i2c_bus_remove,
 	.driver = {
 		.name		= "unittest-i2c-bus",
-		.of_match_table	= of_match_ptr(unittest_i2c_bus_match),
+		.of_match_table	= unittest_i2c_bus_match,
 	},
 };
 
-- 
2.34.1

