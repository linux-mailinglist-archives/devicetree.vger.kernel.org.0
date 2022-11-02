Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFF836162F2
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:46:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbiKBMqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:46:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbiKBMqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:46:37 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA8942A247
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:46:36 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id b29so16267689pfp.13
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hn4W0mxdUQJIGdxsbK9gur9SD5pGJjeIrIvUnQhsK84=;
        b=IupVzqalbZqJdIGX1SbOjqu0/LwJr5+P7EL8OAD8CScg0R0NDEv9nZ8KQrBBD+H19b
         crgHvfuKOgEA0j8cDVXfedfXk8rTk5vlKngfEsuR2lxtl8x2Vj54gbmmcFq9/amFvPjJ
         mfoBd6+7D4LlL3jzrA0rWqgu/TZrN9G+xegDFIysDkJLESh5rP2mNHprH62OMYSHD24d
         R0V+mFs0OlNPjh3ix3yaai+a3I9qBSGh0+5fmAc7jovFUB/JjBM4KTAnjxPF+kwmNsxs
         E9AuYz7+C66+sqJSGNmxyn7BoBa9GPRmaGfgRplQ9rY4u3e++yzA6donokHXouF/tQOs
         N7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hn4W0mxdUQJIGdxsbK9gur9SD5pGJjeIrIvUnQhsK84=;
        b=Qo34aK4FFAmY0RqfhVhjLmGoN2yGMcmSkXyl1EEwk+3j7bo+Cst2+fOxOlYoYwGsJV
         TNwKhIuJ2lZl5xjOxhgltuZnihtQ9OSjoJMqbv7X0Kz/zRpmv7VBJCizLpXhta1AcYN3
         h3+8XErW+fjcKJTZI5AErKrsWweQdrkcMXY0y7PY4ZLFs5+zaaIQSIzsYefsjMoIVTAV
         cSgcOXWhwQ2x2XYGtPLcuN/KclUKYycR00oTLL7L2ogUiXNKRblJD+CgBReOd/FBb5/7
         JNhaFQrYaBj9ieXNwAj5NRORMnw9zDKqkuznxV9LEhoY1iHcO9M0fyUqaltNGCw5PQd7
         IwIQ==
X-Gm-Message-State: ACrzQf2z4qVe+/c1Wq8uyBdrd0778lwWXC1KoXJkKKhL42OaLIVLoFM0
        Tl7LDNp4cJMSzV7LuagSJwwHng==
X-Google-Smtp-Source: AMsMyM7M2bmEwza/mRoTgDbwvwShZdEoXQncRXzUgWn2KOIaCmhvl11lCbB6mz3IcHDZZcON+fOXHg==
X-Received: by 2002:a05:6a00:1a0e:b0:547:1cf9:40e8 with SMTP id g14-20020a056a001a0e00b005471cf940e8mr24951716pfv.82.1667393196099;
        Wed, 02 Nov 2022 05:46:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:35 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v6 3/6] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Wed,  2 Nov 2022 18:16:04 +0530
Message-Id: <20221102124607.297083-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102124607.297083-1-jagan@edgeble.ai>
References: <20221102124607.297083-1-jagan@edgeble.ai>
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

Edgeble AI is an Artificial Intelligence company with a focus on
deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v6:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 7f9ec8ef8749..6c81565af488 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -368,6 +368,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

