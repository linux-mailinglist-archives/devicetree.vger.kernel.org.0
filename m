Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A38C3233DB
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 23:46:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231880AbhBWWla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 17:41:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232787AbhBWWg7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 17:36:59 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE1BFC06178B
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:36:18 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id v21so182096wml.4
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 14:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xWiZLSlx41qOyR+/nqX4T5Ur2XiD0k9DldMS6oYp7uE=;
        b=WcflAq5G527RWIltx4lf9nR42x/Y5RkgvppJAZKdUfAStRIR33E/zkZQDRf7TK2IPm
         GO9JHJKjfcW5hmULQIkvV4D7xobIwGlwaTM2jw6SjfYHuwRPpSmOgo0v27sB/i9jSgiC
         wgnTqTjaHhAIY1VWjhw/Ix5VwpyddRBKVm3THfDH+DJKPjb0oze2ZNMPi/C1ZtVLVyn2
         ycK8oyBCIcPmXXvsTx79RuCvwbZv12M0fO08yb9EzfTgl4dIuHwNuSlwZtgxjXXEZ+Gt
         WX7Pl7qGBHgMs3cCPd1Wr/t6iL5TgKxm4C0M9reopX+Y7KzH3qEOxJtYL8SE+duW539x
         2eEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xWiZLSlx41qOyR+/nqX4T5Ur2XiD0k9DldMS6oYp7uE=;
        b=hXUssvSY8foox2roeQhHNevY/k1C/oV9xPqbkYULpejaHQAUGYM5fhKVnm9cq2PTjk
         rXeR6U0mG9kOWc22/Om/oGV2cOXFF0W1OnVlrcW5Kltka0PIUHyNzWcltfTXwMuOQErl
         l+u06aLXf3PWCkaocqrVVMUCXFI2c+dlqA4f0B1/ZkuUYruuNuis5UDK423Mllg+s7r2
         C6UQ8S93hubws08aSpmLrWPEBfr3TnCntS5lezxYJf5Orvs+NzmOSAkVdefZV0TjV0Gz
         2OjoQsHDr5RDphbGsRI8C2kKLUklgem3sMf02DpsR8S+t9gboogzd41p/IU756A2LPtr
         15mA==
X-Gm-Message-State: AOAM5315jQMqI8pqXdQzP3Vj+zABqYPGpVMRRHGhCPwtj1o1/+M7Z95F
        cI5DG4AiBK9r/CZY4rZk6vJkaw==
X-Google-Smtp-Source: ABdhPJzh6VL4qyqqFL28vsTeEqLT4ChCA6Pv8ysE1oNxHQHX0SfSIsjrnnzkfz/1qVxF66qxih3o0A==
X-Received: by 2002:a05:600c:3551:: with SMTP id i17mr859597wmq.92.1614119777558;
        Tue, 23 Feb 2021 14:36:17 -0800 (PST)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l22sm185508wrb.4.2021.02.23.14.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 14:36:17 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH] dt-bindings: arm64: dts: mediatek: Add mt8516-pumpkin board
Date:   Tue, 23 Feb 2021 23:36:13 +0100
Message-Id: <20210223223613.2085827-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the MT8516 Pumpkin board.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 93b3bdf6eaeb..366a753f64ba 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -125,6 +125,10 @@ properties:
               - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8516-pumpkin
+          - const: mediatek,mt8516
 
 additionalProperties: true
 
-- 
2.30.1

