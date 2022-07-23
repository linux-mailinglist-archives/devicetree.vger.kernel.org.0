Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5A157F173
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236775AbiGWUpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231489AbiGWUpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:03 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9C401BE85
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id f11so7082868pgj.7
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nm6nbnjiRxOXdwLeEjeC2uCR3G6MiXh9QLA4PcvlHnQ=;
        b=vlvVPqYjbWIuDFylCT25W5n7UQUMi8m1drHLX+dbutIk+9mv1oSGvrZ0LtMlk8APWs
         lms8CPKvpzrnOr8rbb/e0cB7RPB54h1FPWAcwUbyQnDCpIC1C6a8PUyhnUoNCilYO4dl
         0fYQ7cXBA7vxqZ0+iMOj8KBtmYYwxyTZIVvaOhIUdqZlmDhRfhjkIccIvqYbRpXF0MST
         Bf/u4cuoVzhx+Ux7/hTYyull+3+emOQZVfvZ7d2fj6RuvH+5dnfzvybi108bbOWS64rW
         ftD6Ftgk2OrCMcguPvYE7bJbtOJ78p5HRnbVOpGv6AGQbgrh//NgfxvmYp3pwo/9yxoc
         vaPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nm6nbnjiRxOXdwLeEjeC2uCR3G6MiXh9QLA4PcvlHnQ=;
        b=dhLTDcA1JJclG4ox+dqLkbvvIxVaukxI66rEIIKEyt6FuLhHsNVralhft1Mh7nUkdR
         YJEFNUY17mPS5vzGK+OPfQtaJJEcF8UIVZjxI+o7wtPjW6jVpoBPPOqq4rSM/1fJ6XSF
         XeZOiH4iL7xYPXxLHO6KLsUs///EIbs5jrS8N7o/unWaGmixcOp78BwMQ7Pph+RjhiRJ
         SiBofei3f53De8vK8ZotHtdU7NUpD4uLUXR3jbfrWJR8AMHACMzTzhtBgKt7mA5WZlMd
         6AdRq+/dvETx/hQ+tb12SeJSzuRz5Sez4NJprmjMK4pVV8w8UpKadbw7qJaVIoA+tZQA
         ZspA==
X-Gm-Message-State: AJIora9xK0qsxRIKf+cDkMkRHNSUM8OLJwglYvZaczKK9jjtNQU2krX5
        1/x2aO7q2a1a29YBsawCSLAXMQ==
X-Google-Smtp-Source: AGRyM1sv3HopWmXThwMmwnr7aevYu7HQJ/mn8QlwfTlpt2lag/EL36qjUcSON+NPzM107+hSgArTNA==
X-Received: by 2002:a63:d006:0:b0:419:b272:9e6d with SMTP id z6-20020a63d006000000b00419b2729e6dmr4996894pgf.608.1658609102346;
        Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 14/22] dt-bindings: soc: rockchip: Document RV1126 grf
Date:   Sun, 24 Jul 2022 02:13:27 +0530
Message-Id: <20220723204335.750095-15-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible string for Rockchip RV1126 grf.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 75a2b8bb25fb..dd7090d668f5 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -45,6 +45,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
+              - rockchip,rv1126-grf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1

