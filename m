Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F01D948AB28
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 11:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348882AbiAKKNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 05:13:50 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:60998
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348777AbiAKKNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 05:13:48 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F13203FFD9
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641896026;
        bh=vkZ3shAsrts82aZQTD9Odzm7oGr7rqF0WKQDjTKTwd8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=DS2lim78Epr38YxWKqiNNTlB574TJackxqVUYC0GWRBIa06vket/FIHc8XOjSaFrG
         r4GrTlIJ1O8DtPIWAZKzq7CeLEk5vRtZdzfOFMqgHD2fB4nRxJerFqvRYR/5GZHq1s
         Mq/6iOEvoxtI5SRWW8etz7s/k1dj8lYRyT2w2FTnFWOQM5t3QZif0swzOtUqEB6q6T
         0H3Hz5L7uZepRiyZnRgvLhj40wqCSoC5KaQDn+h7RC1M4hLl4mbZIPOLEMfET5uusV
         k+ulR2T8nMf3OXskPBrYQ0I/NkthvyOWphJ8CpGHxEChs9HlqHYYQlNE5nyeqxU/PQ
         6w8SRQMJUnzgw==
Received: by mail-ed1-f70.google.com with SMTP id z9-20020a05640240c900b003fea688a17eso1927440edb.10
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 02:13:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vkZ3shAsrts82aZQTD9Odzm7oGr7rqF0WKQDjTKTwd8=;
        b=A+JM9JH/HPdhUkyqsEon4ex8wkpa0qApW0+TBKExxv7nntMOqfLxb++zOttHFf2Ok6
         WXDUJNDXi/4FoaOBxSuKVIKY1jppb08uVBhLfWkincbQ7+/w6AX53S8AfGeBZFU5YCui
         s+w3Y/FKNRS2SaoQ8sofez9vnaWad11Nyhzanr0twsaSEEuwkFKB9I8KwuWm8Xgvd5Pe
         DpzLM98IpnXkF6AfEr0p91lynmTOSVw7Ovb+y6DIyA7zj9nzxYscTVGqX50s+lmLdtDc
         g0II+ZX42etnxkByQKg10H17wRCFT/NnnzQeENhurtFQ+JSximsSq5Z64qdqxMDDcBXX
         2eEA==
X-Gm-Message-State: AOAM530TGm6dFeVnWdKGjVarho2GzkDI7Vuc1WISHcLfQNoncl1krxQd
        twZuzsXoRrO0/cYvL3xw5uY+0JCbBSD934dY3IE/cjxuyE3pX1TEteOh0gWyPZ9Fy+arsaQPpKP
        kDK3uWuq4U6eAY/EoIOVUJwxsHezV3huhxglNPNo=
X-Received: by 2002:a50:da48:: with SMTP id a8mr3517606edk.155.1641896026736;
        Tue, 11 Jan 2022 02:13:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyrMWwC4F5CYCPwNtrsTc93H/KSEUuKQ3dZ2KWyqGsikQRFJIiGNhQmyHnezI5HUpc6kJMojw==
X-Received: by 2002:a50:da48:: with SMTP id a8mr3517597edk.155.1641896026571;
        Tue, 11 Jan 2022 02:13:46 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 26sm3431268ejk.138.2022.01.11.02.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 02:13:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 4/4] spi: s3c64xx: allow controller-data to be optional
Date:   Tue, 11 Jan 2022 11:13:38 +0100
Message-Id: <20220111101338.58630-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111101338.58630-1-krzysztof.kozlowski@canonical.com>
References: <20220111101338.58630-1-krzysztof.kozlowski@canonical.com>
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

