Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D164D4CCA60
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 01:03:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231225AbiCDAES (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 19:04:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbiCDAER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 19:04:17 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E08CFB109F
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 16:03:30 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id z12-20020a17090ad78c00b001bf022b69d6so5370950pju.2
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 16:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wLbnAogNT/oWqYux4yLvZ6VmokfE6BJtRW5+y3qAKWc=;
        b=hi2XA1mGuWmzBzW2eI21+QsIerzLq33JIxiQE5ib685tWM9tZWUvnicxNP8036rM21
         u6fRHECcwEvvDNdCvQbJuComVS7o2Q89BBXL1/NDnR0RHJUQXDq2U6UHAuN7+TxO4eW0
         4SgV7FZnhLt50QFYEBELcSByrEzKbYDqLphlprmwV641hOF2t+Y1czJPeuofptpykR3t
         iDCnhEOK7DA9aDrBepcvkBbqWH7arkkPvCch6hH6bXgQCmbwm4H0XZ5FqVNRn83I8mXi
         TZwQ3Zt2y0mfKNo76TqOGc54qd8K4u6RTit7M6Zupof3RKtFDlfece48fZzkyrrH2apC
         fJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=wLbnAogNT/oWqYux4yLvZ6VmokfE6BJtRW5+y3qAKWc=;
        b=iblqigL2Zlqg3K4M2SEfQwI4qvbBo6ds7d6NTvjp4B9W/a/oHlKIzPc7GV1VmbVfZZ
         PilUHGPcvPOKk7e0gjL3wM629I9KGWOMsto3ZyyJ4aFGlp7jA6b0TliACTZU1TixVyct
         9ntZWfgSpa+N6luuB2XOjomKk6IXJOEmIjxKTApveh35o8vdoyxH8vDlJh37wQBbff0Z
         cEdJy5mdvdKpppCgV+0Gdp6jjq4lSbDquW7z9iw2LYgYIY4TxgUQ1YTu/2iqeKR8ZV1p
         ZFANlgRlhcPrQxA8oHIKX+gIdMz+a5lVJXv1S15At4gBmVjoXO7vos5FH5luMlWZdKJ3
         gnPw==
X-Gm-Message-State: AOAM533jbxPbtLgExR6j4Qr9mNo7qUEhcS5YvenL/Og4jgOYuePgisS6
        WVNiwMNs+41Vd+D1t9poxxwxdVZvkQn4Xkg1
X-Google-Smtp-Source: ABdhPJyELqxSTPbuNUbV618Zl9NffFmwo6n9gQkEBZYjAx7lveDnXUSUAAOKa93JYUPwetl8+4Ufdg==
X-Received: by 2002:a17:90a:4749:b0:1be:ea64:4348 with SMTP id y9-20020a17090a474900b001beea644348mr7804979pjg.231.1646352210357;
        Thu, 03 Mar 2022 16:03:30 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
        by smtp.gmail.com with ESMTPSA id z8-20020aa79588000000b004e1dc67ead3sm3579070pfj.126.2022.03.03.16.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 16:03:29 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: aspeed: Update gfx node in example
Date:   Fri,  4 Mar 2022 10:33:10 +1030
Message-Id: <20220304000311.970267-2-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304000311.970267-1-joel@jms.id.au>
References: <20220304000311.970267-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The example needs updating to match the to be added yaml bindings for
the gfx node.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../bindings/pinctrl/aspeed,ast2500-pinctrl.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
index d316cc082107..9969997c2f1b 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
@@ -73,6 +73,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/aspeed-clock.h>
     apb {
         compatible = "simple-bus";
         #address-cells = <1>;
@@ -82,6 +83,8 @@ examples:
         syscon: scu@1e6e2000 {
             compatible = "aspeed,ast2500-scu", "syscon", "simple-mfd";
             reg = <0x1e6e2000 0x1a8>;
+            #clock-cells = <1>;
+            #reset-cells = <1>;
 
             pinctrl: pinctrl {
                 compatible = "aspeed,ast2500-pinctrl";
@@ -102,6 +105,12 @@ examples:
         gfx: display@1e6e6000 {
             compatible = "aspeed,ast2500-gfx", "syscon";
             reg = <0x1e6e6000 0x1000>;
+            reg-io-width = <4>;
+            clocks = <&syscon ASPEED_CLK_GATE_D1CLK>;
+            resets = <&syscon ASPEED_RESET_CRT1>;
+            interrupts = <0x19>;
+            syscon = <&syscon>;
+            memory-region = <&gfx_memory>;
         };
     };
 
@@ -128,3 +137,10 @@ examples:
             };
         };
     };
+
+    gfx_memory: framebuffer {
+        size = <0x01000000>;
+        alignment = <0x01000000>;
+        compatible = "shared-dma-pool";
+        reusable;
+    };
-- 
2.34.1

