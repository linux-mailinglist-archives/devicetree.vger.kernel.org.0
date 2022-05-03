Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 821E7517DDB
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 08:54:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231294AbiECG4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 02:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230439AbiECG40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 02:56:26 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECCB2192BD
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 23:52:10 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id i27so31632241ejd.9
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 23:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e/Q3zfGtgiMHzbjJMnG2PTBdvq5LVXiuIrva5mDt1sI=;
        b=V1SsVkPhuDxv+i24Hg4azo6Fj3jkJpm/dIAlQxE3zYW/SBc1gHsMU2myuVkI6Q9f0c
         qCvvaNyZ4TRHQiAaTZWOeWnyik/ln/GslJFLL9yu8xtAzBMzLnsIUbcivktyassSWOTC
         ezcSbpV/rSPbV0WuDwT5My6T6h/jDhyFDfCz5XLfuqbbAceai1eCkFZLrNCZZ6I7zJ5N
         zszJv6PPiV/+z0eCJcd2tvL+EsRDyvBljOXjq7ASJg3ckrYvEnjgWYkL153vTwBp1ePA
         fa0ez0XiZ++ekSNmfgl5nry1FiB774ZZscJxBPMFTqwNLzUzn9IutrktCCw/QCCNwuSe
         S8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e/Q3zfGtgiMHzbjJMnG2PTBdvq5LVXiuIrva5mDt1sI=;
        b=4jhYKfSLl7MRH6Y6vWVxYk9WhSd0WOrbusLtTQGAgV/MqG7KtvFX6Ohww/27phZA9I
         70M/XzcaXBidMfRIB4DQpGmbRrpN/GvrbiXFx7tUbTi+4PHK5JSTMy6XSM54QepYG16J
         5aQSq/UbaBX2vfP6XNPsCu+Fnj3YLYovwNuQ2N1PZrftFq+rJ+IbQ5W0Ncn5YPV2WpKP
         KbHcMcOOu8bJkEYIFs5GToqF0UVS62MRcIjwOT/+Qp5D/TsvnKTMpm2Ob4zud1vhvg9v
         rK264trpNshCHi6lR/zn5hZ1tgJskvNPGtUWoMlZt1/KDrFgyaI3w1U9nC8R4nyH+qHo
         EQOQ==
X-Gm-Message-State: AOAM5303T9LakuoQWaOoojza8lI2iqVG5VVVKEOzE8mzXwipAiFTA2WV
        iCSBgJrMULgrGmCe9X7BidU6+g==
X-Google-Smtp-Source: ABdhPJyQwRdpiF3Jb/6B4GvAdOz4XZNf3S/CRRMWr5NkJARVW4yJ+uqpZsPaR3UnFWYen80b2NKh/Q==
X-Received: by 2002:a17:907:9482:b0:6da:8ad6:c8b5 with SMTP id dm2-20020a170907948200b006da8ad6c8b5mr14137005ejc.372.1651560729585;
        Mon, 02 May 2022 23:52:09 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id hf27-20020a1709072c5b00b006f3ef214e2fsm4382915ejc.149.2022.05.02.23.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 23:52:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Vinod Koul <vkoul@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dmaengine@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/6] dmaengine: ti: deprecate '#dma-channels'
Date:   Tue,  3 May 2022 08:51:58 +0200
Message-Id: <20220503065201.51818-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220503065201.51818-1-krzysztof.kozlowski@linaro.org>
References: <20220503065201.51818-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The generic property, used in most of the drivers and defined in generic
dma-common DT bindings, is 'dma-channels'.  Switch to new property while
keeping backward compatibility.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Tony Lindgren <tony@atomide.com>
---
 drivers/dma/ti/cppi41.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/ti/cppi41.c b/drivers/dma/ti/cppi41.c
index 062bd9bd4de0..695915dba707 100644
--- a/drivers/dma/ti/cppi41.c
+++ b/drivers/dma/ti/cppi41.c
@@ -1105,8 +1105,12 @@ static int cppi41_dma_probe(struct platform_device *pdev)
 	cdd->qmgr_num_pend = glue_info->qmgr_num_pend;
 	cdd->first_completion_queue = glue_info->first_completion_queue;
 
+	/* Parse new and deprecated dma-channels properties */
 	ret = of_property_read_u32(dev->of_node,
-				   "#dma-channels", &cdd->n_chans);
+				   "dma-channels", &cdd->n_chans);
+	if (ret)
+		ret = of_property_read_u32(dev->of_node,
+					   "#dma-channels", &cdd->n_chans);
 	if (ret)
 		goto err_get_n_chans;
 
-- 
2.32.0

