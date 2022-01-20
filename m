Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D16F4953BD
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 18:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233206AbiATR6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 12:58:06 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40716
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233313AbiATR6D (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jan 2022 12:58:03 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3A5F44004D
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 17:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642701481;
        bh=bto/xpfUsOVGNmCnHot8/BAzxWmx4lezX3yYM6aPOPk=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=vhcDZZRFEmkY22c6I7rDHDL1V+VoQMk+AkUsg7tRkTtgS7i5bTgxltllAirbqj0aB
         onvYTPf7zzdO1IUmOX778SJ/I5c4fEoefhVdkt6DtjwMFin5NM/W75vACwUJT60JVF
         dfAZ+xddDrgcuKNn5MVP4rNGW58wrH14yi6SbRq5Lj6gFpI623GBdipUp1w+lLRzV9
         LIu+oiFDhdo7ievbKBKwayvSDvEl4+1Gf2qkm0+yNs7JLkTFQa3mrO0IYLT0DyugJ5
         P/B9eMHnZQtjnDH+XH4iklSCvP82IFUAVt7CGSj6N34KmiqKDoG4bOVhNqb7KDxIdh
         Kf2MBL/ycgarA==
Received: by mail-wm1-f72.google.com with SMTP id o3-20020a05600c4fc300b0034aee9534bdso3270134wmq.2
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 09:58:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bto/xpfUsOVGNmCnHot8/BAzxWmx4lezX3yYM6aPOPk=;
        b=b4e/FYDbjZ71E9tG/6WOZffVJVhk7m/rL+1zokIjCTbmzRzyeQEZpVK7UqXEMZm3ZA
         XcLrotrDMJxiUzElP/mT1yToqeFuUFtAruH/D7bFQj/SQudPFmLY3gEddTAXFnN/IM81
         OE80H0Kl7ov0SlYQNVwCQOta30dimKtkiMOXAIOWxppdY2+L22WiShzrIcaOaK7WfBxS
         UBEGQsUtd2IAgQtl4vf/egyxJySqS58+rcxJ3ghXvbcNDDV5qsmrMBmglyU7KQ+8Fg8l
         dqwojW5dXkQ6xvZZMAN4VJdB/iIGZ5Q0S45a6CKBwlCue7cGtJiyShQfOETFqH5/e8DN
         EgpA==
X-Gm-Message-State: AOAM532IL5GiKTaAsN84G+UB53WYuz5uwxSsbGkwbYYXqMC3kStiXLm5
        0I7oPsMHU/Me9VRGO1T3x6d1qb1pb5SD2q9xrWTbbaSsHdjcKjOekGf0qgwMF8eziqsKEmWvXuI
        Bd4QUpDbIfO30l0YNbLyohvC+/DGSLsQgmIq89g8=
X-Received: by 2002:a1c:f012:: with SMTP id a18mr9989433wmb.73.1642701479318;
        Thu, 20 Jan 2022 09:57:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyqTIBDSwhzIJAAvThOjafSh4STpzbcmwUKvBnw8h3aAFohpEEpbyymlmGUkzLSw2lwFS1cZQ==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr9989419wmb.73.1642701479169;
        Thu, 20 Jan 2022 09:57:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a15sm3345248wrp.41.2022.01.20.09.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 09:57:58 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 4/4] spi: s3c64xx: allow controller-data to be optional
Date:   Thu, 20 Jan 2022 18:57:47 +0100
Message-Id: <20220120175747.43403-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
References: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
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
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Andi Shyti <andi@etezian.org>
---
 drivers/spi/spi-s3c64xx.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 8755cd85e83c..386550fca81c 100644
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
+		dev_info(&spi->dev, "feedback delay set to default (0)\n");
+		return cs;
 	}
 
 	of_property_read_u32(data_np, "samsung,spi-feedback-delay", &fb_delay);
-- 
2.32.0

