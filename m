Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E95161BE3BD
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2020 18:25:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726973AbgD2QYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Apr 2020 12:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726892AbgD2QYt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Apr 2020 12:24:49 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDD6CC03C1AE
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2020 09:24:47 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so3266574wrs.9
        for <devicetree@vger.kernel.org>; Wed, 29 Apr 2020 09:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MJEKgZOpkzSWpFL/ACKo1fDWzWkNEADjm8mRR//fcr8=;
        b=QeNGZtKpDxisjOutQ/9m7p1Y7VyoKTecV5cTKdC48xFGi+jM8I0r5xdcpGxNhh7NHw
         itQVSZ4gIRF3rupZUtgYbbWJjSiTsS5+u62ogIVlLRvJIJJ6R003J1t9x0Eck5qMr4fQ
         NPAS9PUqiMdEtRlk2QgoBSXWaeSfxQjOl0RrLIBQpgLiqg6Uidx1NUZlAtbVMZCNxf0k
         c5eqx11txM3QyslPyeXXmpm2DDYs/DBLl37gr2UBZovCV8/EDBLjcSi0GtWsIPoMCSLL
         IyoDZpANtyYODNwEJ3+u/8cbxKC/IvN1Fds3jE4g59eUT7pE/hpZs10JkGx3Kx0aTUKD
         ExUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MJEKgZOpkzSWpFL/ACKo1fDWzWkNEADjm8mRR//fcr8=;
        b=aLO7zDR+piAT7vUYp7NXOqndgbay6EFT4M+gCF/JKO34OV0/0SXLpGhS7msfqK4TIj
         9FD1POoPG05AbAC9hOHZ4j5yxf+byhWsMjI42HhqATRQLX0bTgxpMSlckQM4+CYXbb+v
         AR5CFeR7HOxqssXSaoGMxbpyf9j/VWTr+CODgEeqvuOliTuWuTgNa8K60V3BjE1rptWK
         5ZNupXLfT6DDZzoEGTnKLjguCdO99eSOBjZsUsW0b5M3UiylT9HLhzQ2v9MFvULU9BF1
         a80rph/1h3PKwgP/rp6i9xJNnasWo74Cwlrkmp0BVS4lxR0rArUQZ6USQJkMlN7Rh+zO
         WXzA==
X-Gm-Message-State: AGi0PuZY3Nr94WXoBFF1nDViOYi7v844Y4EOPN/IAUyMd7N/VyrenWKt
        WbObPoj3ZXJKswotS1x2sK1yoQ==
X-Google-Smtp-Source: APiQypJWI3QFx/qs4gwb7UHLzIkML6oEYje5SwO3wUkXBbyxZD0VyxynxsFw3GRGOaMKk0d/A+Lkbw==
X-Received: by 2002:adf:b1d1:: with SMTP id r17mr38235410wra.85.1588177486440;
        Wed, 29 Apr 2020 09:24:46 -0700 (PDT)
Received: from xps7590.local ([37.120.81.28])
        by smtp.gmail.com with ESMTPSA id h2sm32616554wro.9.2020.04.29.09.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 09:24:45 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Dongchun Zhu <dongchun.zhu@mediatek.com>,
        Fabio Estevam <festevam@gmail.com>,
        Tomasz Figa <tfiga@chromium.org>,
        Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v6 3/3] media: ov8856: Implement sensor module revision identification
Date:   Wed, 29 Apr 2020 18:24:37 +0200
Message-Id: <20200429162437.2025699-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200429162437.2025699-1-robert.foss@linaro.org>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Query the sensor for its module revision, and compare it
to known revisions.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

- Changes since v3:
  * Actually add module revision 2A

- Changes since v2:
  * Add module revision 2A
  * Sakari: Remove ov8856_check_revision()
  * Sakari: Stop EEPROM streaming mode

 drivers/media/i2c/ov8856.c | 53 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 4749dc74d5ad..3f4000aef2ab 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -32,6 +32,19 @@
 #define OV8856_MODE_STANDBY		0x00
 #define OV8856_MODE_STREAMING		0x01
 
+/* module revisions */
+#define OV8856_2A_MODULE		0x01
+#define OV8856_1B_MODULE		0x02
+
+/* the OTP read-out buffer is at 0x7000 and 0xf is the offset
+ * of the byte in the OTP that means the module revision
+ */
+#define OV8856_MODULE_REVISION		0x700f
+#define OV8856_OTP_MODE_CTRL		0x3d84
+#define OV8856_OTP_LOAD_CTRL		0x3d81
+#define OV8856_OTP_MODE_AUTO		0x00
+#define OV8856_OTP_LOAD_CTRL_ENABLE	BIT(0)
+
 /* vertical-timings from sensor */
 #define OV8856_REG_VTS			0x380e
 #define OV8856_VTS_MAX			0x7fff
@@ -1152,6 +1165,46 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
 		return -ENXIO;
 	}
 
+	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
+			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
+	if (ret)
+		return ret;
+
+	ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
+			       OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
+	if (ret) {
+		dev_err(&client->dev, "failed to set otp mode");
+		return ret;
+	}
+
+	ret = ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
+			       OV8856_REG_VALUE_08BIT,
+			       OV8856_OTP_LOAD_CTRL_ENABLE);
+	if (ret) {
+		dev_err(&client->dev, "failed to enable load control");
+		return ret;
+	}
+
+	ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
+			      OV8856_REG_VALUE_08BIT, &val);
+	if (ret) {
+		dev_err(&client->dev, "failed to read module revision");
+		return ret;
+	}
+
+	dev_info(&client->dev, "OV8856 revision %x (%s) at address 0x%02x\n",
+		val,
+		val == OV8856_2A_MODULE ? "2A" :
+		val == OV8856_1B_MODULE ? "1B" : "unknown revision",
+		client->addr);
+
+	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
+			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY);
+	if (ret) {
+		dev_err(&client->dev, "failed to exit streaming mode");
+		return ret;
+	}
+
 	return 0;
 }
 
-- 
2.25.1

