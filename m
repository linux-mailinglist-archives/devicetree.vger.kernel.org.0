Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 267873FDD14
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 15:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230398AbhIANNE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 09:13:04 -0400
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173]:50212 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232432AbhIANND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 09:13:03 -0400
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
        by mx0b-0016f401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 181CH1Vm016616;
        Wed, 1 Sep 2021 06:11:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=v2Ev/doqGuF9r2VSUMtM634LLF/XzeIAP1SYwoOMMjw=;
 b=J94JkApCG0lrE5C0Hg2AO1gFu5nSeRfYEg+cub8HHQIT5e48BuI0BrqZLA/zHy6a+pOB
 zSJn5nccUjdPdxw9x9pOTqCIWEXEL1uTiLNGdmYX6VFnRWFM/dPGEmFC7iOaqXsDEO5A
 MHK+akJx3tO58tfYB05sBt6YpNhp0tArfRQh4IlWkfx2MH5fiH+6Tbzx2UniXaRTaXmq
 rGleIIEH5Iu3MkrXGT7TWGVyEfVTLr41DiwiPXX68ez/rZLnPzY8Lfny24JBS/XW4V8s
 uPiB7MrJJbqpMsjCeeoYT5u/E0O4lMdb+PBoqNqqE1UZMr0cRPgIEqyQVs13iA0ZAFa3 Ig== 
Received: from dc5-exch02.marvell.com ([199.233.59.182])
        by mx0b-0016f401.pphosted.com with ESMTP id 3at0axa8qv-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Wed, 01 Sep 2021 06:11:55 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 1 Sep
 2021 06:11:53 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Wed, 1 Sep 2021 06:11:53 -0700
Received: from BG-SER530.marvell.com (BG-SER530.marvell.com [10.28.10.218])
        by maili.marvell.com (Postfix) with ESMTP id D07C63F708A;
        Wed,  1 Sep 2021 06:11:48 -0700 (PDT)
From:   Tanmay Jagdale <tanmay@marvell.com>
To:     <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
        <mike.leach@linaro.org>, <leo.yan@linaro.org>, <robh+dt@kernel.org>
CC:     <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <al.grant@arm.com>,
        <sgoutham@marvell.com>, <lcherian@marvell.com>,
        <bbhushan2@marvell.com>, Tanmay Jagdale <tanmay@marvell.com>
Subject: [PATCH 1/2] dt-bindings: coresight: Add burst size for TMC
Date:   Wed, 1 Sep 2021 18:40:48 +0530
Message-ID: <20210901131049.1365367-2-tanmay@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210901131049.1365367-1-tanmay@marvell.com>
References: <20210901131049.1365367-1-tanmay@marvell.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 5t0ZPzD4E4AdLGprPxjtZNi0iqasnd_S
X-Proofpoint-ORIG-GUID: 5t0ZPzD4E4AdLGprPxjtZNi0iqasnd_S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-01_04,2021-09-01_01,2020-04-07_01
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add "arm,max-burst-size" optional property for TMC ETR.
If specified, this value indicates the maximum burst size
that can be initiated by TMC on the AXI bus.

Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
---
 Documentation/devicetree/bindings/arm/coresight.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index 7f9c1ca87487..7971f8dba2ee 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -127,6 +127,11 @@ its hardware characteristcs.
 	* arm,scatter-gather: boolean. Indicates that the TMC-ETR can safely
 	  use the SG mode on this system.
 
+	* arm,max-burst-size: The maximum burst size initiated by TMC on the
+	  AXI master interface. The burst size can be in the range [0..15],
+	  the setting supports one data transfer per burst upto a maximum of
+	  16 data transfers per burst.
+
 * Optional property for CATU :
 	* interrupts : Exactly one SPI may be listed for reporting the address
 	  error
-- 
2.25.1

