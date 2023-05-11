Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6BB66FF588
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 17:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238629AbjEKPJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 11:09:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238542AbjEKPJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 11:09:07 -0400
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F8A3C12
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 08:09:01 -0700 (PDT)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34BF15jQ020233;
        Thu, 11 May 2023 11:08:49 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
        by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3qgbyh0ndt-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 11 May 2023 11:08:49 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
        by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 34BF8jE3064968
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 11 May 2023 11:08:45 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 11 May 2023 11:08:44 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Thu, 11 May 2023 11:08:44 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Thu, 11 May 2023 11:08:44 -0400
Received: from nsa.ad.analog.com ([10.44.3.102])
        by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 34BF8YRj027099;
        Thu, 11 May 2023 11:08:39 -0400
From:   Nuno Sa <nuno.sa@analog.com>
To:     <devicetree@vger.kernel.org>
CC:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 1/1] of: dynamic: allow freeing of_nodes after the overlay changeset
Date:   Thu, 11 May 2023 17:10:47 +0200
Message-ID: <20230511151047.1779841-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230511151047.1779841-1-nuno.sa@analog.com>
References: <20230511151047.1779841-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: -1vp1oYNkp8yXLW5X9xPbw0CRyOF0gE7
X-Proofpoint-ORIG-GUID: -1vp1oYNkp8yXLW5X9xPbw0CRyOF0gE7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-11_12,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 suspectscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 mlxlogscore=597 clxscore=1011 malwarescore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305110131
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are valid cases where we might get in here with an unexpected
refcount. One example are devlinks between suppliers <-> consumers.
When a link is created, it will grab a reference to both the supplier and
the consumer devices (which can, potentially, hold a reference to it's
of_node) and this reference is not synchronously dropped when unbinding the
device from the driver. Instead, a work item is queued (see
devlink_dev_release()). This async nature will make that
__of_changeset_entry_destroy() is reached with a refcount > 1. But,
eventually, all the refcounts are released and of_node_release() is
reached.

So, the best we can do is to just warn for a possible leak and "inform" the
node that the changeset is already gone so, if we do reach
of_node_release(), we can free the node instead assuming something bad
has happened.

Signed-off-by: Nuno Sa <nuno.sa@analog.com>
---
 drivers/of/dynamic.c | 31 +++++++++++++++++++++++++++----
 include/linux/of.h   |  1 +
 2 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index e311d406b170..354e641f63df 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -360,8 +360,10 @@ void of_node_release(struct kobject *kobj)
 		return;
 
 	if (of_node_check_flag(node, OF_OVERLAY)) {
-
-		if (!of_node_check_flag(node, OF_OVERLAY_FREE_CSET)) {
+		if (of_node_check_flag(node, OF_OVERLAY_CSET_GONE)) {
+			pr_info("INFO: node %s is now being freed after overlay changeset. All should be fine now...\n",
+				node->full_name);
+		} else if (!of_node_check_flag(node, OF_OVERLAY_FREE_CSET)) {
 			/* premature refcount of zero, do not free memory */
 			pr_err("ERROR: memory leak before free overlay changeset,  %pOF\n",
 			       node);
@@ -492,8 +494,29 @@ static void __of_changeset_entry_destroy(struct of_changeset_entry *ce)
 	if (ce->action == OF_RECONFIG_ATTACH_NODE &&
 	    of_node_check_flag(ce->np, OF_OVERLAY)) {
 		if (kref_read(&ce->np->kobj.kref) > 1) {
-			pr_err("ERROR: memory leak, expected refcount 1 instead of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node %pOF\n",
-			       kref_read(&ce->np->kobj.kref), ce->np);
+			pr_warn("WARNING: Possible memory leak, expected refcount 1 instead of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node %pOF\n",
+				kref_read(&ce->np->kobj.kref), ce->np);
+			/*
+			 * There are valid cases where we might get in here with
+			 * an unexpected refcount. One example are devlinks
+			 * between suppliers <-> consumers. When a link is
+			 * created, it will grab a reference to both the
+			 * supplier and the consumer devices (which can,
+			 * potentially, hold a reference to it's of_node) and
+			 * this reference is not synchronously dropped when
+			 * unbinding the device from the driver. Instead, a work
+			 * item is queued (see devlink_dev_release()). This
+			 * async nature will make that
+			 * __of_changeset_entry_destroy() is reached with a
+			 * refcount > 1. But, eventually, all the refcounts are
+			 * released and of_node_release() is reached.
+			 *
+			 * So, the best we can do is to just warn for a possible
+			 * leak and "inform" the node that the changeset is already
+			 * gone so, if we do reach of_node_release(), we can free
+			 * the node.
+			 */
+			of_node_set_flag(ce->np, OF_OVERLAY_CSET_GONE);
 		} else {
 			of_node_set_flag(ce->np, OF_OVERLAY_FREE_CSET);
 		}
diff --git a/include/linux/of.h b/include/linux/of.h
index 6ecde0515677..4f562b3f601d 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -152,6 +152,7 @@ extern struct device_node *of_stdout;
 #define OF_POPULATED_BUS	4 /* platform bus created for children */
 #define OF_OVERLAY		5 /* allocated for an overlay */
 #define OF_OVERLAY_FREE_CSET	6 /* in overlay cset being freed */
+#define OF_OVERLAY_CSET_GONE	7 /* overlay cset already freed */
 
 #define OF_BAD_ADDR	((u64)-1)
 
-- 
2.40.1

