Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6461C5271
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 12:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728740AbgEEKCL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 May 2020 06:02:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728736AbgEEKCK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 May 2020 06:02:10 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E9D8C061A0F
        for <devicetree@vger.kernel.org>; Tue,  5 May 2020 03:02:10 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k12so1594924wmj.3
        for <devicetree@vger.kernel.org>; Tue, 05 May 2020 03:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6ARsMuKYhMVLxyg5O1RxGGO0HJh3za6PnGW69GdNBJ8=;
        b=tj9jstQlHQwxdLi82NpQl1+wOETOL0437W7bk+nJ218gBSz4wh0KU80LEHlbUVpAU9
         1COLiEfLL4x4WRRkaTcMs6agaZvgFAJZSxSgvmdgq0KtNdiUJPY7r8k4m7ek7LItNvM5
         Ywv9pLxXQBfL/aUSGI0wpKAk2S7AF22jntxLzG2bpIALl5ODWwNooBRMM8bPU0f0aBdw
         ees1DQwOg2hl1uezS8yD+k/NxC/F0Xv+OQIT3nGNXjSVzk2Wx3yDQCpbN6QSz+v/ZUc5
         IrDLoiDhWMPtIl56p+OIQvYjHqXzzROgwPOyNuvkjEkZNzCfXO5itng/CzPTskBXGZy9
         TjaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6ARsMuKYhMVLxyg5O1RxGGO0HJh3za6PnGW69GdNBJ8=;
        b=SqRCHu8rP3iJ7sU3wRm8tNUzeWBHPPR79clLnHUhP1xwc99iUcvanZu+GCwV61D+09
         vIZddzW6qeyASnJGwlRr3TEy4AvzEzDoioIn4vQjmqcPJWuvb4oAdHBvjEXjhVjWXp5a
         B6QJUeVPzh3I49tP+JYPMEnj1ebkNCDq45H+HaSOsE/E0biaWAjTJ4epiqO8Z8H8AU9I
         n5TU5xuGCXBOuYLFBkD4UMzsYcpV+VwFVo3/n82Cs0/iNZMJXZ1HVN/BU5ev3HC+9KvU
         y1Kzw1JiDpC2z7rNbE4KlfstU8kfkZFDxqSrsDx8cwTfJOA9rYU8JlwutKl0lgJGPJkU
         za1w==
X-Gm-Message-State: AGi0PuY/PyQtimNA8MJgU5a/xeP0rkqcla1b1GZ61ghTFxzQ1E1PNZzH
        KEHmY4q+ubZ4nCycXpYXQXNn1A==
X-Google-Smtp-Source: APiQypKwu36pUjC85aEvxmSpfIP0n4+pkY0t2Ob4Bb98cCm8CtABo39acwOtrwCqI8byYKvbJV3XYA==
X-Received: by 2002:a1c:a549:: with SMTP id o70mr2541234wme.179.1588672929334;
        Tue, 05 May 2020 03:02:09 -0700 (PDT)
Received: from localhost.localdomain ([37.120.63.158])
        by smtp.gmail.com with ESMTPSA id n6sm2884258wmc.28.2020.05.05.03.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 03:02:08 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Dongchun Zhu <dongchun.zhu@mediatek.com>,
        Fabio Estevam <festevam@gmail.com>,
        Tomasz Figa <tfiga@chromium.org>, Ben Kao <ben.kao@intel.com>,
        Robert Foss <robert.foss@linaro.org>
Subject: [PATCH v7 3/3] media: ov8856: Implement sensor module revision identification
Date:   Tue,  5 May 2020 12:01:32 +0200
Message-Id: <20200505100129.104673-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505100129.104673-1-robert.foss@linaro.org>
References: <20200505100129.104673-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Query the sensor for its module revision, and compare it
to known revisions.

Currently 2A and 1B revision indentification is supported.

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
index e6418a79801e..3c82c3e588d7 100644
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

