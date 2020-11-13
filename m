Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BD472B15B0
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 06:59:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgKMF7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 00:59:42 -0500
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:31910 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726092AbgKMF7m (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 00:59:42 -0500
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0AD5Ul7d046621;
        Fri, 13 Nov 2020 00:59:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references; s=pp1;
 bh=narc137lnawKjcUz4ZTCW04S+aJQyv/UMqSr6JcByvg=;
 b=BfRlBf4cvjwOr+7trMp3TiUK/RW3NftHMh6gG9Cuh7nt/cGeOW/DDHWOe1w3qpmE859y
 eGB9IGZM1aZsxBb4TGHg4ciGxX6q56yyL57wSuNTsl9edC0abWzWCMEPoJJOi1Ab+cAR
 jfs2G8A3dlzABwcIeVux43RUPt68v3EgprAfiKPczldPgfuwBRzIHay6fmAqYEjYFPEs
 7d2Zwrl2mr0OvH66UKpc4seL9hGThbr5kTl8F+yMAbZ2Te3U7LJyH9+FRvrWO5rwZev2
 hpwrDBOH+Kz/Z7ujnSwje7VDS1ZHsVGniq1qUSkO5NazlLCgvzgNFD0+SqpMe7ixmMfe HQ== 
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
        by mx0b-001b2d01.pphosted.com with ESMTP id 34sht1bub4-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 13 Nov 2020 00:59:35 -0500
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
        by ppma02dal.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0AD5vq15000346;
        Fri, 13 Nov 2020 05:59:34 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
        by ppma02dal.us.ibm.com with ESMTP id 34nk7acnyh-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 13 Nov 2020 05:59:34 +0000
Received: from b03ledav001.gho.boulder.ibm.com (b03ledav001.gho.boulder.ibm.com [9.17.130.232])
        by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0AD5xO0N17760886
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 13 Nov 2020 05:59:24 GMT
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 6D13C6E04C;
        Fri, 13 Nov 2020 05:59:33 +0000 (GMT)
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 54A3D6E04E;
        Fri, 13 Nov 2020 05:59:33 +0000 (GMT)
Received: from gfw170.aus.stglabs.ibm.com (unknown [9.3.62.224])
        by b03ledav001.gho.boulder.ibm.com (Postfix) with ESMTP;
        Fri, 13 Nov 2020 05:59:33 +0000 (GMT)
Received: by gfw170.aus.stglabs.ibm.com (Postfix, from userid 298080)
        id F0753152; Thu, 12 Nov 2020 23:59:32 -0600 (CST)
From:   Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
To:     joel@jms.id.au, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org
Cc:     vishwa@linux.vnet.ibm.com
Subject: [PATCH 3/6] ARM: dts: aspeed: rainier: Add leds that are off PCA9552
Date:   Thu, 12 Nov 2020 23:59:25 -0600
Message-Id: <1605247168-1028-3-git-send-email-vishwa@linux.vnet.ibm.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-13_03:2020-11-12,2020-11-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 lowpriorityscore=0
 malwarescore=0 mlxlogscore=855 clxscore=1015 impostorscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011130029
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These LEDs are on the fans and are connected via a
PCA9552 I2C expander

Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 36 ++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 1da7389..b7d7246 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -173,6 +173,42 @@
 			default-state = "keep";
 			gpios = <&pca_oppanel 3 GPIO_ACTIVE_LOW>;
 		};
+
+		fan0 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca0 0 GPIO_ACTIVE_LOW>;
+		};
+
+		fan1 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca0 1 GPIO_ACTIVE_LOW>;
+		};
+
+		fan2 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca0 2 GPIO_ACTIVE_LOW>;
+		};
+
+		fan3 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca0 3 GPIO_ACTIVE_LOW>;
+		};
+
+		fan4 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca0 4 GPIO_ACTIVE_LOW>;
+		};
+
+		fan5 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca0 5 GPIO_ACTIVE_LOW>;
+		};
 	};
 };
 
-- 
1.8.3.1

