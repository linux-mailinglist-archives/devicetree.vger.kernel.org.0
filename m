Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48A38462A73
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 03:27:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237498AbhK3CbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 21:31:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237523AbhK3CbF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 21:31:05 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B21BC061748
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 18:27:46 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id r26so49729311lfn.8
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 18:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Sw2B10ZabkZdmPrt9wGzMiX2Z/pOJb9hGFk18ZvN3TQ=;
        b=uRRTnpkmJRovj4VGeoOzMQOMFnOY81vWLi0/mNmNtunh+im+Uz0dayEunYo1fCe2ld
         bM40bIqqEg4vMN5NXV6yloNgcjgguQq4GqW6o6JqGg6sgEagOlVKxdAt/ONGKUI0s+Ck
         JOsabDC3E0AgueQbyOpH/3bKJv2k5WgfBCqbkVjPj3BRO54gdIwbk1oxvyxxO7OiNP9t
         47zZ1Ft56KoaxyD+K2d0qwOsAPCnLxFBFKMAiDQNZoKg/JAt1m26GPlOuZ75wlhnNqET
         TnzFwlKSinO9ACD7KS2vVyzNSdvW4X5P6qKO6VzbGfuogOgN6MNwcTgoV2aLitc9mCc+
         NNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Sw2B10ZabkZdmPrt9wGzMiX2Z/pOJb9hGFk18ZvN3TQ=;
        b=K0r46FU2Vl57IldqlX9wdssj6oY33ZtM0fJI9MpU1ozbv4O6kel0u+ZcNIkOWZXqDO
         B7XIxv/LRUjnORZfk2NagcRBiX0rWZG3BDMkvzIMNHVTc3Jo7fdG4XBEGpjYmkGevvXk
         ui04vh3bVIH9oBWd75CetfqZZxaZo26jdO76JL04Ae/F37f/NVvb1EMVSM4YBZDJ2Iyn
         UJ+mk0qIL1LsBazKk7PAiZPYbPdPX8bPlW5lLYBfKgjB6Wh7d0HkpeMVSZ73CpJiVoVJ
         7ezuYFAF0LgIrZ9lSyFZR0n+L5vobB+CXnk35dCrz0N1S0YQmjwVIz8CyfR/Hei9hW6Z
         2pkQ==
X-Gm-Message-State: AOAM5306WEFTqs+uvQb3ortDECBK4RPhMc0EzQ3tOrgd3i/juKtcL6mV
        Bzx/xzfFX5S/Y3iWii0HqJCm3g==
X-Google-Smtp-Source: ABdhPJzaKLAxg0ubI311l+8aBbMJGAYwd17eXVXKm69X/tqVUamxhV/v6ZUDEhxuMQ8udSKC8hDRAQ==
X-Received: by 2002:a19:6717:: with SMTP id b23mr51152485lfc.659.1638239264749;
        Mon, 29 Nov 2021 18:27:44 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id f10sm1537494lfu.122.2021.11.29.18.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 18:27:44 -0800 (PST)
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
Subject: [PATCH v2 5/5] tty: serial: samsung: Fix console registration from module
Date:   Tue, 30 Nov 2021 04:27:40 +0200
Message-Id: <20211130022740.28784-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211130022740.28784-1-semen.protsenko@linaro.org>
References: <20211130022740.28784-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On modern Exynos SoCs (like Exynos850) the UART can be implemented as a
part of USI IP-core. In such case, USI driver is used to initialize USI
registers, and it also calls of_platform_populate() to instantiate all
sub-nodes (e.g. serial node) of USI node. When serial driver is
built-in, but USI driver is a module, and CONFIG_SERIAL_SAMSUNG_CONSOLE
is enabled, next call chain will happen when loading USI module from
user space:

    usi_init
      v
    usi_probe
      v
    of_platform_populate
      v
    s3c24xx_serial_probe
      v
    uart_add_one_port
      v
    uart_configure_port
      v
    register_console
      v
    try_enable_new_console
      v
    s3c24xx_serial_console_setup

But because the serial driver is built-in, and
s3c24xx_serial_console_setup() is marked with __init keyword, that
symbol will discarded and long gone by that time already, causing failed
paging request.

That happens during the next config combination:

    EXYNOS_USI=m
    SERIAL_SAMSUNG=y
    SERIAL_SAMSUNG_CONSOLE=y

That config should be completely possible, so rather than limiting
SERIAL_SAMSUNG choice to "m" only when USI=m, remove __init keyword for
all affected functions.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - This patch is added in v2

 drivers/tty/serial/samsung_tty.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 61ccb359620a..d002a4e48ed9 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2500,7 +2500,8 @@ s3c24xx_serial_console_write(struct console *co, const char *s,
 	uart_console_write(cons_uart, s, count, s3c24xx_serial_console_putchar);
 }
 
-static void __init
+/* Shouldn't be __init, as it can be instantiated from other module */
+static void
 s3c24xx_serial_get_options(struct uart_port *port, int *baud,
 			   int *parity, int *bits)
 {
@@ -2563,7 +2564,8 @@ s3c24xx_serial_get_options(struct uart_port *port, int *baud,
 	}
 }
 
-static int __init
+/* Shouldn't be __init, as it can be instantiated from other module */
+static int
 s3c24xx_serial_console_setup(struct console *co, char *options)
 {
 	struct uart_port *port;
-- 
2.30.2

