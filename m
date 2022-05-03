Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 938F9517DB2
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 08:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230391AbiECG4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 02:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230360AbiECGza (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 02:55:30 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22FD218E39
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 23:51:58 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id be20so18813131edb.12
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 23:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iFtQQxlzreRUl8NYVzyEv+oobXt03dUXlkwOfmHujiQ=;
        b=ObzIYFhn3qY2WDZ/YfTsBwx9WvtaoZp4zwpnGQxHGIY/Qw4+ccfc/mgZguycN9RgNq
         c4K+5wBQ2UdNMA4U9iOnSGlCLwSLyh6q0SPuBQXnJEHjsTkbCRYr+igUJvoXJEOLhQG1
         aZmx9Zs/+ZNpN/E6o5FnNQ8Ts/PZpiC/Y0UMkx9Nf2r9Sk1a0UUnOwl1fFlakuAW3jds
         Uxy9L0+s/aic9NA7lZer1R+B0c69fUOIBByIEUikxSiGEwvCdyStZHTADck76WH+IfAi
         jUdi++P7KeXxRhVISnU2RX2JM3P2p6rcHsrTL/+DabDuEZSBEg9i57hTB9mqUtCrnNmj
         PGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iFtQQxlzreRUl8NYVzyEv+oobXt03dUXlkwOfmHujiQ=;
        b=cEav7c1JJ1+2eCrRN94TpnBJzv6XorrjlYcs90yB3W6Iyj2g8j2ppCbzakIim0VaeP
         BVtrokJ2XnBpn34WqXEwXDuAUUwbN/y3K8TImarqGcyz6YUh/rgogtjJlbjh0un1CWGq
         sYXzvc2yOGpA9IFNcp1F+LdgIImrp+JPcoYDruywrJGXbIw67MpE3n726wzU4aOHZUxB
         WkhKNDeBh8+MjzWaS7vXeFx6rYbrxz+mEYWWZttuAr81CLy9YHvix8NUjEftGXI4cQlM
         Efd5AUWks0fwdlx+VlU1uDWUECLzQZ0rzCaQIwmxOW+HtMDUDFay2ucs/CFUVe2cWkia
         +06Q==
X-Gm-Message-State: AOAM530O/GhkiTv9Z1FDv+u9DbCaaf3uZfGS/t3Y/sHEupA9oQrRiAUa
        sWvf+r2Lp7rNszRGHyRMYSGneQ==
X-Google-Smtp-Source: ABdhPJzJYn4i3EuPd/sFsg7zyP4pTIxT42kD7CyLvGoXyodayp7ZJcBmbNizeofPWzwWRbjEPDQyCA==
X-Received: by 2002:a50:cd08:0:b0:426:1d9b:4b13 with SMTP id z8-20020a50cd08000000b004261d9b4b13mr16505740edi.360.1651560716588;
        Mon, 02 May 2022 23:51:56 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h20-20020a1709070b1400b006f3ef214db8sm4246237ejl.30.2022.05.02.23.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 23:51:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] dmaengine: sprd: deprecate '#dma-channels'
Date:   Tue,  3 May 2022 08:51:46 +0200
Message-Id: <20220503065147.51728-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220503065147.51728-1-krzysztof.kozlowski@linaro.org>
References: <20220503065147.51728-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
---
 drivers/dma/sprd-dma.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/sprd-dma.c b/drivers/dma/sprd-dma.c
index 7f158ef5672d..2138b80435ab 100644
--- a/drivers/dma/sprd-dma.c
+++ b/drivers/dma/sprd-dma.c
@@ -1117,7 +1117,11 @@ static int sprd_dma_probe(struct platform_device *pdev)
 	u32 chn_count;
 	int ret, i;
 
-	ret = device_property_read_u32(&pdev->dev, "#dma-channels", &chn_count);
+	/* Parse new and deprecated dma-channels properties */
+	ret = device_property_read_u32(&pdev->dev, "dma-channels", &chn_count);
+	if (ret)
+		ret = device_property_read_u32(&pdev->dev, "#dma-channels",
+					       &chn_count);
 	if (ret) {
 		dev_err(&pdev->dev, "get dma channels count failed\n");
 		return ret;
-- 
2.32.0

