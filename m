Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4259561687F
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 17:22:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231448AbiKBQWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 12:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231536AbiKBQVm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 12:21:42 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63CCF31DFD
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 09:15:22 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id k26so7549752qkg.2
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 09:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TcjKNQcJeWbJaypxypHYP0ACBt1JoRrh+USGvZK/Q14=;
        b=xfSDJkT8XGT4e4GmeeaWc7Of/KTqwBrPhbnq7ACAM4TlvQNTQJsdiSNILilbdC9oi1
         4apQNI33jLHcYYwe99FL9Wx5eAJf/7oSWRd8SmaRT8SFH8zxy7v4we6aJIoKGz0fnFOe
         OrUwdUA67tGtERKnwLddI3MA/v7va2GvgpqnCkCGig0pVnS5L5MrwurHdpnvTBZLyNqZ
         Jk3olgal7bz8PFP/3mY5xjJdgd6VJZwBhvBEO6tNerrMx/zk51AAR8KfzI0gjrQYa6py
         +5n27E4jzNuUu+Tsn1AftYIRdzqxTLKAyMtBCvF1x4hs0SNSCYGhZe5UigdMMY8vZ8Fn
         AfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TcjKNQcJeWbJaypxypHYP0ACBt1JoRrh+USGvZK/Q14=;
        b=Y+CELiSGAazyIV8xHsp5pJd9MPGwQINcwB/hht8FoWMWSufo+itA3YO2538InrufEb
         1HgkNts1EFuSn4avUDkphc6H8Y3X68+WnRI205slCv/9sw3iP0B4T2ej7tioP87UTflP
         fz/BZzFGr+ImFBTaBchlddH3m1ZEk22arUxIQv+Y2nq5uqVGn0NH5cW2JPNhVcc09NUb
         rwQfrm2SXh+2HhzeemYWMvQG52oTPQ14DKAx7QxSIANQ3CQ0ifk8Oj0Fl9b7ruCaJkII
         /l3A1ijmvnl4WeYDAZa0zl+HfBe5yPOO+RxIHNXyOAA6JR4OLszLQhHdPZXIDy8ZaBfM
         +K8g==
X-Gm-Message-State: ACrzQf3QRNtv84GU+zfMKO3+jg5AIvcnhR5yfMazwuTeFvDtsG93HHPB
        uMgYJl9R+sUIU4l8ueqAziHXNw==
X-Google-Smtp-Source: AMsMyM5lWjCc8VmTbYzcwiRCiZAoSwDqOaJTGXmM56j9zo8d4VSkWFPN8mpVRC2ZGVTbmL8MSh5mYQ==
X-Received: by 2002:a05:620a:294f:b0:6ee:b598:2625 with SMTP id n15-20020a05620a294f00b006eeb5982625mr18462493qkp.415.1667405715315;
        Wed, 02 Nov 2022 09:15:15 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id h12-20020ac8548c000000b003a4ec43f2b5sm6831571qtq.72.2022.11.02.09.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 09:15:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v3 1/2] dt-bindings: net: constrain number of 'reg' in ethernet ports
Date:   Wed,  2 Nov 2022 12:15:11 -0400
Message-Id: <20221102161512.53399-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'reg' without any constraints allows multiple items which is not the
intention for Ethernet controller's port number.

Constrain the 'reg' on AX88178 and LAN95xx USB Ethernet Controllers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

---

Changes since v2:
1. Drop changes to switches.
2. Add Rb tag.

Changes since v1:
1. Drop change to non-accepted renesas,r8a779f0-ether-switch.
---
 Documentation/devicetree/bindings/net/asix,ax88178.yaml      | 4 +++-
 Documentation/devicetree/bindings/net/microchip,lan95xx.yaml | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/asix,ax88178.yaml b/Documentation/devicetree/bindings/net/asix,ax88178.yaml
index 1af52358de4c..a81dbc4792f6 100644
--- a/Documentation/devicetree/bindings/net/asix,ax88178.yaml
+++ b/Documentation/devicetree/bindings/net/asix,ax88178.yaml
@@ -27,7 +27,9 @@ properties:
           - usbb95,772b   # ASIX AX88772B
           - usbb95,7e2b   # ASIX AX88772B
 
-  reg: true
+  reg:
+    maxItems: 1
+
   local-mac-address: true
   mac-address: true
 
diff --git a/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml b/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml
index cf91fecd8909..3715c5f8f0e0 100644
--- a/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,lan95xx.yaml
@@ -39,7 +39,9 @@ properties:
           - usb424,9e08   # SMSC LAN89530 USB Ethernet Device
           - usb424,ec00   # SMSC9512/9514 USB Hub & Ethernet Device
 
-  reg: true
+  reg:
+    maxItems: 1
+
   local-mac-address: true
   mac-address: true
 
-- 
2.34.1

