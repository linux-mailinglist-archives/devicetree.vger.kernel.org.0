Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5411748C1E2
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:01:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352377AbiALKBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:01:41 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58428
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1349738AbiALKBJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 05:01:09 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 51CB24031E
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 10:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641981655;
        bh=vkZ3shAsrts82aZQTD9Odzm7oGr7rqF0WKQDjTKTwd8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=S7HG6Oi3Xdgd9IQ6IB9xO4/FlOuXdwlL8p1wzr9IojJNAoPTeYo67CeiQ4Mm/5j0d
         msHHEZ4yo7CPwhZd5krDR22Iw0HHyfhXOiqZvcEQoEJWkxQzKTcFci4W94vJy+H51p
         eoxvOHwkhT74ZwkxvVVoS+W6bPbrzwkiU4Dnwak0G7EJhoUZw36e7W6i91NpR4vcCD
         8E5bfO1LETYSLd2qNVh7GM9ye3rrzf+JfQYguNy5W8gr2o3SK2o4nlhxYQuPjd/YVI
         y2vjmevgk2iPzNt3rm2YzD/Y/sWoMdNvgHKDni/q0BqdlQOehu/wKWqsCIhyQBfspA
         4dCcUxe13IWkg==
Received: by mail-ed1-f69.google.com with SMTP id x19-20020a05640226d300b003f8b80f5729so1783796edd.13
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:00:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vkZ3shAsrts82aZQTD9Odzm7oGr7rqF0WKQDjTKTwd8=;
        b=5ocPcnWPpCpiqTmLOK0L7SIMbpJIiVrYdPuQRpN9Rw6HCQ5vihOKGemUzdJxwhH9+4
         itSq7Svr6y23HWp4DA4cmd5MWkxUHK4709Rar1JFd8Ww50Q4erAdwqj2W5E2KVDHppX8
         tXRbB5720Covk90GWdzIx2B3Xw3I4Nk4oLXAKRTJXILnuvfrxQEEh5KAzXAgZHgK7+db
         qg+S8Vgy8P8gsXCRQjJ9T2T4sHSsODyu5PJIXWAgjVoXHdEjh3Ai68rWzGuIRal2TnWz
         iK8ky4hfNvin14Blwa/Oz1zdB3i4Kn+UYwKAZuhI4kHRKoOW1oT4K6hplbGKlK3OBzqt
         lMZg==
X-Gm-Message-State: AOAM53172uqCBWSPNNvsqBTAcgxvqcdb02vP3mjN55cl9m85CpMBs8D1
        Obr37y/TGMnJzfxgFo32tHMJ4uzARN2oF7Y0aPSbVO1YJy72BngqpKw9jbTEFNAMXXrVC+x/R45
        9wxtoyrD4mbu0aknJ8XNqQt0GZYfwFbZLrEmMH4U=
X-Received: by 2002:a17:907:7295:: with SMTP id dt21mr6749937ejc.453.1641981654828;
        Wed, 12 Jan 2022 02:00:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxr7AHmnhL8e6o/jXCWgESvLqrOYDTSQTTXkoaFmOMriyvAZ3QFfDrNia5S1pL4Lx8Q/Cv4WQ==
X-Received: by 2002:a17:907:7295:: with SMTP id dt21mr6749917ejc.453.1641981654645;
        Wed, 12 Jan 2022 02:00:54 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id hb11sm4311083ejc.33.2022.01.12.02.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 02:00:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 4/4] spi: s3c64xx: allow controller-data to be optional
Date:   Wed, 12 Jan 2022 11:00:46 +0100
Message-Id: <20220112100046.68068-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220112100046.68068-1-krzysztof.kozlowski@canonical.com>
References: <20220112100046.68068-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Samsung SoC SPI driver requires to provide controller-data node
for each of SPI peripheral device nodes.  Make this controller-data node
optional, so DTS could be simpler.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/spi/spi-s3c64xx.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 8755cd85e83c..769d958a2f86 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -796,16 +796,14 @@ static struct s3c64xx_spi_csinfo *s3c64xx_get_slave_ctrldata(
 		return ERR_PTR(-EINVAL);
 	}
 
-	data_np = of_get_child_by_name(slave_np, "controller-data");
-	if (!data_np) {
-		dev_err(&spi->dev, "child node 'controller-data' not found\n");
-		return ERR_PTR(-EINVAL);
-	}
-
 	cs = kzalloc(sizeof(*cs), GFP_KERNEL);
-	if (!cs) {
-		of_node_put(data_np);
+	if (!cs)
 		return ERR_PTR(-ENOMEM);
+
+	data_np = of_get_child_by_name(slave_np, "controller-data");
+	if (!data_np) {
+		dev_info(&spi->dev, "child node 'controller-data' not found, using defaults\n");
+		return cs;
 	}
 
 	of_property_read_u32(data_np, "samsung,spi-feedback-delay", &fb_delay);
-- 
2.32.0

