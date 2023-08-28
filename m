Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6DF278B72F
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233023AbjH1SUd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233006AbjH1SUB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:20:01 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D104F189
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:57 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1c8d2606fc9so2462486fac.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246797; x=1693851597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GmejmVLGdABaT+qnw1yy9ms9gFGtTk5UP1kBkDFPK+I=;
        b=fN0+XEoUcxo6HhIr0v3hSF9U16fbOpsf+AvcRSObrikfvotysW7S9QHHZh6qnTEvKM
         TWTz+GHSBPRuZtPXJn4uC3SmyfOsv+J2S8QZd4p0XXVzZBh8Vh3KMj8kQN6cHIlMDKNI
         FPCGhMUXuRCJ0Jn2zkSn0aReyHzzJD2BGtPcaHQ3ZmHQGeQAuJ7X8itpgmjQJv5ZQ7R2
         VSsTAgZ1sUs7zO5q1hpinFNtaAUaFqGsL7OZuIts4A5evdel/5OOFEzO0R4nuRWmc0is
         g/Z9cZnSLJGAoVn/gwx0Id2/JZIYw6UtP2dViXYchWZfVJBsubRlctZJlaYyWYLw55GZ
         R9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246797; x=1693851597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GmejmVLGdABaT+qnw1yy9ms9gFGtTk5UP1kBkDFPK+I=;
        b=JokHI/KGxdk19Nj2RK0ryQub5UrQ6sRQqN4K+IoMpaG7kIpc4kGQkBSYQXFGNZoY9o
         gaQEHWqtLViK7A7fNT5BKYi0p4jxCz0cLhJSmKgtnVdafryI+SF8P0bs4fzxdE6VtB12
         7lUKfUyg7zF8ZuyHQnXIiBUlPMuip1mPfUNJ1rSIgiR310B1czI6hRrr3ZUx1ZChK8Bw
         icFOyeeKUltamE1X+HaDZNurKMDKe9yYJUTVYOiZxmdGaUeE39FYFsY2gx7/3g3A0274
         zyxyBeMg+3+q9SPfKtvmKQBNhjYcd3yLKmfHbGCEqAHOVbg6JWulJC9MgqOj2AD7BoXv
         4Y1w==
X-Gm-Message-State: AOJu0YydnhoNtamYZOyD7/xtgVdw1GMyjRMg5Jcw5ZWa1OYL5lg53uQj
        /B2Ag8C2+n50ah/1goqrYPA=
X-Google-Smtp-Source: AGHT+IHZVfqX60HVmqLYDm013Pz6rMYt9eBaSJnEHMtaesWXTOLIKXakQFw9Tg7osMCKdrtmbNiJZg==
X-Received: by 2002:a05:6870:d348:b0:1b7:629b:de06 with SMTP id h8-20020a056870d34800b001b7629bde06mr265979oag.20.1693246796617;
        Mon, 28 Aug 2023 11:19:56 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:56 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V4 7/8] dt-bindings: arm: sunxi: add Anbernic RG-Nano
Date:   Mon, 28 Aug 2023 13:19:40 -0500
Message-Id: <20230828181941.1609894-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828181941.1609894-1-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a portable handheld console from Anbernic which
uses the Allwinner V3s SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index ee8fdd2da869..806f25b561d9 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -56,6 +56,11 @@ properties:
           - const: amarula,a64-relic
           - const: allwinner,sun50i-a64
 
+      - description: Anbernic RG-Nano
+        items:
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
+
       - description: Auxtek T003 A10s HDMI TV Stick
         items:
           - const: allwinner,auxtek-t003
-- 
2.34.1

