Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A8D0129C2B
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 18:27:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390318AbfEXQ1k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 12:27:40 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:55693 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390623AbfEXQ1j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 12:27:39 -0400
Received: by mail-wm1-f66.google.com with SMTP id x64so9993953wmb.5
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 09:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=feMTK1ALuDcB6ANRh60ilE7eIkZ7WZWllXS4rnIjAYY=;
        b=etyGkcerFFK63wVJPJo3fAK6GJwu4arL3yT6oqa6tEDzNWodmPXx8J2hDmjVU+s/62
         FtW5cwEZJvReJiIYHfu52g9IpnAl08zsoHEFzpa2JM9Pder9hqhyDJyIZ4NyNThF/tUg
         rCPo4rXpUSl5n6mc6zDip9MwBZNeqsypfSKfgnSjx21B/wtM9RQIfnPIf0RC/o8zxzrh
         2aeIBX35HY3ROFBAKKQc993TzUfCK5nfErFt0nEISY9TOec9UhC5dL4+d1/aoxDfcHuh
         oiWITzP1MVuIJ/4NVbuD/NRzTqImYz3GpVMkqZU01a9H8Y7kBHgtR0EN0DHrk43ROwar
         DHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=feMTK1ALuDcB6ANRh60ilE7eIkZ7WZWllXS4rnIjAYY=;
        b=jedrjO7FG/KKZksU8A8PX6WKV0JaNenlZXqKzvpRv1PHhSzO1QlvZKw8oke820kENh
         tA6Hsv5GrNDt8chWU3LtgPJMlW6Ia8gm4xXS6Ce+nkAQ+2YuyDbkubdwIjAjGEUqYt7Z
         Z1+Lvo7TwRj/KhJc505tfbuVxy5Hgn5P49plTX/4NRaYSUY3xGiZSkE82XKad1wFaawS
         wV/8+PoyIrSXTZZqJ3JEWUDWQnGAVhsmnXzp8/1iGX3BK4fdyUXYvM2CNBXQVitmQEsc
         Ugk5eSYX+Mw/d1t9Zdjf5hIfU5ZGPxLlWJGGSc+LXjPGeuiXWda38rY4E5L7D05fFMBS
         fWpQ==
X-Gm-Message-State: APjAAAVN9109u0qDsKwzVWEnnnjbkMBjXaRay1Up960+lw6b+mDJYoBk
        tAmKcvxfmfgY5jX2G6Xf3PqPMQ==
X-Google-Smtp-Source: APXvYqzhbxBbK42/fNaR/5q/csolUj2TBckrr0JZCetN7bH6brmrHm8o+kekNYDecz00m0FcQC71TQ==
X-Received: by 2002:a1c:f507:: with SMTP id t7mr17188238wmh.149.1558715258061;
        Fri, 24 May 2019 09:27:38 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
        by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 09:27:37 -0700 (PDT)
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
To:     linux-crypto@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: [PATCH v2 1/6] i2c: acpi: permit bus speed to be discovered after enumeration
Date:   Fri, 24 May 2019 18:26:46 +0200
Message-Id: <20190524162651.28189-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, the I2C ACPI enumeration code only permits the max bus rate
to be discovered before enumerating the slaves on the bus. In some
cases, drivers for slave devices may require this information, e.g.,
some ATmel crypto drivers need to generate a so-called wake token
of a fixed duration, regardless of the bus rate.

So tweak the code so i2c_acpi_lookup_speed() is able to obtain this
information after enumeration as well.

Acked-by: Mika Westerberg <mika.westerberg@linux.intel.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/i2c/i2c-core-acpi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
index 272800692088..7240cc07abb4 100644
--- a/drivers/i2c/i2c-core-acpi.c
+++ b/drivers/i2c/i2c-core-acpi.c
@@ -115,8 +115,7 @@ static int i2c_acpi_do_lookup(struct acpi_device *adev,
 	struct list_head resource_list;
 	int ret;
 
-	if (acpi_bus_get_status(adev) || !adev->status.present ||
-	    acpi_device_enumerated(adev))
+	if (acpi_bus_get_status(adev) || !adev->status.present)
 		return -EINVAL;
 
 	if (acpi_match_device_ids(adev, i2c_acpi_ignored_device_ids) == 0)
@@ -151,6 +150,9 @@ static int i2c_acpi_get_info(struct acpi_device *adev,
 	lookup.info = info;
 	lookup.index = -1;
 
+	if (acpi_device_enumerated(adev))
+		return -EINVAL;
+
 	ret = i2c_acpi_do_lookup(adev, &lookup);
 	if (ret)
 		return ret;
-- 
2.20.1

