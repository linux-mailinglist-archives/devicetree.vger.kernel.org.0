Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 130A25476B2
	for <lists+devicetree@lfdr.de>; Sat, 11 Jun 2022 18:59:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiFKQ7x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Jun 2022 12:59:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231190AbiFKQ7w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Jun 2022 12:59:52 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63606DEF0
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 09:59:51 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id x17so2210479wrg.6
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 09:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oe92KaZIvjFI8N3NPIv/PvWQzvSXJ7GrzlL75FJJXu4=;
        b=Ayjd4CP+l8cjxZcaJsPJkl4SnODLJS4oVcaOkNMylToabYnLh3DNGIVPgJHJNc2mxb
         oMU0GgTcgebvRHIRLp1ErTXaZdd3FbU4YG2EmUmh278AhCa0hKgXAe+KUEdQedKTL3lm
         Lq7YHCMJWxLrYmMJtrR7jP0Gu0MliUg/fw+tsla76uY18YGxse7mM4g8I9OhK3PhIBmD
         GBVTEdrZ1jJItSGrCQmYVfw6z0pqkdh70qW/2hefvBbtO+Pdfl/NyhPzXyKztVkE1CBt
         jvtnB0VS4n8P2LJgX7k+vGxl5zO7jlAPziKwHP/VUtL+ajR79DFvv7IMyZBTrkuEGJgY
         9xbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oe92KaZIvjFI8N3NPIv/PvWQzvSXJ7GrzlL75FJJXu4=;
        b=bAuNNO8p8C95qYghA5EuHFrByYTMbfJPWvwN+W7/AAq3NfUGniV2kbxJyUKsfIbCXg
         dkaf1RY6jlsaW1Ruz1nbD+5m9VWYFwoXHcnH0C1GJfpfuziaNx3UCPb+INFcPzJj7sqb
         QBgPdUScDRuopnR5U0v09EWRMmU0i9z9I2+Xmpbzr6ljJ4aXliBpU1/pvp3AOSbkAwcI
         IwCz6hKvHOxbKhKsFo7U3kzuMJ/I6pPY30LKYw59CiwXNAm4POPuxHvAanm9iHwah76/
         vZ3MrEO79soUOGF572yMGAxHGAVtMm9z1+UffRZZ31yCjxnkNQuYmp3E8lrz3ibf6B7W
         q5cQ==
X-Gm-Message-State: AOAM531xk1siq/VxzmbmnLte9VLGDJzFIrQMkn8AV6KOlG1ywvxhIFyr
        jARoDykdhGNDtyztLYbmRPQ=
X-Google-Smtp-Source: ABdhPJwVCrwqqrQja6zasfXpO8l9s0jtHciXvJ9LKdj2RZ2Uinp0Xxa4SC+aneiyyQAelyVCRVlgfg==
X-Received: by 2002:a5d:6da2:0:b0:219:abb9:6546 with SMTP id u2-20020a5d6da2000000b00219abb96546mr16773593wrs.541.1654966789614;
        Sat, 11 Jun 2022 09:59:49 -0700 (PDT)
Received: from debian64.daheim (p5b0d7071.dip0.t-ipconnect.de. [91.13.112.113])
        by smtp.gmail.com with ESMTPSA id bh4-20020a05600005c400b002103bd9c5acsm3142446wrb.105.2022.06.11.09.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 09:59:49 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1o04Si-001ik4-UC;
        Sat, 11 Jun 2022 18:59:48 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 1/2] dt-bindings: ARM: add bindings for the Meraki MR26
Date:   Sat, 11 Jun 2022 18:59:47 +0200
Message-Id: <20220611165948.410308-1-chunkeey@gmail.com>
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

