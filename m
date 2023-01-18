Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F3F7671547
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 08:45:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbjARHpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 02:45:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbjARHoz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 02:44:55 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22B4861D56
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:09:37 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 18so48329264edw.7
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sResmjpkOst92em2xHEqCRKaDl2VpyxVgJORb+VfbaQ=;
        b=YemzCb/qx1iRfYzhK9MKaNtuiANnVfC1Abut0sC2esnXr2/e+4FpPdrNk8mYkAQWoM
         BZENHwcZvGshPwQWDz5EjDBnHW6zY9Iqe5ziDE4GUICXxQid/AKpK87Ukj32x1c/MJqp
         HzqWrCB0q6TxjbFtDi/h6W5e6HtSLqVkd2EzLgiBGM/kYJUSuLQbdm8Kd+bclLgn26M4
         B07WtxWgeNeXX+pvGTXdTfICy0GIo46l/iHWM4TyjR1Dn4DxnQAw7utgEKARMSkYfwLn
         Ka7ZGRQjc676jd5oTl7XYr24IintPyUY/ADOlTXsBKxdZhQsT/9KgqjEzc8noOj8MDxk
         hJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sResmjpkOst92em2xHEqCRKaDl2VpyxVgJORb+VfbaQ=;
        b=J0XYEsM2D23XP3D00bI+rAH5JjCR7Jc54plSiikxR8ziLY50hfue9rYrAIi8h1XrEi
         6sjaEeQIRYdqpD9l7RRKL/pXlhWn5EyQKF0lunoEgehT5jU4N1Uu4ZsUD+SRn1q1ZsTg
         cE/5H1zE30o/xWdL0XvCleX0VD+mwelxOdPggRYGVtqmsi+qCWKffGCS+RpA1NDlKrfO
         0DCsGa5hJfFkuIxeosrz4cyGSzNXmy0FV50q9dnY3SWe5F+IDZQumYQuAmWU1iJLRN/I
         naTJJ1UVa+iyHtHs02tYM5Zoj2MBbYB0OLjFhFZU6271zcxoSbbXWA8lxbETff4bFdE5
         KiWg==
X-Gm-Message-State: AFqh2kqbkXg0SMt4KizFco88KO3oQO7hyhdFS0k+Gigf47jZprb12gJc
        XyrQpQ1HujPGIYqB54gbRfhwNg==
X-Google-Smtp-Source: AMrXdXvHolvXpn338X+Xd6mmsm/S0UgEeFH7Qz6oPd+L0ab6LKcoRXGsVyk6VswdzoX9g5djyMJ1og==
X-Received: by 2002:a05:6402:4025:b0:49b:67c3:39ae with SMTP id d37-20020a056402402500b0049b67c339aemr6608930eda.33.1674025776660;
        Tue, 17 Jan 2023 23:09:36 -0800 (PST)
Received: from fedora.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id bt16-20020a0564020a5000b00482e0c55e2bsm13596984edb.93.2023.01.17.23.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 23:09:36 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 18 Jan 2023 08:09:19 +0100
Subject: [PATCH v2 5/7] usb: fotg210: Check role register in core
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-gemini-fotg210-usb-v2-5-100388af9810@linaro.org>
References: <20230103-gemini-fotg210-usb-v2-0-100388af9810@linaro.org>
In-Reply-To: <20230103-gemini-fotg210-usb-v2-0-100388af9810@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Fabian Vogt <fabian@ritter-vogt.de>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Read the role register and check that we are in host/peripheral
mode and issue warnings if we're not in the right role when
probing respective driver.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/usb/fotg210/fotg210-core.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/fotg210/fotg210-core.c b/drivers/usb/fotg210/fotg210-core.c
index 58d84747fb30..013a1d0112fc 100644
--- a/drivers/usb/fotg210/fotg210-core.c
+++ b/drivers/usb/fotg210/fotg210-core.c
@@ -18,6 +18,11 @@
 
 #include "fotg210.h"
 
+/* Role Register 0x80 */
+#define FOTG210_RR			0x80
+#define FOTG210_RR_ID			BIT(21) /* 1 = B-device, 0 = A-device */
+#define FOTG210_RR_CROLE		BIT(20) /* 1 = device, 0 = host */
+
 /*
  * Gemini-specific initialization function, only executed on the
  * Gemini SoC using the global misc control register.
@@ -95,6 +100,7 @@ static int fotg210_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	enum usb_dr_mode mode;
 	struct fotg210 *fotg;
+	u32 val;
 	int ret;
 
 	fotg = devm_kzalloc(dev, sizeof(*fotg), GFP_KERNEL);
@@ -122,10 +128,16 @@ static int fotg210_probe(struct platform_device *pdev)
 			return ret;
 	}
 
-	if (mode == USB_DR_MODE_PERIPHERAL)
+	val = readl(fotg->base + FOTG210_RR);
+	if (mode == USB_DR_MODE_PERIPHERAL) {
+		if (!(val & FOTG210_RR_CROLE))
+			dev_err(dev, "block not in device role\n");
 		ret = fotg210_udc_probe(pdev, fotg);
-	else
+	} else {
+		if (val & FOTG210_RR_CROLE)
+			dev_err(dev, "block not in host role\n");
 		ret = fotg210_hcd_probe(pdev, fotg);
+	}
 
 	return ret;
 }

-- 
2.39.0
