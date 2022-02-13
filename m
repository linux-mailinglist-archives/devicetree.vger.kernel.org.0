Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 711A94B3E38
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231864AbiBMW6L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:11 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238655AbiBMW6K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:10 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEBEB54BE1
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:02 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id w10so5972934edd.11
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3uzOnnLhVcdnTuyj/2DMEBER7KnFzL1h0mXNQZHRgW0=;
        b=HDoLAoBfLlRT7YczCOt6CY1ionKPeAwbypEAeacRC0xmOkGAKX/rwSI/T7BcgXzwgf
         clMB02+DUuz7sa7nA9VAdKsDDH7MoOz8xYmhOuqqklxZ0q5yFavkAcs7t2Au9cfSNmgd
         k8IFgjbmXMDBJ1PYwfBOBdZ3y6slRHRbvz+i6bKN541HbqhinQwv4jzqfn7OwN69X+4d
         au4+67k7hAi9NEfrOfXd2dAtmNT0cbx1wglt9AP1S3aDI6OVwnmQ+IH8+5apjNNZbK/m
         0OB+8BwRV6VNCCllzdlzatWyslJVg+DB+h2eIzn6Vh4O6LQzdZMHREHD1aAqiHEzHaiM
         ZivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3uzOnnLhVcdnTuyj/2DMEBER7KnFzL1h0mXNQZHRgW0=;
        b=CAld6Z2UKcxnytFzFRnn7rk2/EABfeLqRYysS5ymhfLSD1UO7ZyOB2C+yhoXBnf+l5
         tqA1JpeRwRiWMDRyodht1nih2RvI+/yqtklz/N9XyQUxwubJmV4UhegV21FrFJfc8rQv
         4JDuOmQzE0w3qJMLLq+/Qa1Yyy33e82ehqX4i5PHDCl0JB9E4Du17qYk0PUOixNUVJ2F
         +HyDn7n5Pg3rgDe4u4FzsMkBCBBCu5l4Ta3uOwTONbAp1C16aW01M1Uydi/xGaSyBy2t
         f2108NGObcY7/O5PnhhTA4HU5aiotvBqs11IrV4c13w+7ptwNFw7X2h+X9kjJgulezHv
         +7mQ==
X-Gm-Message-State: AOAM530bk1DYw1lr/KoxiTRJMZAb1KF46svzzl3Y7eVfkOHUBggGFXhs
        B20lIZ2UTBiMn1kkGPaYAGQ=
X-Google-Smtp-Source: ABdhPJyh0vSOPAU0NEPPag9pX3XD3oR9kbSq9lbr0COBYWtIYEe3wfwH04lujKX64zFx4TUMn5XGRg==
X-Received: by 2002:a05:6402:35c9:: with SMTP id z9mr322732edc.262.1644793081256;
        Sun, 13 Feb 2022 14:58:01 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:00 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 02/15] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
Date:   Sun, 13 Feb 2022 22:56:34 +0000
Message-Id: <20220213225646.67761-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Anticipating the introduction of BCM2711, of which we'll need to support
its new RPiVid ASB, introduce reg-names into bcm2835-pm's binding. This
will help to have a consistent mapping between resources and their
meaning.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index 47b9c266ddd1..837963e9f219 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -25,9 +25,13 @@ properties:
   reg:
     minItems: 1
     maxItems: 2
+
+  reg-names:
+    minItems: 1
+    maxItems: 2
     items:
-      - description: PM registers
-      - description: ASB registers
+      - const: pm
+      - const: asb
 
   "#power-domain-cells":
     const: 1
@@ -70,6 +74,7 @@ examples:
         #reset-cells = <1>;
         reg = <0x7e100000 0x114>,
               <0x7e00a000 0x24>;
+        reg-names = "pm", "asb";
         clocks = <&clocks BCM2835_CLOCK_V3D>,
         	 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
         	 <&clocks BCM2835_CLOCK_H264>,
-- 
2.35.1

