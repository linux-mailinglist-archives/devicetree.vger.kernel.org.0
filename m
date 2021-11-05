Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A167D4462E9
	for <lists+devicetree@lfdr.de>; Fri,  5 Nov 2021 12:39:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232714AbhKELl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Nov 2021 07:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232657AbhKELly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Nov 2021 07:41:54 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FDA4C061714
        for <devicetree@vger.kernel.org>; Fri,  5 Nov 2021 04:39:15 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id v11so29457178edc.9
        for <devicetree@vger.kernel.org>; Fri, 05 Nov 2021 04:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6adjk580AwBpX7D5EH7ECcA7MO/6lGH/OQuhWqLcWr0=;
        b=PTQpkE73T8VhxCQRE4WhJJhCyojtElJ0yQxQdOzz5Kl+xX4aemHEcBHvP6EZJxRBuU
         9vpKIEUzjbSmIKckHblGxPQqM9gtg4xaftYzThbZNdc3qfm8fdEdxSd9Z+A0LkkwxDpH
         eqVivy7eeSQj5jY3hYsVhIy6f8kpeuo9YkC64fT1DhLh2daYpAGMXnXK9JrYxGe7uUw9
         XBshf2mbqTRFHg5C3IujZ9aexhgtHB0pyAoUIPBbkm1+sEWudTVk1zBhQvBaoi+VPHLK
         J3mHxYakJ5WcIxNmwG0swQ96Cr2e8coDykUXYth71g/rSvhNF76+2xo+0SmQe39GS1Aq
         6ppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6adjk580AwBpX7D5EH7ECcA7MO/6lGH/OQuhWqLcWr0=;
        b=OWKZpz5FMjpaxvBU/JxeTqYraZJtZnfJto0MUtDfxTa55DeqM7akcOdHuOewsYVZID
         vONoJ3GPjRi7/V20Wf7J1jNb+kagQXwkKtCIuOlwfu0kubaljwlAIiSD5w6O1+50/ZbM
         Z0ZUg4v0P9hEZYY2Cein3CK9Cn29g3e1ylDw2j2SNLtV+qy1U5N2uK2o0qo2zshAi6AG
         D+wcTtSTgA8Kbz160E+fETrPgVXMw8U1aaQtxFkmDFNkMeEXK7faPTocht05bVff9hbb
         YZjZCwgWWdqgEpod+wiTlUSOabY7RU1oHe21CkjxBNLulU+WRJnF83TezLf2lCT9g6nU
         SFLw==
X-Gm-Message-State: AOAM533fLlR3sZRpQoRFX/KIWUoM2Kdw8RK2eMT6NVdZB7FGrIVTVlIQ
        Lp76EdcvXTLDPvduwV4EWzw6yQ==
X-Google-Smtp-Source: ABdhPJx46W7TaP6K14Q54kzOmy38rYsDTGuuLKLlGkvE7kcQnhyX5+lM6JcOLz6QRswp8wsbzNEwnQ==
X-Received: by 2002:a05:6402:1d4a:: with SMTP id dz10mr5712600edb.172.1636112353778;
        Fri, 05 Nov 2021 04:39:13 -0700 (PDT)
Received: from fedora.. (dh207-99-83.xnet.hr. [88.207.99.83])
        by smtp.googlemail.com with ESMTPSA id bn20sm4011325ejb.5.2021.11.05.04.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 04:39:13 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com,
        michael@walle.cc
Cc:     luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v8 6/6] MAINTAINERS: Add Delta Networks TN48M CPLD drivers
Date:   Fri,  5 Nov 2021 12:38:59 +0100
Message-Id: <20211105113859.101868-6-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211105113859.101868-1-robert.marko@sartura.hr>
References: <20211105113859.101868-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add maintainers entry for the Delta Networks TN48M
CPLD MFD drivers.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v3:
* Add reset driver documentation

Changes in v2:
* Drop no more existing files
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d7b4f32875a9..92747bfc01db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5289,6 +5289,15 @@ S:	Maintained
 F:	Documentation/hwmon/dps920ab.rst
 F:	drivers/hwmon/pmbus/dps920ab.c
 
+DELTA NETWORKS TN48M CPLD DRIVERS
+M:	Robert Marko <robert.marko@sartura.hr>
+S:	Maintained
+F:	Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
+F:	Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
+F:	Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
+F:	drivers/gpio/gpio-tn48m.c
+F:	include/dt-bindings/reset/delta,tn48m-reset.h
+
 DENALI NAND DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.33.1

