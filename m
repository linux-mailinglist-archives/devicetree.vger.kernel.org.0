Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7E7434D325
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:01:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230362AbhC2PBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:01:08 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:9068 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230402AbhC2PAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 29 Mar 2021 11:00:46 -0400
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TEWkao101227;
        Mon, 29 Mar 2021 11:00:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=U5n7MbEPpQG9aqizr8IpQL2Lej4LRcg3dR4tDd+ONBg=;
 b=lIKOuLnwu1VICiB1nqM1aqy+cqJIBRcnysTguZlGPr5F1yjvW7gKpdMlhcM0pL56cl+U
 IUDZbnSTFCMvL66t0museztvxrQhaQAoIt/2bp1FbiZPUGEqvW7bEocREuSDSZc0skWY
 AAe81AWNeB4YW8UlPyCn8P5qQWmzNXLLomDn5Rn7KLXeuF7a+7BWtp2XTYMzBDzGscJl
 +JQu/IGSKV8W3B8apxEaxgHJKWuhk6boC/+aDViVsaU1LsZlzGM3LKQG8OWQDl8RyrHO
 VopEtyGfJXBY7xbaLEKb8jQ1zvzVd5RVaGTStyfWDBCCMG9wxUp/6mGtElKvbmsL1o49 Xg== 
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com [169.63.121.186])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37jhruas1d-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 11:00:39 -0400
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
        by ppma03wdc.us.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12TExnP4012693;
        Mon, 29 Mar 2021 15:00:37 GMT
Received: from b03cxnp07029.gho.boulder.ibm.com (b03cxnp07029.gho.boulder.ibm.com [9.17.130.16])
        by ppma03wdc.us.ibm.com with ESMTP id 37jqmmy6ps-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 29 Mar 2021 15:00:37 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12TF0b1q26870248
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 29 Mar 2021 15:00:37 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id EBDFE78060;
        Mon, 29 Mar 2021 15:00:36 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 8EEA97805E;
        Mon, 29 Mar 2021 15:00:36 +0000 (GMT)
Received: from v0005c16.aus.stglabs.ibm.com (unknown [9.163.3.96])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Mon, 29 Mar 2021 15:00:36 +0000 (GMT)
From:   Eddie James <eajames@linux.ibm.com>
To:     joel@jms.id.au
Cc:     andrew@aj.id.au, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>
Subject: [PATCH 11/22] ARM: dts: aspeed: rainier 4U: Fix fan configuration
Date:   Mon, 29 Mar 2021 10:00:09 -0500
Message-Id: <20210329150020.13632-12-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210329150020.13632-1-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: f9Bc1CLEfABHi16ULggS74z-vDbmvaGp
X-Proofpoint-ORIG-GUID: f9Bc1CLEfABHi16ULggS74z-vDbmvaGp
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_09:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103290112
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 4U fans didn't have the correct properties since the fan nodes
were redefined. Fix this by referencing each fan individually and
adding the differences to the 4U fans.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier-4u.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier-4u.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier-4u.dts
index 291f7d6c9979..f7fd3b3c90d0 100644
--- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier-4u.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier-4u.dts
@@ -22,16 +22,30 @@ power-supply@6b {
 
 &fan0 {
 	tach-pulses = <4>;
+	/delete-property/ maxim,fan-dual-tach;
 };
 
 &fan1 {
 	tach-pulses = <4>;
+	/delete-property/ maxim,fan-dual-tach;
 };
 
 &fan2 {
 	tach-pulses = <4>;
+	/delete-property/ maxim,fan-dual-tach;
 };
 
 &fan3 {
 	tach-pulses = <4>;
+	/delete-property/ maxim,fan-dual-tach;
+};
+
+&fan4 {
+	tach-pulses = <4>;
+	/delete-property/ maxim,fan-dual-tach;
+};
+
+&fan5 {
+	tach-pulses = <4>;
+	/delete-property/ maxim,fan-dual-tach;
 };
-- 
2.27.0

