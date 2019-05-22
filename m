Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EACAC25DAB
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 07:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726208AbfEVFfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 01:35:50 -0400
Received: from hqemgate16.nvidia.com ([216.228.121.65]:4460 "EHLO
        hqemgate16.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725796AbfEVFfu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 01:35:50 -0400
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
        id <B5ce4dfb50001>; Tue, 21 May 2019 22:35:49 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Tue, 21 May 2019 22:35:49 -0700
X-PGP-Universal: processed;
        by hqpgpgate101.nvidia.com on Tue, 21 May 2019 22:35:49 -0700
Received: from HQMAIL102.nvidia.com (172.18.146.10) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 May
 2019 05:35:49 +0000
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL102.nvidia.com
 (172.18.146.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 May
 2019 05:35:49 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 22 May 2019 05:35:48 +0000
Received: from puneets-dt1.nvidia.com (Not Verified[10.24.229.31]) by hqnvemgw01.nvidia.com with Trustwave SEG (v7,5,8,10121)
        id <B5ce4dfb30001>; Tue, 21 May 2019 22:35:48 -0700
From:   Puneet Saxena <puneets@nvidia.com>
To:     <pantelis.antoniou@konsulko.com>, <frowand.list@gmail.com>,
        <devicetree@vger.kernel.org>
CC:     <treding@nvidia.com>, <vdumpa@nvidia.com>, <snikam@nvidia.com>
Subject: [PATCH] of: resered-memory: ignore disabled memory-region nodes
Date:   Wed, 22 May 2019 11:05:53 +0530
Message-ID: <1558503353-13179-2-git-send-email-puneets@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558503353-13179-1-git-send-email-puneets@nvidia.com>
References: <1558503353-13179-1-git-send-email-puneets@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
Content-Type: text/plain
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1558503349; bh=gKdluwWVGtVfqPPLTliJmoK1AhHLKonxdCpFX7NFk9M=;
        h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
         In-Reply-To:References:X-NVConfidentiality:MIME-Version:
         Content-Type;
        b=XouI1rTCVgGINSzLiJGeAFpPeJ6Ved6QskdesH23E3TI7Eggc3u6lsQ/xE0tdVkzL
         8t75u8zvZ7p5Kue4bitXhHdMyJidJXROUvNs/iu1ayf08uj7MiE7uEH1H5FkrBZxCi
         hXH2D7tWogbTGo+RtN/bKFB8sAfh4ditrCqQv0Z83a2TuxpHfjlYtMqt1jwfIuvGwj
         YCTMX+jZAXRrBdnloLQNT9oKMIzHWRa/v7OfUdFmLoVlFTj18vOuEWOfeDI2rTh2Pg
         i1ZsNbvhqFuQRg+omg+Imi+nJhoQoruBN1NAKTnGOACw+pt2R11zrHOhjMkjZwJonm
         gZYxFQElWEl7Q==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krishna Reddy <vdumpa@nvidia.com>

Ignore disabled nodes in the memory-region nodes list and continue
to initialize the rest of enabled nodes.

Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 drivers/of/of_reserved_mem.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 1977ee0adcb1..58d95d774e3b 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -314,6 +314,7 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
 	struct device_node *target;
 	struct reserved_mem *rmem;
 	int ret;
+	const char *status;
 
 	if (!np || !dev)
 		return -EINVAL;
@@ -322,6 +323,10 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
 	if (!target)
 		return -ENODEV;
 
+	status = of_get_property(target, "status", NULL);
+	if (status && strcmp(status, "okay") != 0 && strcmp(status, "ok") != 0)
+		return 0;
+
 	rmem = __find_rmem(target);
 	of_node_put(target);
 
-- 
2.7.4

