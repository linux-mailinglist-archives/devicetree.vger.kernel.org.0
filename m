Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6408631910
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 04:55:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiKUDzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 22:55:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiKUDzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 22:55:25 -0500
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A9620358
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 19:55:24 -0800 (PST)
Received: from kwepemi500024.china.huawei.com (unknown [172.30.72.54])
        by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NFtjZ0dCxzqSZZ;
        Mon, 21 Nov 2022 11:51:30 +0800 (CST)
Received: from huawei.com (10.175.103.91) by kwepemi500024.china.huawei.com
 (7.221.188.100) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 21 Nov
 2022 11:55:22 +0800
From:   Zeng Heng <zengheng4@huawei.com>
To:     <robh+dt@kernel.org>, <frowand.list@gmail.com>
CC:     <devicetree@vger.kernel.org>, <zengheng4@huawei.com>,
        <liwei391@huawei.com>
Subject: [PATCH v2] of: overlay: fix memory leak in add_changeset_node()
Date:   Mon, 21 Nov 2022 11:53:35 +0800
Message-ID: <20221121035335.809316-1-zengheng4@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <f0c641ee-b20d-48dd-c65f-2b372eae0b06@huawei.com>
References: <f0c641ee-b20d-48dd-c65f-2b372eae0b06@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500024.china.huawei.com (7.221.188.100)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When of_changeset_attach_node() returns fail and tchild is
over of life cycle which is duplicated by __of_node_dup(),
it needs to call of_node_put() to release tchild in
error handle route.

Otherwise, there are some memory leak reported about the node:

unreferenced object 0xffff88810cd1e800 (size 256):
  backtrace:
    kmalloc_trace
    __of_node_dup
    add_changeset_node (inlined)
    build_changeset_next_level

unreferenced object 0xffff888113721240 (size 16):
  backtrace:
    __kmalloc_node_track_caller
    kstrdup
    __of_node_dup
    add_changeset_node (inlined)
    build_changeset_next_level

unreferenced object 0xffff88810a38d400 (size 128):
  backtrace:
    kmalloc_trace
    __of_prop_dup
    add_changeset_property
    build_changeset_next_level

Fixes: 0290c4ca2536 ("of: overlay: rename identifiers to more reflect what they do")
Signed-off-by: Zeng Heng <zengheng4@huawei.com>
---
 drivers/of/overlay.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index bd8ff4df723d..a5189a0ec0a3 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -436,8 +436,10 @@ static int add_changeset_node(struct overlay_changeset *ovcs,
 		of_node_set_flag(tchild, OF_OVERLAY);
 
 		ret = of_changeset_attach_node(&ovcs->cset, tchild);
-		if (ret)
+		if (ret) {
+			of_node_put(tchild);
 			return ret;
+		}
 
 		target_child.np = tchild;
 		target_child.in_livetree = false;
-- 
2.25.1

