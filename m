Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89F733CBF83
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 00:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230227AbhGPW6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 18:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbhGPW6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 18:58:19 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03288C061760
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 15:55:23 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id s18so16105421ljg.7
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 15:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NzFZx7BjonyE5OA8jgKf/uBGn05pZovkKHpoMsBKMNQ=;
        b=gjVHRBBZk7KgDEfyUyY9zZcFkWzFGyiJnJ9DhAKstZittZZ3OfkCiaFUtQf39dPpXZ
         +SrblgSrFwyPn4RGWEWCdUWaLS8FSJXMQPSMpYL6OrwwdwVGhUOnS2AjNPTuvxEQK17H
         eOoPwPXexVrUqeBheNEL2pQAy5r1+Hw7hDD7DoavLtZPGsx3JpeVamrmp1LYraIiPflF
         6FRJd5maRd6WbCiy4G+EfAqYHv8GxTib3hINQzZpfNBraYOrLlqHyOZYzW6i4UV7gkzd
         wqsN4gjY/A53myCaH7IUgybczXz8qtFlJniBPRbSnjTVV7tTYoKoP+/mpcGVP4JGrCfk
         IEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NzFZx7BjonyE5OA8jgKf/uBGn05pZovkKHpoMsBKMNQ=;
        b=KesKUP/+frB/qLPq+EyDiIGCl5VQbJASLo+69Kj4XcV9OdWKxYveNALL7rdOU/azE6
         T0ILp8QUqVwDTOyOeyZ/d3Zf4i3DZ/2GXr7EqiNDVtpH8crmFkPUTnG/JQwjJrr4FItC
         KcNEI2hqZ7UH5SYS3pHsO3meLt5pz5l/Ga2qCCZG+pGwdoITMX/hgtgInA14RFsWtImz
         ttFk+7fy5Hbw9ECYY4h8UFy8Ak7EHTbOAYmEhPXO5E/lbFI3Vh47Fvr2Ndze1ZGJRbm4
         dVQ1iL1pwdEQQGKt+sIu6JIERk2scUf/FWZo8s+uja1tKZsAjyERBtLkSVn0YR//9yaR
         zYMQ==
X-Gm-Message-State: AOAM532z4sGzCV4hsBcghMyOaMzl0m+IgIYRNChE1VX0hG4y81RmRPEZ
        dOp/PYUGvAPoes5qmGgBmExj3Q==
X-Google-Smtp-Source: ABdhPJxHFsQEvvmOMxDUSMQwcWDUKlgq9Mj/1HKuDjfV0f3+VNfRfeV+vS4FbXIb7hMC96T6rDwiAA==
X-Received: by 2002:a05:651c:488:: with SMTP id s8mr10820962ljc.328.1626476121798;
        Fri, 16 Jul 2021 15:55:21 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id t81sm741677lff.296.2021.07.16.15.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 15:55:21 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-serial@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: serial: 8250: Add Exar compatibles
Date:   Sat, 17 Jul 2021 00:53:19 +0200
Message-Id: <20210716225319.1282704-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Intel IXP425 Vulcan board has an Exar XR16L2551 8250-compatible.
It works like an 8250 but it is always good to specify exactly which
component we are using. This allows us to specify:

compatible = "exar,xr16l2551", "ns8250";

Put in some sibling Exar serial compatibles while we're at it.

Cc: Marc Zyngier <maz@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/serial/8250.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index a0bf061b80fe..fa767440f281 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -64,6 +64,12 @@ properties:
       - const: nuvoton,npcm750-uart
       - const: nvidia,tegra20-uart
       - const: nxp,lpc3220-uart
+      - items:
+          - enum:
+              - exar,xr16l2552
+              - exar,xr16l2551
+              - exar,xr16l2550
+          - const: ns8250
       - items:
           - enum:
               - altr,16550-FIFO32
-- 
2.31.1

