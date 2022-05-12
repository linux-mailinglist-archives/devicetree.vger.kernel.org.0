Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED81524CB1
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:24:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353657AbiELMYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:24:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353662AbiELMYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:24:42 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB58723BB67
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:24:39 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id a5so3223393wrp.7
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HfH019+cT0njZgEoB5v4us8H/Co27KMCU86/mPoLRqg=;
        b=A7TMJCxmk4lkEBYyfuuMZ5/cY5FebO7K8BkFV3Er9WuM1U2jurjR0UE9SnNbacNFlA
         vXe6CyqK5xafOBbYPM6wWQ3ch4xeaMAQR+4MZ1AB0vkYdOdTq+RngYD+JqfrsP/nzHJl
         ZVsDSKx0VaAKb696NNVvGQU/J9LIZizmnigESNEON8zuHSJGbf9BxxYIKoNu9a0MX3wn
         9flx1OgMgaooNRHbhFXWKg7LX3HfHQRkPAs4sZ6xETG5kI0LAxbFNSDv3ykm5nTfDBGL
         fZmsHZIdLC/LJCq4aEQ6BMtiHSnhVgB9w9aLAqAI93C+8Uh87Q+bkkek+PBqrGjYh7Uj
         QioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HfH019+cT0njZgEoB5v4us8H/Co27KMCU86/mPoLRqg=;
        b=mKF7gQKZYGgrIjz2elpv7TfpJTmHv2QhCH+qV66q+ievyNOnEDNKlCSPSOkIor92Xq
         jvd7/nchBznMDEZ2gefiA+aJQRQqGv07kI+PB5EbXJmqxeeLvDzNTagWS7WF99YB2wk7
         zFfWL3GvP73ZTm3hCNw0Frx6IQLoo8k51cOXvKrTRTA48y2+tB6K2WIO/cHzNfN/gj9l
         YulypBeTAQGHKLRcp02ZnJHvWsfvt+EQuH4Ap93bYfpQBKvhU0A1sAF0W6vgYIT8HL0s
         4lfekzBFEfzOlgwwsAo6PbdaPkQIvOGaMwK6RhbVArw0FGzPrJBDSiZSo6ETXBYXKbXt
         AxVA==
X-Gm-Message-State: AOAM530Heflm5lsjUDv/Msk0KjoMBFcFpI/qKliV7ziMN4/qWzKQZ6/U
        sIQnOf06TRR91Mcc5dHmZq5HPw==
X-Google-Smtp-Source: ABdhPJxWFKFcvfIhGck12vzg6QdmKoi3QsdXBypkekPwJfM4MQvTVlUyQyX9WZNJ3Uv1LPsj0I9o/A==
X-Received: by 2002:a5d:6183:0:b0:20a:db51:f21a with SMTP id j3-20020a5d6183000000b0020adb51f21amr27404955wru.127.1652358278336;
        Thu, 12 May 2022 05:24:38 -0700 (PDT)
Received: from xps-9300.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id z22-20020a7bc156000000b003942a244f30sm3047819wmi.9.2022.05.12.05.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:24:38 -0700 (PDT)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     robh+dt@kernel.org, krzk+dt@kernel.org, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de
Cc:     rafael@kernel.org, daniel.lezcano@linaro.org, amitk@kernel.org,
        rui.zhang@intel.com, michael.kao@mediatek.com,
        ben.tseng@mediatek.com, ethan.chang@mediatek.com,
        frank-w@public-files.de, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, khilman@baylibre.com,
        Michael Kao <michael.kao@mediatek.comi>
Subject: [PATCH v6 1/7] thermal: mediatek: Relocate driver to mediatek folder
Date:   Thu, 12 May 2022 14:24:27 +0200
Message-Id: <20220512122433.1399802-2-abailon@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220512122433.1399802-1-abailon@baylibre.com>
References: <20220512122433.1399802-1-abailon@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Kao <michael.kao@mediatek.com>

Add Mediatek proprietary folder to upstream more thermal zone and cooler
drivers. Relocate the original thermal controller driver to it and rename
as soc_temp.c to show its purpose more clearly.

