Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9522734D327
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230347AbhC2PBH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:01:07 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:15654 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S230421AbhC2PAr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Mar 2021 11:00:47 -0400
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TEYMVO140402;
        Mon, 29 Mar 2021 11:00:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=GtFDpoaKWdcvicN6GqeWLBNb+h6gU1HBBkss3tquRXo=;
 b=Cy0k1FWdNSi7FJRAeoXu95hTuiZ4q+AjelZLCOVYMz/h3fR7s56mdqASZKTSeq2bzeXk
 yB3gCpZDvA3tRUCDX40MRAu4h4xmPu/KdM4Z1b9F6SWsVAiq0h4q8ovr420Fnjq0nkMC
 rRhnFDhorX3fI8J/H3S4LT0podUhnnMxnst66+Pe5R5fsv9++1AUEJDojtRg505xaJiW
 CKxIjM8etPKOIvlstfgW54MRSBBqofh5uSs7vPqfUHWq8yTXB2eMlQukr5OQWXb1Yj/j
 XRSzXrOilE4jA3y8WthHQsu25cdQeOJGp4UVt6E+H4reid0XYdwpocjI0soTMa3lTJEf 5Q== 
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
        by mx0b-001b2d01.pphosted.com with ESMTP id 37jhsbhwwa-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 11:00:35 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
        by ppma03dal.us.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12TEqjce014004;
        Mon, 29 Mar 2021 15:00:34 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
        by ppma03dal.us.ibm.com with ESMTP id 37jtuayy9n-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 15:00:34 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12TF0WwL12190198
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Mar 2021 15:00:32 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 533457806B;
        Mon, 29 Mar 2021 15:00:32 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 00F8E78067;
        Mon, 29 Mar 2021 15:00:32 +0000 (GMT)
Received: from v0005c16.aus.stglabs.ibm.com (unknown [9.163.3.96])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon, 29 Mar 2021 15:00:31 +0000 (GMT)
From:   Eddie James <eajames@linux.ibm.com>
To:     joel@jms.id.au
Cc:     andrew@aj.id.au, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Vishwanatha Subbanna <vishwa@linux.ibm.com>,
        Eddie James <eajames@linux.ibm.com>
Subject: [PATCH 01/22] ARM: dts: aspeed: rainier: Add Operator Panel LEDs
Date:   Mon, 29 Mar 2021 09:59:59 -0500
Message-Id: <20210329150020.13632-2-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210329150020.13632-1-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: bQB3fjJXvhJr8bC1r1pWK1Ip2u4A3XUh
X-Proofpoint-GUID: bQB3fjJXvhJr8bC1r1pWK1Ip2u4A3XUh
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_09:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 mlxlogscore=999
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103290112
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vishwanatha Subbanna <vishwa@linux.ibm.com>

These LEDs are on the op-panel and are connected via a pca9551 i2c
LED expander.

Signed-off-by: Vishwanatha Subbanna <vishwa@linux.ibm.com>
Signed-off-by: Eddie James <eajames@linux.ibm.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 82 ++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 6c9804d2f3b4..e775ad026d8b 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -131,6 +131,38 @@ i2c2mux3: i2c@3 {
 			reg = <3>;
 		};
 	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		/* System ID LED that is at front on Op Panel */
+		front-sys-id0 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca_oppanel 0 GPIO_ACTIVE_LOW>;
+		};
+
+		/* System Attention Indicator ID LED that is at front on Op Panel */
+		front-check-log0 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca_oppanel 1 GPIO_ACTIVE_LOW>;
+		};
+
+		/* Enclosure Fault LED that is at front on Op Panel */
+		front-enc-fault1 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca_oppanel 2 GPIO_ACTIVE_LOW>;
+		};
+
+		/* System PowerOn LED that is at front on Op Panel */
+		front-sys-pwron0 {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca_oppanel 3 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &ehci1 {
@@ -849,6 +881,56 @@ ibm-panel@62 {
 		reg = <(0x62 | I2C_OWN_SLAVE_ADDRESS)>;
 	};
 
+	pca_oppanel: pca9551@60 {
+		compatible = "nxp,pca9551";
+		reg = <0x60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		gpio@0 {
+			reg = <0>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@1 {
+			reg = <1>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@2 {
+			reg = <2>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@3 {
+			reg = <3>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@4 {
+			reg = <4>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@5 {
+			reg = <5>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@6 {
+			reg = <6>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+
+		gpio@7 {
+			reg = <7>;
+			type = <PCA955X_TYPE_GPIO>;
+		};
+	};
+
 	dps: dps310@76 {
 		compatible = "infineon,dps310";
 		reg = <0x76>;
-- 
2.27.0

