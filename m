Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D79334F1010
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 09:40:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377703AbiDDHmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 03:42:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377704AbiDDHmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 03:42:31 -0400
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7A78237C9
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 00:40:34 -0700 (PDT)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
        by mx0a-00128a01.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 2347Y1lW002566;
        Mon, 4 Apr 2022 03:40:25 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
        by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3f6gb6ud19-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 04 Apr 2022 03:40:25 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
        by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 2347eNx6049220
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 4 Apr 2022 03:40:23 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Mon, 4 Apr 2022 03:40:23 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Mon, 4 Apr 2022 03:40:22 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Mon, 4 Apr 2022 03:40:22 -0400
Received: from nsa.ad.analog.com ([10.44.3.67])
        by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 2347eDC3024177;
        Mon, 4 Apr 2022 03:40:16 -0400
From:   =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To:     <devicetree@vger.kernel.org>
CC:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>
Subject: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Date:   Mon, 4 Apr 2022 09:40:55 +0200
Message-ID: <20220404074055.95618-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: LnauomJZ9d7Pq94VCQeq4VbL6k0PpUJB
X-Proofpoint-ORIG-GUID: LnauomJZ9d7Pq94VCQeq4VbL6k0PpUJB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-04-04_02,2022-03-31_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=635
 suspectscore=0 phishscore=0 spamscore=0 clxscore=1011 bulkscore=0
 impostorscore=0 mlxscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204040043
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We should not break overlay notifications on NOTIFY_OK otherwise we might
break on the first fragment. As NOTIFY_OK is not zero, we need to
account for that when looking for errors.

Fixes: a1d19bd4cf1fe ("of: overlay: pr_err from return NOTIFY_OK to overlay apply/remove")
Signed-off-by: Nuno Sá <nuno.sa@analog.com>
---
 drivers/of/overlay.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d80160cf34bb..0b2d47598cfb 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -170,9 +170,9 @@ static int overlay_notify(struct overlay_changeset *ovcs,
 
 		ret = blocking_notifier_call_chain(&overlay_notify_chain,
 						   action, &nd);
-		if (ret == NOTIFY_OK || ret == NOTIFY_STOP)
+		if (ret == NOTIFY_STOP)
 			return 0;
-		if (ret) {
+		if (ret && ret != NOTIFY_OK) {
 			ret = notifier_to_errno(ret);
 			pr_err("overlay changeset %s notifier error %d, target: %pOF\n",
 			       of_overlay_action_name[action], ret, nd.target);
-- 
2.35.1

