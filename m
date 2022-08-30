Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA0A75A5C20
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 08:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbiH3Gvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 02:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbiH3Gvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 02:51:42 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 700FE8C004
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 23:51:41 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id u9-20020a17090a1f0900b001fde6477464so3828766pja.4
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 23:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=7pxVuvZKnwCDX91eUIsx5zUNymHQHE5pWZq79BjPPME=;
        b=FCVYb2ZQwZQNPJQozcEHmqfO6JFfs9qBPKLDVUhZ4w48DJpcaWEM3OKmFe8WtlaM6b
         Ey9wk/P1cP0eiqTy11S9Zvr4dr09rjMgbDZQix8qOdyB+rCzn77g7hL9Oof5SbGiKRa8
         6uNeiiv+CUGO/jFdn13/WyMV00/CmwP4OLgYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=7pxVuvZKnwCDX91eUIsx5zUNymHQHE5pWZq79BjPPME=;
        b=MX118ONwSA0GDUpNfmGDQVUD6q9LQ615Iey/Om/4LvXXaRl2huX0T2MXMYH4afmfqj
         Q+gTizOR2Uima24HF2pyLhNlFIqXkjvOaUKWvJJ1w5s5QfJG8F8gU/lhS4aVgSdQS4eC
         4IU6dytaF0x89AkNOZ06ZC+qsNBmlHe7WYXiAw1SU8gx2EXpVusP7mAS+u6GQG7OnMTm
         YVxMotmg1SZLYyYEXnWA8aGAleAPQhRQlFafP0rz/ElNCYFxB39uGu1YLYL91+dehYHO
         X2nRV+wDxQuSyNjW6DAe3nSNpdDHx8A1dHg8McFCcm3DNU6rzmS64wl7XWCWJobF3DlH
         OUUQ==
X-Gm-Message-State: ACgBeo20TEUxvqRmnaet/IrQgQDj3SxcLcn6T+EayyiA6Ufu1dAsw8S7
        fI4kP0h6B0FXbYW1CcgqDAoShg==
X-Google-Smtp-Source: AA6agR5cLaGfSLe3iLKW6006pUym5HdJ5DrsoVZHTbIrLxWxLRp+iY4sErPfZmNn169Iy3WpFg9TrA==
X-Received: by 2002:a17:90a:bc8d:b0:1fd:f4f1:d5da with SMTP id x13-20020a17090abc8d00b001fdf4f1d5damr4853360pjr.205.1661842300923;
        Mon, 29 Aug 2022 23:51:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:8d7b:a73a:5272:1b81])
        by smtp.gmail.com with ESMTPSA id x14-20020a1709027c0e00b0016c78f9f024sm8854460pll.104.2022.08.29.23.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 23:51:40 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date:   Tue, 30 Aug 2022 12:21:17 +0530
Message-Id: <20220830065119.120844-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the dt-bindings for Radxa ROCK 4C+ SBC.

Key differences of 4C+ compared to previous ROCK Pi 4.
- Rockchip RK3399-T SoC
- DP from 4C replaced with micro HDMI 2K@60fps
- 4-lane MIPI DSI with 1920*1080
- RK817 Audio codec

Also, an official naming convention from Radxa mention to remove
Pi from board name, so this 4C+ is named as Radxa ROCK 4C+ not
Radxa ROCK Pi 4C+.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- updated commit message
Changes for v2:
- fix line wrapping
- collect Krzysztof Ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..ec3525fb1e60 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -537,6 +537,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK 4C+
+        items:
+          - const: radxa,rock-4c-plus
+          - const: rockchip,rk3399
+
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
-- 
2.25.1

