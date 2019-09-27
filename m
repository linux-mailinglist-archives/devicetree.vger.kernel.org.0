Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B3DEC0586
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 14:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726251AbfI0MsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 08:48:09 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40516 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727854AbfI0MsD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 08:48:03 -0400
Received: by mail-wm1-f66.google.com with SMTP id b24so6023411wmj.5
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 05:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
        b=oi7neAwW2LPL3XABbjq079ydlG5AqDgyurTggZMicVjKIV5UMxxiyLM+baxNYU7LMn
         KX0awqzp3ut3v6fG74urUYMNC7Us0TNh9cFPafo8aX6keUN84SNN8/13CiS2mOaNYVXW
         51GjVuPtTereISnJig7mP/IpoNpIQPIiC9dIHozWqZj8wKaFul+FMr0+2WVtMfP9Pit0
         iwshl1qVi1DzPPokQOFhT608amsRwajCmDibnhxZ2uNGfJGVClCLRHl2oTzSMrGuU6BL
         VMNsZeZHCwXRvn8wMc3M95Xc8gy4zBAopdQdfa29TD3KYqD7aefu+UKji02tx/K8JHiL
         3p0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HzQhDkqVyohi8147rI3+BgZwRO47r6m1rOvI8gEcCVQ=;
        b=gnGgSE2neu0uQsv7kXHdBsHSxTSqPpMUvM4yCcwQm9gdi9d2bhxFr58pSGhkdLa8Gx
         qhFI7B36zjvA6vzGAj/TicfhF8uVskp/3ke8yCCRguPeG0fRVQr27s9RG4jRs8lvb4pj
         jy1bM4Yk/DUwYPe9o9WH6sWv7lIQ5T7xlcBwShyqA9YdNEIjBtKo4HisgGPPZp6QuB/R
         k1+WluJVU6MjkR3mL9YPf2Bi3SiAW3J37sNsAyeIwcmvdAw2cOHYr2BrUbAbNrhSMbMe
         8prapa+dIbTlkU8PR17jO91gcdC9cj564UseDvfl2NPTbFUrtno3K7hO6/GCDe7vcfcM
         rrGg==
X-Gm-Message-State: APjAAAVF8r3CVNXmNaMNlCT1+UEMiwhcuxd4bhHogyeN/V5kDjiS6TUR
        zf5bm6cGZQNbVjt0Bu0sYM8fpQ==
X-Google-Smtp-Source: APXvYqy/1/MJyl2yq0JNJ1lJAbS7sXpETew3r6arHgnR/Bo+YJC+IXAdeOl3m8wFVO8i1kW5vfviIg==
X-Received: by 2002:a1c:6508:: with SMTP id z8mr7418209wmb.93.1569588481463;
        Fri, 27 Sep 2019 05:48:01 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 05:48:00 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
        daniel.lezcano@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v5 7/7] MAINTAINERS: add entry for Amlogic Thermal driver
Date:   Fri, 27 Sep 2019 14:47:50 +0200
Message-Id: <20190927124750.12467-10-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
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

