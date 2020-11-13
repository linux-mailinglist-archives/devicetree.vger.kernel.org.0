Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB32D2B15B3
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 06:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726112AbgKMF7n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 00:59:43 -0500
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:8932 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726134AbgKMF7n (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 00:59:43 -0500
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0AD5XGR4152877;
        Fri, 13 Nov 2020 00:59:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references; s=pp1;
 bh=5Qoh3+6oKLP9ngIFcGlu7n7Zalvqm+05EZPZ0EuALXk=;
 b=s9yXP6qxWfhP/dXb99St1Ufe6iCu0E9hQtvhqYfgGgoGUYFcXc9JMm9uXnV0MD575bcC
 8aza2jQm29gp/0l/sRcNCNGSnR2pix/W66X3DgdgM7XH0VF84epQ6FKNOZIhjLri48Ix
 diNThzNPlAdN9WNcHDhEBqj1rEu3cdz09O/x21StpebmR2wE4k05aHJom0TsXqkadmU9
 OX4pSUU7wLvlKEHgk2qrrysdrcVpbTRvZpoS+SVwQm63cyaYmvrRQX/hj2h/AhQbkCfx
 7GgceKGoOHvDRQoGQhLsMXvgq9EKYihZbvbWREWNzWT7XGh5EjtN72XP3cS8TZBE1ned fQ== 
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
        by mx0a-001b2d01.pphosted.com with ESMTP id 34sm060hbj-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 13 Nov 2020 00:59:38 -0500
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
        by ppma03dal.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0AD5vUmq022862;
        Fri, 13 Nov 2020 05:59:37 GMT
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com [9.57.198.27])
        by ppma03dal.us.ibm.com with ESMTP id 34nk7acm4y-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 13 Nov 2020 05:59:37 +0000
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com [9.57.199.110])
        by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0AD5xbCQ4588176
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 13 Nov 2020 05:59:37 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id EC3B2AE060;
        Fri, 13 Nov 2020 05:59:36 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id C7A1EAE05C;
        Fri, 13 Nov 2020 05:59:36 +0000 (GMT)
Received: from gfw170.aus.stglabs.ibm.com (unknown [9.3.62.224])
        by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTP;
        Fri, 13 Nov 2020 05:59:36 +0000 (GMT)
Received: by gfw170.aus.stglabs.ibm.com (Postfix, from userid 298080)
        id 8559B152; Thu, 12 Nov 2020 23:59:36 -0600 (CST)
From:   Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
To:     joel@jms.id.au, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org
Cc:     vishwa@linux.vnet.ibm.com
Subject: [PATCH 6/6] ARM: dts: aspeed: rainier: Add leds that are on optional PCI cable cards
Date:   Thu, 12 Nov 2020 23:59:28 -0600
Message-Id: <1605247168-1028-6-git-send-email-vishwa@linux.vnet.ibm.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-13_03:2020-11-12,2020-11-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=999 malwarescore=0 adultscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011130032
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These are LEDs on the cable cards that plug into PCIE slots.
The LEDs are controlled by PCA9552 I2C expander

Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 288 +++++++++++++++++++++++++++
 1 file changed, 288 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 67c8c40..7de5f76 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -696,6 +696,70 @@
 			gpios = <&pca4 7 GPIO_ACTIVE_LOW>;
 		};
 	};
+
+	leds-optional-cablecard0 {
+		compatible = "gpio-leds";
+
+		cablecard0-cxp-top {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca5 0 GPIO_ACTIVE_LOW>;
+		};
+
+		cablecard0-cxp-bot {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca5 1 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds-optional-cablecard3 {
+		compatible = "gpio-leds";
+
+		cablecard3-cxp-top {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca6 0 GPIO_ACTIVE_LOW>;
+		};
+
+		cablecard3-cxp-bot {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca6 1 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds-optional-cablecard4 {
+		compatible = "gpio-leds";
+
+		cablecard4-cxp-top {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca7 0 GPIO_ACTIVE_LOW>;
+		};
+
+		cablecard4-cxp-bot {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca7 1 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds-optional-cablecard10 {
+		compatible = "gpio-leds";
+
+		cablecard10-cxp-top {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca8 0 GPIO_ACTIVE_LOW>;
+		};
+
+		cablecard10-cxp-bot {
+			retain-state-shutdown;
+			default-state = "keep";
+			gpios = <&pca8 1 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &ehci1 {
@@ -1212,6 +1276,180 @@
 		compatible = "atmel,24c64";
 		reg = <0x52>;
 	};
+
+	pca5: pca9551@60 {
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
+};
+
+&i2c5 {
+	status = "okay";
+
+	tmp275@48 {
+		compatible = "ti,tmp275";
+		reg = <0x48>;
+	};
+
+	tmp275@49 {
+		compatible = "ti,tmp275";
+		reg = <0x49>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c64";
+		reg = <0x50>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c64";
+		reg = <0x51>;
+	};
+
+	pca6: pca9551@60 {
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
+	pca7: pca9551@61 {
+		compatible = "nxp,pca9551";
+		reg = <0x61>;
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
 };
 
 &i2c5 {
@@ -2028,6 +2266,56 @@
 		compatible = "atmel,24c64";
 		reg = <0x51>;
 	};
+
+	pca8: pca9551@60 {
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
 };
 
 &i2c12 {
-- 
1.8.3.1

