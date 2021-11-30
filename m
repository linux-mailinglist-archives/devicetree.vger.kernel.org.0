Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E96B24631EF
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 12:13:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237723AbhK3LQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 06:16:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237421AbhK3LQx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 06:16:53 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A77C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 03:13:33 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bi37so52781597lfb.5
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 03:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OVtPKHU/UyhyPfruAPKFG828wihrrr+mzXVKZt4x00A=;
        b=dmbANvwHiqTpBZ3lPCGkcsyUr0EHHuxME47DyXgXDKVh+hQKdJP8DjHyQw2bKp+ihF
         HXO3Q4u6nD1nVYiKJ7bzRA896sBmPb2oS0r8N9WGAC6RNIVJrZ8zNc/+fLXUw6mifyGm
         ze7JbKalPXoZTEpiUk1ZidCO3Funn3SJqutHspWoTsc8xgz86t6Jv5sCLdNsU8G8qJGl
         vFeyOP9Gz+wvCPoFnTbWXyfIutZmF5+bwST7PxZ8DzbFHEYLEX+xDoITxjCp8HztV6cx
         glWBqbsJcHs260Y8hKbkOf3bDZ3hGVyYX6Tn+vdpNanmhiW5KlQxq+tuOHB86iUtEbsI
         h3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OVtPKHU/UyhyPfruAPKFG828wihrrr+mzXVKZt4x00A=;
        b=oC0lg9RWG1lKprB5v3f94wEDR8/OlEnwhCtyjzDowRVnC8oFtBEIHYkck6i7rhcVaI
         97wOzzgpTKk94joP2zjI6TMfEz2rQLuPwa+okPJnbWsxyXea2bUTztRlc1DyS9MVOaem
         C+oLiWDBDm+PGfuecRCCmkcRgdZegT+0AMbfL6YkNiiLjZe+cacT4Vq0HC7Xj6MEkUb/
         plwrMo0qKBhVvx9ZU5ufNqweb9AF26YmtVsrOnZ2bYVDMuUlI9bR1LoMhJFSY0kBHdU/
         l4AJ7V1JceNbhhjKG5aIP4sfg8JexnWirV5EMVSOCBpKLx7RniwoLHPZUMubVB3ce0sw
         Ajkg==
X-Gm-Message-State: AOAM533zqHLHsaydnhV11ihRMMfgFX/EV93AnMCR2YDQGu2rkC9BvvJS
        Aq1RotQJp5aPZMPtn8/72MXdFa6872t+waE/
X-Google-Smtp-Source: ABdhPJwMq/8eHsjFMDyv7zWJeIFYb+qeCaL/GMbzcO3zyzjHl5hZj/aDt/UneFFhBVEdEJjvxRYwFw==
X-Received: by 2002:a05:6512:66:: with SMTP id i6mr55113957lfo.287.1638270812108;
        Tue, 30 Nov 2021 03:13:32 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id x3sm1686348lfq.238.2021.11.30.03.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 03:13:31 -0800 (PST)
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
Subject: [PATCH v2 RESEND 3/5] tty: serial: samsung: Remove USI initialization
Date:   Tue, 30 Nov 2021 13:13:23 +0200
Message-Id: <20211130111325.29328-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211130111325.29328-1-semen.protsenko@linaro.org>
References: <20211130111325.29328-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

