Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8DB954C4DA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 11:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346030AbiFOJkG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 05:40:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346566AbiFOJj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 05:39:29 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8E2B427E9
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 02:39:19 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id u18so9959943plb.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 02:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0DIPLwmMTI4UFu3PLi/ZuHsGMPc+dZx/HTp4WkIjKJ8=;
        b=n4coT+HVX9DwyBEdN3ZSDmnm95GQqXH55r3cZwcG+udEoJR7J28LsDHZxwKNbN+PUw
         RCVinxVkeotbifxu67AxKJhAevSSzVFGEAFSTQ76mYvH3mh7OqKbKMzDj2Bw+2xAuDRA
         kp7/d7kCn+dMz11P5MQFtsCHngtKry6vYDFkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0DIPLwmMTI4UFu3PLi/ZuHsGMPc+dZx/HTp4WkIjKJ8=;
        b=oH9J1Ed+qGN0JXN3sRKFL8TdELuXprU/rujRwbqoQYPEtfg47Z3l28vw/DFBuiespc
         09GsNzLWaTM1xbiPDHU5o4Ygg1f+SvXW86akH7WHfKIY2ELMrGltoArBAVlprIjtiBIe
         tI6226zgiyNnf5eRfz01ifWPISSBs6rTUEd0kbLj7ELIFYtKv/JKS9HJWlw+dg+YAFEE
         S7e0/eVWmQoM2i4XdWLKQo7BcyP/UM5enDYYj+5fjIbXPZwabRk1FNtLrsbXSfXi9kXG
         JuBj1DYD30Fip7T/VkGF9b+Xezc3AxF70P2x0Z0XibjFQLUkQRLMuQt1lnTfDm8HQh5v
         pstA==
X-Gm-Message-State: AJIora/uhxlXpFo+otXYO9iw35J3uWcNVcJSDE1t9xPSgN+2sNcZQ4su
        GZU5JFMbdF7PZ8MAXPbhMy2iLw==
X-Google-Smtp-Source: AGRyM1tcxw7uqSAvNg76JoEw6CjJnQJAUebeac0bdqGZo0OIVG5a7HTGHFCy6lZKKRDEAkmCv21Ivw==
X-Received: by 2002:a17:902:ed52:b0:163:ee36:c8b with SMTP id y18-20020a170902ed5200b00163ee360c8bmr8328182plb.128.1655285959137;
        Wed, 15 Jun 2022 02:39:19 -0700 (PDT)
Received: from localhost.localdomain ([183.83.136.224])
        by smtp.gmail.com with ESMTPSA id jf17-20020a170903269100b00163f183ab76sm8662543plb.152.2022.06.15.02.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 02:39:18 -0700 (PDT)
From:   Suniel Mahesh <sunil@amarulasolutions.com>
To:     Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@free-electrons.com>,
        Christopher Vollo <chris@renewoutreach.org>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Cc:     dri-devel@lists.freedesktop.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
        linux-amarula@amarulasolutions.com
Subject: [PATCH v2 1/2] dt-bindings: arm: sunxi: Add binding for RenewWorldOutReach R16-Vista-E board
Date:   Wed, 15 Jun 2022 15:08:59 +0530
Message-Id: <20220615093900.344726-2-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220615093900.344726-1-sunil@amarulasolutions.com>
References: <20220615093900.344726-1-sunil@amarulasolutions.com>
MIME-Version: 1.0
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

Add a binding for the RenewWorldOutReach R16-Vista-E board based on
allwinner R16.

Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v2:
- Add missing compatible string
- insert missing signatures of contributors
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 95278a6a9a8e..52b8c9aba6f3 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -787,6 +787,12 @@ properties:
           - const: allwinner,r7-tv-dongle
           - const: allwinner,sun5i-a10s
 
+      - description: RenewWorldOutreach R16-Vista-E
+        items:
+          - const: renewworldoutreach,r16-vista-e
+          - const: allwinner,sun8i-r16
+          - const: allwinner,sun8i-a33
+
       - description: RerVision H3-DVK
         items:
           - const: rervision,h3-dvk
-- 
2.25.1

