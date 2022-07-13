Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBCA9573625
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 14:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234634AbiGMMOk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 08:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbiGMMOj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 08:14:39 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 712814B0D3
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 05:14:38 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id y8so13844585eda.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 05:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7GbIe+mPReXLekW8ZYcyKSYRwACq+fjToLYfIxwNheQ=;
        b=DU0KF8elZy0NDky7A9mxzQd2xWQUL+L7W48ZEdfJk4Q3Rc7ReNzIvvfFiOzSsL/uU0
         TJmsDJ5oAhPIOr1PMUDevMo6lIqb7uzBR5EvHnVULr5QS+m/LY/QN8W4XN/NlWmGm1r7
         6NERzl9gQySZyCx+yA6x+bqtJ7YuwlzlNG07U8j0VUnU6Ow56/pcAL42rlvfEFZ/Rfur
         KC6vmBpTH8HP1SPno1VMw07U8HONUYXHBkexOWetj1xN9xPWGNotNKESxXVg+uOeeg/H
         ECcEEC1IqvL6POIZoJuUp6QMqM6y8LNmabXNPuSZHUzoFavWm0DumyumPweKTizxpIRK
         fdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7GbIe+mPReXLekW8ZYcyKSYRwACq+fjToLYfIxwNheQ=;
        b=tCrFhh0WR3nKUmt8D6QTFUM8RyKLHQHRywMT09XYUqgDmg2LSDxrNGSLh17S7TrToZ
         zyumwxTt8l+hmqxySxdB1DBeMB3Vgm2UFI5MOnBiSN8rxZR4VttBiEHZ6dknGMwhxrmE
         OsCKxEQo1VXrvP3Pz/tHWIz0hDlkqx03hm6Eqx+UF+jTViMo3V96RBTSJU8P3lkJY356
         JKFrWvcCa75Tl4dqBJgUXbkjDx/Lx4+Cez5oUS+G1JH3B0+AtTa1GuCW6OAWKBg6CJY0
         ubiRctWVhQmVKKCJkPEipOlre3YVctpx93aDDpSljav/Bml9exByZ/db5FAEO2S9QWQa
         DYIQ==
X-Gm-Message-State: AJIora8PZpSXkurZ9XzmlWmKDSl+JHyvo9ApSfvXkuBHKfaUBTnnqO/c
        5fVIPoAB7p0IJPSlSEuhczs=
X-Google-Smtp-Source: AGRyM1sIAHgWgxzPs01UD8l8kZ1YJzd8vuWS7gzAytm0GW+UEZDj/efattuFXRrFq59WKwlhGgxFNg==
X-Received: by 2002:a05:6402:f12:b0:43a:7eac:296e with SMTP id i18-20020a0564020f1200b0043a7eac296emr4474542eda.115.1657714477002;
        Wed, 13 Jul 2022 05:14:37 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id qx15-20020a170906fccf00b0072b1bc9b37fsm4875370ejb.22.2022.07.13.05.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 05:14:36 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] dt-bindings: arm: Add Asus GT-AX6000 based on BCM4912
Date:   Wed, 13 Jul 2022 14:14:32 +0200
Message-Id: <20220713121432.386-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's a home router, the first BCM4912 SoC based public device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: s/GT-AC6000/GT-AX6000/
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
index b817051c491d..40bb5223740b 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
@@ -31,6 +31,7 @@ properties:
       - description: BCM4912 based boards
         items:
           - enum:
+              - asus,gt-ax6000
               - brcm,bcm94912
           - const: brcm,bcm4912
           - const: brcm,bcmbca
-- 
2.34.1

