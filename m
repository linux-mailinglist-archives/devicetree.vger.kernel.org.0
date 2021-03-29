Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25F0134D334
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:01:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230424AbhC2PBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:01:12 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:50626 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S230448AbhC2PAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Mar 2021 11:00:50 -0400
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TEWUWY066995;
        Mon, 29 Mar 2021 11:00:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=rJY+APvAX4JDlatnHPu9bE88+jV1CBxc1quammXfi/c=;
 b=hnWCme4hds+lZmbdjGNiVawwU/IaeBMRuL7JpTCQ9BAXRy3XHxyb8QbV6nORxzcTwG9A
 lH69l0oRSuiqf4jKjtV27THwoWq2lCCx2mAYW549VE/a6TlMqw2NKBlJ61+KdufEy+sg
 oedCYRRe+iRIVObpySKqFCs+TRpkQRXZrapOfCchLGPox3l2qftTJU2GZkhlGf0cqe6C
 iLzPUQHrm9NoKaM/+2n56PYgUlik3rVQR7sRWRiAeio9v9X+YuN3D7JrjOeoRsBxjJtX
 Sq0SSc5orLJoH7GzU3nl20tmDFNFHp6acrozDEDQFSuuEOelsOCV2lmzyZnyFXySh3LF 4Q== 
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com [169.53.41.122])
        by mx0b-001b2d01.pphosted.com with ESMTP id 37jj602ugu-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 11:00:42 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
        by ppma04dal.us.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12TExuG0006618;
        Mon, 29 Mar 2021 15:00:41 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
        by ppma04dal.us.ibm.com with ESMTP id 37hvb92wpa-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 15:00:41 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12TF0dbr24969486
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Mar 2021 15:00:40 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id CD4BA78067;
        Mon, 29 Mar 2021 15:00:39 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 6F94278063;
        Mon, 29 Mar 2021 15:00:39 +0000 (GMT)
Received: from v0005c16.aus.stglabs.ibm.com (unknown [9.163.3.96])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon, 29 Mar 2021 15:00:39 +0000 (GMT)
From:   Eddie James <eajames@linux.ibm.com>
To:     joel@jms.id.au
Cc:     andrew@aj.id.au, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, Jim Wright <jlwright@us.ibm.com>,
        Eddie James <eajames@linux.ibm.com>
Subject: [PATCH 17/22] ARM: dts: aspeed: everest: Add UCD90320 power sequencer
Date:   Mon, 29 Mar 2021 10:00:15 -0500
Message-Id: <20210329150020.13632-18-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210329150020.13632-1-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: iFFDUNbgnswCozzRqfKxOY-X7ZpWwF18
X-Proofpoint-ORIG-GUID: iFFDUNbgnswCozzRqfKxOY-X7ZpWwF18
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_09:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 mlxlogscore=883
 priorityscore=1501 clxscore=1015 malwarescore=0 mlxscore=0 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2103250000 definitions=main-2103290112
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jim Wright <jlwright@us.ibm.com>

Add UCD90320 chip to Everest device tree.

Signed-off-by: Jim Wright <jlwright@us.ibm.com>
Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
index 04c96a3fe506..9e77bbb3e4d1 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
@@ -406,6 +406,11 @@ &i2c7 {
 &i2c8 {
 	status = "okay";
 
+	ucd90320@11 {
+		compatible = "ti,ucd90320";
+		reg = <0x11>;
+	};
+
 	eeprom@51 {
 		compatible = "atmel,24c64";
 		reg = <0x51>;
-- 
2.27.0

