Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A25DD220A
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 09:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733068AbfJJHnO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 03:43:14 -0400
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77]:8476 "EHLO
        mx0b-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1733047AbfJJHnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Oct 2019 03:43:13 -0400
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
        by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x9A7c1FC001964;
        Thu, 10 Oct 2019 03:42:14 -0400
Received: from nam05-by2-obe.outbound.protection.outlook.com (mail-by2nam05lp2055.outbound.protection.outlook.com [104.47.50.55])
        by mx0b-00128a01.pphosted.com with ESMTP id 2veqt5gg3x-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 10 Oct 2019 03:42:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fNTwaZt7QCrGcYubAj/Unh8h50lJpeQjSKi65hqx6fwg/qvDARnfM/IkI0Ogs+8qlPH8OQW8w/gBdXvjDopfm/yGzTsfgx2vj+cLQTznh7y0Ei0UlR89B8XJLqtXhySb3UyUNkuZn7fvzJ/PzLvsJGdn/H7N9ddrycjaRRMVa3RInZ12XrdDNGzqIQlhwhst1JAZfPpy5m+gMwKW4sa6YggoVvVvXDAe44OosWijoMtxtWhw0bGNlK8S5sSJETkzH0usd9zxN9piytX2akJpT0bIQSuO/QHACtf6Bc6iwyHsGABHMSY0Rce1jBCrTgVQT5kcQtiJmQLDvghCT5p9fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m61ngQcFwBJx4helHkP+KwCabcehC+bTr7Q7UDAfB9Q=;
 b=kR4Vnhy94Kz0LKxgjkf/kXzQb9Xq9iT2xlcELkLwtF2w7eo29Z9ugqYwKDvq3Xp0ImjkJZ4AO/0XWjNr98yr0FbvH2MTXfQCjAbfzQbkh9CWaeFsCGcBcNgTB0AXyfjYvA5qkNom0P59GrMbOwx368f9phENbCnYdxON/Kw2wAaiXEQ2T8AqOdT+7EmbXN/XEzOC/z0Q+2d3KMFi9SyKN5I4oqbLwdCR0CwSO1vipTtudftfMiuwNP/MSweesTMNlpfX4Vtr5Svy8LUU8asec4zGkQRgtSCzH/G7YJ6zo3PiAWHeHHQ5W0+bHDpmfYZlfk+RnISx+ZaPWbk5xlj++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.55) smtp.rcpttodomain=arm.com smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m61ngQcFwBJx4helHkP+KwCabcehC+bTr7Q7UDAfB9Q=;
 b=g/9Vgy2Yu8Jp19bAJWlkJpAlV5Q1uIiUSfPZnvJIGnojVm2diPC6d4unO02QXGo2ywn5DC+TjMZv/mFwY/FLk7toB8sG/Z09rePcICqUH4+oRomjPT8yp+zM6DwQfyv+Gd4JIXAtTI5NJh+DGoUKBW5VGbT3v6YFy82WadLoKrw=
