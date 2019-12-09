Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF47F116575
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 04:34:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726860AbfLIDeG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Dec 2019 22:34:06 -0500
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:44624 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726748AbfLIDeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Dec 2019 22:34:06 -0500
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xB93Wxpq017889;
        Sun, 8 Dec 2019 22:33:52 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wr9g9mrx3-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sun, 08 Dec 2019 22:33:51 -0500
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xB93Xpkq019599;
        Sun, 8 Dec 2019 22:33:51 -0500
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wr9g9mrwr-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sun, 08 Dec 2019 22:33:51 -0500
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
        by ppma04wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xB93VhdP004760;
        Mon, 9 Dec 2019 03:33:50 GMT
Received: from b03cxnp08027.gho.boulder.ibm.com (b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
        by ppma04wdc.us.ibm.com with ESMTP id 2wr3q5y9nf-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 09 Dec 2019 03:33:50 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xB93Xnj961407624
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 9 Dec 2019 03:33:49 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 292C278063;
        Mon,  9 Dec 2019 03:33:49 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 9E2CC7805E;
        Mon,  9 Dec 2019 03:33:48 +0000 (GMT)
Received: from [9.70.82.143] (unknown [9.70.82.143])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon,  9 Dec 2019 03:33:48 +0000 (GMT)
Subject: [PATCH V2 06/13] powerpc/vas: Register NX with fault window ID and
 IRQ port value
From:   Haren Myneni <haren@linux.ibm.com>
To:     mpe@ellerman.id.au
Cc:     hch@infradead.org, mikey@neuling.org, npiggin@gmail.com,
        herbert@gondor.apana.org.au, linuxppc-dev@lists.ozlabs.org,
        devicetree@vger.kernel.org, sukadev@linux.vnet.ibm.com
In-Reply-To: <1575861522.16318.9.camel@hbabu-laptop>
References: <1575861522.16318.9.camel@hbabu-laptop>
Content-Type: text/plain; charset="UTF-8"
Date:   Sun, 08 Dec 2019 19:32:10 -0800
Message-ID: <1575862330.16318.23.camel@hbabu-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-08_07:2019-12-05,2019-12-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 mlxscore=0 phishscore=0
 impostorscore=0 malwarescore=0 suspectscore=1 mlxlogscore=883
 clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912090029
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


For each user space send window, register NX with fault window ID
and port value so that NX paste CRBs in this fault FIFO when it
sees fault on the request buffer.

Signed-off-by: Sukadev Bhattiprolu <sukadev@linux.vnet.ibm.com>
Signed-off-by: Haren Myneni <haren@us.ibm.com>
---
 arch/powerpc/platforms/powernv/vas-window.c | 15 +++++++++++++--
 arch/powerpc/platforms/powernv/vas.h        | 15 +++++++++++++++
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/platforms/powernv/vas-window.c b/arch/powerpc/platforms/powernv/vas-window.c
index cec1b41..e36c5d2 100644
--- a/arch/powerpc/platforms/powernv/vas-window.c
+++ b/arch/powerpc/platforms/powernv/vas-window.c
@@ -373,7 +373,7 @@ int init_winctx_regs(struct vas_window *window, struct vas_winctx *winctx)
 	init_xlate_regs(window, winctx->user_win);
 
 	val = 0ULL;
-	val = SET_FIELD(VAS_FAULT_TX_WIN, val, 0);
+	val = SET_FIELD(VAS_FAULT_TX_WIN, val, winctx->fault_win_id);
 	write_hvwc_reg(window, VREG(FAULT_TX_WIN), val);
 
 	/* In PowerNV, interrupts go to HV. */
@@ -748,6 +748,8 @@ static void init_winctx_for_rxwin(struct vas_window *rxwin,
 
 	winctx->min_scope = VAS_SCOPE_LOCAL;
 	winctx->max_scope = VAS_SCOPE_VECTORED_GROUP;
+	if (rxwin->vinst->virq)
+		winctx->irq_port = rxwin->vinst->irq_port;
 }
 
 static bool rx_win_args_valid(enum vas_cop_type cop,
@@ -945,13 +947,22 @@ static void init_winctx_for_txwin(struct vas_window *txwin,
 	winctx->lpid = txattr->lpid;
 	winctx->pidr = txattr->pidr;
 	winctx->rx_win_id = txwin->rxwin->winid;
+	/*
+	 * IRQ and fault window setup is successful. Set fault window
+	 * for the send window so that ready to handle faults.
+	 */
+	if (txwin->vinst->virq)
+		winctx->fault_win_id = txwin->vinst->fault_win->winid;
 
 	winctx->dma_type = VAS_DMA_TYPE_INJECT;
 	winctx->tc_mode = txattr->tc_mode;
 	winctx->min_scope = VAS_SCOPE_LOCAL;
 	winctx->max_scope = VAS_SCOPE_VECTORED_GROUP;
+	if (txwin->vinst->virq)
+		winctx->irq_port = txwin->vinst->irq_port;
 
-	winctx->pswid = 0;
+	winctx->pswid = txattr->pswid ? txattr->pswid :
+			encode_pswid(txwin->vinst->vas_id, txwin->winid);
 }
 
 static bool tx_win_args_valid(enum vas_cop_type cop,
diff --git a/arch/powerpc/platforms/powernv/vas.h b/arch/powerpc/platforms/powernv/vas.h
index 879f5b4..2621df1 100644
--- a/arch/powerpc/platforms/powernv/vas.h
+++ b/arch/powerpc/platforms/powernv/vas.h
@@ -455,6 +455,21 @@ static inline u64 read_hvwc_reg(struct vas_window *win,
 	return in_be64(win->hvwc_map+reg);
 }
 
+/*
+ * Encode/decode the Partition Send Window ID (PSWID) for a window in
+ * a way that we can uniquely identify any window in the system. i.e.
+ * we should be able to locate the 'struct vas_window' given the PSWID.
+ *
+ *	Bits	Usage
+ *	0:7	VAS id (8 bits)
+ *	8:15	Unused, 0 (3 bits)
+ *	16:31	Window id (16 bits)
+ */
+static inline u32 encode_pswid(int vasid, int winid)
+{
+	return ((u32)winid | (vasid << (31 - 7)));
+}
+
 static inline void decode_pswid(u32 pswid, int *vasid, int *winid)
 {
 	if (vasid)
-- 
1.8.3.1



