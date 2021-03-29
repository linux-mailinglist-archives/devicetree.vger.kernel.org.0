Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E036134D331
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:01:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230402AbhC2PBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:01:11 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:41384 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230432AbhC2PAs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Mar 2021 11:00:48 -0400
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TEXMu9106750;
        Mon, 29 Mar 2021 11:00:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=xOWESKSRP1P1HwUHDNPteLwMEQ3ogCca63hcI0M9oI4=;
 b=YbWYOg9YBJExAvSL1awWTe1obKmt23JzMy3mUvvbp6X5yuHhC24U5oig+kNRsLuBN/WK
 F19y2zf8iNYFmWwor7o37/PJXJonAEyAs7T1KGpUnhsySHppns5hm6HviO2F0w1rS7jz
 akR3RqqzULIqoWK+6XxCGCbqHQrLVZWHucFf5dJ9eTkiJN/eTpgX0Pdf2zRgGPX+CTD7
 7WLbJiVnP5t98X9WZlRydC5pFtvM26eZbu1PN6GKMrgfi14Pyj4f//dUdxocGKBXGxGr
 bVBGplJKiqAvP8VfyCKhvB1aWfYcpu7gDAepA0NCTFyMbwpazn9A7mpaaCtz+8n+wivd dw== 
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com [169.63.214.131])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37jhsru0wg-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 11:00:43 -0400
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
        by ppma01dal.us.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12TF02SB012802;
        Mon, 29 Mar 2021 15:00:42 GMT
Received: from b03cxnp08027.gho.boulder.ibm.com (b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
        by ppma01dal.us.ibm.com with ESMTP id 37hvb92xn7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 15:00:42 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12TF0eWn10879636
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Mar 2021 15:00:40 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id B8ADB7806B;
        Mon, 29 Mar 2021 15:00:40 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 64B6F78063;
        Mon, 29 Mar 2021 15:00:40 +0000 (GMT)
Received: from v0005c16.aus.stglabs.ibm.com (unknown [9.163.3.96])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon, 29 Mar 2021 15:00:40 +0000 (GMT)
From:   Eddie James <eajames@linux.ibm.com>
To:     joel@jms.id.au
Cc:     andrew@aj.id.au, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>
Subject: [PATCH 19/22] ARM: dts: Aspeed: Everest: Add RTC
Date:   Mon, 29 Mar 2021 10:00:17 -0500
Message-Id: <20210329150020.13632-20-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210329150020.13632-1-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: p5-x1jSoOybJcyyK9IsfGl-dNoIjS0mD
X-Proofpoint-ORIG-GUID: p5-x1jSoOybJcyyK9IsfGl-dNoIjS0mD
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_09:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 mlxscore=0 mlxlogscore=863 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103290112
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the RTC at the appropriate I2C bus and address.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
index 18a3d65fb67d..f33c22f824cd 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
@@ -708,6 +708,11 @@ ucd90320@11 {
 		reg = <0x11>;
 	};
 
+	rtc@32 {
+		compatible = "epson,rx8900";
+		reg = <0x32>;
+	};
+
 	eeprom@51 {
 		compatible = "atmel,24c64";
 		reg = <0x51>;
-- 
2.27.0

