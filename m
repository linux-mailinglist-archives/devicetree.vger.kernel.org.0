Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E4EF5120A4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242921AbiD0QUo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:20:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243150AbiD0QTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:19:09 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC1FF99199
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:15:21 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id y21so2546853edo.2
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=31n4NKx1muSic9R+KSUXp8YhkBAU/fz0QvMncbQEELc=;
        b=XgQiz/DMtYoEuMdjsE5RPTiK8uFm9NKru9Ft5z31xwpOehzewXxVtyrDiqdO/DSduZ
         MhN6G0qCcNlQMRG/ym+te/voyNUBHC5fyMIgNxhwnRJYoMQB4TIshrl7IMjIfAEyLaiH
         w3PbGQlf/Zwb9CcJ8zhiQtf9/TlJ7tawPpx/34AtNuZTe9DOaS7p+17ysDNTMdHKWnK6
         R0fl2lTkBlILADHx+IJOaqq0MsbXQb+PHBXR0eSNs0NUiifAacUi+QqP6EWJ76vXT3Al
         3BJlbFz19P+xLgneNgOW3oVmglAXptQNVqKNZu100r0K64jeiobaEYfaHL9471K2t5Hx
         bJAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=31n4NKx1muSic9R+KSUXp8YhkBAU/fz0QvMncbQEELc=;
        b=a1i3iG2hMwoevl+VaF8E77xwD7P1sQoeZy5bYYu+kM/HWGRo2GZF6RuccENyoq4bO1
         yGZ/sC1D1w3uDpsj2cuwMbDaS+6amCyFAzrLhOUzT7XdjnPJIMC8FCshMnkJa11k6AhD
         zPOWDNQcVQeqZUhzgPJfTibQBaTlIRVgwgsCCHroNraCZtBcHxyLuo+uz/QKDJFknLb+
         ymuyd3bYumpSdY4LBcw58LeE6ps41Ccqrf1QZvadg2V1pO3roo9zQlJIys4K1FUunsWU
         U4gkjFr6KHCODm1YsGJFlgAKLJ30qMfdiO+w2MhfmVLsFKymQhCMf8rCatg2OXopcS8z
         MaKw==
X-Gm-Message-State: AOAM533Gqtu7llaTRykVezBXFsjj/Pe83VnQjw1Yb/5Tax7haAdUt+Js
        r5g18la+rnoY08rmwv+XCR4icg==
X-Google-Smtp-Source: ABdhPJwHfDDPN11PYsb9j7rKqQqQGw0/VEFXbbHLx6w0PzuY3ZIqjllPexQhruoKLhJahwnycQh0kA==
X-Received: by 2002:a05:6402:11c9:b0:425:ef56:a1dd with SMTP id j9-20020a05640211c900b00425ef56a1ddmr15339331edw.143.1651076107787;
        Wed, 27 Apr 2022 09:15:07 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r19-20020a17090638d300b006d6e4fc047bsm7095015ejd.11.2022.04.27.09.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:15:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Daniel Mack <daniel@zonque.org>,
        Haojian Zhuang <haojian.zhuang@gmail.com>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] dmaengine: pxa: deprecate '#dma-channels' and '#dma-requests'
Date:   Wed, 27 Apr 2022 18:14:57 +0200
Message-Id: <20220427161459.647676-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220427161459.647676-1-krzysztof.kozlowski@linaro.org>
References: <20220427161459.647676-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The generic properties, used in most of the drivers and defined in
generic dma-common DT bindings, are 'dma-channels' and 'dma-requests'.
Switch to new properties while keeping backward compatibility.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/dma/pxa_dma.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/pxa_dma.c b/drivers/dma/pxa_dma.c
index 6078cc81892e..e7034f6f3994 100644
--- a/drivers/dma/pxa_dma.c
+++ b/drivers/dma/pxa_dma.c
@@ -1365,10 +1365,17 @@ static int pxad_probe(struct platform_device *op)
 
 	of_id = of_match_device(pxad_dt_ids, &op->dev);
 	if (of_id) {
-		of_property_read_u32(op->dev.of_node, "#dma-channels",
-				     &dma_channels);
-		ret = of_property_read_u32(op->dev.of_node, "#dma-requests",
+		/* Parse new and deprecated dma-channels properties */
+		if (of_property_read_u32(op->dev.of_node, "dma-channels",
+					 &dma_channels))
+			of_property_read_u32(op->dev.of_node, "#dma-channels",
+					     &dma_channels);
+		/* Parse new and deprecated dma-requests properties */
+		ret = of_property_read_u32(op->dev.of_node, "dma-requests",
 					   &nb_requestors);
+		if (ret)
+			ret = of_property_read_u32(op->dev.of_node, "#dma-requests",
+						   &nb_requestors);
 		if (ret) {
 			dev_warn(pdev->slave.dev,
 				 "#dma-requests set to default 32 as missing in OF: %d",
-- 
2.32.0

