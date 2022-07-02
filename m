Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70EA2563D95
	for <lists+devicetree@lfdr.de>; Sat,  2 Jul 2022 03:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbiGBBpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 21:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbiGBBpF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 21:45:05 -0400
Received: from m15113.mail.126.com (m15113.mail.126.com [220.181.15.113])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 420912FFE9
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 18:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
        s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=jDDYR
        CttHQnQCQgonIIxRbg5MV4N0kxy7fvlxNsqxms=; b=EVP+Pm6SXrYSveuzn5+91
        cKtszZ0mFzRHRohVQoeh8eJ+u+Fv/bgtqLeePiHstumYl+tB9RjDZL1oeQfSQn3j
        AI6ZJQJoi/9rgJ7zl0oadGoD6ntZeDutuKVvYnrwVqmPEeubqKQ/dp7hSRzyWHYS
        40cMFvBrGmV8/4R0kcVQ64=
Received: from localhost.localdomain (unknown [124.16.139.61])
        by smtp3 (Coremail) with SMTP id DcmowABX85QRo79i87hdEQ--.62291S2;
        Sat, 02 Jul 2022 09:44:50 +0800 (CST)
From:   Liang He <windhl@126.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com,
        devicetree@vger.kernel.org, windhl@126.com, linmq006@gmail.com
Subject: [PATCH] of: device: Fix missing of_node_put() in of_dma_set_restricted_buffer
Date:   Sat,  2 Jul 2022 09:44:49 +0800
Message-Id: <20220702014449.263772-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: DcmowABX85QRo79i87hdEQ--.62291S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF48ur4xtryfCr4ktFy7Wrg_yoWfArb_GF
        12vFZrXrnYvFn3Wr9xtrWfu3sayr4SgrWrXF40qas3ta12vry5XF15Xry5Ka4j9rW7AF98
        Xr1Dtr40yF4UWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
        9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xR_k9NDUUUUU==
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbizhMyF18RPal1JQAAsy
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We should use of_node_put() for the reference 'node' returned by
of_parse_phandle() which will increase the refcount.

Fixes: fec9b625095f ("of: Add plumbing for restricted DMA pool")
Co-authored-by: Miaoqian Lin <linmq006@gmail.com>
Signed-off-by: Liang He <windhl@126.com>
---
 drivers/of/device.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 874f031442dc..75b6cbffa755 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -81,8 +81,11 @@ of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
 		 * restricted-dma-pool region is allowed.
 		 */
 		if (of_device_is_compatible(node, "restricted-dma-pool") &&
-		    of_device_is_available(node))
+		    of_device_is_available(node)) {
+			of_node_put(node);
 			break;
+		}
+		of_node_put(node);
 	}
 
 	/*
-- 
2.25.1

