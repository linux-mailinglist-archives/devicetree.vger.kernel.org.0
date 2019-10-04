Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9421BCB6DB
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 11:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387769AbfJDJB2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 05:01:28 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:34153 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388204AbfJDJB1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 05:01:27 -0400
Received: by mail-wr1-f66.google.com with SMTP id j11so358884wrp.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 02:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
        b=Uuvu/VJSglYBjP4TqRtcqrbm88Z5R11mtl+miilq6RbbTApcuegQZtgcVbF3Z2l4xF
         fYOcVF57nVCXu11oNaPCMWpEB1Rzmx1qNlpeiMvvJ7Cm6fPMQ7qMKOwTbMF4qovVwWd+
         ZKdUW6DTje6WFZcUrBHlgODVyo/NIbyeABF/9oi8kzzB1DKbbNqbtzus/zj+6dZU2GAi
         5F/A6OQ15K8yih3MHAAFv2Pynsq3zqIk1KH4njoip/9rP5By7m7OUNjWXKMAtggu78Gi
         88rtqaVawgFfgePpOrUFfIM7psIQDOzBoVKfFg1nx93JDAEPRFboi+8lYlUDbZO/b0at
         NfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
        b=eO51pOXUwmBkozE2mvOdqjv27znUmave6QQRyjVaEBIgBeA7JHnf08+drlxb3gdqK6
         EQs1eMsDSx+c4azS5lcs7FXEGWXbIpcE8M0xarmJg1l0cgILzidXZggxSHkzq9n+YJdS
         SLCfuUhv0dEalr9en4EZmsskIIcABgOLHAWoOCVipmFAZG1qffckP+U+yjSTB7BZpPyH
         gA4Ist/+yoLn83mcQzZen1IYX7ekhy4mVkDpT0mG2EilwdQaS7rqcIs3/5RXuMBngkKP
         yadsTrAcmgK2MYMmesRVehGA/z7gCJjcB9qDi+h/4x22y6nFI3J0oHJEQD6nhfPgokC8
         D+RQ==
X-Gm-Message-State: APjAAAVnlpNUQ0tFqiTIbDdZWtzKPRtVZ+SXdeVwuSoD3Tn4ez6oahNN
        4wzUSZgtcn1xN6XrUocWwoJTQg==
X-Google-Smtp-Source: APXvYqzeMc3UmkSHx6AOi3+gnVZS5BJKpJ4oVQO5L4qeV7tfoJzaVdQ0uB2B6KtLlKTAR1/xlZ4wKA==
X-Received: by 2002:a5d:4f8a:: with SMTP id d10mr11319014wru.276.1570179685339;
        Fri, 04 Oct 2019 02:01:25 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 02:01:24 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v7 7/7] MAINTAINERS: add entry for Amlogic Thermal driver
Date:   Fri,  4 Oct 2019 11:01:14 +0200
Message-Id: <20191004090114.30694-8-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
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

