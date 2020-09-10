Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9168E263BCB
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 06:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726059AbgIJEPE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 00:15:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725887AbgIJEO1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 00:14:27 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7377BC061757
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 21:14:27 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id v15so3538215pgh.6
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 21:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v8c0TlCjltGNPv4rO1/Om9Bj2FreW//+32287ppV2e8=;
        b=C0Has8PshVIeDcAQTJrxM9ZzNdfDxXuEqG5zNv5qYtLXbKUFj9EBIzfY9dWxm4thpT
         DjWXa1ho0Ww850nBUNan6kcto2RrCWkI8NU7l+Wu7qwyqTX4KVv1RoCdnbw7lbVxN7gz
         peZDzv6PQsO07P9+X9UjV7dc6MsCI9MURi3XQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v8c0TlCjltGNPv4rO1/Om9Bj2FreW//+32287ppV2e8=;
        b=s5yKaOX7gm4a4BbS6yH+fmm8Zw0RSUMSmUlVk61sSMLo48B0iUa+jmVE4wp35m3ffT
         rONdF6ghbBa12otZXw+5oWoQ/qrjx85E8YAhmn2htSLwJTPjKgQRnzfodZJFn0H+W5kN
         NnfGoIoLKuOM4yyJAZJ2RHYxDZL9z6VQek0A0XrydLL8/DSVpW5hJzpUZFM8rtbmipqU
         P+IdPyhUKV40DGz8uaqP5TRM3+WBVZAfOBLEatZn0AnhEtSOPJUEmefbWYtt0Pfl1SGP
         ls1eiOBSUGskFEBlEcxwsq9cMfaBhewuXtiCoZDwZhgp2KrngrAyLH9BkrPlnEippbfS
         ieqQ==
X-Gm-Message-State: AOAM532f8JSfCY8DHqouWrlgbpuleQ+t8Di/+9rB8aNJqSOR0wutPfgV
        qWpGeDFCtAzsIIn1NU3sHdLoIg==
X-Google-Smtp-Source: ABdhPJyEfGAaDdXT0yj3+AgZpsKtXjp78eyXQV6Ft8bAtu4SuDhI8K5uZicrEwMQlYm4yqJi/J4MPw==
X-Received: by 2002:a62:7c82:0:b029:13c:1611:6525 with SMTP id x124-20020a627c820000b029013c16116525mr3778979pfc.5.1599711264257;
        Wed, 09 Sep 2020 21:14:24 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id z11sm4266169pfc.181.2020.09.09.21.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 21:14:23 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Ikjoon Jang <ikjn@chromium.org>,
        Bayi Cheng <bayi.cheng@mediatek.com>,
        Chuanhong Guo <gch981213@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: spi: add mt8192-nor compatible string
Date:   Thu, 10 Sep 2020 12:11:00 +0800
Message-Id: <20200910041101.1695195-2-ikjn@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
In-Reply-To: <20200910041101.1695195-1-ikjn@chromium.org>
References: <20200910041101.1695195-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MT8192 spi-nor controller binding.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---

 Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml b/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml
index 42c9205ac991..55c239446a5b 100644
--- a/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml
@@ -30,6 +30,7 @@ properties:
               - mediatek,mt7622-nor
               - mediatek,mt7623-nor
               - mediatek,mt7629-nor
+              - mediatek,mt8192-nor
           - enum:
               - mediatek,mt8173-nor
       - items:
-- 
2.28.0.526.ge36021eeef-goog

