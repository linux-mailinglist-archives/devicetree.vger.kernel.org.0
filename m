Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4165511CF4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242778AbiD0QUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243157AbiD0QTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:19:11 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4213506ED
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:15:27 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id j6so4355147ejc.13
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8rzcyxWl1wMJihRThXzFaCrK82eFdfscpNcxmBTO4Zs=;
        b=xzyfNbpq+hHflDo3MaJj/kAHE+ybl9o8ISSUbD5Fa2ZSK2bbJ8RIKpAEddGKZXPzRG
         UqI5MgJsvM6QatLFtzI3mQ9rexXKTqB7F465Xcpa8OvKR3BPPV2xgyUETPWVsGrf8fL2
         9HTcp0od11LRmBP/ufdC9icymTSdHzbN42lEvsT4VPwL9+DVI3FQh7w00vD1X6XkFswz
         mlSM4MYdRpMM5TPNee19PPhgOX2zONnVlgpmaSgSkPoUupmbEnDFFkoR77AoQjnuwGF+
         t+Yoy2bbZfUBdPyskCEuU9btMFR4KlNCvlZ69+sJ9wnTibYnjtQ+1prOciMfgZD7wGRk
         zFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8rzcyxWl1wMJihRThXzFaCrK82eFdfscpNcxmBTO4Zs=;
        b=ux1WTsfn0y3PNV9xykeAfbglSDJBYXKT3+YrW0W6Q21V/WcbAIkBa1WjTjO+sr/RiZ
         qr7ha3qMNU0DweXxRocgWXmviLsdxXaFoAWsUX2uNqF+l8qpRPMR8s1qQzitdzmvoTpB
         VSC1usyd04ezHYBAFoJ8U3lAhsbo6+dhgvP5jXYISIrsROqR+unBYmltMFJt41QVOJDc
         4OLYrMfBPpzRAkFCjwknNAzGBJb3SNuP77x/LkyhIO4aUT1eJx3EImuD2kdE7HLr2mZH
         In1wMxU/6HwEVsKD0zlVkuoVw2d36jp4KBa/H+b2JmCkt4bpWT0SH024NdpM6DYUOhbs
         tSwA==
X-Gm-Message-State: AOAM5331CL9rPoyaBOtsKPuMuBdnL50tzvhbWCgraqMPqFTLykS6vDI8
        3hI4g4Pik9l7UR/hPZuFJo0EXA==
X-Google-Smtp-Source: ABdhPJyt6dL7KsOnoNV738RSDvZ+369FsP757XFQzna9ghSby6yVScpmNROztRmHDMGufy94p5G74w==
X-Received: by 2002:a17:907:2d21:b0:6f3:bbd6:5a09 with SMTP id gs33-20020a1709072d2100b006f3bbd65a09mr7051601ejc.552.1651076108792;
        Wed, 27 Apr 2022 09:15:08 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r19-20020a17090638d300b006d6e4fc047bsm7095015ejd.11.2022.04.27.09.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:15:08 -0700 (PDT)
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
Subject: [PATCH 3/4] dmaengine: mmp: deprecate '#dma-channels'
Date:   Wed, 27 Apr 2022 18:14:58 +0200
Message-Id: <20220427161459.647676-4-krzysztof.kozlowski@linaro.org>
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

The generic property, used in most of the drivers and defined in generic
dma-common DT bindings, is 'dma-channels'.  Switch to new property while
keeping backward compatibility.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/dma/mmp_pdma.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/mmp_pdma.c b/drivers/dma/mmp_pdma.c
index 5a53d7fcef01..e8d71b35593e 100644
--- a/drivers/dma/mmp_pdma.c
+++ b/drivers/dma/mmp_pdma.c
@@ -1043,13 +1043,17 @@ static int mmp_pdma_probe(struct platform_device *op)
 		return PTR_ERR(pdev->base);
 
 	of_id = of_match_device(mmp_pdma_dt_ids, pdev->dev);
-	if (of_id)
-		of_property_read_u32(pdev->dev->of_node, "#dma-channels",
-				     &dma_channels);
-	else if (pdata && pdata->dma_channels)
+	if (of_id) {
+		/* Parse new and deprecated dma-channels properties */
+		if (of_property_read_u32(pdev->dev->of_node, "dma-channels",
+					 &dma_channels))
+			of_property_read_u32(pdev->dev->of_node, "#dma-channels",
+					     &dma_channels);
+	} else if (pdata && pdata->dma_channels) {
 		dma_channels = pdata->dma_channels;
-	else
+	} else {
 		dma_channels = 32;	/* default 32 channel */
+	}
 	pdev->dma_channels = dma_channels;
 
 	for (i = 0; i < dma_channels; i++) {
-- 
2.32.0

