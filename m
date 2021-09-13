Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37B594085F8
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 10:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237838AbhIMIBy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 04:01:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237853AbhIMIBx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 04:01:53 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2B71C0613C1
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:37 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s10so19215258lfr.11
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vlYI72az+h1GSzT+KG/59hM5JtHvcZcByQ0ounNHO2U=;
        b=DPK3BL4e38LGamDuhR47D9vYop2OOzeDkoJkoRfQUS17RgpWs74+DhDV1Hj9DFji/o
         xr8wl0cYH5ymAEBdo7LFalu2Y5g1EjRilB7yK003AmuB3feVGtv8jEOIqDbHREoDRZ11
         7t/+UiFhiK6+fb/3pwq3Wzq7aNxWExKeptBoM2iIZao8NExX+tsAYqudgREe9DKbtYDf
         52JJXyiUQeWJa7y/TbOW/8rW2+IuTLDawya+CWSGil1R3e3721B+aVHIYhd82kLE59aF
         QGsvbYa1/t0DrCz0HB+3IC/yHIKKftiL+6tMyvqCSf1/HK0GtfTST0ZwPyMRNyXoqNQj
         1CBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vlYI72az+h1GSzT+KG/59hM5JtHvcZcByQ0ounNHO2U=;
        b=buroC5RH1vT6Ceo0l3Y24GIjNQxZ05Ao941ivcAs/biFOUuS8RawiLPAbFAQwgYGwO
         n22DsAlfx4obzJrlx0WBbXKwnd1Ub9XVo5wd6ORFLiop+3pYUKG2w8qqMtWbNBbr3F5u
         dPKFErJuwsBZ6Z3VSkTjRPQiuTGrX+epsRRzsf3G4cM8pMsxw2d5Yp2VoW0PPHQJf4zU
         3n8v5DrQ4ZC6PbXE1UYxEqFLTpHhNA7/fWkTWqUDnCDQP0uVVA1Bx3MkuVSC3UJDPXyd
         YJgu1BTQeAlfRDzFsHRKJZXj1ufvezbzpS5i/zm/jHfz5xnEc0q5qcH/SIZ0dnqNp2BY
         MELw==
X-Gm-Message-State: AOAM531D8Lllh9hJ5GzyRjco37TWloJQ7TMkmb9cpqjyWswoInvKpxrf
        7jACnAQ+tJh5EWdWLUPxrSM=
X-Google-Smtp-Source: ABdhPJxUllraKRY8XIslWCFTdKHXnhkQWzeqy+WPW56KQM0UrCO8UgCllmPbOcb+rQzy5LYj20jUIA==
X-Received: by 2002:a19:3818:: with SMTP id f24mr8119306lfa.601.1631520036157;
        Mon, 13 Sep 2021 01:00:36 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 01:00:35 -0700 (PDT)
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
Subject: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Date:   Mon, 13 Sep 2021 10:00:23 +0200
Message-Id: <20210913080024.6951-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Northstar's USB 2.0 PHY is part of the CRU MFD.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/mfd/brcm,cru.yaml         | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
index bf4e585d3c18..262284ae80f1 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
@@ -39,6 +39,9 @@ patternProperties:
   '^clock-controller@[a-f0-9]+$':
     $ref: ../clock/brcm,iproc-clocks.yaml
 
+  '^phy@[a-f0-9]+$':
+    $ref: ../phy/bcm-ns-usb2-phy.yaml
+
   '^syscon@[a-f0-9]+$':
     $ref: syscon.yaml
 
@@ -52,6 +55,7 @@ required:
 
 examples:
   - |
+    #include <dt-bindings/clock/bcm-nsp.h>
     cru-bus@1800c100 {
         compatible = "brcm,ns-cru", "simple-mfd";
         reg = <0x1800c100 0x1d0>;
@@ -76,7 +80,16 @@ examples:
                                  "iprocfast", "sata1", "sata2";
         };
 
-        syscon@180 {
+        phy@164 {
+            compatible = "brcm,ns-usb2-phy";
+            reg = <0x164 0x4>;
+            brcm,syscon-clkset = <&clkset>;
+            clocks = <&genpll BCM_NSP_GENPLL_USB_PHY_REF_CLK>;
+            clock-names = "phy-ref-clk";
+            #phy-cells = <0>;
+        };
+
+        clkset: syscon@180 {
             compatible = "brcm,cru-clkset", "syscon";
             reg = <0x180 0x4>;
         };
-- 
2.26.2

