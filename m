Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 135114D6B1F
	for <lists+devicetree@lfdr.de>; Sat, 12 Mar 2022 00:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiCKXys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 18:54:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbiCKXyr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 18:54:47 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FE1A218CF0
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:53:42 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 25so14156088ljv.10
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=do39Oz4z5cm/eFjvgfCPpR0wRWkB79WWOdbN7dhR3Do=;
        b=yBAaCwJ21lTh/ytTeuz+MWsQ+aJ8NseaoBhS+n8hX9EeqKirdxHeRE2E3uBKt16aFl
         aW+kC4wCIlT9ARHvfzfcQ4tchn48iJjrQKNv5f1fiWj258/5Bacq2wAglr8gX2LcD0w0
         g4Hdl5HgELBBlJQ33f25fjIgAZ+eT+tJhWyLahoEcYK2Wj+qjiRx6BGQbGFVsGbWOxiC
         uO1sp4TM8h0dy4DFmXbvxDAqle/GhvQtpjlbtPkIk8fWh4q9qqTVFTq7hI8+5M6Y2xuK
         HXJcFoxNQ+zRf69rVVzEdunRgFdYEqnYGyy4KyrsjvXBaFJ68w9AQfDD4Hl0hcZIIBz7
         jvhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=do39Oz4z5cm/eFjvgfCPpR0wRWkB79WWOdbN7dhR3Do=;
        b=DX7OuqjtZHsgNAswnLzmlTLolLzDGSuQV1BHnDKP2FQs5drhb6IhxqV2xJTeQJFvik
         ptfLmUuTYaOrKdGfUpAjkzcqx9Zmnx7NM5oGfRKW7IQ48oIjBaMS+fst8NgupuUbEqmh
         Ry5Dh1nMDEX1YSkUKSF76l28R85S/yf7xn4q9uhHxeww/RtsYzlWREO7B9uvmmaktgWI
         w9XqKrCsisXZzAz2AZr1dyynWE0bCaN9DVT+Qq0mhJkzamSxwbRH3YvbS7012wYRGlWe
         mH0z/gQhHiIT6unyYAKK652BabBUN5zcpgNst/JijN6rJFuwm9Mlnbnh3k850g9Yh78i
         cC+w==
X-Gm-Message-State: AOAM533QYBL16vVZaa6kLJFBTBvuysWh0ka1EvbIqwsqE1/KY8h2aX5f
        /pr7VZDJflQpobJp4JLfuJQkdA==
X-Google-Smtp-Source: ABdhPJww2h5Jcm6Ny2GEicR7Ujuyvd8mKctvvXai+Ps8mrprX3DSdwK3lpQ9jN8m5UZga2XOr0APdQ==
X-Received: by 2002:a05:651c:386:b0:246:c7e:bb1e with SMTP id e6-20020a05651c038600b002460c7ebb1emr7451654ljp.161.1647042820593;
        Fri, 11 Mar 2022 15:53:40 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id 8-20020a2e1548000000b002463639d0f2sm1967691ljv.68.2022.03.11.15.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Mar 2022 15:53:40 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 4/4] dt-bindings: gnss: Add two more chips
Date:   Sat, 12 Mar 2022 00:51:19 +0100
Message-Id: <20220311235119.523374-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220311235119.523374-1-linus.walleij@linaro.org>
References: <20220311235119.523374-1-linus.walleij@linaro.org>
MIME-Version: 1.0
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

The CSR GSD4t is a CSR product using the SiRFstarIV core, and
the CSR CSRG05TA03-ICJE-R is a CSR product using the SiRFstarV
core.

These chips have a SRESETN line that can be pulled low to hard
reset the chip and in some designs this is connected to a GPIO,
so add this as an optional property.

Update the example with a reset line so users see that it need
to be tagged as active low.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/gnss/sirfstar.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/gnss/sirfstar.yaml b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
index 91874241d0f3..e2ad1f01f9f3 100644
--- a/Documentation/devicetree/bindings/gnss/sirfstar.yaml
+++ b/Documentation/devicetree/bindings/gnss/sirfstar.yaml
@@ -25,6 +25,8 @@ description:
 properties:
   compatible:
     enum:
+      - csr,gsd4t
+      - csr,csrg05ta03-icje-r
       - fastrax,uc430
       - linx,r4
       - wi2wi,w2sg0004
@@ -39,6 +41,10 @@ properties:
     description:
       Main voltage regulator, pin names such as 3V3_IN, VCC, VDD.
 
+  reset-gpios:
+    description: An optional active low reset line, should be flagged with
+      GPIO_ACTIVE_LOW.
+
   timepulse-gpios:
     description: Comes with pin names such as 1PPS or TM
 
@@ -66,6 +72,7 @@ examples:
         gnss {
             compatible = "wi2wi,w2sg0084i";
             vcc-supply = <&gnss_vcc_reg>;
+            reset-gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
             sirf,onoff-gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
             sirf,wakeup-gpios = <&gpio0 17 GPIO_ACTIVE_HIGH>;
             current-speed = <38400>;
-- 
2.35.1

