Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB5613FDD16
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 15:20:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234495AbhIANNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 09:13:32 -0400
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173]:45086 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234409AbhIANNb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 09:13:31 -0400
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
        by mx0b-0016f401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 181CH8ud017734;
        Wed, 1 Sep 2021 06:12:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=RaPX2R4HApZhsQ/JoRdzUb2eFsrThAz7muo+U+Fr4To=;
 b=Sy030NaZKg77MDCsgCvI9z1HPLTNOJU/GHjaVEXaLGLCO66TJ86yblYWbwsrcJLmQozS
 O98UfbIkSPs/07Tlbsy5YLaYVofQmTv9VtVK1ffg3vGO3K4t8nmoEalR+F+ieKBKj/31
 RwF6Vha5tZ8awY8EHQ/arYxQY46TmjEGYoXaQ27yOJE/JmAAgWgRnJ+scxHI/G3qr1u5
 9OEWsml6IXsVitAx1FXoJFR6nf4NhNd7KXANY9jPll1QRSx71NJ0rKYoW6X9JP0x2O1x
 lb6uBMN0rsxutYBtcay0TNKtSwzGOweoVHSMY7pGjbfx3ktDZcKdsQUwFTkDpRCeHez6 JQ== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
        by mx0b-0016f401.pphosted.com with ESMTP id 3at0axa8st-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Wed, 01 Sep 2021 06:12:24 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 1 Sep
 2021 06:12:22 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Wed, 1 Sep 2021 06:12:22 -0700
Received: from BG-SER530.marvell.com (BG-SER530.marvell.com [10.28.10.218])
        by maili.marvell.com (Postfix) with ESMTP id 138983F7090;
        Wed,  1 Sep 2021 06:12:17 -0700 (PDT)
From:   Tanmay Jagdale <tanmay@marvell.com>
To:     <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
        <mike.leach@linaro.org>, <leo.yan@linaro.org>, <robh+dt@kernel.org>
CC:     <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <al.grant@arm.com>,
        <sgoutham@marvell.com>, <lcherian@marvell.com>,
        <bbhushan2@marvell.com>, Tanmay Jagdale <tanmay@marvell.com>
Subject: [PATCH 2/2] coresight: tmc: Configure AXI write burst size
Date:   Wed, 1 Sep 2021 18:40:49 +0530
Message-ID: <20210901131049.1365367-3-tanmay@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210901131049.1365367-1-tanmay@marvell.com>
References: <20210901131049.1365367-1-tanmay@marvell.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 3FkIByxMkm6PBrXxBEQ21cRETc2wTf6P
X-Proofpoint-ORIG-GUID: 3FkIByxMkm6PBrXxBEQ21cRETc2wTf6P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-01_04,2021-09-01_01,2020-04-07_01
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current driver sets the write burst size initiated by TMC-ETR on
AXI bus to a fixed value of 16. Make this configurable by reading the
value specified in fwnode. If not specified, then default to 16.

Introduced a "max_burst_size" variable in tmc_drvdata structure to
facilitate this change.

Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c  | 21 +++++++++++++++++--
 .../hwtracing/coresight/coresight-tmc-etr.c   |  3 ++-
 drivers/hwtracing/coresight/coresight-tmc.h   |  6 +++++-
 3 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 74c6323d4d6a..d0276af82494 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -432,6 +432,21 @@ static u32 tmc_etr_get_default_buffer_size(struct device *dev)
 	return size;
 }
 
+static u32 tmc_etr_get_max_burst_size(struct device *dev)
+{
+	u32 burst_size;
+
+	if (fwnode_property_read_u32(dev->fwnode, "arm,max-burst-size",
+				     &burst_size))
+		return TMC_AXICTL_WR_BURST_16;
+
+	/* Only permissible values are 0 to 15 */
+	if (burst_size > 0xF)
+		burst_size = TMC_AXICTL_WR_BURST_16;
+
+	return burst_size;
+}
+
 static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 {
 	int ret = 0;
@@ -469,10 +484,12 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	/* This device is not associated with a session */
 	drvdata->pid = -1;
 
-	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
+	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR) {
 		drvdata->size = tmc_etr_get_default_buffer_size(dev);
-	else
+		drvdata->max_burst_size = tmc_etr_get_max_burst_size(dev);
+	} else {
 		drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
+	}
 
 	desc.dev = dev;
 	desc.groups = coresight_tmc_groups;
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index acdb59e0e661..0ac2a611110b 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -982,7 +982,8 @@ static void __tmc_etr_enable_hw(struct tmc_drvdata *drvdata)
 
 	axictl = readl_relaxed(drvdata->base + TMC_AXICTL);
 	axictl &= ~TMC_AXICTL_CLEAR_MASK;
-	axictl |= (TMC_AXICTL_PROT_CTL_B1 | TMC_AXICTL_WR_BURST_16);
+	axictl |= TMC_AXICTL_PROT_CTL_B1;
+	axictl |= TMC_AXICTL_WR_BURST(drvdata->max_burst_size);
 	axictl |= TMC_AXICTL_AXCACHE_OS;
 
 	if (tmc_etr_has_cap(drvdata, TMC_ETR_AXI_ARCACHE)) {
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index b91ec7dde7bc..6bec20a392b3 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -70,7 +70,8 @@
 #define TMC_AXICTL_PROT_CTL_B0	BIT(0)
 #define TMC_AXICTL_PROT_CTL_B1	BIT(1)
 #define TMC_AXICTL_SCT_GAT_MODE	BIT(7)
-#define TMC_AXICTL_WR_BURST_16	0xF00
+#define TMC_AXICTL_WR_BURST(v)	(((v) & 0xf) << 8)
+#define TMC_AXICTL_WR_BURST_16	0xf
 /* Write-back Read and Write-allocate */
 #define TMC_AXICTL_AXCACHE_OS	(0xf << 2)
 #define TMC_AXICTL_ARCACHE_OS	(0xf << 16)
@@ -174,6 +175,8 @@ struct etr_buf {
  * @etr_buf:	details of buffer used in TMC-ETR
  * @len:	size of the available trace for ETF/ETB.
  * @size:	trace buffer size for this TMC (common for all modes).
+ * @max_burst_size: The maximum burst size that can be initiated by
+ *		TMC-ETR on AXI bus.
  * @mode:	how this TMC is being used.
  * @config_type: TMC variant, must be of type @tmc_config_type.
  * @memwidth:	width of the memory interface databus, in bytes.
@@ -198,6 +201,7 @@ struct tmc_drvdata {
 	};
 	u32			len;
 	u32			size;
+	u32			max_burst_size;
 	u32			mode;
 	enum tmc_config_type	config_type;
 	enum tmc_mem_intf_width	memwidth;
-- 
2.25.1

