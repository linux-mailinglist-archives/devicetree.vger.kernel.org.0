Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 862CFBEC6E
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 09:18:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727821AbfIZHSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 03:18:37 -0400
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77]:11464 "EHLO
        mx0b-00128a01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728268AbfIZHSb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Sep 2019 03:18:31 -0400
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
        by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8Q7DGjS004379;
        Thu, 26 Sep 2019 03:16:59 -0400
Received: from nam04-co1-obe.outbound.protection.outlook.com (mail-co1nam04lp2058.outbound.protection.outlook.com [104.47.45.58])
        by mx0b-00128a01.pphosted.com with ESMTP id 2v6hkcpmqe-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 26 Sep 2019 03:16:59 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZP33jA0ROX0A5d4nixHqLHMtkHl5NFtaZ2qtcnWiGLxV/PTu1R3odeBphTFZlDL7GzgMBZlo2fts94HAJG0IyiHWo+qUB1iqAHL1aOCtGo8c2CW2q/Yqx1PJauqPA2dmySWfB6ovALUU4HnHFIFek8xwJK5mHJryN3db1pstTHqVfRdud1gV8EsUcQ1iTu8IT3Oq8hXtwC1WcCN1LINudydEjP/FG5ow0abPsCezWgGqiGxuQjqCLjBCcp9vWfUra5hIYqR0P2Rkdl7rTrhdPsCCxnIkFxPCjEzbNHzDzZcYlhnKb3diV4TkfMdLk5OsTv5CZ216zAYHhzG9MKa+uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f0mzJPE+ANEpG//f11kCMsjrDGDF/4/PAbqCtKaCyJA=;
 b=D7WbmZozkW0TqLMK7wpzadyrTzu+bLN++itaCaF0+xO/r3tl+qscGDzikD6KKTdvd7/YR+T1jmIT6GbahDdN7ZynSDntsZXSYMEvAEw+iRlDtpngFMkvd+t3beORIwaEKn7lG9qkt6LdJnZnya2DfQP/weIO2ZD++vSKNeOnXQ5qaXbUT7aDYV79iXQfwEVmrekCs6UtwhE731xOFLdTxbYRvg4cAQBH7G/cOfC+Ka9ZdsOueah/d9sJShJUqfWjGRPe+ODynviT4Nz6CFGdHV6ijyo/Da/5RsA/X1RIU9DylekHO6Onn2Uk8X5Uvo7IgU3sWMAn/xGB+4T3CCiUYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.55) smtp.rcpttodomain=gmail.com smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f0mzJPE+ANEpG//f11kCMsjrDGDF/4/PAbqCtKaCyJA=;
 b=NqZZASKDjJ/nU/QqivEB0hmQD6A4yg+o6SLtWHDgEr9tEepRp9SNxnHL4sXc0P2B7S12PQBfpgtVWVfKAwWYQnve0bWP537nyzG1Oq86qxUGR6oFWsilDSuMeLiIx64LbOAJEMctoPsku/Hd08eMaGGy6+FGkn7xLbcXFYvmkyQ=
