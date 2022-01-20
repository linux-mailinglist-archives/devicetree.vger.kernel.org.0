Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A7F94953BB
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 18:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233271AbiATR6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 12:58:05 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:33622
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233205AbiATR6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 Jan 2022 12:58:00 -0500
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 04F2A4005B
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 17:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642701479;
        bh=/3v0ODpKqPKT6xfm5F2p0Vtuoh7k/TVt0vSupJe6roo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=aTZ+v5cHIfgUT/JDlwUxpsN/rc26RhsMvmfi1Uog5BH0KIirRstNngcUMyzy9mwbe
         NSadKCChmYzmDPPGOvPAu4VJliQk92O7d7YhWLIKul4wn44r+x+M0140/pI7V/I9HK
         hH6XJg/++z+ha0bexn1hSvelcffjUKdg7PadNkahRnRBp7v9GC1Jb3XE82BSLoBi+h
         NtJxD8qLYRWLz/f5XtMvbMGEK+muYWpLKzFYdO2X5wKbJ6MvJnMxeq6TnY2C2mCbkR
         6en2lAbn0nxiVp9K85Xxa/Amb6Pdr+r2E7xD26zu7aKMXA7ZFvUIq6VcKTZDN9J8qF
         MwzfwyIL2sAvw==
Received: by mail-wm1-f71.google.com with SMTP id l16-20020a1c7910000000b0034e4206ecb7so455356wme.7
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 09:57:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/3v0ODpKqPKT6xfm5F2p0Vtuoh7k/TVt0vSupJe6roo=;
        b=kJTIxWu9H0gn+/zDCtVEXrUo5/hds6DQuqUzsM+30Wba2hUnLwSCQalANEVVsPH0Ni
         komgQwDZlMo4Gfr6IggRkusPoMx/pfdZnyPs5yz+59l3p/91fGp5jEiUVpqD9lXW0/9s
         2b0jOxgqqC/Vzi7/vYFEKkKIlxTVYWxqkFxZnk+tjEo1IjbkJMsX3hMNPNOyy87sEoO8
         DVj09sfQKnHRr2RkZsbHfUt5oTb3sTueblSC0zrV1vQjzswqwTS8L6w3JadNWdrEV5PD
         pYSaX4IIXmC2YBXtMs7st6g/se4Eb17G2vSuUheIrEpnJC51+iLZXHJaZtLZyJ5gKvPC
         I5Sw==
X-Gm-Message-State: AOAM533qevZ7AQ4Q6pRERzp5uEgdgO0RsIredZiagUWeacNYGSRwgl2h
        WT8IqOPVZwll4q8y3qAUE20+aFyMqAKlkCa+AndVFEuJzOsYQ9xRgBi5Oh4m/rNEh/JuX6MLeSu
        uZEZ/Idzl0eNCHAwDLT5+JDQj9SKMccWvHHYk9Gk=
X-Received: by 2002:a05:6000:1c13:: with SMTP id ba19mr176107wrb.596.1642701478045;
        Thu, 20 Jan 2022 09:57:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhwMyD9fO2VO2ZxMCEwkgCAOSt3IG/OVO26kt5oMd7p3iF3fXfWPpKhSkmmXV0Ml2hMlK55Q==
X-Received: by 2002:a05:6000:1c13:: with SMTP id ba19mr176085wrb.596.1642701477906;
        Thu, 20 Jan 2022 09:57:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a15sm3345248wrp.41.2022.01.20.09.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 09:57:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v5 3/4] mfd: dt-bindings: google,cros-ec: reference Samsung SPI bindings
Date:   Thu, 20 Jan 2022 18:57:46 +0100
Message-Id: <20220120175747.43403-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
References: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ChromeOS Embedded Controller appears on boards with Samsung Exynos
SoC, where Exynos SPI bindings expect controller-data node.  Reference
newly added dtschema for this property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/mfd/google,cros-ec.yaml          | 29 ++++++++++---------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 58a1a9405228..66a995bbbbe9 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -31,7 +31,7 @@ properties:
 
   controller-data:
     description:
-      SPI controller data, see bindings/spi/spi-samsung.txt
+      SPI controller data, see bindings/spi/samsung,spi-peripheral-props.yaml
     type: object
 
   google,cros-ec-spi-pre-delay:
@@ -148,18 +148,21 @@ patternProperties:
 required:
   - compatible
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - google,cros-ec-i2c
-          - google,cros-ec-rpmsg
-then:
-  properties:
-    google,cros-ec-spi-pre-delay: false
-    google,cros-ec-spi-msg-delay: false
-    spi-max-frequency: false
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,cros-ec-i2c
+              - google,cros-ec-rpmsg
+    then:
+      properties:
+        google,cros-ec-spi-pre-delay: false
+        google,cros-ec-spi-msg-delay: false
+        spi-max-frequency: false
+
+  - $ref: /schemas/spi/samsung,spi-peripheral-props.yaml
 
 additionalProperties: false
 
-- 
2.32.0

