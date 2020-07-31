Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B88BD234997
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 18:49:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733153AbgGaQtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 12:49:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733098AbgGaQtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 12:49:02 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7574DC0617A0
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 09:49:02 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id z6so32339117iow.6
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 09:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RgjKsJ/JPsYNKlD2x2wTWCtu2t/OkQtd2UQoMK7szBQ=;
        b=VDUylHw0pzeNeA046zmOyuq5ZQOKM31CadNiZObdUZTtHvoH9bEAKeuo16GU1elr/v
         UcvL3AY1CL26t9RCboBHSgPzIrgGIIZmUJU17QgLjQXEt6pDtS6fORMLnCJyRKevFmQo
         l0aFn8N7+fvQtNV5cKwQ7RjZFNWlMFE+YFFO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RgjKsJ/JPsYNKlD2x2wTWCtu2t/OkQtd2UQoMK7szBQ=;
        b=FvqJlwXfkJFNQxeaJ4O9GznAbzAblFD4lSl3b9ixjt7GVbSfWF55B3jd5DymrNrwoA
         m4aA5H10qymDN46yKdv9uoGrKs4RpVcTotWufg8G8vK8SOnyFmzy8Eh6/8RiX9yzr+nv
         Vy1urkqWUcv40ylGN01RdjXwMaRQ9hNKiBOKs6L7ufxfBIvMFCrNnR+VhhZImVhixjD/
         GXIEaIF+DqIDgvMgIse7V3RCY13uQYWCEQw+ZwsJN0taNszOkJObkq3JGU5EcNHIgskD
         +bsruhlbQ0KYb/fxkldtOMZE8MXAemG5UZFL+9qQ7rXUkrJXXr7wFdfMtXd3EFqUtDc4
         OYrw==
X-Gm-Message-State: AOAM531mY3w5Vkubrz9zYBloYDEh1AXY0A/FxPRO4B6BYt8XOJ0Lv7IX
        HS7vhBnJl25l0TZhKeJEN9B1QHA9iHUq7A==
X-Google-Smtp-Source: ABdhPJwnfDE5+ese/5K+QCB69TQqRvvsEKhyp1n82sHzcFfQReen0AyMP7MmyprjNCRebh6tTj2a4g==
X-Received: by 2002:a6b:185:: with SMTP id 127mr4494397iob.153.1596214141677;
        Fri, 31 Jul 2020 09:49:01 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id e84sm5122083ill.60.2020.07.31.09.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 09:49:01 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        kbuild test robot <lkp@intel.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-iio@vger.kernel.org
Subject: [PATCH v3 04/15] iio: sx9310: Remove acpi and of table macros
Date:   Fri, 31 Jul 2020 10:48:41 -0600
Message-Id: <20200731104555.v3.4.I9bf713a86d6076b44441ef5f534f9c240271699a@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200731164853.3020946-1-campello@chromium.org>
References: <20200731164853.3020946-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Avoids unused warnings due to acpi/of table macros.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Daniel Campello <campello@chromium.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---

Changes in v3: None
Changes in v2:
 - Added #include <linux/mod_devicetable.h>

 drivers/iio/proximity/sx9310.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index c7a27c21c20cd1..66f7050d63ae97 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -15,8 +15,8 @@
 #include <linux/i2c.h>
 #include <linux/irq.h>
 #include <linux/kernel.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/pm.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
@@ -1052,8 +1052,8 @@ MODULE_DEVICE_TABLE(i2c, sx9310_id);
 static struct i2c_driver sx9310_driver = {
 	.driver = {
 		.name	= "sx9310",
-		.acpi_match_table = ACPI_PTR(sx9310_acpi_match),
-		.of_match_table = of_match_ptr(sx9310_of_match),
+		.acpi_match_table = sx9310_acpi_match,
+		.of_match_table = sx9310_of_match,
 		.pm = &sx9310_pm_ops,
 	},
 	.probe		= sx9310_probe,
-- 
2.28.0.163.g6104cc2f0b6-goog