Signed-off-by: Michael Kao <michael.kao@mediatek.comi>
Signed-off-by: Ben Tseng <ben.tseng@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/thermal/Kconfig                       | 14 ++++-------
 drivers/thermal/Makefile                      |  2 +-
 drivers/thermal/mediatek/Kconfig              | 23 +++++++++++++++++++
 drivers/thermal/mediatek/Makefile             |  1 +
 .../{mtk_thermal.c => mediatek/soc_temp.c}    |  0
 5 files changed, 29 insertions(+), 11 deletions(-)
 create mode 100644 drivers/thermal/mediatek/Kconfig
 create mode 100644 drivers/thermal/mediatek/Makefile
 rename drivers/thermal/{mtk_thermal.c => mediatek/soc_temp.c} (100%)

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index e37691e0bf20..8669d7278055 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -410,16 +410,10 @@ config DA9062_THERMAL
 	  zone.
 	  Compatible with the DA9062 and DA9061 PMICs.
 
-config MTK_THERMAL
-	tristate "Temperature sensor driver for mediatek SoCs"
-	depends on ARCH_MEDIATEK || COMPILE_TEST
-	depends on HAS_IOMEM
-	depends on NVMEM || NVMEM=n
-	depends on RESET_CONTROLLER
-	default y
-	help
-	  Enable this option if you want to have support for thermal management
-	  controller present in Mediatek SoCs
+menu "Mediatek thermal drivers"
+depends on ARCH_MEDIATEK || COMPILE_TEST
+source "drivers/thermal/mediatek/Kconfig"
+endmenu
 
 config AMLOGIC_THERMAL
 	tristate "Amlogic Thermal Support"
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index f0c36a1530d5..9ade39bdb525 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -55,7 +55,7 @@ obj-y				+= st/
 obj-$(CONFIG_QCOM_TSENS)	+= qcom/
 obj-y				+= tegra/
 obj-$(CONFIG_HISI_THERMAL)     += hisi_thermal.o
-obj-$(CONFIG_MTK_THERMAL)	+= mtk_thermal.o
+obj-$(CONFIG_MTK_THERMAL)	+= mediatek/
 obj-$(CONFIG_GENERIC_ADC_THERMAL)	+= thermal-generic-adc.o
 obj-$(CONFIG_UNIPHIER_THERMAL)	+= uniphier_thermal.o
 obj-$(CONFIG_AMLOGIC_THERMAL)     += amlogic_thermal.o
diff --git a/drivers/thermal/mediatek/Kconfig b/drivers/thermal/mediatek/Kconfig
new file mode 100644
index 000000000000..0351e73170b7
--- /dev/null
+++ b/drivers/thermal/mediatek/Kconfig
@@ -0,0 +1,23 @@
+config MTK_THERMAL
+	tristate "Mediatek thermal drivers"
+	depends on THERMAL_OF
+	help
+	  This is the option for Mediatek thermal software
+	  solutions. Please enable corresponding options to
+	  get temperature information from thermal sensors or
+	  turn on throttle mechaisms for thermal mitigation.
+
+if MTK_THERMAL
+
+config MTK_SOC_THERMAL
+	tristate "Temperature sensor driver for mediatek SoCs"
+	depends on HAS_IOMEM
+	depends on NVMEM
+	depends on RESET_CONTROLLER
+	help
+	  Enable this option if you want to get SoC temperature
+	  information for Mediatek platforms. This driver
+	  configures thermal controllers to collect temperature
+	  via AUXADC interface.
+
+endif
diff --git a/drivers/thermal/mediatek/Makefile b/drivers/thermal/mediatek/Makefile
new file mode 100644
index 000000000000..f75313ddce5e
--- /dev/null
+++ b/drivers/thermal/mediatek/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MTK_SOC_THERMAL)	+= soc_temp.o
diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mediatek/soc_temp.c
similarity index 100%
rename from drivers/thermal/mtk_thermal.c
rename to drivers/thermal/mediatek/soc_temp.c
-- 
2.35.1

