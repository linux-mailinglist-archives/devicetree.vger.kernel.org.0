Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 313A54085F6
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 10:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237840AbhIMIBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 04:01:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237838AbhIMIBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 04:01:49 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2010DC061762
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:34 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id a4so19230223lfg.8
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8u0fRL7/WtYh13V0VL96ZPbNOKZAmwP1HL9vKQArsNU=;
        b=N8uo1W5bIWEeY6l3C2BNxEYJ40i32+XodLrhXu8Kdbrrv82LcoZIG1BCCH+6ZUb+xF
         ZXl9IS/4ppRT2jmTTvrR7WyL6vuM3qriR2A6z6Djh5mA4lTTgwjC63UJ5spNG/aDtrPE
         Yk/v31W4WIc21mP7seCIW7gHltGU60rxOIgtdSyhwN8Ip7yO2pRoYwRwzHYfaGMOazHk
         JAW/RA3sfif+VeH8DOEte+0OrYgGCo3m5XTNeCbrAr8xUtm8BFVDtKcL800fSQjJDlx7
         ujHpWcXMJn1v6Am5x1YiTEolK5NOI7bwWyvWOqD7zOhGtjn6g2J21C/licj92lEwrU9h
         rVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8u0fRL7/WtYh13V0VL96ZPbNOKZAmwP1HL9vKQArsNU=;
        b=8GE0QyuauWazbT9fSBKaPEv/MSlbprlitK8Woouh7r1Pn+IZfDj9BXI9d9HyNes+cE
         Vn5Q/w2TfRD7+T7y7bvwcybjto1Q26FiSOB2kheYV87ufHAUQZUMnLDtmgwZrx49mXOK
         GsV9SX2WwLW0jkQHcXg9fvpBwiTYEwz/C8sII3hshAswfLV7aUqCW4Zf2/40Tz+gzxjr
         Zi7vh68PsMlZU5Xy5WCsPhDsQ0slhGhewIqt38xwTBbhE9H5p++jBeGIq3A4LufNIGzf
         jjVmxOECpBgW+f8Tw7q97QMjoq8nzWyw3EptVSbuiI48Kk9kjbYUGqgz2qyyxZ5epKaK
         gRVg==
X-Gm-Message-State: AOAM530LV8ZZEv0BcMlT81rQvUJpLMCbnZAIu/l/BzLdl0yckLN02GKj
        /EGbjJuzrd4LcD2wfswzpuA=
X-Google-Smtp-Source: ABdhPJwtAtZdB6NNq0qSlE2Pn4jMd+9FtZOAFlcXue44QZOy3MVnTmt5XGM7en9RAeBIe43H5R0j4w==
X-Received: by 2002:a05:6512:4008:: with SMTP id br8mr5800865lfb.23.1631520032515;
        Mon, 13 Sep 2021 01:00:32 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 01:00:32 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/4] dt-bindings: mfd: brcm,cru: add clkset syscon
Date:   Mon, 13 Sep 2021 10:00:21 +0200
Message-Id: <20210913080024.6951-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

CRU has a shared register that is used e.g. to control USB 2.0 PHY block
access. It's a single 32 b register. Document it as syscon so it can be
used with a regmap.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/mfd/brcm,cru.yaml | 8 ++++++++
 Documentation/devicetree/bindings/mfd/syscon.yaml   | 1 +
 2 files changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
index fc1317ab3226..bf4e585d3c18 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
@@ -39,6 +39,9 @@ patternProperties:
   '^clock-controller@[a-f0-9]+$':
     $ref: ../clock/brcm,iproc-clocks.yaml
 
+  '^syscon@[a-f0-9]+$':
+    $ref: syscon.yaml
+
   '^thermal@[a-f0-9]+$':
     $ref: ../thermal/brcm,ns-thermal.yaml
 
@@ -73,6 +76,11 @@ examples:
                                  "iprocfast", "sata1", "sata2";
         };
 
+        syscon@180 {
+            compatible = "brcm,cru-clkset", "syscon";
+            reg = <0x180 0x4>;
+        };
+
         pinctrl {
             compatible = "brcm,bcm4708-pinmux";
             offset = <0x1c0>;
diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index abe3fd817e0b..0dcffc273c2b 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -38,6 +38,7 @@ properties:
               - allwinner,sun8i-h3-system-controller
               - allwinner,sun8i-v3s-system-controller
               - allwinner,sun50i-a64-system-controller
+              - brcm,cru-clkset
               - hisilicon,dsa-subctrl
               - hisilicon,hi6220-sramctrl
               - hisilicon,pcie-sas-subctrl
-- 
2.26.2

