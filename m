Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55375539114
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 14:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344137AbiEaMuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 08:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238062AbiEaMuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 08:50:20 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B974B6EC70
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:50:19 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id p10so18535237wrg.12
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 05:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tEjwaurHVMJcwAgK/RtwUwRV4sLe4udXQl3kl+UTRSg=;
        b=VgN9otLsImmOdEiEQMJvVUswrD4KDRye97AzAK7AqCWUNPQYVsT9mlFSLsIyQadSY/
         aMZexslC1uHQp58ZwYP3iI9BCWRdWMivbS7Hr3dRcDbv6jPk93Jd25DZZ17u32dtcvCV
         yFhgBkcJqPBHGYdIAdWlEFTw8xggBm8krkg/8cZTgP10VsZJ9Bs/1nkiOum+CDcLdJaI
         H0v8nJ9I4lnVf05DworpM4fK7iyPyLkOXVEYF9wq5b1Dwd8aEOgF9F5zC0Lfr29aEsxY
         aGzKv3m4mex1HDs9ejM9W21Bsa1rUulj36QUoAjOi9BPIUaeVRggmppd6Y+1bYe+W6M5
         63uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tEjwaurHVMJcwAgK/RtwUwRV4sLe4udXQl3kl+UTRSg=;
        b=MZdsx9sWgiHeV13CdJoN2YFSfTAMWdNIoFFV5puGlapuP+rFgO0YFj1P7cl7bpDKPw
         GMIEUhNjn/G0gCyy/5lRkwl6BsC2bd8ftP8ECUnnp1oFGLvUEVUyfgX6uFxB7ZIM9Sgi
         pNUY6w4x3HUXFF6XLIclPr1n4utD2FOndwhXCvrgP7OjWwXEN2M23+cV4Kqc4/B9kpCz
         yJw6Ph58nqYvBAFEgXt4xvd8NpeLboLYpIknh+bWnMC2XeBdVTKbxbH5QT5VMN2nWl0e
         hU12B+sdmxrtuxfkeJbC6GEwPaoicv+aGbmALKqZeD44WkQ2KC4cGb4+2I4dG095cwgm
         2GHw==
X-Gm-Message-State: AOAM530rYzbeiAm6CGWlbWuovFXGwb9lM3RX1vgt2tTcz+Tv3ezhX//K
        sbY4TmfLH+HcwuSpyN+PpF7Cww==
X-Google-Smtp-Source: ABdhPJz+0xRhbxZOvqm4trzphmBLxipyzJg9E3N2RcSx9CyjqRtqduu5UbyVouSGVHu6621tAkc0NA==
X-Received: by 2002:a5d:6da6:0:b0:20f:bc8a:9400 with SMTP id u6-20020a5d6da6000000b0020fbc8a9400mr43886708wrs.274.1654001418333;
        Tue, 31 May 2022 05:50:18 -0700 (PDT)
Received: from helium.lan ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id i13-20020adfaacd000000b0020fc40d006bsm11475019wrc.17.2022.05.31.05.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 05:50:17 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: input: mtk-pmic-keys: add binding for MT6357 PMIC
Date:   Tue, 31 May 2022 14:49:54 +0200
Message-Id: <20220531124959.202787-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531124959.202787-1-fparent@baylibre.com>
References: <20220531124959.202787-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the PMIC keys on MT6357.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/input/mtk-pmic-keys.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
index 9d00f2a8e13a..7eb0751afa22 100644
--- a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
+++ b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
@@ -12,6 +12,7 @@ Required properties:
 - compatible: Should be one of:
 	- "mediatek,mt6397-keys"
 	- "mediatek,mt6323-keys"
+	- "mediatek,mt6357-keys"
 	- "mediatek,mt6358-keys"
 - linux,keycodes: See Documentation/devicetree/bindings/input/input.yaml
 
-- 
2.36.1

