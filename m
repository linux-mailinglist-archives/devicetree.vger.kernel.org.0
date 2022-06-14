Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30E2C54B5BB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 18:17:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356579AbiFNQNR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 12:13:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239104AbiFNQNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 12:13:16 -0400
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0DCA37023
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 09:13:15 -0700 (PDT)
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25EFxJQM019813;
        Tue, 14 Jun 2022 16:13:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=Nxvw0vI52zdFiyKDJGm9tHdcNE3KUHS1DgqLcSIiPUY=;
 b=KLRD6s48J8sjDtxxzJ/6BS6il1ssLepYXqxRuxXSW58BRmM11nmkCL3p/Da8kzT5wK4l
 VTgSkIBrL/OYTW5PTovIzVfp42447/XKkqC40zlo3PQ/YBL9N3380l07knTYsILetx1S
 VSINkGvLjvA48XET01Zg/Zdg8/1WsM0VcIMWXZ9tLw7eNU8IGyvLK7WUH2/QIPXfse1r
 ZU7Gsx26dtjzdDo5jxj9PIyt5fajlJDTPw9TmURcTh/Z6MOs0u73/vg9Ew0iIz2Gpjo4
 IfhlXTagivpdmINgkybfkg1pWk0WoIqo10X7fJr3jJOlxaBghwMpvS6WJz7lTjzdR/bq Ow== 
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
        by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3gpq775hfp-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:13:09 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
        by ppma04dal.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 25EG5dVH012343;
        Tue, 14 Jun 2022 16:13:08 GMT
Received: from b03cxnp08028.gho.boulder.ibm.com (b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
        by ppma04dal.us.ibm.com with ESMTP id 3gmjpa2qfq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:13:08 +0000
Received: from b03ledav001.gho.boulder.ibm.com (b03ledav001.gho.boulder.ibm.com [9.17.130.232])
        by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 25EGD5nL43450648
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 14 Jun 2022 16:13:06 GMT
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id E3F916E059;
        Tue, 14 Jun 2022 16:13:05 +0000 (GMT)
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 777A66E052;
        Tue, 14 Jun 2022 16:13:05 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
        by b03ledav001.gho.boulder.ibm.com (Postfix) with ESMTP;
        Tue, 14 Jun 2022 16:13:05 +0000 (GMT)
From:   Stefan Berger <stefanb@linux.ibm.com>
To:     kexec@lists.infradead.org, devicetree@vger.kernel.org
Cc:     nayna@linux.ibm.com, nasastry@in.ibm.com,
        Stefan Berger <stefanb@linux.ibm.com>,
        Jarkko Sakkinen <jarkko@kernel.org>,
        Jason Gunthorpe <jgg@ziepe.ca>
Subject: [PATCH 3/3] tpm: of: Call of_tpm_get_sml_parameters() to get base and size of log
Date:   Tue, 14 Jun 2022 12:12:58 -0400
Message-Id: <20220614161258.1741427-4-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220614161258.1741427-1-stefanb@linux.ibm.com>
References: <20220614161258.1741427-1-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 4n9XlA8ab2yBYgOAN98Gma0dYIsi1Yic
X-Proofpoint-GUID: 4n9XlA8ab2yBYgOAN98Gma0dYIsi1Yic
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-14_06,2022-06-13_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 adultscore=0 clxscore=1011 spamscore=0 bulkscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2204290000 definitions=main-2206140062
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simplify tpm_read_log_of() and call of_tpm_get_sml_parameters() to get
the base and size of the TPM log.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
Cc: Jarkko Sakkinen <jarkko@kernel.org>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
---
 drivers/char/tpm/eventlog/of.c | 31 +++++--------------------------
 1 file changed, 5 insertions(+), 26 deletions(-)

diff --git a/drivers/char/tpm/eventlog/of.c b/drivers/char/tpm/eventlog/of.c
index a9ce66d09a75..e272c7a0765f 100644
--- a/drivers/char/tpm/eventlog/of.c
+++ b/drivers/char/tpm/eventlog/of.c
@@ -12,6 +12,7 @@
 
 #include <linux/slab.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/tpm_eventlog.h>
 
 #include "../tpm.h"
@@ -20,11 +21,10 @@
 int tpm_read_log_of(struct tpm_chip *chip)
 {
 	struct device_node *np;
-	const u32 *sizep;
-	const u64 *basep;
 	struct tpm_bios_log *log;
 	u32 size;
 	u64 base;
+	int ret;
 
 	log = &chip->log;
 	if (chip->dev.parent && chip->dev.parent->of_node)
@@ -35,30 +35,9 @@ int tpm_read_log_of(struct tpm_chip *chip)
 	if (of_property_read_bool(np, "powered-while-suspended"))
 		chip->flags |= TPM_CHIP_FLAG_ALWAYS_POWERED;
 
-	sizep = of_get_property(np, "linux,sml-size", NULL);
-	basep = of_get_property(np, "linux,sml-base", NULL);
-	if (sizep == NULL && basep == NULL)
-		return -ENODEV;
-	if (sizep == NULL || basep == NULL)
-		return -EIO;
-
-	/*
-	 * For both vtpm/tpm, firmware has log addr and log size in big
-	 * endian format. But in case of vtpm, there is a method called
-	 * sml-handover which is run during kernel init even before
-	 * device tree is setup. This sml-handover function takes care
-	 * of endianness and writes to sml-base and sml-size in little
-	 * endian format. For this reason, vtpm doesn't need conversion
-	 * but physical tpm needs the conversion.
-	 */
-	if (of_property_match_string(np, "compatible", "IBM,vtpm") < 0 &&
-	    of_property_match_string(np, "compatible", "IBM,vtpm20") < 0) {
-		size = be32_to_cpup((__force __be32 *)sizep);
-		base = be64_to_cpup((__force __be64 *)basep);
-	} else {
-		size = *sizep;
-		base = *basep;
-	}
+	ret = of_tpm_get_sml_parameters(np, &base, &size);
+	if (ret < 0)
+		return ret;
 
 	if (size == 0) {
 		dev_warn(&chip->dev, "%s: Event log area empty\n", __func__);
-- 
2.35.1

