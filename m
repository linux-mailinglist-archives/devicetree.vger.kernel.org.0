Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FDE4667079
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:08:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbjALLIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:08:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231222AbjALLHg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:07:36 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D4583C708
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 02:59:14 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id v23so14952078plo.1
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 02:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=prB1PlrTJGbwJ5z9TGNkKNhBJqEBxxJ5WnlRnkTylzI=;
        b=YbtrtPf2b9SxJ/gxtMeLIHEJQ4Aj8Uz1IM12aHjLskai6E8zGH5wPw52ZakuL7uCBD
         sJBf0axhkJnithfk5x9xSMNYTR0+x/vbOLY6wOHGAu6h1+wNLXLLfawHsXKesxFiBbd9
         JLPHJy6e0u6IYE2V+D1/HEW4rtKK/Stp/lkk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=prB1PlrTJGbwJ5z9TGNkKNhBJqEBxxJ5WnlRnkTylzI=;
        b=4QsKLTwWqp39cHpmjQaNp3AxmZLpHT0QvOPEftmT4JwZvZVm+O6/VjpzjBB7Xk1mto
         ba1N0PlTskqdyv2Xz7Nms7iXeTp5udUlY5THRslR8ge00JzDeEj0hFEo1li94XEL/1Hd
         3dI06lhiCUABMaJYpiOn3mvtRdRK2damA7dV0YI12L/8yBzxG0L2KpsiSYA7VbBmeU4e
         PgPTNV3xV6MsUznOvwKh28QH2cv2k/19srDilc0lfg+EsWzc9ih5TC5sCsSSDkxFohT4
         xmbExIUupbZklFCz0IhqWrM4x/Sg0ZAfI2EUqRgiiVYTprXN+oixrhANfFj5Kr9/eTxk
         ECVw==
X-Gm-Message-State: AFqh2kqD8zD4MZCbamrP5K8Iyi+fXZCEfTo/32+XjcwHM3NQPdY2OV/h
        LNhzJUHVY1QR6ieRhA3tJczGSQ==
X-Google-Smtp-Source: AMrXdXthQelQ+9UuuIqt91ZlvdJsP8l/6mgFbjtEjVqoWDwzcWRe9jIGHearJAMtRJXO8JdIQ/3pHA==
X-Received: by 2002:a17:902:6942:b0:194:5519:576d with SMTP id k2-20020a170902694200b001945519576dmr3907752plt.22.1673521153980;
        Thu, 12 Jan 2023 02:59:13 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:4cc5:b413:eb81:9f91:b22e:317f])
        by smtp.gmail.com with ESMTPSA id t5-20020a170902e84500b0017f756563bcsm11986850plg.47.2023.01.12.02.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 02:59:13 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa Compute Module 3
Date:   Thu, 12 Jan 2023 16:29:00 +0530
Message-Id: <20230112105902.192852-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa Compute Module 3(CM3) is one of the modules from a series
System On Module based on the Radxa ROCK 3 series and is compatible
with Raspberry Pi CM4 in pinout and form factor.

Specification:
- Rockchip RK3566
- up to 8GB LPDDR4
- up to 128GB high performance eMMC
- Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
  BT 5.0, BLE with onboard and external antenna.
- Gigabit Ethernet PHY

Add dt-bindings for Radxa CM3.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c2b59a03ed1d..f95d370b5b78 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -615,6 +615,13 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 3(CM3)
+        items:
+          - enum:
+              - radxa,radxa-cm3-io
+          - const: radxa,radxa-cm3
+          - const: rockchip,rk3566
+
       - description: Radxa CM3 Industrial
         items:
           - enum:
-- 
2.25.1

