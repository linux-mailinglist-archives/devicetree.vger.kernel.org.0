Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66F66648678
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 17:26:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbiLIQ0b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 11:26:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiLIQ0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 11:26:30 -0500
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ACAC86F4C
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 08:26:29 -0800 (PST)
Received: by mail-il1-x12f.google.com with SMTP id h15so123441ilh.12
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 08:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IgG/TNRbidgEyJvAVaHHfxRU0Ng4OyfVihTTmLvE0JQ=;
        b=K2COfFDPnQsv126b/kS1Mvllrw3QIpmb9WDCa0cAUFybrJ8VpQtraDrw/XddNXS3hE
         CGUa7htqAGx3XqePpeRi597iv9RWO6TM8JJ7TLnEN80eCZmZTxPMay9cq7dJzDL1AqnF
         oS2lECZHiRtfUgaLT2+k0OKBqtzpeIlqzUgn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IgG/TNRbidgEyJvAVaHHfxRU0Ng4OyfVihTTmLvE0JQ=;
        b=rbHgkQPgsrAJspZLoKLhTc18HXkAZW+LUo7i6o2CY9ig8ervNhy7V6jdi8RUOj5tEl
         PtwNQSrUdCMd2bCQ2IDIexsOxFJnhK2pFZ+Xz72v35ztkEeQLyLX5eKgdhGG1LS7BDD7
         kJGK7B4QKeGz3keVtqjfNQdbJ0AP/kb622rPlHVNyic78WrGotze9tizwIl9XXVIQ0EA
         ZhSqS+OeqhVFq0titU6zqPFQQSTa/Hw9qZv6DJ0TDZsNR3AZ+mvR/RtOMsgdVQSfac+g
         gOED0rQUvK7SR2ooqtgID+YkleMFeBbCxSJAqXXzN6wUdUqbhoCFSSRfgOZEkeW8FfjG
         v6Qw==
X-Gm-Message-State: ANoB5pkRYcQ0gAi3aLWzrfqWW1mAcdFzP1ZbTl8xkuEjJ4DQuHnXIX+J
        AilZ65J3NKj4/jyE5t7qxj/qHw==
X-Google-Smtp-Source: AA0mqf4GbUMG7eifsf2+6++ibfFG2nLQoNYrqF9HJv87Rh6ZMP3a/A2Al3nYNs4oILz+rW+bJjWRNA==
X-Received: by 2002:a92:d489:0:b0:303:8cff:9841 with SMTP id p9-20020a92d489000000b003038cff9841mr3381027ilg.26.1670603188775;
        Fri, 09 Dec 2022 08:26:28 -0800 (PST)
Received: from markhas1.roam.corp.google.com (63-225-246-100.hlrn.qwest.net. [63.225.246.100])
        by smtp.gmail.com with ESMTPSA id b2-20020a92dcc2000000b002e85e8b8d1dsm556531ilr.5.2022.12.09.08.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 08:26:28 -0800 (PST)
From:   Mark Hasemeyer <markhas@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     Raul Rangel <rrangel@chromium.org>,
        Bhanu Prakash Maiya <bhanumaiya@chromium.org>,
        Mark Hasemeyer <markhas@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org
Subject: [PATCH v12 2/3] dt-bindings: mfd: cros-ec: Add UART compatible string
Date:   Fri,  9 Dec 2022 09:26:23 -0700
Message-Id: <20221209092619.v12.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
X-Mailer: git-send-email 2.39.0.rc1.256.g54fd8350bd-goog
In-Reply-To: <20221209092619.v12.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
References: <20221209092619.v12.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bhanu Prakash Maiya <bhanumaiya@chromium.org>

Add a compatible string to support the UART implementation of the cros
ec interface. The driver does not support the reg and interrupt
properties, so exempt them from being required for UART compatible nodes.

Signed-off-by: Bhanu Prakash Maiya <bhanumaiya@chromium.org>
Co-developed-by: Mark Hasemeyer <markhas@chromium.org>
Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v12:
- No change

Changes in v11:
- Update commit message to include device

Changes in v10:
- No change

Changes in v9:
- Rebase onto for-next
- Update node-name from uart0 to serial
- Remove reg and interrupt property requirement for UART compatible
  nodes.
- Update authorship

Changes in v8:
- Update commit message

Changes in v7:
- No change

Changes in v6:
- No change

Changes in v5:
- No change

Changes in v4:
- Changes in commit message.

Changes in v3:
- Rebased changes on google,cros-ec.yaml

Changes in v2:
- No change

---
 .../bindings/mfd/google,cros-ec.yaml          | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 3d5efa5578d1b..cdf1d719efe9d 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -33,6 +33,9 @@ properties:
       - description:
           For implementations of the EC connected through RPMSG.
         const: google,cros-ec-rpmsg
+      - description:
+          For implementations of the EC connected through UART.
+        const: google,cros-ec-uart
 
   controller-data: true
 
@@ -187,6 +190,15 @@ allOf:
       properties:
         mediatek,rpmsg-name: false
 
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              enum:
+                - google,cros-ec-rpmsg
+                - google,cros-ec-uart
+    then:
       required:
         - reg
         - interrupts
@@ -299,4 +311,12 @@ examples:
         vdd-supply = <&pp3300_fp_mcu>;
       };
     };
+
+  # Example for UART
+  - |
+    serial {
+        cros-ec {
+            compatible = "google,cros-ec-uart";
+        };
+    };
 ...
-- 
2.39.0.rc1.256.g54fd8350bd-goog

