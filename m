Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 406E9462A6E
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 03:27:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237505AbhK3CbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 21:31:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237501AbhK3CbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 21:31:03 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16753C061746
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 18:27:45 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id m27so49673605lfj.12
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 18:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DjrKmm2WgaX87gIsGbMuz72ppQb8wewAQBmcfjqw3Gs=;
        b=XGILT3CfcE4kMyANq7bSTdH0QFSDL/+tG5w+aovYWrSS4otjinc/EsS9TlLwk5cl+t
         VFnMbpdVAO7wD+86m/f1wYIvqsy/a8PECHUAdvUcDJ76oCA/ftNSF4DeRTTt0E3Jx9x9
         MRn8p/ZRLeeWMx6zmw8InMcAGJDDYrxoARd22ioEktvQIxrfOZP+qCE8DvOQjKpOO2X9
         JAIEzphDwYqvi8j1eRXAcUjGKGEOKmMwlF992uml4GC8bO1gLu0yMj6V4uXmg6+KEphl
         XB0AFHGTMLIGf4XwkEDY99GE3xyk6t+6/LWB3FVjVg+5og/6zgmuRdahlWqJP1tyMgKo
         guEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DjrKmm2WgaX87gIsGbMuz72ppQb8wewAQBmcfjqw3Gs=;
        b=u3Wdml+xLTEWPlbc+Wlc63Zav9o8BbBBcucxled2y8Y3/mT+D0L34ApONx6P1fgDmh
         D2s+w6Do81WNTznVxW6GiPg1+yWnXoV/KVmZ47bSbWpZ+N3Pv6Ek4gMcDlf0rGEQmSHo
         Vy82KS4QCvlwq6UaNc9yY1/2vFom0ECzbRzFnXieE3vXKK9w4HNDGLJ06UDAzx7wxkpn
         04qw2U7BFMvZ1WSMO/qE0Hds3LJ0AjltzM6Pn6NZfZL31ee0Q201U39E8VK5zhYBnKHF
         kqNMU76N3ahujXpWReSWqMd7B7r95bDncsO02Bj3x1RSXpLLzbA+DX24nsn4h8t6khRS
         lYkA==
X-Gm-Message-State: AOAM5314HKVzJW0y5PtTIpmp6omaNLDCs4AzrAPPc4lXnsqp/vHImZST
        0cGd3t0tDTB32ovaC1GijwcTQw==
X-Google-Smtp-Source: ABdhPJy9w4OSiM/X9hJPqQvt6CKdaqi12cJt/JRDPlUUHCZMcMVlsYVIHiyuZTcMJKqMeoqst+bNYg==
X-Received: by 2002:a05:6512:2350:: with SMTP id p16mr52129668lfu.117.1638239263333;
        Mon, 29 Nov 2021 18:27:43 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id i10sm1543136lfv.22.2021.11.29.18.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 18:27:42 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Jiri Slaby <jirislaby@kernel.org>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 4/5] tty: serial: samsung: Enable console as module
Date:   Tue, 30 Nov 2021 04:27:39 +0200
Message-Id: <20211130022740.28784-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211130022740.28784-1-semen.protsenko@linaro.org>
References: <20211130022740.28784-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable serial driver to be built as a module. To do so, init the console
support on driver/module load instead of using console_initcall().

This is needed for proper support of USI driver (which can be built as
a module, which in turn makes SERIAL_SAMSUNG be a module too). It also
might be useful for Android GKI modularization efforts.

Inspired by commit 87a0b9f98ac5 ("tty: serial: meson: enable console as
module").

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - Added error path handling in samsung_serial_init()
  - Added console unregister in samsung_serial_exit()

 drivers/tty/serial/Kconfig       |  2 +-
 drivers/tty/serial/samsung_tty.c | 36 ++++++++++++++++++++++++++++----
 2 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index fc543ac97c13..0e5ccb25bdb1 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -263,7 +263,7 @@ config SERIAL_SAMSUNG_UARTS
 
 config SERIAL_SAMSUNG_CONSOLE
 	bool "Support for console on Samsung SoC serial port"
-	depends on SERIAL_SAMSUNG=y
+	depends on SERIAL_SAMSUNG
 	select SERIAL_CORE_CONSOLE
 	select SERIAL_EARLYCON
 	help
diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index f986a9253dc8..61ccb359620a 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -1715,15 +1715,21 @@ s3c24xx_serial_verify_port(struct uart_port *port, struct serial_struct *ser)
 
 static struct console s3c24xx_serial_console;
 
-static int __init s3c24xx_serial_console_init(void)
+static void __init s3c24xx_serial_register_console(void)
 {
 	register_console(&s3c24xx_serial_console);
-	return 0;
 }
-console_initcall(s3c24xx_serial_console_init);
+
+static void s3c24xx_serial_unregister_console(void)
+{
+	if (s3c24xx_serial_console.flags & CON_ENABLED)
+		unregister_console(&s3c24xx_serial_console);
+}
 
 #define S3C24XX_SERIAL_CONSOLE &s3c24xx_serial_console
 #else
+static inline void s3c24xx_serial_register_console(void) { }
+static inline void s3c24xx_serial_unregister_console(void) { }
 #define S3C24XX_SERIAL_CONSOLE NULL
 #endif
 
@@ -2898,7 +2904,29 @@ static struct platform_driver samsung_serial_driver = {
 	},
 };
 
-module_platform_driver(samsung_serial_driver);
+static int __init samsung_serial_init(void)
+{
+	int ret;
+
+	s3c24xx_serial_register_console();
+
+	ret = platform_driver_register(&samsung_serial_driver);
+	if (ret) {
+		s3c24xx_serial_unregister_console();
+		return ret;
+	}
+
+	return 0;
+}
+
+static void __exit samsung_serial_exit(void)
+{
+	platform_driver_unregister(&samsung_serial_driver);
+	s3c24xx_serial_unregister_console();
+}
+
+module_init(samsung_serial_init);
+module_exit(samsung_serial_exit);
 
 #ifdef CONFIG_SERIAL_SAMSUNG_CONSOLE
 /*
-- 
2.30.2

