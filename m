Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E73564E89E7
	for <lists+devicetree@lfdr.de>; Sun, 27 Mar 2022 22:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236592AbiC0UFi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 16:05:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236586AbiC0UFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 16:05:37 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B621274E
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 13:03:57 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id m30so17588142wrb.1
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 13:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1d28fyRINWBEv9rFNENNgciYP3HOQGFrcYEryHqhBZQ=;
        b=ETiMFcHrqDcGBEgPEp4gfZ1ft8E9q6y6ATkGzSVs9s/aB1O+Kvl9zW7Wp2Z1HI3v3R
         5RjXenHnXi7ULhG35yU/RVt2Zy4ux6NoihY0JjBJnAM+UBINSKubsl1Jr26/v+I7GOjK
         cTCbd9sBP2U/mvbB+rcJUXPDXItFBclpPdkVuEhFbHxB4rVNX8+vSCkGFhmUjHf1g21N
         a7aoNTd3PA/TWCRNGxqoKU7hlKgp+gvW/fQ7pXdMLwt0cxc5l/OLqWb4kkX+KW1f+N8t
         EAxZGziLUfq3WyE13+L45h5OamBGDBcttq6VjvRPxR4h7EbMMuN/9XzlBTrD0egq2HpI
         aZ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1d28fyRINWBEv9rFNENNgciYP3HOQGFrcYEryHqhBZQ=;
        b=hX7ny8gJHCKr9FXVhIcc+uqHTZZeJ0wp/6MDD6O8srPmSxDkgNrO2tAy1jd1cztFVv
         l/KPjBYwmjCGJf1swsxOs3dfsvQN5la2vIx0nzlFTjbd4pndGks8ek32FUiMwkNcCLDV
         ycaYNWVUChOYKKRZatvSGiuvw5qN0+VFsWviz9j5I3iM9KOWkdfLndpCQlWXAhtqWfH7
         dSYM9txF+xGJOXYD2AsA3GQERM8CIuY/uaZQeUPFsoU+T0BA5fCYMDWWnZWU62TxMvmM
         tk9x0fAkioTfPQxAAVX7RbZxG2h/oGkxN8xDXNao0gNJshvj4wFpwnm3rLlifEjLXom2
         VL8Q==
X-Gm-Message-State: AOAM530smVIRPH4cHv9o406aEaF9SLKg4qUnIAgJCGwt3no9XmTJ3sYL
        OQwGIkRj6RYpeRiZyWenULxVwQ==
X-Google-Smtp-Source: ABdhPJzePJDajCPuH03dlfT6LG4aetEiDC1h/QSd89XIhYxAFlPsxZjCF0AKG5u4+34RD+EcMX0Avg==
X-Received: by 2002:adf:a482:0:b0:1e3:3e5f:496c with SMTP id g2-20020adfa482000000b001e33e5f496cmr18356033wrb.606.1648411435594;
        Sun, 27 Mar 2022 13:03:55 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id f14-20020a05600c154e00b0038d06cc21b2sm1354555wmg.35.2022.03.27.13.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Mar 2022 13:03:55 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/4] dt-bindings: arm64: dts: mediatek: Add mt8195-demo board
Date:   Sun, 27 Mar 2022 22:03:09 +0200
Message-Id: <20220327200312.3090515-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220327200312.3090515-1-fparent@baylibre.com>
References: <20220327200312.3090515-1-fparent@baylibre.com>
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

Add bindings for the MediaTek mt8195-demo board.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
v2:
 * move compatible next to the MT8195-EVB compatible

 Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index ab0593c77321..024a45300da5 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -133,6 +133,7 @@ properties:
           - const: mediatek,mt8183
       - items:
           - enum:
+              - mediatek,mt8195-demo
               - mediatek,mt8195-evb
           - const: mediatek,mt8195
       - description: Google Burnet (HP Chromebook x360 11MK G3 EE)
-- 
2.35.1

