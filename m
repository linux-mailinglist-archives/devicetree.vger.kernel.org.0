Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7576C10A7D2
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2019 02:14:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725851AbfK0BOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Nov 2019 20:14:34 -0500
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:23146 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725794AbfK0BOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Nov 2019 20:14:33 -0500
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xAR1C9qJ049696;
        Tue, 26 Nov 2019 20:14:24 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2whcxqurjd-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 26 Nov 2019 20:14:23 -0500
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xAR1CVGZ050569;
        Tue, 26 Nov 2019 20:14:23 -0500
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2whcxqurhw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 26 Nov 2019 20:14:23 -0500
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
        by ppma04wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xAR1A4Lv006130;
        Wed, 27 Nov 2019 01:14:22 GMT
Received: from b03cxnp08028.gho.boulder.ibm.com (b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
        by ppma04wdc.us.ibm.com with ESMTP id 2wevd78a46-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 27 Nov 2019 01:14:22 +0000
Received: from b03ledav002.gho.boulder.ibm.com (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
        by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xAR1ELUw31981842
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 27 Nov 2019 01:14:21 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 53355136051;
        Wed, 27 Nov 2019 01:14:21 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id C6BA913604F;
        Wed, 27 Nov 2019 01:14:20 +0000 (GMT)
Received: from [9.70.82.143] (unknown [9.70.82.143])
        by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTP;
        Wed, 27 Nov 2019 01:14:20 +0000 (GMT)
Subject: [PATCH 11/14] powerpc/vas: Do not use default credits for receive
 window
From:   Haren Myneni <haren@linux.vnet.ibm.com>
To:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        mpe@ellerman.id.au, npiggin@gmail.com, mikey@neuling.org,
        herbert@gondor.apana.org.au
Cc:     sukadev@linux.vnet.ibm.com, hbabu@us.ibm.com
Content-Type: text/plain; charset="UTF-8"
Date:   Tue, 26 Nov 2019 17:13:02 -0800
Message-ID: <1574817182.13250.19.camel@hbabu-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-26_08:2019-11-26,2019-11-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=886
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1911270008
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


System checkstops if RxFIFO overruns with more requests than the
maximum possible number of CRBs allowed in FIFO at any time. So
max credits value (rxattr.wcreds_max) is set and is passed to
vas_rx_win_open() by the the driver.

Signed-off-by: Haren Myneni <haren@us.ibm.com>
---
 arch/powerpc/platforms/powernv/vas-window.c | 4 ++--
 arch/powerpc/platforms/powernv/vas.h        | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/platforms/powernv/vas-window.c b/arch/powerpc/platforms/powernv/vas-window.c
index ad3104c..ca208a3 100644
--- a/arch/powerpc/platforms/powernv/vas-window.c
+++ b/arch/powerpc/platforms/powernv/vas-window.c
@@ -782,7 +782,7 @@ static bool rx_win_args_valid(enum vas_cop_type cop,
 	if (attr->rx_fifo_size > VAS_RX_FIFO_SIZE_MAX)
 		return false;
 
-	if (attr->wcreds_max > VAS_RX_WCREDS_MAX)
+	if (!attr->wcreds_max)
 		return false;
 
 	if (attr->nx_win) {
@@ -888,7 +888,7 @@ struct vas_window *vas_rx_win_open(int vasid, enum vas_cop_type cop,
 	rxwin->nx_win = rxattr->nx_win;
 	rxwin->user_win = rxattr->user_win;
 	rxwin->cop = cop;
-	rxwin->wcreds_max = rxattr->wcreds_max ?: VAS_WCREDS_DEFAULT;
+	rxwin->wcreds_max = rxattr->wcreds_max;
 
 	init_winctx_for_rxwin(rxwin, rxattr, &winctx);
 	init_winctx_regs(rxwin, &winctx);
diff --git a/arch/powerpc/platforms/powernv/vas.h b/arch/powerpc/platforms/powernv/vas.h
index 03a1c9f..75bea1d 100644
--- a/arch/powerpc/platforms/powernv/vas.h
+++ b/arch/powerpc/platforms/powernv/vas.h
@@ -101,11 +101,9 @@
 /*
  * Initial per-process credits.
  * Max send window credits:    4K-1 (12-bits in VAS_TX_WCRED)
- * Max receive window credits: 64K-1 (16 bits in VAS_LRX_WCRED)
  *
  * TODO: Needs tuning for per-process credits
  */
-#define VAS_RX_WCREDS_MAX		((64 << 10) - 1)
 #define VAS_TX_WCREDS_MAX		((4 << 10) - 1)
 #define VAS_WCREDS_DEFAULT		(1 << 10)
 
-- 
1.8.3.1



