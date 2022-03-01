Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 783F84C8BD8
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 13:42:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234605AbiCAMmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 07:42:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234755AbiCAMmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 07:42:51 -0500
X-Greylist: delayed 49578 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 01 Mar 2022 04:42:09 PST
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF33498F75
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 04:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1646138526;
    s=strato-dkim-0002; d=gerhold.net;
    h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=2KtJQ1RKQJblfXNU6efNM3rKLhsvuJUUsD0HH9WcNJ8=;
    b=huZ+tCVmlmS9C8CoJga+fjSVPwAzigVsJf3GI5hTrrt2CIMouz+AAOT7A/Oe5UP88O
    mEXdH87BMKCAa5TpiFEBiY7/2Gtlm8aLQGkc30oLTvjWe+nTlMFRx20Voz0ogI3wuIlT
    ADA/bL32IbW7+SFsyUMjW0ZC9JgyurQcqlwuAQ1lAMNgRv6zX+1/YTF8g84euPMhHPc0
    piDOqVktcAUZUIQP7iFVPy67hvrs2cV6dYe6WhqioeTFyOjgYyu9nEs7+fVKf7yJLXY+
    t8bz37dCyVcZHtwBmWWlUUVUQ1bYQPyztSJ4WHRnsCQfDGNxzumiZ+OWtRoN1nNTSOfa
    ENhA==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7UOGqRde+a0fiL2ZP6Q"
X-RZG-CLASS-ID: mo00
Received: from droid..
    by smtp.strato.de (RZmta 47.40.1 AUTH)
    with ESMTPSA id kdc58dy21Cg5a4o
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 1 Mar 2022 13:42:05 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH 2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier driver
Date:   Tue,  1 Mar 2022 13:37:42 +0100
Message-Id: <20220301123742.72146-3-stephan@gerhold.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220301123742.72146-1-stephan@gerhold.net>
References: <20220301123742.72146-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonathan Albrieux <jonathan.albrieux@gmail.com>

The Awinic AW8738 is a simple audio amplifier using an enable GPIO.
The main difference to simple-amplifier is that there is a "one-wire
pulse control" that allows configuring the amplifier to one of a few
pre-defined modes.

Add a simple driver that allows setting it up in the device tree
with a specified mode number.

Signed-off-by: Jonathan Albrieux <jonathan.albrieux@gmail.com>
Co-developed-by: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 sound/soc/codecs/Kconfig  |  10 ++++
 sound/soc/codecs/Makefile |   2 +
 sound/soc/codecs/aw8738.c | 104 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 116 insertions(+)
 create mode 100644 sound/soc/codecs/aw8738.c

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 4de029ae377c..0e35d33f8590 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -53,6 +53,7 @@ config SND_SOC_ALL_CODECS
 	imply SND_SOC_AK5558
 	imply SND_SOC_ALC5623
 	imply SND_SOC_ALC5632
+	imply SND_SOC_AW8738
 	imply SND_SOC_BT_SCO
 	imply SND_SOC_BD28623
 	imply SND_SOC_CQ0093VC
@@ -579,6 +580,15 @@ config SND_SOC_ALC5632
 	tristate
 	depends on I2C
 
+config SND_SOC_AW8738
+	tristate "Awinic AW8738 Audio Amplifier"
+	select GPIOLIB
+	help
+	  Enable support for the Awinic AW8738 audio amplifier (or similar).
+	  The driver supports simple audio amplifiers similar to
+	  SND_SOC_SIMPLE_AMPLIFIER, but additionally allows setting the
+	  amplifier mode using the Awinic-specific one-wire pulse control.
+
 config SND_SOC_BD28623
 	tristate "ROHM BD28623 CODEC"
 	help
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index c3c6059a5f8a..8637e9e869e3 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -45,6 +45,7 @@ snd-soc-ak4671-objs := ak4671.o
 snd-soc-ak5386-objs := ak5386.o
 snd-soc-ak5558-objs := ak5558.o
 snd-soc-arizona-objs := arizona.o arizona-jack.o
+snd-soc-aw8738-objs := aw8738.o
 snd-soc-bd28623-objs := bd28623.o
 snd-soc-bt-sco-objs := bt-sco.o
 snd-soc-cpcap-objs := cpcap.o
