Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E3E7C0B7B
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 20:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728157AbfI0SoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 14:44:14 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:54591 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728193AbfI0SoH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 14:44:07 -0400
Received: by mail-wm1-f68.google.com with SMTP id p7so7053196wmp.4
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 11:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
        b=yCIRZafej34veAsB/dI9AI4AW98eG0+WviNpnhZzTwYErlctHeC4PdUDkvkDbOpjcS
         WY0FhlZfG0FijsdvbAFU7ML9GXDyMOYkrXSt4GBu2IO3bIwCw3V4ZXnZLYoJHFWlTtzY
         Xk5dQrZm+LA4pKZr+XNyfimVY9IVlbAEOw+T+oa8XwEBtFuvBKUvB6cjOEpQ7v57l8Kn
         lQjKqeuWo4sfcLlN824NR249X2A+YmcYnfKRXEjMIz4x/5SP11aCddGd9LKB0axSwqiJ
         oaTAGJ0MUxuIyfBrELTkVTQtMys/AZYWzlrh5jhamcx7k1y0Ujq3PMboLb2ZIOdPZZEm
         RrrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
        b=p3sZ7ZohlEAMUrdpC+DumcjSKetROog4sePg6MU35keUvCyW3KNbwDcv/hs/5BCvRp
         iejCV5Qua9Rabwj524q+O+otkGe3ZwTuPaVJw8ATAKWMPIs83lTSJWUPBZ1ITQ4FT2hy
         V/m9AiVEXtJvXWbQFLK4PP+/Irr/WjfpHIs3f00aWaXlpAgGBbQLkM/n28PQt3TlwAVM
         7zHNaCCdF7K2ZCoF4nBo5WN5zUcfvGNRpOAQO75uTVOwo3yZs2FZSBZdm5AZHE6c4gWf
         +m/d13j8aYIbGAuOghkQQ2NTIEcYX+LoWWx1tYdMnYlgE/ja+XMWC1FENoBX9BTT1RDK
         u9PA==
X-Gm-Message-State: APjAAAVDIa2fl+C5kkmTt5Ba8GC+45U+Aqhz1VIdzxp8Y8zh7rHY31nC
        AThaKTUx2HHG0J3de376c1WPXQ==
X-Google-Smtp-Source: APXvYqxSi62wIlpGsvXmkF2vMjWdJJWKf6euaYF+PUGFCzIsIJHaJ4eRMDJRAoy+1xk8Rbwsy3vwnQ==
X-Received: by 2002:a1c:d183:: with SMTP id i125mr8708860wmg.1.1569609843906;
        Fri, 27 Sep 2019 11:44:03 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
        by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 11:44:03 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v6 7/7] MAINTAINERS: add entry for Amlogic Thermal driver
Date:   Fri, 27 Sep 2019 20:43:52 +0200
Message-Id: <20190927184352.28759-8-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add myself as maintainer for Amlogic Thermal driver.

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 390c3194ee93..bdc30d740342 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15932,6 +15932,15 @@ F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
 F:	drivers/thermal/cpu_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL DRIVER FOR AMLOGIC SOCS
+M:	Guillaume La Roque <glaroque@baylibre.com>
+L:	linux-pm@vger.kernel.org
+L:	linux-amlogic@lists.infradead.org
+W:	http://linux-meson.com/
+S:	Supported
+F:	drivers/thermal/amlogic_thermal.c
+F:	Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
+
 THINKPAD ACPI EXTRAS DRIVER
 M:	Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
 L:	ibm-acpi-devel@lists.sourceforge.net
-- 
2.17.1