USI control is now extracted to dedicated USI driver. Remove USI related
code from serial driver to avoid conflicts and code duplication.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - (none)

 drivers/tty/serial/samsung_tty.c | 36 ++++----------------------------
 include/linux/serial_s3c.h       |  9 --------
 2 files changed, 4 insertions(+), 41 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index ca084c10d0bb..f986a9253dc8 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -65,7 +65,6 @@ enum s3c24xx_port_type {
 struct s3c24xx_uart_info {
 	char			*name;
 	enum s3c24xx_port_type	type;
-	bool			has_usi;
 	unsigned int		port_type;
 	unsigned int		fifosize;
 	unsigned long		rx_fifomask;
@@ -1357,28 +1356,6 @@ static int apple_s5l_serial_startup(struct uart_port *port)
 	return ret;
 }
 
-static void exynos_usi_init(struct uart_port *port)
-{
-	struct s3c24xx_uart_port *ourport = to_ourport(port);
-	struct s3c24xx_uart_info *info = ourport->info;
-	unsigned int val;
-
-	if (!info->has_usi)
-		return;
-
-	/* Clear the software reset of USI block (it's set at startup) */
-	val = rd_regl(port, USI_CON);
-	val &= ~USI_CON_RESET_MASK;
-	wr_regl(port, USI_CON, val);
-	udelay(1);
-
-	/* Continuously provide the clock to USI IP w/o gating (for Rx mode) */
-	val = rd_regl(port, USI_OPTION);
-	val &= ~USI_OPTION_HWACG_MASK;
-	val |= USI_OPTION_HWACG_CLKREQ_ON;
-	wr_regl(port, USI_OPTION, val);
-}
-
 /* power power management control */
 
 static void s3c24xx_serial_pm(struct uart_port *port, unsigned int level,
@@ -1405,8 +1382,6 @@ static void s3c24xx_serial_pm(struct uart_port *port, unsigned int level,
 
 		if (!IS_ERR(ourport->baudclk))
 			clk_prepare_enable(ourport->baudclk);
-
-		exynos_usi_init(port);
 		break;
 	default:
 		dev_err(port->dev, "s3c24xx_serial: unknown pm %d\n", level);
@@ -2130,8 +2105,6 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
 	if (ret)
 		pr_warn("uart: failed to enable baudclk\n");
 
-	exynos_usi_init(port);
-
 	/* Keep all interrupts masked and cleared */
 	switch (ourport->info->type) {
 	case TYPE_S3C6400:
@@ -2780,11 +2753,10 @@ static struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
 #endif
 
 #if defined(CONFIG_ARCH_EXYNOS)
-#define EXYNOS_COMMON_SERIAL_DRV_DATA(_has_usi)			\
+#define EXYNOS_COMMON_SERIAL_DRV_DATA()				\
 	.info = &(struct s3c24xx_uart_info) {			\
 		.name		= "Samsung Exynos UART",	\
 		.type		= TYPE_S3C6400,			\
-		.has_usi	= _has_usi,			\
 		.port_type	= PORT_S3C6400,			\
 		.has_divslot	= 1,				\
 		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,	\
@@ -2805,17 +2777,17 @@ static struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
 	}							\
 
 static struct s3c24xx_serial_drv_data exynos4210_serial_drv_data = {
-	EXYNOS_COMMON_SERIAL_DRV_DATA(false),
+	EXYNOS_COMMON_SERIAL_DRV_DATA(),
 	.fifosize = { 256, 64, 16, 16 },
 };
 
 static struct s3c24xx_serial_drv_data exynos5433_serial_drv_data = {
-	EXYNOS_COMMON_SERIAL_DRV_DATA(false),
+	EXYNOS_COMMON_SERIAL_DRV_DATA(),
 	.fifosize = { 64, 256, 16, 256 },
 };
 
 static struct s3c24xx_serial_drv_data exynos850_serial_drv_data = {
-	EXYNOS_COMMON_SERIAL_DRV_DATA(true),
+	EXYNOS_COMMON_SERIAL_DRV_DATA(),
 	.fifosize = { 256, 64, 64, 64 },
 };
 
diff --git a/include/linux/serial_s3c.h b/include/linux/serial_s3c.h
index cf0de4a86640..f6c3323fc4c5 100644
--- a/include/linux/serial_s3c.h
+++ b/include/linux/serial_s3c.h
@@ -27,15 +27,6 @@
 #define S3C2410_UERSTAT	  (0x14)
 #define S3C2410_UFSTAT	  (0x18)
 #define S3C2410_UMSTAT	  (0x1C)
-#define USI_CON		  (0xC4)
-#define USI_OPTION	  (0xC8)
-
-#define USI_CON_RESET			(1<<0)
-#define USI_CON_RESET_MASK		(1<<0)
-
-#define USI_OPTION_HWACG_CLKREQ_ON	(1<<1)
-#define USI_OPTION_HWACG_CLKSTOP_ON	(1<<2)
-#define USI_OPTION_HWACG_MASK		(3<<1)
 
 #define S3C2410_LCON_CFGMASK	  ((0xF<<3)|(0x3))
 
-- 
2.30.2

