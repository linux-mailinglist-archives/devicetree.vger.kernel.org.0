Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 022B212244A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2019 06:53:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727472AbfLQFv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 00:51:57 -0500
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:50918 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727175AbfLQFv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Dec 2019 00:51:57 -0500
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id xBH5l124033318;
        Tue, 17 Dec 2019 00:51:43 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wwe610081-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 00:51:42 -0500
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xBH5mGXG036212;
        Tue, 17 Dec 2019 00:51:42 -0500
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2wwe61007s-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 00:51:42 -0500
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
        by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xBH5nr99028635;
        Tue, 17 Dec 2019 05:51:41 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com [9.57.198.28])
        by ppma04dal.us.ibm.com with ESMTP id 2wvqc6g06u-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 17 Dec 2019 05:51:41 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com [9.57.199.111])
        by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xBH5peF937093712
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 17 Dec 2019 05:51:40 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id C3E5AAC059;
        Tue, 17 Dec 2019 05:51:40 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 13E10AC060;
        Tue, 17 Dec 2019 05:51:40 +0000 (GMT)
Received: from [9.70.82.143] (unknown [9.70.82.143])
        by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
        Tue, 17 Dec 2019 05:51:39 +0000 (GMT)
Subject: [PATCH V3 03/13] powerpc/vas: Read interrupts and vas-port device
 tree properties
From:   Haren Myneni <haren@linux.ibm.com>
To:     mpe@ellerman.id.au
Cc:     hch@infradead.org, devicetree@vger.kernel.org, mikey@neuling.org,
        herbert@gondor.apana.org.au, npiggin@gmail.com,
        linuxppc-dev@lists.ozlabs.org, sukadev@linux.vnet.ibm.com
In-Reply-To: <1576561080.16318.6531.camel@hbabu-laptop>
References: <1576561080.16318.6531.camel@hbabu-laptop>
Content-Type: text/plain; charset="UTF-8"
Date:   Mon, 16 Dec 2019 21:49:48 -0800
Message-ID: <1576561788.16318.6534.camel@hbabu-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 impostorscore=0 suspectscore=3 adultscore=0 bulkscore=0 mlxlogscore=999
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1912170052
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Read interrupts and vas-port device tree properties per each VAS
instance. NX generates an interrupt when it sees page fault on the
request buffer. Interrupts property is used to setup IRQ for handing
the fault and set port value for each user space send window.

Signed-off-by: Haren Myneni <haren@us.ibm.com>
---
 arch/powerpc/platforms/powernv/vas.c | 40 ++++++++++++++++++++++++++++--------
 arch/powerpc/platforms/powernv/vas.h |  2 ++
 2 files changed, 34 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/platforms/powernv/vas.c b/arch/powerpc/platforms/powernv/vas.c
index ed9cc6d..40d8213 100644
--- a/arch/powerpc/platforms/powernv/vas.c
+++ b/arch/powerpc/platforms/powernv/vas.c
@@ -25,10 +25,11 @@
 
 static int init_vas_instance(struct platform_device *pdev)
 {
-	int rc, cpu, vasid;
-	struct resource *res;
-	struct vas_instance *vinst;
 	struct device_node *dn = pdev->dev.of_node;
+	int rc, cpu, vasid, nresources = 5;
+	struct vas_instance *vinst;
+	struct resource *res;
+	uint64_t port;
 
 	rc = of_property_read_u32(dn, "ibm,vas-id", &vasid);
 	if (rc) {
@@ -36,7 +37,18 @@ static int init_vas_instance(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	if (pdev->num_resources != 4) {
+	rc = of_property_read_u64(dn, "ibm,vas-port", &port);
+	if (rc) {
+		pr_err("No ibm,vas-port property for %s?\n", pdev->name);
+		/* No interrupts property */
+		nresources = 4;
+	}
+
+	/*
+	 * interrupts property is available with 'ibm,vas-port' property.
+	 * 4 Resources and 1 IRQ if interrupts property is available.
+	 */
+	if (pdev->num_resources != nresources) {
 		pr_err("Unexpected DT configuration for [%s, %d]\n",
 				pdev->name, vasid);
 		return -ENODEV;
@@ -51,6 +63,7 @@ static int init_vas_instance(struct platform_device *pdev)
 	mutex_init(&vinst->mutex);
 	vinst->vas_id = vasid;
 	vinst->pdev = pdev;
+	vinst->irq_port = port;
 
 	res = &pdev->resource[0];
 	vinst->hvwc_bar_start = res->start;
@@ -66,12 +79,23 @@ static int init_vas_instance(struct platform_device *pdev)
 		pr_err("Bad 'paste_win_id_shift' in DT, %llx\n", res->end);
 		goto free_vinst;
 	}
-
 	vinst->paste_win_id_shift = 63 - res->end;
 
-	pr_devel("Initialized instance [%s, %d], paste_base 0x%llx, "
-			"paste_win_id_shift 0x%llx\n", pdev->name, vasid,
-			vinst->paste_base_addr, vinst->paste_win_id_shift);
+	/* interrupts property */
+	if (pdev->num_resources == 5) {
+		res = &pdev->resource[4];
+		vinst->virq = res->start;
+		if (vinst->virq <= 0) {
+			pr_err("IRQ resource is not available for [%s, %d]\n",
+				pdev->name, vasid);
+			vinst->virq = 0;
+		}
+	}
+
+	pr_devel("Initialized instance [%s, %d] paste_base 0x%llx paste_win_id_shift 0x%llx IRQ %d Port 0x%llx\n",
+			pdev->name, vasid, vinst->paste_base_addr,
+			vinst->paste_win_id_shift, vinst->virq,
+			vinst->irq_port);
 
 	for_each_possible_cpu(cpu) {
 		if (cpu_to_chip_id(cpu) == of_get_ibm_chip_id(dn))
diff --git a/arch/powerpc/platforms/powernv/vas.h b/arch/powerpc/platforms/powernv/vas.h
index 5574aec..598608b 100644
--- a/arch/powerpc/platforms/powernv/vas.h
+++ b/arch/powerpc/platforms/powernv/vas.h
@@ -313,6 +313,8 @@ struct vas_instance {
 	u64 paste_base_addr;
 	u64 paste_win_id_shift;
 
+	u64 irq_port;
+	int virq;
 	struct mutex mutex;
 	struct vas_window *rxwin[VAS_COP_TYPE_MAX];
 	struct vas_window *windows[VAS_WINDOWS_PER_CHIP];
-- 
1.8.3.1



