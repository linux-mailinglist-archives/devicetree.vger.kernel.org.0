Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 214B066DB99
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236479AbjAQKz0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236501AbjAQKzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:23 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A59191E296
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:20 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id c26so18702796pfp.10
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qOF7bx95Z8wnUFb9gD3h0pfpEaJ7VWuHHhX7nwVF1yA=;
        b=iVUkXXLpx1zGmybSOhB2rmec4ccs5M78Qz4iv3yo27AZAo4JIUr0w31F1IoYNQc/mO
         LnMjlzFLJTeWxRO7cvWzTk6eOGGpRnrbKy8r5xtAWOl3GzzwuTT1Y/oFKPEgUOTtgFW/
         jSgK3UlPMV40XAicWWR+P4wgQxncJibNbBGW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qOF7bx95Z8wnUFb9gD3h0pfpEaJ7VWuHHhX7nwVF1yA=;
        b=oeHn4G6PhgPKT84HshV2MXScNZ13m1Zx7rcVLz/ZP7Wg9bQXixZaLJTvxpTLTgA0bP
         No2aGjKr+fT5vpIYxtdHETkV0s5TYyPUzbyuWnZsMxC3EQlUnFLuCfjbdpD/g/6oSZr4
         iszTyu69/2cSk+FfnvQsHKHbwGtWfzmyDY75sWyF+e6PYgvK5QUL7axBpy1e9C5/+M1t
         iyoZV1jsQUpbaXTDbOCNsu7Bd0v/rUGtCscPxx25g1cstdP8+sX2dpAfw+gnzcXk1613
         kKzDnqP/HyohGfC21MfEfJOyPQdkTzR8gVroI5OpFWGo3C0GyCcq4frUxRCVWzz5/rtH
         T5iA==
X-Gm-Message-State: AFqh2ko3yk7qD1xaNRPxNCNQrPINkbVHw26IX8ggrXWISqAgl+2mXIcd
        t/S0NcfU1w+A/mnadXuxT/q95A==
X-Google-Smtp-Source: AMrXdXsfzJ+YkkpEUjE+FWgc2BUm3mJP4q0oyf24OAl58Jt6dz6b8z5VwC6e0tj/Tu3mHymKP/zcQQ==
X-Received: by 2002:a62:1ac9:0:b0:57a:7b74:4ec5 with SMTP id a192-20020a621ac9000000b0057a7b744ec5mr3072066pfa.13.1673952920132;
        Tue, 17 Jan 2023 02:55:20 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:19 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/7] dt-bindings: arm: rockchip: Add meaningful comments for Radxa CM3
Date:   Tue, 17 Jan 2023 16:24:58 +0530
Message-Id: <20230117105504.18296-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa produced several versions of the RK356x-based Compute modules
called Radxa Compute Module 3(CM3) for consumer and industrial use
with a variety of form factors.

So, adding meaningful comments on dt-bindings would help to understand
more about specific module relevance.

This patch is trying to add comments on existing CM3 bindings and
expecting the subsequent modules are following similar comments while
adding dt-bindings to it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 98afd7c6b8e6..3d3c59624483 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -621,11 +621,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Radxa Compute Module 3(CM3)
+      - description: Radxa Compute Module 3(CM3) SoM based boards
         items:
           - enum:
-              - radxa,radxa-cm3-io
-          - const: radxa,radxa-cm3
+              - radxa,radxa-cm3-io   # Radxa Compute Module 3(CM3) IO Board
+          - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
           - const: rockchip,rk3566
 
       - description: Radxa CM3 Industrial
-- 
2.25.1

