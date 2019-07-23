Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB2B870E32
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 02:34:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728708AbfGWAez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 20:34:55 -0400
Received: from mx0a-00082601.pphosted.com ([67.231.145.42]:8880 "EHLO
        mx0a-00082601.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726770AbfGWAez (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 20:34:55 -0400
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
        by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x6N0EPK5031553
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 17:34:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=upxpwa+NHml6Xp6NZf6ZnaOWMnszUj5BKBn+ik5Bpgw=;
 b=S+RGh1ibHWnPvF8X2OO46KMOxdDxVIR57ENJoeUxzyPNW5ekVJBbfhxHz6h+hjqy1tuy
 +1QDQaJVH2Jyk9XEyG1no4bzuXk+K1CNExGFqd19ouZQLEWB7oiqkvkGYB7+G+FqD+YX
 BIg7M1/MfPmGJOBpTRX1yHoqScVJxUppQ0A= 
Received: from maileast.thefacebook.com ([163.114.130.16])
        by mx0a-00082601.pphosted.com with ESMTP id 2twghksppv-2
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 17:34:54 -0700
Received: from mx-out.facebook.com (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:83::7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jul 2019 17:34:53 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
        id E50481152F9BD; Mon, 22 Jul 2019 17:32:17 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From:   Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
CC:     <vijaykhemka@fb.com>,
        "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>,
        <sdasari@fb.com>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH v2] ARM: dts: aspeed: tiogapass: Add VR devices
Date:   Mon, 22 Jul 2019 17:32:16 -0700
Message-ID: <20190723003216.2910042-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
Content-Type: text/plain
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-22_16:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907230000
X-FB-Internal: deliver
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds voltage regulators Infineon pxe1610 devices to Facebook
tiogapass platform.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
In v2: Renamed vr to regulator and fixed some typo in commit message.

 .../dts/aspeed-bmc-facebook-tiogapass.dts     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index c4521eda787c..e722e9aef907 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
@@ -144,6 +144,42 @@
 &i2c5 {
 	status = "okay";
 	// CPU Voltage regulators
+	regulator@48 {
+		compatible = "infineon,pxe1610";
+		reg = <0x48>;
+	};
+	regulator@4a {
+		compatible = "infineon,pxe1610";
+		reg = <0x4a>;
+	};
+	regulator@50 {
+		compatible = "infineon,pxe1610";
+		reg = <0x50>;
+	};
+	regulator@52 {
+		compatible = "infineon,pxe1610";
+		reg = <0x52>;
+	};
+	regulator@58 {
+		compatible = "infineon,pxe1610";
+		reg = <0x58>;
+	};
+	regulator@5a {
+		compatible = "infineon,pxe1610";
+		reg = <0x5a>;
+	};
+	regulator@68 {
+		compatible = "infineon,pxe1610";
+		reg = <0x68>;
+	};
+	regulator@70 {
+		compatible = "infineon,pxe1610";
+		reg = <0x70>;
+	};
+	regulator@72 {
+		compatible = "infineon,pxe1610";
+		reg = <0x72>;
+	};
 };
 
 &i2c6 {
-- 
2.17.1