@@ -388,6 +389,7 @@ obj-$(CONFIG_SND_SOC_AK5558)	+= snd-soc-ak5558.o
 obj-$(CONFIG_SND_SOC_ALC5623)    += snd-soc-alc5623.o
 obj-$(CONFIG_SND_SOC_ALC5632)	+= snd-soc-alc5632.o
 obj-$(CONFIG_SND_SOC_ARIZONA)	+= snd-soc-arizona.o
+obj-$(CONFIG_SND_SOC_AW8738)	+= snd-soc-aw8738.o
 obj-$(CONFIG_SND_SOC_BD28623)	+= snd-soc-bd28623.o
 obj-$(CONFIG_SND_SOC_BT_SCO)	+= snd-soc-bt-sco.o
 obj-$(CONFIG_SND_SOC_CQ0093VC) += snd-soc-cq93vc.o
diff --git a/sound/soc/codecs/aw8738.c b/sound/soc/codecs/aw8738.c
new file mode 100644
index 000000000000..b075c7c0efd0
--- /dev/null
+++ b/sound/soc/codecs/aw8738.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/regulator/consumer.h>
+#include <sound/soc.h>
+
+struct aw8738_priv {
+	struct gpio_desc *gpiod_enable;
+	unsigned int mode;
+};
+
+static int aw8738_drv_event(struct snd_soc_dapm_widget *w,
+			    struct snd_kcontrol *kcontrol, int event)
+{
+	struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
+	struct aw8738_priv *aw = snd_soc_component_get_drvdata(c);
+	int i;
+
+	switch (event) {
+	case SND_SOC_DAPM_POST_PMU:
+		for (i = 0; i < aw->mode; i++) {
+			gpiod_set_value_cansleep(aw->gpiod_enable, 0);
+			udelay(2);
+			gpiod_set_value_cansleep(aw->gpiod_enable, 1);
+			udelay(2);
+		}
+		msleep(40);
+		break;
+	case SND_SOC_DAPM_PRE_PMD:
+		gpiod_set_value_cansleep(aw->gpiod_enable, 0);
+		usleep_range(1000, 2000);
+		break;
+	default:
+		WARN(1, "Unexpected event");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct snd_soc_dapm_widget aw8738_dapm_widgets[] = {
+	SND_SOC_DAPM_INPUT("IN"),
+	SND_SOC_DAPM_OUT_DRV_E("DRV", SND_SOC_NOPM, 0, 0, NULL, 0, aw8738_drv_event,
+			       SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_PRE_PMD),
+	SND_SOC_DAPM_OUTPUT("OUT"),
+};
+
+static const struct snd_soc_dapm_route aw8738_dapm_routes[] = {
+	{ "DRV", NULL, "IN" },
+	{ "OUT", NULL, "DRV" },
+};
+
+static const struct snd_soc_component_driver aw8738_component_driver = {
+	.dapm_widgets = aw8738_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(aw8738_dapm_widgets),
+	.dapm_routes = aw8738_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(aw8738_dapm_routes),
+};
+
+static int aw8738_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct aw8738_priv *aw;
+	int ret;
+
+	aw = devm_kzalloc(dev, sizeof(*aw), GFP_KERNEL);
+	if (!aw)
+		return -ENOMEM;
+	platform_set_drvdata(pdev, aw);
+
+	aw->gpiod_enable = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(aw->gpiod_enable))
+		return dev_err_probe(dev, PTR_ERR(aw->gpiod_enable),
+				     "Failed to get 'enable' gpio");
+
+	ret = device_property_read_u32(dev, "awinic,mode", &aw->mode);
+	if (ret)
+		return -EINVAL;
+
+	return devm_snd_soc_register_component(&pdev->dev,
+					       &aw8738_component_driver,
+					       NULL, 0);
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id aw8738_of_match[] = {
+	{ .compatible = "awinic,aw8738" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, aw8738_of_match);
+#endif
+
+static struct platform_driver aw8738_driver = {
+	.probe	= aw8738_probe,
+	.driver = {
+		.name = "aw8738",
+		.of_match_table = of_match_ptr(aw8738_of_match),
+	},
+};
+module_platform_driver(aw8738_driver);
+
+MODULE_DESCRIPTION("Awinic AW8738 Amplifier Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.35.1

