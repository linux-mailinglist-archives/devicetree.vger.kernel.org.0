Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B33354B593
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 18:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351452AbiFNQNQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 12:13:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239104AbiFNQNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 12:13:15 -0400
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB03236E08
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 09:13:14 -0700 (PDT)
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25EFxhjL007571;
        Tue, 14 Jun 2022 16:13:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-transfer-encoding; s=pp1;
 bh=E78IG4cRbqLow3MYIxw0pcZ+kMx5wM5SllcPS4iSq24=;
 b=Ksn/u2uwy/fmZn8VCZR/kz1ygivY8+/fyJM5PMbokDnBmNWyH/kg601xE7UaFvsViJDa
 D5TJo6iD40I+PSq7n3Q3EqO5tqBwnS599RcBcV/3bIGJ28U2Y0Fpbz5FVpEih8sJp78H
 yaNkroYQPoKDEiq+ey+8XB/cVyxtkib6TJD9zSvcV7Cd9x5tE7SK7+HLmlkBqlkmc5f/
 CnY+eAfOLJaJ4O9XUbtM5hL1MHs0tDWUkPuY9tEhOOA1zh16auQkMkBExQhuS5L7a2XG
 xcr9DqX5TlsnP/c2rp7Oit5D/eNInFpxVBgURRAvENwIq7q9hpIeTjUy7TkpbTHIi/wC xA== 
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
        by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3gpbuqhh9u-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:13:07 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
        by ppma04dal.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 25EG5chv012326;
        Tue, 14 Jun 2022 16:13:06 GMT
Received: from b03cxnp07027.gho.boulder.ibm.com (b03cxnp07027.gho.boulder.ibm.com [9.17.130.14])
        by ppma04dal.us.ibm.com with ESMTP id 3gmjpa2qfh-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 14 Jun 2022 16:13:06 +0000
Received: from b03ledav001.gho.boulder.ibm.com (b03ledav001.gho.boulder.ibm.com [9.17.130.232])
        by b03cxnp07027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 25EGD4on22610366
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 14 Jun 2022 16:13:04 GMT
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 3D1726E050;
        Tue, 14 Jun 2022 16:13:04 +0000 (GMT)
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id CF69C6E053;
        Tue, 14 Jun 2022 16:13:03 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
        by b03ledav001.gho.boulder.ibm.com (Postfix) with ESMTP;
        Tue, 14 Jun 2022 16:13:03 +0000 (GMT)
From:   Stefan Berger <stefanb@linux.ibm.com>
To:     kexec@lists.infradead.org, devicetree@vger.kernel.org
Cc:     nayna@linux.ibm.com, nasastry@in.ibm.com,
        Stefan Berger <stefanb@linux.ibm.com>
Subject: [PATCH 0/3] tpm: Preserve TPM measurement log across kexec
Date:   Tue, 14 Jun 2022 12:12:55 -0400
Message-Id: <20220614161258.1741427-1-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: DLftwog53KzbJVAKR2rJ06seRAV5hC6b
X-Proofpoint-ORIG-GUID: DLftwog53KzbJVAKR2rJ06seRAV5hC6b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-14_06,2022-06-13_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=777 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206140062
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current of-tree driver does not currently preserve the vTPM 1.2 and
vTPM 2.0 measurement log across a kexec. This series fixes this for the
kexec_file_load() syscall using the flattened device tree (fdt) to
carry the measurement log's buffer across kexec.

   Stefan

Stefan Berger (3):
  of: kexec: Refactor IMA buffer related functions to make them reusable
  tpm/kexec: Duplicate TPM measurement log in of-tree for kexec
  tpm: of: Call of_tpm_get_sml_parameters() to get base and size of log

 drivers/char/tpm/eventlog/of.c |  31 +---
 drivers/of/device.c            |  24 +++
 drivers/of/kexec.c             | 284 +++++++++++++++++++++++++++++----
 include/linux/kexec.h          |   6 +
 include/linux/of.h             |   5 +
 include/linux/of_device.h      |   3 +
 kernel/kexec_file.c            |   6 +
 7 files changed, 298 insertions(+), 61 deletions(-)

-- 
2.35.1

