Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEADE38AE04
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 14:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232474AbhETMXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 08:23:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232053AbhETMXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 08:23:06 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43F5C09F5F4
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:17:04 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id u4-20020a05600c00c4b02901774b80945cso5170208wmm.3
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FFbC/8AD0LOFNwNu9BRgUtFruC/G1IwePtG3av6RsOY=;
        b=k1LNclxtiP6W7x7zqryjIF2j1zX5LVI89E2F+ZC0OosAJK+edKHkMljCHDcNA4W6r9
         oo4eZKxNjGjNVEJ8BFhLlpoqnPMwuEiPyWw0EOz4IxxVlKUgsrlswX/caR97z6QS70oV
         NZ3/faNHyMCstTucEuXIupFp8etwQE4J3yqi0J69jZcU0Mx7BKVpa2T7q24WhNiKWtvb
         PU5LpeN250fH9rB8YtK5Dy/MNYmxcDZJKb5GKWG8MkZ5EEWxsJ6BFLPncstIQhXlrfUP
         vHUQIPzmn+0TEAFURxP+OL/A4Cij2M4dnT2BPNlHbT0nR+8xyCyGrpl/dPtQmw2IqIcV
         nkXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FFbC/8AD0LOFNwNu9BRgUtFruC/G1IwePtG3av6RsOY=;
        b=cwRduNJP7trnP8iY+KGTbwSkcHpcwvIWTAFGqAEbtj+rQTaZyyYzSo7kaj04RcrH20
         0JXNiyGRw15MAjLFNb2NHIAiaoJXSpxEJMk0rH4eUF3wDfQiqh5SAQkZV02t5s3KHs5m
         U0lEyOJhR4CA/quJQ+RkhBVGSyBSg/j8UoyiWPFRCRWBn4l2NK9vI2yX6Z/pGhHbvHty
         LD9isLs6WzyBPo4DaSozHL9vq8nSqLKktRJo4lRxSHUpTRyvmzCpCf82o7FNHqGglKSB
         5q8eEM9//xTHjz51v30yq4mJrLL3GbfVgyF40EuX+6v7EbZgn8zF+7O40peifqZHvW/H
         7dOg==
X-Gm-Message-State: AOAM532pVDEFnMq+eG73HV61aUaJYLCLhRywqlP12j83HNycVrdP5ist
        OxnzXTsiStbgnxVJG6ecKlQUZQ==
X-Google-Smtp-Source: ABdhPJy170kk8Q53GOuLn6l2Mf+w5xTtNMkRzkP4oBTF3ZetnMbI5rV9xgKJjjvpwPsSs4pLxpDMAw==
X-Received: by 2002:a1c:4d01:: with SMTP id o1mr3222583wmh.42.1621509423424;
        Thu, 20 May 2021 04:17:03 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id a19sm2310757wmb.40.2021.05.20.04.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 04:17:02 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] dt-bindings: rng: mediatek: add mt8365 to mtk rng binding
Date:   Thu, 20 May 2021 13:16:56 +0200
Message-Id: <20210520111656.66017-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520111656.66017-1-fparent@baylibre.com>
References: <20210520111656.66017-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add RNG binding for MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

v2: Write the compatible in a more compact way

 Documentation/devicetree/bindings/rng/mtk-rng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.yaml b/Documentation/devicetree/bindings/rng/mtk-rng.yaml
index 4be5fc3c1409..61888e07bda0 100644
--- a/Documentation/devicetree/bindings/rng/mtk-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/mtk-rng.yaml
@@ -21,6 +21,7 @@ properties:
           - enum:
               - mediatek,mt7622-rng
               - mediatek,mt7629-rng
+              - mediatek,mt8365-rng
               - mediatek,mt8516-rng
           - const: mediatek,mt7623-rng
 
-- 
2.31.1