Received: from BN3PR03CA0108.namprd03.prod.outlook.com (2603:10b6:400:4::26)
 by MWHPR03MB2990.namprd03.prod.outlook.com (2603:10b6:300:124::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.15; Thu, 26 Sep
 2019 07:16:56 +0000
Received: from SN1NAM02FT019.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by BN3PR03CA0108.outlook.office365.com
 (2603:10b6:400:4::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.15 via Frontend
 Transport; Thu, 26 Sep 2019 07:16:56 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT019.mail.protection.outlook.com (10.152.72.130) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 07:16:56 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com [10.64.69.107])
        by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x8Q7GnuU010154
        (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
        Thu, 26 Sep 2019 00:16:49 -0700
Received: from nsa.ad.analog.com (10.44.3.90) by NWD2HUBCAS7.ad.analog.com
 (10.64.69.107) with Microsoft SMTP Server (TLS) id 14.3.408.0; Thu, 26 Sep
 2019 03:16:52 -0400
From:   =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
CC:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM Converter driver
Date:   Thu, 26 Sep 2019 09:17:06 +0200
Message-ID: <20190926071707.17557-1-nuno.sa@analog.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.44.3.90]
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(3846002)(23676004)(47776003)(2616005)(7636002)(7736002)(26005)(2906002)(50466002)(305945005)(5660300002)(126002)(486006)(1076003)(2870700001)(30864003)(6666004)(476003)(356004)(54906003)(5820100001)(70206006)(186003)(106002)(246002)(86362001)(316002)(70586007)(336012)(36756003)(45776006)(966005)(6306002)(16526019)(8936002)(14444005)(50226002)(7696005)(4326008)(110136005)(6116002)(426003)(8676002)(478600001);DIR:OUT;SFP:1101;SCL:1;SRVR:MWHPR03MB2990;H:nwd2mta1.analog.com;FPR:;SPF:Pass;LANG:en;PTR:nwd2mail10.analog.com;A:1;MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91e814af-e071-4f99-ff25-08d7425183af
X-MS-TrafficTypeDiagnostic: MWHPR03MB2990:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <MWHPR03MB29903B4C6FE8E2EF7474A34C99860@MWHPR03MB2990.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M4mzCclokWUPd4d/FcMt/RukthQiOrEgfDulbQUYI8cahVe0EgzLE0gM8yZK0cZle50vfFnR3Ceq6NHFtPPhJxT0xjaWBWR3MVjf2FEMf5pidOu1rSXjvJFgiGvEBTyxoQZyn6tOgv8OSNQZj73Nj6tiq0JtVA19P8AdIpwy1FFy0z7LPRjPMQ34MItABSPBcyvgSX+jtf1mXK0Kidpq9LxXlqP3xC88i4Zb7oXgR/hd3DsVXF1EO8liYxWb3Hs3yUhW5ZuY1b6295SNTfWypQjK+yktOVBycIkiYnFJ+id046zudzpPyxfUr539RonkFlkRDR1kKyaAqRi54STjN0Y5rmKdkqaas3f69aLKrS/fEfZ9/vy5NAbWc+iilRkOEMNoCL77sgb1hiNTrHwFgP1YHoEvlFT98ccVjU2HlW0sv5jUTIjX56SAPcIRzY3q8Gji8jaa1vqZpdFdCtnmMw==
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 07:16:56.4167
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 91e814af-e071-4f99-ff25-08d7425183af
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a;Ip=[137.71.25.55];Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR03MB2990
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-26_02:2019-09-25,2019-09-26 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 clxscore=1015 mlxscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909260072
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
 MAINTAINERS                     |   1 +
 sound/soc/codecs/Kconfig        |  28 ++
 sound/soc/codecs/Makefile       |   6 +
 sound/soc/codecs/adau7118-hw.c  |  43 +++
 sound/soc/codecs/adau7118-i2c.c |  82 +++++
 sound/soc/codecs/adau7118.c     | 621 ++++++++++++++++++++++++++++++++
 sound/soc/codecs/adau7118.h     |  24 ++
 7 files changed, 805 insertions(+)
 create mode 100644 sound/soc/codecs/adau7118-hw.c
 create mode 100644 sound/soc/codecs/adau7118-i2c.c
 create mode 100644 sound/soc/codecs/adau7118.c
 create mode 100644 sound/soc/codecs/adau7118.h

diff --git a/MAINTAINERS b/MAINTAINERS
index a50e97a63bc8..77c920559d82 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -985,6 +985,7 @@ F:	drivers/media/i2c/adv7842*
 
 ANALOG DEVICES INC ASOC CODEC DRIVERS
 M:	Lars-Peter Clausen <lars@metafoo.de>
+M:	Nuno Sá <nuno.sa@analog.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
 W:	http://wiki.analog.com/
 W:	http://ez.analog.com/community/linux-device-drivers
diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 9f89a5346299..006b0686776c 100644
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
@@ -392,6 +394,32 @@ config SND_SOC_ADAU1977_I2C
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
index 5b4bb8cf4325..974dc1eda797 100644
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
@@ -301,6 +304,9 @@ obj-$(CONFIG_SND_SOC_ADAU1977)		+= snd-soc-adau1977.o
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
index 000000000000..499dd48ea01b
--- /dev/null
+++ b/sound/soc/codecs/adau7118-hw.c
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter Standalone Hw
+ * driver
+ *
+ * Copyright 2019 Analog Devices Inc.
+ */
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
index 000000000000..1fd0b0287699
--- /dev/null
+++ b/sound/soc/codecs/adau7118-i2c.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter driver over I2C
+ *
+ * Copyright 2019 Analog Devices Inc.
+ */
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
index 000000000000..d6b90e31042f
--- /dev/null
+++ b/sound/soc/codecs/adau7118.c
@@ -0,0 +1,621 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter driver
+ *
+ * Copyright 2019 Analog Devices Inc.
+ */
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
+
+	return ret < 0 ? ret : 0;
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
+
+	return ret < 0 ? ret : 0;
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
+			if (!st->iovdd)
+				return 0;
+
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
+		if (!st->iovdd)
+			return 0;
+
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
+#ifdef CONFIG_PM
+static int adau7118_suspend(struct snd_soc_component *component)
+{
+	return snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);
+}
+
+static int adau7118_resume(struct snd_soc_component *component)
+{
+	return snd_soc_component_force_bias_level(component,
+						  SND_SOC_BIAS_STANDBY);
+}
+#else
+#define adau7118_suspend NULL
+#define adau7118_resume NULL
+#endif
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
+	.suspend		= adau7118_suspend,
+	.resume			= adau7118_resume,
+	.dapm_widgets		= adau7118_widgets,
+	.num_dapm_widgets	= ARRAY_SIZE(adau7118_widgets),
+	.idle_bias_on		= 1,
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
+	int ret = 0;
+
+	st->iovdd = devm_regulator_get_optional(st->dev, "IOVDD");
+	if (!IS_ERR(st->iovdd)) {
+		/*
+		 * Only get dvdd if iovdd is present. Furthermore,
+		 * if iovdd is present, dvdd must also be given. The two
+		 * supplies should be controlled together since dvdd should
+		 * not be applied before iovdd.
+		 */
+		st->dvdd = devm_regulator_get(st->dev, "DVDD");
+		if (IS_ERR(st->dvdd)) {
+			dev_err(st->dev, "Could not get dvdd: %ld\n",
+				PTR_ERR(st->dvdd));
+			return PTR_ERR(st->dvdd);
+		}
+		/* just assume the device is in reset */
+		if (!st->hw_mode) {
+			regcache_mark_dirty(st->map);
+			regcache_cache_only(st->map, true);
+		}
+
+		ret = devm_add_action_or_reset(st->dev,
+					       adau7118_regulator_disable, st);
+	} else {
+		if (PTR_ERR(st->iovdd) == -ENODEV) {
+			st->iovdd = NULL;
+		} else {
+			dev_err(st->dev, "Failed to get IOVDD %ld\n",
+				PTR_ERR(st->iovdd));
+			return PTR_ERR(st->iovdd);
+		}
+	}
+
+	return ret;
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

