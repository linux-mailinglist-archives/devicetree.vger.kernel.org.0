Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3776434955A
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 16:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbhCYPYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 11:24:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230416AbhCYPYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 11:24:21 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA30FC06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 08:24:20 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id b9so2674264wrt.8
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 08:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sgzzDhp79bx35r5jKOLNYJfzzmoZjTRizxE5UOSMnpw=;
        b=ZMGw7DOul3+SQoGvgOttwL1Iac5paKrRtV2ymragAJntKtRTzgfrruwJsrw+Ty0lk+
         wNgqign0naVJIqRttat6mVH5MB14qMPBfiG/zSOvlLQlHMC5x9s/3bjNyLF8hP7lKj8k
         Z3ibFMrbX0zZqw7BBDORGwixnLuRZxuE66wrJ/lH2w6N9gjO7O8fDcDuULfZEhEM7D9W
         5w2hILsvh9ZpNZWP+PmVtX6683aAJJ20mqWEP8BMaElFMedPPqsUns0zIk8TPmt+989B
         AHphs+HFybvOfPqVyJs4BSgHYEHhAkeMYyJPxv7Zdq31hhLD5BIEEHTJs2mw/+FlAJBF
         7/5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sgzzDhp79bx35r5jKOLNYJfzzmoZjTRizxE5UOSMnpw=;
        b=UQ9MHKLGP+w9NTBpOti8wy3L+YoKErKJV3HRJAbJav8keq2eS/yrbrpQIEq1rdLsXU
         YykCERRVp1eJdIF2986XHETZfSGgV6megUXI/kCEfzx6K90T2CVuRzme4GjtO69derXX
         J38FNMPJKydraTJcYf/ZrJKdybX/Rebb8+oPfUw5S242hQOWkU8l9ZaG9hGutAeDKYqA
         Gyr/K9VOAqAY3Y2tEbFsV0nPDXZLP9s4FTbF6ROIDSoqM8O2g7sbnWqZTZRrMsixNXXL
         aHoQpubRBdk+zjgzfUPqI74wWGwf18EAZT08Re3ht1iTfOXnIZPtkWN+97f4sATGQc39
         +YKw==
X-Gm-Message-State: AOAM530nrVblUUCIB0I36SCNqTZ1cKc9XhRgwZG/ytD3Bu3L/UzZBf+v
        ib/py9VEv+KTXdApwGcRwDf9SA==
X-Google-Smtp-Source: ABdhPJzwib9nqK77IORZQzCGahRNUu/JMVR4TWOE9ehuvIgER+dQxfV5hsZAf8zkflsy93kN7/d/kQ==
X-Received: by 2002:a5d:638f:: with SMTP id p15mr9566480wru.220.1616685859525;
        Thu, 25 Mar 2021 08:24:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:90c:e290:b105:9672:b0a:5820])
        by smtp.gmail.com with ESMTPSA id p18sm7395260wrs.68.2021.03.25.08.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 08:24:19 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v2 2/3] tty: serial: meson: retrieve port FIFO size from DT
Date:   Thu, 25 Mar 2021 16:24:09 +0100
Message-Id: <20210325152410.1795557-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325152410.1795557-1-narmstrong@baylibre.com>
References: <20210325152410.1795557-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now the DT bindings has a property to get the FIFO size for a particular port,
retrieve it and use to setup the FIFO interrupts threshold.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Kevin Hilman <khilman@baylibre.com>
---
 drivers/tty/serial/meson_uart.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/meson_uart.c b/drivers/tty/serial/meson_uart.c
index 69eeef9edfa5..ce4dbfb0bd24 100644
--- a/drivers/tty/serial/meson_uart.c
+++ b/drivers/tty/serial/meson_uart.c
@@ -717,6 +717,7 @@ static int meson_uart_probe(struct platform_device *pdev)
 {
 	struct resource *res_mem, *res_irq;
 	struct uart_port *port;
+	u32 fifosize = 64; /* Default is 64, 128 for EE UART_0 */
 	int ret = 0;
 	int id = -1;
 
@@ -743,6 +744,8 @@ static int meson_uart_probe(struct platform_device *pdev)
 	if (!res_irq)
 		return -ENODEV;
 
+	of_property_read_u32(pdev->dev.of_node, "fifo-size", &fifosize);
+
 	if (meson_ports[pdev->id]) {
 		dev_err(&pdev->dev, "port %d already allocated\n", pdev->id);
 		return -EBUSY;
@@ -772,7 +775,7 @@ static int meson_uart_probe(struct platform_device *pdev)
 	port->type = PORT_MESON;
 	port->x_char = 0;
 	port->ops = &meson_uart_ops;
-	port->fifosize = 64;
+	port->fifosize = fifosize;
 
 	meson_ports[pdev->id] = port;
 	platform_set_drvdata(pdev, port);
-- 
2.25.1

