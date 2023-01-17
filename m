Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAE0366DB9C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:55:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236186AbjAQKzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:55:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236398AbjAQKz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:55:27 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D52E301AB
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:27 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id c26so18703004pfp.10
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chQ7HxST9kD6+SAwU/aUHt+HkzjYxiYOol+zzwdXg7Q=;
        b=gKHOtnHdAjf0f1bpd3Q+T7IR8mzBkVmftBpHkt3HoEjRw3ofxVtZc1ufB+CwpMc+S3
         V9KEhuSY7NSGtcNl57abFU71lycQmLDcNomSSgOfxBf6FRP92I88SnJTWrmedSYxNPiz
         0dip4UJMSEACslxHV2cg40Ke7+ARvhpa3yCfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=chQ7HxST9kD6+SAwU/aUHt+HkzjYxiYOol+zzwdXg7Q=;
        b=lRkJ80tpjVwDKHZ684qkzA+k9+fEups1+wznMXATRdg9MRgI6F2oejCYY0JtdaeSRe
         fGzouURoQJ+u5S+G45BAJ4r8uUxCJC3E7HJqv/qgW378FK5TL4MBgm8fVmV5fWE3Zidn
         bc9xYisbtxneq5qMeTcS00P4VGe7q+bYA58Cne4ZTRzJ3Ua9mEC0bklxN3sgdIvOzlAd
         tzCvpk6JUihEYiH+Cq+kw04ZGoUrE4NA+li+1kwI2QI/py3gTd/fPc+g+u7BR0RL7zSw
         LoVXPzos6sBxR5NHEWsSnzBrbNAgTS8JjsGpFWM6DsL6WYEbbV9yM4Q+hoCdkucx7dnl
         8/Cg==
X-Gm-Message-State: AFqh2krTbWGc1D1CjD7Oe0RxUmgksEJj1bAGWKoo9PDoDcliTeE9b4LM
        DD+VaCN5wtSDok7N9QtqTUw/nA==
X-Google-Smtp-Source: AMrXdXtQ28X7l9/UiAPdc0ZzbjmweYSnidXPeSq8ZhHOcsZEGTK6XyG8V210X8vmV9Fyb4TSmnOjbg==
X-Received: by 2002:aa7:87ca:0:b0:56b:dae1:e946 with SMTP id i10-20020aa787ca000000b0056bdae1e946mr2908282pfo.28.1673952927041;
        Tue, 17 Jan 2023 02:55:27 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:26 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and compatible for Radxa CM3i
Date:   Tue, 17 Jan 2023 16:25:00 +0530
Message-Id: <20230117105504.18296-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
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

Fix the dt-bindings for Radxa CM3i SoM based boards with proper
description and compatible strings recommended by Radxa.

Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 3d3c59624483..6f276d787e50 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -628,11 +628,11 @@ properties:
           - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
           - const: rockchip,rk3566
 
-      - description: Radxa CM3 Industrial
+      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
         items:
           - enum:
-              - radxa,e25
-          - const: radxa,cm3i
+              - radxa,radxa-e25      # Radxa E25 Carrier Board
+          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)
           - const: rockchip,rk3568
 
       - description: Radxa Rock
-- 
2.25.1

