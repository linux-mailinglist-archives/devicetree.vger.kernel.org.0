Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71FED34D335
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:01:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbhC2PBN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:01:13 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:2800 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S229709AbhC2PA4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Mar 2021 11:00:56 -0400
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TEXkps146438;
        Mon, 29 Mar 2021 11:00:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=DdePwPToW0GKkBDJiVeIwm2ZSPVugNUb09w5UB8Gchc=;
 b=AZsCtvG3s92h0gPm8qpfka/uO/cEJRmU3dBrrmYuMNY391X8E1IWGRxqKneZ6yD2vqve
 f6CAc64v6Dtztp18/Ofe7zqSX9gmpMol/GlkY0lKFIY6PhvXaGn5rbI/1j9WvkTVgW8Y
 HY/nWchjX6zRa3bTFOsEb118tU6/SGWBtNto6WCpzkivscPUVEsww7EL5ysREryEohZY
 F++AKH2qRdurjekTtLjQwYKdFXT6ZsGWLVKGaugVwvxXvaeEpac4XavbUYdEWxRMYux5
 wdVzWSNLL67vqL99uz3X5+j7BRYij3pfewqXQeFXJogX8+P7CqDMxaGZTDM+Xmu1I2om AQ== 
Received: from ppma04wdc.us.ibm.com (1a.90.2fa9.ip4.static.sl-reverse.com [169.47.144.26])
        by mx0b-001b2d01.pphosted.com with ESMTP id 37jj8ajgy9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 11:00:47 -0400
Received: from pps.filterd (ppma04wdc.us.ibm.com [127.0.0.1])
        by ppma04wdc.us.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12TEqlCG007199;
        Mon, 29 Mar 2021 15:00:41 GMT
Received: from b03cxnp07027.gho.boulder.ibm.com (b03cxnp07027.gho.boulder.ibm.com [9.17.130.14])
        by ppma04wdc.us.ibm.com with ESMTP id 37hvb8q4cc-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 15:00:41 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp07027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12TF0ath28377440
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Mar 2021 15:00:36 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 72FEE78066;
        Mon, 29 Mar 2021 15:00:36 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 134947805E;
        Mon, 29 Mar 2021 15:00:36 +0000 (GMT)
Received: from v0005c16.aus.stglabs.ibm.com (unknown [9.163.3.96])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon, 29 Mar 2021 15:00:35 +0000 (GMT)
From:   Eddie James <eajames@linux.ibm.com>
To:     joel@jms.id.au
Cc:     andrew@aj.id.au, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
        Matthew Barth <msbarth@linux.ibm.com>
Subject: [PATCH 10/22] ARM: dts: aspeed: rainier: Enable fan watchdog
Date:   Mon, 29 Mar 2021 10:00:08 -0500
Message-Id: <20210329150020.13632-11-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210329150020.13632-1-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: twl6fA7AMm61OC8fkNZXV9d_D9OyRVMG
X-Proofpoint-ORIG-GUID: twl6fA7AMm61OC8fkNZXV9d_D9OyRVMG
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_09:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 mlxlogscore=999 priorityscore=1501 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103290112
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set watchdog 1 to pulse the fan watchdog circuit that drives the FAULT
pin of the MAX31785, resulting in fans running at full speed, if at
any point the BMC stops pulsing it, such as a BMC reboot at runtime.
Enable watchdog 2 for BMC reboots.

Signed-off-by: Matthew Barth <msbarth@linux.ibm.com>
Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
index 1d66dc995797..a8c0ed4d37c3 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
@@ -3135,6 +3135,20 @@ flash@0 {
 	};
 };
 
+&wdt1 {
+	aspeed,reset-type = "none";
+	aspeed,external-signal;
+	aspeed,ext-push-pull;
+	aspeed,ext-active-high;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdtrst1_default>;
+};
+
+&wdt2 {
+	status = "okay";
+};
+
 &xdma {
 	status = "okay";
 	memory-region = <&vga_memory>;
-- 
2.27.0

