Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A48E253C770
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:25:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243027AbiFCJYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:24:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241837AbiFCJYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:24:37 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C84723A1B6
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:24:36 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id y29so7821515ljd.7
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ie7nvRY+gVcr9Te/laYvu5kQE73cxBphDPKr3kpHcM0=;
        b=EQDGw2GOIifRe0NlBx7dZ6fjPKDHwo+/2K+PxwfBzhxdkBcv3t8nUkOoQVq8N+O4zn
         SJLqcwaRX9/ZAkdnSMPrj/R/PqxKmimsfSlKFOVnwAXR4gByAGcbfOE00TZ9OSvrtS9S
         UxrlsO87HPAVX6QvjuCBqaXrhqFNzsDFUs9+/hEAOP1V/sNwgWJpTlXImdyq7Ojs6et4
         8m+b0y0ou1vgON7L2AnQ8adtJWAVfjCVvv6ed+3g+awUS8A3/LguUFVsMfvW1+nV+kRg
         4FmhtAaRHW7lkftOKp5BCAnjiMzADAm8qC1yGqOCOIvQPZR6lLpwFMg0Z5F+QU3lGAbg
         AJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ie7nvRY+gVcr9Te/laYvu5kQE73cxBphDPKr3kpHcM0=;
        b=AV1GvQ3A42aYH9cyiL6eiwrD2Ynv6STYniiubp1vd5OZuEmAPUPs4cx0jlLbLP7lqo
         0X9dOGiFFlIK5KTbiuDNwkROBzdop4r6Z2WG/iSlY4k+BdqwLoWUl3P7WYWPymCbwMod
         zg8A37kAqXffuV3CiZ5CNH0G0L65kVE2dpi2110QpOzhdA033s8msVGWIPkvuToQXobJ
         +gxYmHpgMVeiXSyYPuyTUhTqqEZ5K9iS+N3yE+USyQcxzUEqHLWSMqKuG1DsIQZgr9PU
         qUN3GA62GdQmWjXqsgKcji1W1sGUdyjXlTRjg6mqa2bjcA2LFUsYcGCOPPeRiSM/MIoe
         ZsYQ==
X-Gm-Message-State: AOAM530jLRhrJuqaCCioHhxjZha9/coR0Jzl3QV+1natt8OxgoDUwqad
        BEe3s9exnr3xfraTK/aML75KGg==
X-Google-Smtp-Source: ABdhPJwIjiFj/SBq07WDrHtn+WLaA7EIK4M16zPKohpIFYQV2GMGRMflajRp8jXKo6E3XooJHHYwTw==
X-Received: by 2002:a2e:9587:0:b0:255:6e01:50d with SMTP id w7-20020a2e9587000000b002556e01050dmr6482892ljh.146.1654248275057;
        Fri, 03 Jun 2022 02:24:35 -0700 (PDT)
Received: from panikiel.roam.corp.google.com (staticline-31-182-204-250.toya.net.pl. [31.182.204.250])
        by smtp.gmail.com with ESMTPSA id e10-20020a2e9e0a000000b002555dd9c20fsm1224434ljk.20.2022.06.03.02.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:24:34 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amstan@chromium.org,
        upstream@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v4 5/5] dt-bindings: altera: Add Chameleon v3 board
Date:   Fri,  3 Jun 2022 11:23:54 +0200
Message-Id: <20220603092354.141927-6-pan@semihalf.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
In-Reply-To: <20220603092354.141927-1-pan@semihalf.com>
References: <20220603092354.141927-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Mercury+ AA1 boards category, together with the Chameleon v3 board.

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 5e2017c0a051..799ab0d2448b 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -25,7 +25,14 @@ properties:
         items:
           - enum:
               - altr,socfpga-arria10-socdk
-              - enclustra,mercury-aa1
+          - const: altr,socfpga-arria10
+          - const: altr,socfpga
+
+      - description: Mercury+ AA1 boards
+        items:
+          - enum:
+              - google,chameleon-v3
+          - const: enclustra,mercury-aa1
           - const: altr,socfpga-arria10
           - const: altr,socfpga
 
-- 
2.36.1.255.ge46751e96f-goog

