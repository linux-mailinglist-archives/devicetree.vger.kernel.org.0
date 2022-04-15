Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD25502E1B
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 19:00:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356049AbiDORCr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 13:02:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356044AbiDORCp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 13:02:45 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76775373E
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 10:00:15 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id ay11-20020a05600c1e0b00b0038eb92fa965so8081159wmb.4
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 10:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gq0WGrwCFa0DH2fCvNOkSonNeptkGtqY34LwdIN3LF0=;
        b=I6rFcA21cGHuPTs2RY2P37BAl0LZBd8+WMQzCzxJXVFUKbRMy7ncw42qJXS2bQCxdF
         bdbFwVu6n2Ns6/wkqblBtVEFUZYKzjtiWgSz1T2aSBvGRBa96d5jm/Y7koIUgKqWToxL
         TBMwIYiv+x7PSkmSlR8ytbDsY5mzC7pY6WIB8KBSBoSXUeS6VhNScGDognj48gg+Fjjz
         qwRoeYMejvdOMD+q8hJsaDowApxmZhenSTfcTNe2dUKxEkOlbiHJ6SCl+IX0520CVuq9
         rfNRCedszqfnhFyvKRVyFN1ab4/c1B9YXO8W7uWH6Y7WpQw3NsLcf6zIW+/vur77qZiX
         6xEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gq0WGrwCFa0DH2fCvNOkSonNeptkGtqY34LwdIN3LF0=;
        b=ch5M5USpmh0bo/iypNWj3J4vTl/iV6ij9VXYlltI54mEp10hoXIKR/FLU+Elkul1tT
         wmAKgw5nLHBnjowgqmU6OUAQ7+b9X+hCE87ZoqkXje55SHSgTA/ojBgyEizkIRaesPCm
         zaHn/N0FS+adHskdjPk6kHkVrU0S1EoHeTU2BjYvhvF3eFwfC/EreyYWaVL+D5EVnH1i
         TLCgj88lKuwFaAGycv4sHJseYij/kQEoHY7znTBKnPvRJA1UMVjULZp0yvndTxqs/sAc
         0I1J6WvDf4CdwM2yteyxMXhxEC5kM7Pl63wxAlr/KBfYKiwGVgkujc9qXWoIMfZESSSM
         i1OA==
X-Gm-Message-State: AOAM531JoFR2MQgcfnj4nCWtPm+2j/e3nOQg2+9LGtYjQ24iZ2m3rcl6
        Fe8TUdE2OcYdUq0K88NOB0FwTg==
X-Google-Smtp-Source: ABdhPJzV1ptXy802vFVzTiBT0RWKqMJu7qvTmAbOiw85HDwqnMbN4MS0LF3Eo41Npj8bE5cEzpbRZg==
X-Received: by 2002:a05:600c:1548:b0:38c:ef05:4cdd with SMTP id f8-20020a05600c154800b0038cef054cddmr4090179wmg.71.1650042014517;
        Fri, 15 Apr 2022 10:00:14 -0700 (PDT)
Received: from radium.lan ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id i127-20020a1c3b85000000b00391a363f5adsm2119704wma.36.2022.04.15.10.00.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 10:00:14 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Stanley Chu <stanley.chu@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: ufs: mediatek,ufs: add compatible for MT8195 SoC
Date:   Fri, 15 Apr 2022 18:59:38 +0200
Message-Id: <20220415165939.1861470-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the MT8195 UFS support.

The MT8195 SoC requires more clocks to be enabled compared to MT8183 and
MT8192. Document the clocks required for MT8195.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/ufs/mediatek,ufs.yaml | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
index 32fd535a514a..5ed36e95e933 100644
--- a/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/mediatek,ufs.yaml
@@ -14,16 +14,31 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - mediatek,mt8183-ufshci
-      - mediatek,mt8192-ufshci
+    oneOf:
+      - enum:
+          - mediatek,mt8183-ufshci
+          - mediatek,mt8192-ufshci
+      - items:
+          - const: mediatek,mt8195-ufshci
+          - const: mediatek,mt8183-ufshci
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 8
 
   clock-names:
-    items:
-      - const: ufs
+    oneOf:
+      - items:
+          - const: ufs
+      - items:
+          - const: ufs
+          - const: ufs_aes
+          - const: ufs_tick
+          - const: unipro_sysclk
+          - const: unipro_tick
+          - const: unipro_mp_bclk
+          - const: ufs_tx_symbol
+          - const: ufs_mem_sub
 
   phys:
     maxItems: 1
-- 
2.35.2

