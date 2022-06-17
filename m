Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBBF454FFA0
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 00:00:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235162AbiFQWAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 18:00:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231913AbiFQWAd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 18:00:33 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CE115D1BE
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 15:00:32 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n185so2901919wmn.4
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 15:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K7FoG6ztFtZyiQp7FHG2cAzqigxqkWxA7fExlR/2Tw0=;
        b=gJcpiYREXfuQrSgL9op3qZ1HVnFgKOyEEZIH96VwcKj5ac0Bnn+HJ8FVIlKjAv2IYs
         VAxptLBINW5YMWbjQ9rVkuQwi2MvXX6Zzqx9e2CDDJbKZz4jKA0dH2fpeUi5w96m9aIt
         0WYk8+bc/Mj+DudmE+/jusd11upeifAkAUIm2JtLWb22wB6luYKWsrrBG/kRw8kRFWzt
         T/iTkW0/5oD0sxfQbNjKR5Xk3w4z5earCwZ0KsKQBE4JkGjg3ykb++LnxXLzb8NzTe/c
         HzcoX3tFq3y0+8PTgmvDPDQHnX+uRaqT694yk/0sS0fJgp2LomjtxT/GOiEaI/0qKH5I
         ywOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K7FoG6ztFtZyiQp7FHG2cAzqigxqkWxA7fExlR/2Tw0=;
        b=ll72QhPWRKIJlKrtceDIM+QLAZYqYaucXqFSvw2QBWtE7vF773pes5pZZl0/v0uIH4
         a0YM1yxpOXbBzoTNeMeahGOyZP2KZa5bJVVJiz7tdi6NmzybJeGHIiVN/+17FPoHHJTA
         hvj6b1AjbVT0NgU47JSdsrLPi4UKDDtPwGnjXZxeJdySdMLEXs6x69/yX30pDlemLEN3
         Mdavzss5uebol0qxamCelgajAQksq6L+FRkY5OLHNlrtZY7JpwnZMsSDuZW/SoD9YG7v
         0zQSSH92XGmh/rMU1/i+4AG3mSTB5sArWvqdK7NUfxZKt5RFj+5JcWaLuzHj+M0f80hN
         g6uA==
X-Gm-Message-State: AJIora8EDlmU5Q4/L6j/9OpIWMNs7pHXItdtqTnDgZs37Mn3i929HXnk
        KwkO4do3AjzfqhiTvF/cQzm/lqTrX7E=
X-Google-Smtp-Source: AGRyM1sRacSaz+ZrXtob4F8nijzcvHmCY5YGeuYj17sqcFTDVatKY/dmqfouI60E93cpAKbwrDdLdQ==
X-Received: by 2002:a05:600c:354f:b0:39c:78c8:a854 with SMTP id i15-20020a05600c354f00b0039c78c8a854mr12137215wmq.121.1655503230672;
        Fri, 17 Jun 2022 15:00:30 -0700 (PDT)
Received: from debian64.daheim (p5b0d7eeb.dip0.t-ipconnect.de. [91.13.126.235])
        by smtp.gmail.com with ESMTPSA id j11-20020a05600c190b00b0039c5328ad92sm12347776wmq.41.2022.06.17.15.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 15:00:29 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1o2K0z-007aMW-FI;
        Sat, 18 Jun 2022 00:00:29 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: ARM: add bindings for the Meraki MR26
Date:   Sat, 18 Jun 2022 00:00:28 +0200
Message-Id: <20220617220029.1808063-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mark the Meraki MR26 and its SoC (BCM53015) as supported
in the bindings documentation file.

<https://jp.broadcom.com/products/embedded-and-networking-processors/communications/bcm5301x>

"BCM53011 and BCM53015 with dual-core Cortex-A9 CPU at 800 MHz,
256KB L2 cache, 16-bit DDR2 interface, USB3, integrated switch,
GPHYs and packet accelerator"

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
v1->v2: added Rob's ACK
---
 .../devicetree/bindings/arm/bcm/brcm,bcm4708.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
index 8b7e87fb6c34..958df32b4899 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -87,6 +87,13 @@ properties:
           - const: brcm,bcm53012
           - const: brcm,bcm4708
 
+      - description: BCM53015 based boards
+        items:
+          - enum:
+              - meraki,mr26
+          - const: brcm,bcm53015
+          - const: brcm,bcm4708
+
       - description: BCM53016 based boards
         items:
           - enum:
-- 
2.36.1

