Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DFF548A9DF
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 09:51:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349024AbiAKIvr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 03:51:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349033AbiAKIvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 03:51:45 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194B1C06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 00:51:45 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id p14so16110405plf.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 00:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=95yOM2oPjDW4I8teUQkYRlUXa8kIk+GmIx7gO72jBTY=;
        b=GpMh6fkVqVZnpQ6fScwSciNnWMkmNTtU1WgST8+pCoVLTfgXeKSZPYogUkpsxz6FF8
         +/WpAxttfOV5TjT30xKEvL0rMlmogZOvL5ugDuwDo5eKo/S6U/EinZ6A+7O7Wj/MZ7Qu
         9VLER8etNMkI5H/6yhxTf83SOM8KvmMuHHqNR7mFTlu6mj8BQoLXQ2Oh7zlInW8SZdVb
         fp4+SLidAPI2J9gB0om53xk/hHNTonmlL56uac8Nqo+p7Ww3v4YCmeBNPdfehubbB50E
         sbzbwr4fsRxt56wcVkdGZMa97wM7wATjjeQ7Gfmj7HA75e0HSHt0woJkskypzV61D4KB
         oj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=95yOM2oPjDW4I8teUQkYRlUXa8kIk+GmIx7gO72jBTY=;
        b=alPZgqYCfeX7a9xs1ja7etBQ41gyEx7KKeizxY4C9NTzmaF1HWgkkoAPCQUbg3fh3M
         VAW6iJihItOYUBR7RoGthaDZle5fwBQ5oegUIDoaNGKJWXe6o1OyV/RtIy/J60+Hhucz
         NG8O+ILI6rW0Nm/0Uf80JOIECnlbNcEWz4HpLsRQQLWPor1ExUZcp/Xor1O8OKsebO2M
         B3AHbVJr/R0GdlCKKE1Tosp+G2hXi4zsuwLO6CYquWnk5KWVazS74yrhkR4AX5afumYF
         U0GGCHyOxz8gRzQduPFH3YLmNIdFJxxDKIUrc/w56i8QyoutOHxPSYNGgjkGKRdUTgcT
         9hHg==
X-Gm-Message-State: AOAM530OS+kbwLM5erxoR+1YA5oYj6PTsKVe9P4MiCf+oiTgjMhTWRZw
        EKLtqVxKVUzLkc7XQc9ATcte+A==
X-Google-Smtp-Source: ABdhPJxlbSxnGg4ihJcp7ofYvFqtVX8rwXaySdYUqfwyOnXJUtvZ0NiapTjTqylZZvzzNHeBMF6Y+A==
X-Received: by 2002:a17:90a:578b:: with SMTP id g11mr2051970pji.76.1641891104660;
        Tue, 11 Jan 2022 00:51:44 -0800 (PST)
Received: from hsinchu16.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id j4sm9447598pfa.149.2022.01.11.00.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 00:51:44 -0800 (PST)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH v2 2/3] dt-bindings: Add dma-channels for pdma device node
Date:   Tue, 11 Jan 2022 16:51:26 +0800
Message-Id: <5db314b798cd9cfcb5cb61bc56515220b7d50315.1641890718.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1641890718.git.zong.li@sifive.com>
References: <cover.1641890718.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dma-channels property, then we can determine how many channels there
by device tree, rather than statically defines it in PDMA driver

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 .../devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml    | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
index d32a71b975fe..3dbb8caefc17 100644
--- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
+++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
@@ -34,6 +34,12 @@ properties:
     minItems: 1
     maxItems: 8
 
+  dma-channels:
+    description: For backwards-compatible, the default value is 4
+    minimum: 1
+    maximum: 4
+    default: 4
+
   '#dma-cells':
     const: 1
 
@@ -50,6 +56,7 @@ examples:
     dma@3000000 {
       compatible = "sifive,fu540-c000-pdma";
       reg = <0x3000000 0x8000>;
+      dma-channels = <4>;
       interrupts = <23 24 25 26 27 28 29 30>;
       #dma-cells = <1>;
     };
-- 
2.31.1