Received: from BN6PR03CA0081.namprd03.prod.outlook.com (2603:10b6:405:6f::19)
 by CH2PR03MB5192.namprd03.prod.outlook.com (2603:10b6:610:90::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Thu, 10 Oct
 2019 07:42:12 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BN6PR03CA0081.outlook.office365.com
 (2603:10b6:405:6f::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.18 via Frontend
 Transport; Thu, 10 Oct 2019 07:42:12 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Thu, 10 Oct 2019 07:42:11 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com [10.64.69.107])
        by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x9A7g4bC013825
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
        Thu, 10 Oct 2019 00:42:04 -0700
Received: from nsa.sphairon.box (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Thu, 10 Oct
 2019 03:42:09 -0400
From:   =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To:     <devicetree@vger.kernel.org>, <alsa-devel@alsa-project.org>
CC:     Mark Rutland <mark.rutland@arm.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v3 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM Converter driver
Date:   Thu, 10 Oct 2019 09:42:33 +0200
Message-ID: <20191010074234.7344-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(396003)(136003)(39860400002)(346002)(376002)(199004)(189003)(86362001)(7736002)(106002)(54906003)(50226002)(966005)(5660300002)(30864003)(70206006)(246002)(50466002)(2870700001)(305945005)(45776006)(478600001)(336012)(110136005)(1076003)(6306002)(70586007)(426003)(7636002)(8936002)(6666004)(356004)(2616005)(186003)(4326008)(36756003)(16526019)(316002)(3846002)(5820100001)(2906002)(23676004)(26005)(53416004)(486006)(476003)(47776003)(14444005)(126002)(8676002)(6116002);DIR:OUT;SFP:1101;SCL:1;SRVR:CH2PR03MB5192;H:nwd2mta1.analog.com;FPR:;SPF:Pass;LANG:en;PTR:nwd2mail10.analog.com;A:1;MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be100cbe-cf9f-4c85-e494-08d74d555c6e
X-MS-TrafficTypeDiagnostic: CH2PR03MB5192:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <CH2PR03MB51921F0CC9AF3BACBD6B16EC99940@CH2PR03MB5192.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-Forefront-PRVS: 018632C080
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rB1w0v00BC3tZZfPQ/g4XCYvu8ifqV37srQPnDYj9AD5KM774XkaN5OT1e78ujQ37ceHSnMZrMDlPGNwvA1x4F40mWM4r8aGHCyd/DwkLifFVGyv8SvKQ0atTTPWeo6VcFUQqAmDl8HS4Neg3HRVd5EYWdEwuhsv4wGD6xO/Vt8BGDT1wdS/6PSfPdF3iovJAHHYrX/gQXtrOf+WBuTz2vKtwfPkt9NK+g0nA6+niBfNMDF6aIvT/o/iIjn1xg3eelGhrWHolFxf8sdyCvSo3ZrRWfY8d1segcSgxjh8wTMpNdsDBxv6apPB9b6wqyxiNVDzH+DfLvkuGlTgPDdohiLeCk3k+9+JHBCtPMB2PnPsnllK+LOeED7/ZJxOtRuFSVtMWSfSFe3ryW4wrDDkt8jVvxIs4woyRiwWpSxVkirM4RwfaMcv2TnZ6GhLWW05+Z4Ltsh3GyZteiOTbGondQ==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2019 07:42:11.4074
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be100cbe-cf9f-4c85-e494-08d74d555c6e
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a;Ip=[137.71.25.55];Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5192
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_04:2019-10-08,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910100071
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for the 8 channel PDM-to-I2S/TDM converter. The
ADAU7118 converts four stereo pulse density modulation (PDM) bitstreams
into one pulse code modulation (PCM) output stream. The source for the PDM
data can be eight microphones or other PDM sources. The PCM audio data is
output on a serial audio interface port in either inter-IC serial (I2S) or
time domain multiplexed (TDM) format.

Signed-off-by: Nuno Sá <nuno.sa@analog.com>
---
Changes in v2:
 * Use C++ coment style on the entire comment in the .c files;
 * Do not use ternery operator;
 * Do not use `devm_regulator_get_optional` as the device always requires power;
 * Let DAPM suspend/resume the device.

Changes in v3:
 * no changes.

 MAINTAINERS                     |   1 +
 sound/soc/codecs/Kconfig        |  28 ++
 sound/soc/codecs/Makefile       |   6 +
 sound/soc/codecs/adau7118-hw.c  |  43 +++
 sound/soc/codecs/adau7118-i2c.c |  82 +++++
 sound/soc/codecs/adau7118.c     | 586 ++++++++++++++++++++++++++++++++
 sound/soc/codecs/adau7118.h     |  24 ++
 7 files changed, 770 insertions(+)
 create mode 100644 sound/soc/codecs/adau7118-hw.c
 create mode 100644 sound/soc/codecs/adau7118-i2c.c
 create mode 100644 sound/soc/codecs/adau7118.c
 create mode 100644 sound/soc/codecs/adau7118.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 55199ef7fa74..bf2c71f90eb6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1002,6 +1002,7 @@ F:	drivers/media/i2c/adv7842*
 
 ANALOG DEVICES INC ASOC CODEC DRIVERS
 M:	Lars-Peter Clausen <lars@metafoo.de>
+M:	Nuno Sá <nuno.sa@analog.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
 W:	http://wiki.analog.com/
 W:	http://ez.analog.com/community/linux-device-drivers
diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index bcac95785493..ae213c6392ec 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -34,6 +34,8 @@ config SND_SOC_ALL_CODECS
 	select SND_SOC_ADAU1977_I2C if I2C
 	select SND_SOC_ADAU1701 if I2C
 	select SND_SOC_ADAU7002
+	select SND_SOC_ADAU7118_I2C if I2C
+	select SND_SOC_ADAU7118_HW
 	select SND_SOC_ADS117X
 	select SND_SOC_AK4104 if SPI_MASTER
 	select SND_SOC_AK4118 if I2C
@@ -396,6 +398,32 @@ config SND_SOC_ADAU1977_I2C
 config SND_SOC_ADAU7002
 	tristate "Analog Devices ADAU7002 Stereo PDM-to-I2S/TDM Converter"
 
+config SND_SOC_ADAU7118
+	tristate
+
+config SND_SOC_ADAU7118_HW
+	tristate "Analog Devices ADAU7118 8 Channel PDM-to-I2S/TDM Converter - HW Mode"
+	select SND_SOC_ADAU7118
+	help
+	  Enable support for the Analog Devices ADAU7118 8 Channel PDM-to-I2S/TDM
+	  Converter. In this mode, the device works in standalone mode which
+	  means that there is no bus to comunicate with it. Stereo mode is not
+	  supported in this mode.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called snd-soc-adau7118-hw.
+
+config SND_SOC_ADAU7118_I2C
+	tristate "Analog Devices ADAU7118 8 Channel PDM-to-I2S/TDM Converter - I2C"
+	select SND_SOC_ADAU7118
+	select REGMAP_I2C
+	help
+	  Enable support for the Analog Devices ADAU7118 8 Channel PDM-to-I2S/TDM
+	  Converter over I2C. This gives full support over the device.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called snd-soc-adau7118-i2c.
+
 config SND_SOC_ADAV80X
 	tristate
 
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index 73b2d5982dcb..2118407a1dd5 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -22,6 +22,9 @@ snd-soc-adau1977-objs := adau1977.o
 snd-soc-adau1977-spi-objs := adau1977-spi.o
 snd-soc-adau1977-i2c-objs := adau1977-i2c.o
 snd-soc-adau7002-objs := adau7002.o
+snd-soc-adau7118-objs := adau7118.o
+snd-soc-adau7118-i2c-objs := adau7118-i2c.o
+snd-soc-adau7118-hw-objs := adau7118-hw.o
 snd-soc-adav80x-objs := adav80x.o
 snd-soc-adav801-objs := adav801.o
 snd-soc-adav803-objs := adav803.o
@@ -305,6 +308,9 @@ obj-$(CONFIG_SND_SOC_ADAU1977)		+= snd-soc-adau1977.o
 obj-$(CONFIG_SND_SOC_ADAU1977_SPI)	+= snd-soc-adau1977-spi.o
 obj-$(CONFIG_SND_SOC_ADAU1977_I2C)	+= snd-soc-adau1977-i2c.o
 obj-$(CONFIG_SND_SOC_ADAU7002)	+= snd-soc-adau7002.o
+obj-$(CONFIG_SND_SOC_ADAU7118)	+= snd-soc-adau7118.o
+obj-$(CONFIG_SND_SOC_ADAU7118_I2C)	+= snd-soc-adau7118-i2c.o
+obj-$(CONFIG_SND_SOC_ADAU7118_HW)	+= snd-soc-adau7118-hw.o
 obj-$(CONFIG_SND_SOC_ADAV80X)  += snd-soc-adav80x.o
 obj-$(CONFIG_SND_SOC_ADAV801)  += snd-soc-adav801.o
 obj-$(CONFIG_SND_SOC_ADAV803)  += snd-soc-adav803.o
diff --git a/sound/soc/codecs/adau7118-hw.c b/sound/soc/codecs/adau7118-hw.c
new file mode 100644
index 000000000000..45a5d2dcc0f2
--- /dev/null
+++ b/sound/soc/codecs/adau7118-hw.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter Standalone Hw
+// driver
+//
+// Copyright 2019 Analog Devices Inc.
+
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/platform_device.h>
+
+#include "adau7118.h"
+
+static int adau7118_probe_hw(struct platform_device *pdev)
+{
+	return adau7118_probe(&pdev->dev, NULL, true);
+}
+
+static const struct of_device_id adau7118_of_match[] = {
+	{ .compatible = "adi,adau7118" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, adau7118_of_match);
+
+static const struct platform_device_id adau7118_id[] = {
+	{ .name	= "adau7118" },
+	{ }
+};
+MODULE_DEVICE_TABLE(platform, adau7118_id);
+
+static struct platform_driver adau7118_driver_hw = {
+	.driver = {
+		.name = "adau7118",
+		.of_match_table = adau7118_of_match,
+	},
+	.probe = adau7118_probe_hw,
+	.id_table = adau7118_id,
+};
+module_platform_driver(adau7118_driver_hw);
+
+MODULE_AUTHOR("Nuno Sa <nuno.sa@analog.com>");
+MODULE_DESCRIPTION("ADAU7118 8 channel PDM-to-I2S/TDM Converter driver for standalone hw mode");
+MODULE_LICENSE("GPL");
diff --git a/sound/soc/codecs/adau7118-i2c.c b/sound/soc/codecs/adau7118-i2c.c
new file mode 100644
index 000000000000..a8211362fe82
--- /dev/null
+++ b/sound/soc/codecs/adau7118-i2c.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter driver over I2C
+//
+// Copyright 2019 Analog Devices Inc.
+
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#include "adau7118.h"
+
+static const struct reg_default adau7118_reg_defaults[] = {
+	{ ADAU7118_REG_VENDOR_ID, 0x41 },
+	{ ADAU7118_REG_DEVICE_ID1, 0x71 },
+	{ ADAU7118_REG_DEVICE_ID2, 0x18 },
+	{ ADAU7118_REG_REVISION_ID, 0x00 },
+	{ ADAU7118_REG_ENABLES, 0x3F },
+	{ ADAU7118_REG_DEC_RATIO_CLK_MAP, 0xC0 },
+	{ ADAU7118_REG_HPF_CONTROL, 0xD0 },
+	{ ADAU7118_REG_SPT_CTRL1, 0x41 },
+	{ ADAU7118_REG_SPT_CTRL2, 0x00 },
+	{ ADAU7118_REG_SPT_CX(0), 0x01 },
+	{ ADAU7118_REG_SPT_CX(1), 0x11 },
+	{ ADAU7118_REG_SPT_CX(2), 0x21 },
+	{ ADAU7118_REG_SPT_CX(3), 0x31 },
+	{ ADAU7118_REG_SPT_CX(4), 0x41 },
+	{ ADAU7118_REG_SPT_CX(5), 0x51 },
+	{ ADAU7118_REG_SPT_CX(6), 0x61 },
+	{ ADAU7118_REG_SPT_CX(7), 0x71 },
+	{ ADAU7118_REG_DRIVE_STRENGTH, 0x2a },
+	{ ADAU7118_REG_RESET, 0x00 },
+};
+
+static const struct regmap_config adau7118_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_defaults = adau7118_reg_defaults,
+	.num_reg_defaults = ARRAY_SIZE(adau7118_reg_defaults),
+	.cache_type = REGCACHE_RBTREE,
+	.max_register = ADAU7118_REG_RESET,
+};
+
+static int adau7118_probe_i2c(struct i2c_client *i2c,
+			      const struct i2c_device_id *id)
+{
+	struct regmap *map;
+
+	map = devm_regmap_init_i2c(i2c, &adau7118_regmap_config);
+	if (IS_ERR(map)) {
+		dev_err(&i2c->dev, "Failed to init regmap %ld\n", PTR_ERR(map));
+		return PTR_ERR(map);
+	}
+
+	return adau7118_probe(&i2c->dev, map, false);
+}
+
+static const struct of_device_id adau7118_of_match[] = {
+	{ .compatible = "adi,adau7118" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, adau7118_of_match);
+
+static const struct i2c_device_id adau7118_id[] = {
+	{"adau7118", 0},
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, adau7118_id);
+
+static struct i2c_driver adau7118_driver = {
+	.driver = {
+		.name = "adau7118",
+		.of_match_table = adau7118_of_match,
+	},
+	.probe = adau7118_probe_i2c,
+	.id_table = adau7118_id,
+};
+module_i2c_driver(adau7118_driver);
+
+MODULE_AUTHOR("Nuno Sa <nuno.sa@analog.com>");
+MODULE_DESCRIPTION("ADAU7118 8 channel PDM-to-I2S/TDM Converter driver over I2C");
+MODULE_LICENSE("GPL");
diff --git a/sound/soc/codecs/adau7118.c b/sound/soc/codecs/adau7118.c
new file mode 100644
index 000000000000..bf5a5d75f81a
--- /dev/null
+++ b/sound/soc/codecs/adau7118.c
@@ -0,0 +1,586 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter driver
+//
+// Copyright 2019 Analog Devices Inc.
+
+#include <linux/bitfield.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+
+#include "adau7118.h"
+
+#define ADAU7118_DEC_RATIO_MASK		GENMASK(1, 0)
+#define ADAU7118_DEC_RATIO(x)		FIELD_PREP(ADAU7118_DEC_RATIO_MASK, x)
+#define ADAU7118_CLK_MAP_MASK		GENMASK(7, 4)
+#define ADAU7118_SLOT_WIDTH_MASK	GENMASK(5, 4)
+#define ADAU7118_SLOT_WIDTH(x)		FIELD_PREP(ADAU7118_SLOT_WIDTH_MASK, x)
+#define ADAU7118_TRISTATE_MASK		BIT(6)
+#define ADAU7118_TRISTATE(x)		FIELD_PREP(ADAU7118_TRISTATE_MASK, x)
+#define ADAU7118_DATA_FMT_MASK		GENMASK(3, 1)
+#define ADAU7118_DATA_FMT(x)		FIELD_PREP(ADAU7118_DATA_FMT_MASK, x)
+#define ADAU7118_SAI_MODE_MASK		BIT(0)
+#define ADAU7118_SAI_MODE(x)		FIELD_PREP(ADAU7118_SAI_MODE_MASK, x)
+#define ADAU7118_LRCLK_BCLK_POL_MASK	GENMASK(1, 0)
+#define ADAU7118_LRCLK_BCLK_POL(x) \
+				FIELD_PREP(ADAU7118_LRCLK_BCLK_POL_MASK, x)
+#define ADAU7118_SPT_SLOT_MASK		GENMASK(7, 4)
+#define ADAU7118_SPT_SLOT(x)		FIELD_PREP(ADAU7118_SPT_SLOT_MASK, x)
+#define ADAU7118_FULL_SOFT_R_MASK	BIT(1)
+#define ADAU7118_FULL_SOFT_R(x)		FIELD_PREP(ADAU7118_FULL_SOFT_R_MASK, x)
+
+struct adau7118_data {
+	struct regmap *map;
+	struct device *dev;
+	struct regulator *iovdd;
+	struct regulator *dvdd;
+	u32 slot_width;
+	u32 slots;
+	bool hw_mode;
+	bool right_j;
+};
+
+/* Input Enable */
+static const struct snd_kcontrol_new adau7118_dapm_pdm_control[4] = {
+	SOC_DAPM_SINGLE("Capture Switch", ADAU7118_REG_ENABLES, 0, 1, 0),
+	SOC_DAPM_SINGLE("Capture Switch", ADAU7118_REG_ENABLES, 1, 1, 0),
+	SOC_DAPM_SINGLE("Capture Switch", ADAU7118_REG_ENABLES, 2, 1, 0),
+	SOC_DAPM_SINGLE("Capture Switch", ADAU7118_REG_ENABLES, 3, 1, 0),
+};
+
+static const struct snd_soc_dapm_widget adau7118_widgets_sw[] = {
+	/* Input Enable Switches */
+	SND_SOC_DAPM_SWITCH("PDM0", SND_SOC_NOPM, 0, 0,
+			    &adau7118_dapm_pdm_control[0]),
+	SND_SOC_DAPM_SWITCH("PDM1", SND_SOC_NOPM, 0, 0,
+			    &adau7118_dapm_pdm_control[1]),
+	SND_SOC_DAPM_SWITCH("PDM2", SND_SOC_NOPM, 0, 0,
+			    &adau7118_dapm_pdm_control[2]),
+	SND_SOC_DAPM_SWITCH("PDM3", SND_SOC_NOPM, 0, 0,
+			    &adau7118_dapm_pdm_control[3]),
+
+	/* PDM Clocks */
+	SND_SOC_DAPM_SUPPLY("PDM_CLK0", ADAU7118_REG_ENABLES, 4, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("PDM_CLK1", ADAU7118_REG_ENABLES, 5, 0, NULL, 0),
+
+	/* Output channels */
+	SND_SOC_DAPM_AIF_OUT("AIF1TX1", "Capture", 0, ADAU7118_REG_SPT_CX(0),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX2", "Capture", 0, ADAU7118_REG_SPT_CX(1),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX3", "Capture", 0, ADAU7118_REG_SPT_CX(2),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX4", "Capture", 0, ADAU7118_REG_SPT_CX(3),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX5", "Capture", 0, ADAU7118_REG_SPT_CX(4),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX6", "Capture", 0, ADAU7118_REG_SPT_CX(5),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX7", "Capture", 0, ADAU7118_REG_SPT_CX(6),
+			     0, 0),
+	SND_SOC_DAPM_AIF_OUT("AIF1TX8", "Capture", 0, ADAU7118_REG_SPT_CX(7),
+			     0, 0),
+};
+
+static const struct snd_soc_dapm_route adau7118_routes_sw[] = {
+	{ "PDM0", "Capture Switch", "PDM_DAT0" },
+	{ "PDM1", "Capture Switch", "PDM_DAT1" },
+	{ "PDM2", "Capture Switch", "PDM_DAT2" },
+	{ "PDM3", "Capture Switch", "PDM_DAT3" },
+	{ "AIF1TX1", NULL, "PDM0" },
+	{ "AIF1TX2", NULL, "PDM0" },
+	{ "AIF1TX3", NULL, "PDM1" },
+	{ "AIF1TX4", NULL, "PDM1" },
+	{ "AIF1TX5", NULL, "PDM2" },
+	{ "AIF1TX6", NULL, "PDM2" },
+	{ "AIF1TX7", NULL, "PDM3" },
+	{ "AIF1TX8", NULL, "PDM3" },
+	{ "Capture", NULL, "PDM_CLK0" },
+	{ "Capture", NULL, "PDM_CLK1" },
+};
+
+static const struct snd_soc_dapm_widget adau7118_widgets_hw[] = {
+	SND_SOC_DAPM_AIF_OUT("AIF1TX", "Capture", 0, SND_SOC_NOPM, 0, 0),
+};
+
+static const struct snd_soc_dapm_route adau7118_routes_hw[] = {
+	{ "AIF1TX", NULL, "PDM_DAT0" },
+	{ "AIF1TX", NULL, "PDM_DAT1" },
+	{ "AIF1TX", NULL, "PDM_DAT2" },
+	{ "AIF1TX", NULL, "PDM_DAT3" },
+};
+
+static const struct snd_soc_dapm_widget adau7118_widgets[] = {
+	SND_SOC_DAPM_INPUT("PDM_DAT0"),
+	SND_SOC_DAPM_INPUT("PDM_DAT1"),
+	SND_SOC_DAPM_INPUT("PDM_DAT2"),
+	SND_SOC_DAPM_INPUT("PDM_DAT3"),
+};
+
+static int adau7118_set_channel_map(struct snd_soc_dai *dai,
+				    unsigned int tx_num, unsigned int *tx_slot,
+				    unsigned int rx_num, unsigned int *rx_slot)
+{
+	struct adau7118_data *st =
+		snd_soc_component_get_drvdata(dai->component);
+	int chan, ret;
+
+	dev_dbg(st->dev, "Set channel map, %d", tx_num);
+
+	for (chan = 0; chan < tx_num; chan++) {
+		ret = snd_soc_component_update_bits(dai->component,
+					ADAU7118_REG_SPT_CX(chan),
+					ADAU7118_SPT_SLOT_MASK,
+					ADAU7118_SPT_SLOT(tx_slot[chan]));
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int adau7118_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+{
+	struct adau7118_data *st =
+		snd_soc_component_get_drvdata(dai->component);
+	int ret = 0;
+	u32 regval;
+
+	dev_dbg(st->dev, "Set format, fmt:%d\n", fmt);
+
+	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_I2S:
+		ret = snd_soc_component_update_bits(dai->component,
+						    ADAU7118_REG_SPT_CTRL1,
+						    ADAU7118_DATA_FMT_MASK,
+						    ADAU7118_DATA_FMT(0));
+		break;
+	case SND_SOC_DAIFMT_LEFT_J:
+		ret = snd_soc_component_update_bits(dai->component,
+						    ADAU7118_REG_SPT_CTRL1,
+						    ADAU7118_DATA_FMT_MASK,
+						    ADAU7118_DATA_FMT(1));
+		break;
+	case SND_SOC_DAIFMT_RIGHT_J:
+		st->right_j = true;
+		break;
+	default:
+		dev_err(st->dev, "Invalid format %d",
+			fmt & SND_SOC_DAIFMT_FORMAT_MASK);
+		return -EINVAL;
+	}
+
+	if (ret < 0)
+		return ret;
+
+	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
+	case SND_SOC_DAIFMT_NB_NF:
+		regval = ADAU7118_LRCLK_BCLK_POL(0);
+		break;
+	case SND_SOC_DAIFMT_NB_IF:
+		regval = ADAU7118_LRCLK_BCLK_POL(2);
+		break;
+	case SND_SOC_DAIFMT_IB_NF:
+		regval = ADAU7118_LRCLK_BCLK_POL(1);
+		break;
+	case SND_SOC_DAIFMT_IB_IF:
+		regval = ADAU7118_LRCLK_BCLK_POL(3);
+		break;
+	default:
+		dev_err(st->dev, "Invalid Inv mask %d",
+			fmt & SND_SOC_DAIFMT_INV_MASK);
+		return -EINVAL;
+	}
+
+	ret = snd_soc_component_update_bits(dai->component,
+					    ADAU7118_REG_SPT_CTRL2,
+					    ADAU7118_LRCLK_BCLK_POL_MASK,
+					    regval);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int adau7118_set_tristate(struct snd_soc_dai *dai, int tristate)
+{
+	struct adau7118_data *st =
+		snd_soc_component_get_drvdata(dai->component);
+	int ret;
+
+	dev_dbg(st->dev, "Set tristate, %d\n", tristate);
+
+	ret = snd_soc_component_update_bits(dai->component,
+					    ADAU7118_REG_SPT_CTRL1,
+					    ADAU7118_TRISTATE_MASK,
+					    ADAU7118_TRISTATE(tristate));
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int adau7118_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
+				 unsigned int rx_mask, int slots,
+				 int slot_width)
+{
+	struct adau7118_data *st =
+		snd_soc_component_get_drvdata(dai->component);
+	int ret = 0;
+	u32 regval;
+
+	dev_dbg(st->dev, "Set tdm, slots:%d width:%d\n", slots, slot_width);
+
+	switch (slot_width) {
+	case 32:
+		regval = ADAU7118_SLOT_WIDTH(0);
+		break;
+	case 24:
+		regval = ADAU7118_SLOT_WIDTH(2);
+		break;
+	case 16:
+		regval = ADAU7118_SLOT_WIDTH(1);
+		break;
+	default:
+		dev_err(st->dev, "Invalid slot width:%d\n", slot_width);
+		return -EINVAL;
+	}
+
+	ret = snd_soc_component_update_bits(dai->component,
+					    ADAU7118_REG_SPT_CTRL1,
+					    ADAU7118_SLOT_WIDTH_MASK, regval);
+	if (ret < 0)
+		return ret;
+
+	st->slot_width = slot_width;
+	st->slots = slots;
+
+	return 0;
+}
+
+static int adau7118_hw_params(struct snd_pcm_substream *substream,
+			      struct snd_pcm_hw_params *params,
+			      struct snd_soc_dai *dai)
+{
+	struct adau7118_data *st =
+		snd_soc_component_get_drvdata(dai->component);
+	u32 data_width = params_width(params), slots_width;
+	int ret;
+	u32 regval;
+
+	if (!st->slots) {
+		/* set stereo mode */
+		ret = snd_soc_component_update_bits(dai->component,
+						    ADAU7118_REG_SPT_CTRL1,
+						    ADAU7118_SAI_MODE_MASK,
+						    ADAU7118_SAI_MODE(0));
+		if (ret < 0)
+			return ret;
+
+		slots_width = 32;
+	} else {
+		slots_width = st->slot_width;
+	}
+
+	if (data_width > slots_width) {
+		dev_err(st->dev, "Invalid data_width:%d, slots_width:%d",
+			data_width, slots_width);
+		return -EINVAL;
+	}
+
+	if (st->right_j) {
+		switch (slots_width - data_width) {
+		case 8:
+			/* delay bclck by 8 */
+			regval = ADAU7118_DATA_FMT(2);
+			break;
+		case 12:
+			/* delay bclck by 12 */
+			regval = ADAU7118_DATA_FMT(3);
+			break;
+		case 16:
+			/* delay bclck by 16 */
+			regval = ADAU7118_DATA_FMT(4);
+			break;
+		default:
+			dev_err(st->dev,
+				"Cannot set right_j setting, slot_w:%d, data_w:%d\n",
+					slots_width, data_width);
+			return -EINVAL;
+		}
+
+		ret = snd_soc_component_update_bits(dai->component,
+						    ADAU7118_REG_SPT_CTRL1,
+						    ADAU7118_DATA_FMT_MASK,
+						    regval);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int adau7118_set_bias_level(struct snd_soc_component *component,
+				   enum snd_soc_bias_level level)
+{
+	struct adau7118_data *st = snd_soc_component_get_drvdata(component);
+	int ret = 0;
+
+	dev_dbg(st->dev, "Set bias level %d\n", level);
+
+	switch (level) {
+	case SND_SOC_BIAS_ON:
+	case SND_SOC_BIAS_PREPARE:
+		break;
+
+	case SND_SOC_BIAS_STANDBY:
+		if (snd_soc_component_get_bias_level(component) ==
+							SND_SOC_BIAS_OFF) {
+			/* power on */
+			ret = regulator_enable(st->iovdd);
+			if (ret)
+				return ret;
+
+			/* there's no timing constraints before enabling dvdd */
+			ret = regulator_enable(st->dvdd);
+			if (ret) {
+				regulator_disable(st->iovdd);
+				return ret;
+			}
+
+			if (st->hw_mode)
+				return 0;
+
+			regcache_cache_only(st->map, false);
+			/* sync cache */
+			ret = snd_soc_component_cache_sync(component);
+		}
+		break;
+	case SND_SOC_BIAS_OFF:
+		/* power off */
+		ret = regulator_disable(st->dvdd);
+		if (ret)
+			return ret;
+
+		ret = regulator_disable(st->iovdd);
+		if (ret)
+			return ret;
+
+		if (st->hw_mode)
+			return 0;
+
+		/* cache only */
+		regcache_mark_dirty(st->map);
+		regcache_cache_only(st->map, true);
+
+		break;
+	}
+
+	return ret;
+}
+
+static int adau7118_component_probe(struct snd_soc_component *component)
+{
+	struct adau7118_data *st = snd_soc_component_get_drvdata(component);
+	struct snd_soc_dapm_context *dapm =
+					snd_soc_component_get_dapm(component);
+	int ret = 0;
+
+	if (st->hw_mode) {
+		ret = snd_soc_dapm_new_controls(dapm, adau7118_widgets_hw,
+					ARRAY_SIZE(adau7118_widgets_hw));
+		if (ret)
+			return ret;
+
+		ret = snd_soc_dapm_add_routes(dapm, adau7118_routes_hw,
+					      ARRAY_SIZE(adau7118_routes_hw));
+	} else {
+		snd_soc_component_init_regmap(component, st->map);
+		ret = snd_soc_dapm_new_controls(dapm, adau7118_widgets_sw,
+					ARRAY_SIZE(adau7118_widgets_sw));
+		if (ret)
+			return ret;
+
+		ret = snd_soc_dapm_add_routes(dapm, adau7118_routes_sw,
+					      ARRAY_SIZE(adau7118_routes_sw));
+	}
+
+	return ret;
+}
+
+static const struct snd_soc_dai_ops adau7118_ops = {
+	.hw_params = adau7118_hw_params,
+	.set_channel_map = adau7118_set_channel_map,
+	.set_fmt = adau7118_set_fmt,
+	.set_tdm_slot = adau7118_set_tdm_slot,
+	.set_tristate = adau7118_set_tristate,
+};
+
+static struct snd_soc_dai_driver adau7118_dai = {
+	.name = "adau7118-hifi-capture",
+	.capture = {
+		.stream_name = "Capture",
+		.channels_min = 1,
+		.channels_max = 8,
+		.formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |
+			SNDRV_PCM_FMTBIT_S20_LE | SNDRV_PCM_FMTBIT_S24_LE |
+			SNDRV_PCM_FMTBIT_S24_3LE,
+		.rates = SNDRV_PCM_RATE_CONTINUOUS,
+		.rate_min = 4000,
+		.rate_max = 192000,
+		.sig_bits = 24,
+	},
+};
+
+static const struct snd_soc_component_driver adau7118_component_driver = {
+	.probe			= adau7118_component_probe,
+	.set_bias_level		= adau7118_set_bias_level,
+	.dapm_widgets		= adau7118_widgets,
+	.num_dapm_widgets	= ARRAY_SIZE(adau7118_widgets),
+	.use_pmdown_time	= 1,
+	.endianness		= 1,
+	.non_legacy_dai_naming	= 1,
+};
+
+static void adau7118_regulator_disable(void *data)
+{
+	struct adau7118_data *st = data;
+	int ret;
+	/*
+	 * If we fail to disable DVDD, don't bother in trying IOVDD. We
+	 * actually don't want to be left in the situation where DVDD
+	 * is enabled and IOVDD is disabled.
+	 */
+	ret = regulator_disable(st->dvdd);
+	if (ret)
+		return;
+
+	regulator_disable(st->iovdd);
+}
+
+static int adau7118_regulator_setup(struct adau7118_data *st)
+{
+	st->iovdd = devm_regulator_get(st->dev, "IOVDD");
+	if (IS_ERR(st->iovdd)) {
+		dev_err(st->dev, "Could not get iovdd: %ld\n",
+			PTR_ERR(st->iovdd));
+		return PTR_ERR(st->iovdd);
+	}
+
+	st->dvdd = devm_regulator_get(st->dev, "DVDD");
+	if (IS_ERR(st->dvdd)) {
+		dev_err(st->dev, "Could not get dvdd: %ld\n",
+			PTR_ERR(st->dvdd));
+		return PTR_ERR(st->dvdd);
+	}
+	/* just assume the device is in reset */
+	if (!st->hw_mode) {
+		regcache_mark_dirty(st->map);
+		regcache_cache_only(st->map, true);
+	}
+
+	return devm_add_action_or_reset(st->dev, adau7118_regulator_disable,
+					st);
+}
+
+static int adau7118_parset_dt(const struct adau7118_data *st)
+{
+	int ret;
+	u32 dec_ratio = 0;
+	/* 4 inputs */
+	u32 clk_map[4], regval;
+
+	if (st->hw_mode)
+		return 0;
+
+	ret = device_property_read_u32(st->dev, "adi,decimation-ratio",
+				       &dec_ratio);
+	if (!ret) {
+		switch (dec_ratio) {
+		case 64:
+			regval = ADAU7118_DEC_RATIO(0);
+			break;
+		case 32:
+			regval = ADAU7118_DEC_RATIO(1);
+			break;
+		case 16:
+			regval = ADAU7118_DEC_RATIO(2);
+			break;
+		default:
+			dev_err(st->dev, "Invalid dec ratio: %u", dec_ratio);
+			return -EINVAL;
+		}
+
+		ret = regmap_update_bits(st->map,
+					 ADAU7118_REG_DEC_RATIO_CLK_MAP,
+					 ADAU7118_DEC_RATIO_MASK, regval);
+		if (ret)
+			return ret;
+	}
+
+	ret = device_property_read_u32_array(st->dev, "adi,pdm-clk-map",
+					     clk_map, ARRAY_SIZE(clk_map));
+	if (!ret) {
+		int pdm;
+		u32 _clk_map = 0;
+
+		for (pdm = 0; pdm < ARRAY_SIZE(clk_map); pdm++)
+			_clk_map |= (clk_map[pdm] << (pdm + 4));
+
+		ret = regmap_update_bits(st->map,
+					 ADAU7118_REG_DEC_RATIO_CLK_MAP,
+					 ADAU7118_CLK_MAP_MASK, _clk_map);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+int adau7118_probe(struct device *dev, struct regmap *map, bool hw_mode)
+{
+	struct adau7118_data *st;
+	int ret;
+
+	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
+	if (!st)
+		return -ENOMEM;
+
+	st->dev = dev;
+	st->hw_mode = hw_mode;
+	dev_set_drvdata(dev, st);
+
+	if (!hw_mode) {
+		st->map = map;
+		adau7118_dai.ops = &adau7118_ops;
+		/*
+		 * Perform a full soft reset. This will set all register's
+		 * with their reset values.
+		 */
+		ret = regmap_update_bits(map, ADAU7118_REG_RESET,
+					 ADAU7118_FULL_SOFT_R_MASK,
+					 ADAU7118_FULL_SOFT_R(1));
+		if (ret)
+			return ret;
+	}
+
+	ret = adau7118_parset_dt(st);
+	if (ret)
+		return ret;
+
+	ret = adau7118_regulator_setup(st);
+	if (ret)
+		return ret;
+
+	return devm_snd_soc_register_component(dev,
+					       &adau7118_component_driver,
+					       &adau7118_dai, 1);
+}
+EXPORT_SYMBOL_GPL(adau7118_probe);
+
+MODULE_AUTHOR("Nuno Sa <nuno.sa@analog.com>");
+MODULE_DESCRIPTION("ADAU7118 8 channel PDM-to-I2S/TDM Converter driver");
+MODULE_LICENSE("GPL");
diff --git a/sound/soc/codecs/adau7118.h b/sound/soc/codecs/adau7118.h
new file mode 100644
index 000000000000..c65679a4dff1
--- /dev/null
+++ b/sound/soc/codecs/adau7118.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_ADAU7118_H
+#define _LINUX_ADAU7118_H
+
+struct regmap;
+struct device;
+
+/* register map */
+#define ADAU7118_REG_VENDOR_ID		0x00
+#define ADAU7118_REG_DEVICE_ID1		0x01
+#define ADAU7118_REG_DEVICE_ID2		0x02
+#define ADAU7118_REG_REVISION_ID	0x03
+#define ADAU7118_REG_ENABLES		0x04
+#define ADAU7118_REG_DEC_RATIO_CLK_MAP	0x05
+#define ADAU7118_REG_HPF_CONTROL	0x06
+#define ADAU7118_REG_SPT_CTRL1		0x07
+#define ADAU7118_REG_SPT_CTRL2		0x08
+#define ADAU7118_REG_SPT_CX(num)	(0x09 + (num))
+#define ADAU7118_REG_DRIVE_STRENGTH	0x11
+#define ADAU7118_REG_RESET		0x12
+
+int adau7118_probe(struct device *dev, struct regmap *map, bool hw_mode);
+
+#endif
-- 
2.23.0

