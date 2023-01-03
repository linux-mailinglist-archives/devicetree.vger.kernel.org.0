Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F44965CA5F
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 00:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238297AbjACXfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 18:35:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238230AbjACXfc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 18:35:32 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDAE716497
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 15:35:31 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id g13so47949198lfv.7
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 15:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R0uvymsPrpGAEh2BG1RLD0dqjUm8ZCLGS+gXm8386eY=;
        b=HbM+7KVQBWYkGwSyHDDJwF3QRzIi3Ah0k5QjVzuEEmGnlYXJsCooNiQE9P7xijHOKs
         BExioI0Ana0mbpWq3NcBftE0EgTQRybRgsf+a1k03OSoIkpPN6Zy2UO2Xnd6HChfEg/X
         89t0CMX5NrKXMApK1pnIlrbT9t4h3mQ7sXptbxkRL/o2skXc6SMBbA3jI3GYy+DeledN
         krz4AILKghp1B22uiSHnsyBra4nsVvKpZKD0KkWRygVQiNswC506OQv+ptsTUFcueoXz
         2WouoFIJKXqWNSeOGK19kcp6RtJLrkMb8EulWOOw4fY3iC7NOn6Dl+n7uqZ6UeosvII8
         TJ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0uvymsPrpGAEh2BG1RLD0dqjUm8ZCLGS+gXm8386eY=;
        b=ercrDNLYZHFIZzbGTDSlj7apDm8K0Bdmw01wh1CIcv9YwxejtTj8hF2DyMJ1qWrCOJ
         4FEQFBWATnAzpVVCqekpNSzor5GHyCpivmtWuBuVcUQ1AV5a1zP2HIMAbZl+VUsnf5MG
         C5DSS+FJuSvQh1Roq15WNXA5b9yvIBNUI5naXLEMHHTlLiR3kWqx9J6yrPwCC4zdjapO
         NRQ2wzY+2I7Zfn9FKxPD5PewN13LinuxwZBu1TjjGpczQKVXYJqhv/A9t5qcmaub/TIG
         GYSD4sUN1lYwbXPWf375rEdaiOY8xr5aWWIXMxOc7Vz0v9qVYk0v5rRYoC3RpgHF+lJO
         eKqw==
X-Gm-Message-State: AFqh2koGRUyf46QpcQHlMbQcCyto6YmGRakz3oEcxp9a9jLiPrLh+1Sm
        r/JPZO/POB2VZMInlK7we8uyhg==
X-Google-Smtp-Source: AMrXdXuWUOstb+6wkH9q+lI6gn2lg/hmvSWjds0SNBS4vzz8WVxEUOt+PJ81WQ4spuIcUGH5X0dYcw==
X-Received: by 2002:a05:6512:3d9f:b0:4a4:68b7:f878 with SMTP id k31-20020a0565123d9f00b004a468b7f878mr19080201lfv.28.1672788930160;
        Tue, 03 Jan 2023 15:35:30 -0800 (PST)
Received: from Fecusia.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id b11-20020a056512070b00b004a45edc1de2sm4939801lfs.239.2023.01.03.15.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 15:35:29 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 04 Jan 2023 00:35:23 +0100
Subject: [PATCH 7/7] usb: fotg210-udc: Implement VBUS session
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-gemini-fotg210-usb-v1-7-f2670cb4a492@linaro.org>
References: <20230103-gemini-fotg210-usb-v1-0-f2670cb4a492@linaro.org>
In-Reply-To: <20230103-gemini-fotg210-usb-v1-0-f2670cb4a492@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Fabian Vogt <fabian@ritter-vogt.de>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Implement VBUS session handling for FOTG210. This is
mainly used by the UDC driver which needs to call down to
the FOTG210 core and enable/disable VBUS, as this needs to be
handled outside of the HCD and UDC drivers, by platform
specific glue code.

