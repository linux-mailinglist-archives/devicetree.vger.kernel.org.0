Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41D6534D32A
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:01:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbhC2PBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:01:08 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:13098 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230388AbhC2PAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Mar 2021 11:00:46 -0400
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TEXVYn138936;
        Mon, 29 Mar 2021 11:00:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=oGV4wFeh2O17wGe6ZRMd1Iu5douye4BGV0UGWFn9YYk=;
 b=RdAU7ENTr5UpGYVLyxgEMOBt+bsr0f1G8/EHwrTFtTtJYp/WANve8QhUbMaAbGGMcfiD
 DlSZ1ToyM/Vc6CflJiJhi+2tqXWe4r6H2qHejYuqBeIbyIqUiWjF6Y/IKUBWXWb+oZbz
 6mZbdHhtWTzXxDyuQTXI0Xzat6qMZZJSAgAONU0DyT5qE2DWR8PGFXOzOkwlyd9yxe7Y
 0zdR4L7k33/FHj4rWSmfztajB2yxY15V1VeWA7ax9skGUcxJsMs/W3p3zpfGjPeGJh67
 W42YxitJiHwwWC9UgOHyPRFVyfNZQRyO+ZE2DjR3C3SI5D4IrJiQsYix6IY7w/XbzPPm 5w== 
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37kgm0s5tb-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 11:00:37 -0400
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
        by ppma04wdc.us.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12TEql8D007207;
        Mon, 29 Mar 2021 15:00:35 GMT
Received: from b03cxnp08028.gho.boulder.ibm.com (b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
        by ppma04wdc.us.ibm.com with ESMTP id 37hvb8q4bv-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 15:00:35 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12TF0YI731261100
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Mar 2021 15:00:34 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 247587805F;
        Mon, 29 Mar 2021 15:00:34 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id C5D1778077;
        Mon, 29 Mar 2021 15:00:33 +0000 (GMT)
Received: from v0005c16.aus.stglabs.ibm.com (unknown [9.163.3.96])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon, 29 Mar 2021 15:00:33 +0000 (GMT)
From:   Eddie James <eajames@linux.ibm.com>
To:     joel@jms.id.au
Cc:     andrew@aj.id.au, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>,
        Eddie James <eajames@linux.ibm.com>
Subject: [PATCH 05/22] ARM: dts: aspeed: rainier: Add leds that are off PCA9552
Date:   Mon, 29 Mar 2021 10:00:03 -0500
Message-Id: <20210329150020.13632-6-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210329150020.13632-1-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: DA6_E40jQgUM_Pg7KvTQ7dyoW7W8BtrV
X-Proofpoint-ORIG-GUID: DA6_E40jQgUM_Pg7KvTQ7dyoW7W8BtrV
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_09:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0
 mlxlogscore=999 clxscore=1015 malwarescore=0 priorityscore=1501
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103290112
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>

These LEDs are on the fans and are connected via a
pca9551 i2c expander.

A comment from Milton on why to expose the pins as GPIOs rather
than configuring the pca955x driver to drive the LEDs directly:

The led system insistes on creating a compact map (no holes) (as
does the reset subsystem).
However, this means the relative led number for a pin changes
as the prior pins change from gpio to led configuration.
For example if pins 2 and 7 are leds, they become leds 0 and 1.
Changing pin 5 to also be an led means that pin 7 is now led 2
not led 1 on the led subsystem.
The workaround we have done for existing systems has been to use
gpio leds for pca family devices.

Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 41 ++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index aaedd817e1cb..016b0ead5404 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -263,6 +263,47 @@ fan5-presence {
 			linux,code = <11>;
 		};
 	};
+
+	leds {
+		compatible = "gpio-leds";
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
+	};
+
 };
 
 &ehci1 {
-- 
2.27.0