The Gemini has a special bit in a system register to turn
VBUS on and off so we implement this in the FOTG210 core.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/usb/fotg210/fotg210-core.c | 29 +++++++++++++++++++++++++++++
 drivers/usb/fotg210/fotg210-udc.c  | 17 +++++++++++++++++
 drivers/usb/fotg210/fotg210.h      |  2 ++
 3 files changed, 48 insertions(+)

diff --git a/drivers/usb/fotg210/fotg210-core.c b/drivers/usb/fotg210/fotg210-core.c
index 013a1d0112fc..70d2ff5a2682 100644
--- a/drivers/usb/fotg210/fotg210-core.c
+++ b/drivers/usb/fotg210/fotg210-core.c
@@ -95,6 +95,35 @@ static int fotg210_gemini_init(struct fotg210 *fotg, struct resource *res,
 	return 0;
 }
 
+/**
+ * fotg210_vbus() - Called by gadget driver to enable/disable VBUS
+ * @enable: true to enable VBUS, false to disable VBUS
+ */
+void fotg210_vbus(struct fotg210 *fotg, bool enable)
+{
+	u32 mask;
+	u32 val;
+	int ret;
+
+	switch (fotg->port) {
+	case GEMINI_PORT_0:
+		mask = GEMINI_MISC_USB0_VBUS_ON;
+		val = enable ? GEMINI_MISC_USB0_VBUS_ON : 0;
+		break;
+	case GEMINI_PORT_1:
+		mask = GEMINI_MISC_USB1_VBUS_ON;
+		val = enable ? GEMINI_MISC_USB1_VBUS_ON : 0;
+		break;
+	default:
+		return;
+	}
+	ret = regmap_update_bits(fotg->map, GEMINI_GLOBAL_MISC_CTRL, mask, val);
+	if (ret)
+		dev_err(fotg->dev, "failed to %s VBUS\n",
+			enable ? "enable" : "disable");
+	dev_info(fotg->dev, "%s: %s VBUS\n", __func__, enable ? "enable" : "disable");
+}
+
 static int fotg210_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
diff --git a/drivers/usb/fotg210/fotg210-udc.c b/drivers/usb/fotg210/fotg210-udc.c
index 4099e7453112..754429553f61 100644
--- a/drivers/usb/fotg210/fotg210-udc.c
+++ b/drivers/usb/fotg210/fotg210-udc.c
@@ -1082,9 +1082,26 @@ static int fotg210_udc_stop(struct usb_gadget *g)
 	return 0;
 }
 
+/**
+ * fotg210_vbus_session - Called by external transceiver to enable/disable udc
+ * @_gadget: usb gadget
+ * @is_active: 0 if should disable UDC VBUS, 1 if should enable
+ *
+ * Returns 0
+ */
+static int fotg210_vbus_session(struct usb_gadget *g, int is_active)
+{
+	struct fotg210_udc *fotg210 = gadget_to_fotg210(g);
+
+	/* Call down to core integration layer to drive or disable VBUS */
+	fotg210_vbus(fotg210->fotg, is_active);
+	return 0;
+}
+
 static const struct usb_gadget_ops fotg210_gadget_ops = {
 	.udc_start		= fotg210_udc_start,
 	.udc_stop		= fotg210_udc_stop,
+	.vbus_session		= fotg210_vbus_session,
 };
 
 /**
diff --git a/drivers/usb/fotg210/fotg210.h b/drivers/usb/fotg210/fotg210.h
index 4d0d4ae1a957..c44c0afe2956 100644
--- a/drivers/usb/fotg210/fotg210.h
+++ b/drivers/usb/fotg210/fotg210.h
@@ -17,6 +17,8 @@ struct fotg210 {
 	enum gemini_port port;
 };
 
+void fotg210_vbus(struct fotg210 *fotg, bool enable);
+
 #ifdef CONFIG_USB_FOTG210_HCD
 int fotg210_hcd_probe(struct platform_device *pdev, struct fotg210 *fotg);
 int fotg210_hcd_remove(struct platform_device *pdev);

-- 
2.38.1
