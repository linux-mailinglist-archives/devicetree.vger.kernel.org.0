Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85CBC642380
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 08:20:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231755AbiLEHU0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 02:20:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231567AbiLEHUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 02:20:21 -0500
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5EEEF020
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 23:20:19 -0800 (PST)
Received: by mail-io1-xd2c.google.com with SMTP id o189so1333221iof.0
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 23:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1tmfIAFg5Gn6maLaUosoE4qK2kRKNnA216yinP3k8AE=;
        b=H+itvEoTRVUiX1FWmONFBFoKDIAL6a6uCF7h9yTs9BmKIxRT35H6ZMyXnDRtPID4bV
         XF2vZVkCtBEu4/FcueE6lH7ptBNrY9Q/82TsrtBoT7kmhF9SDOswU2MN6qe3BOgnzioG
         hO9QFIb5XTcSAx/ZASCU9TclLSwd4wsjnKGDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1tmfIAFg5Gn6maLaUosoE4qK2kRKNnA216yinP3k8AE=;
        b=a8Pbo+iheXbKffFvKEc8ccFgS2aXhId3FMreYwL+jxxa9Laqqw4B1OG3VFfXHECmNx
         6iUdeQIM36b2t0VVh41CcB4ycJK8wSocpb5RR8XZ/o1Lt4JCjPdq27gWEtlxmvr1sQxQ
         nMyQmZgiIR8doo6cgMKlLdATtgRQAZbJ7beFcFjJJKjf5Ou+9JpGTPNkBBCKl2U/127S
         0FuWt+tCk+AgtbHqARcvExDLw8Jt7fCJFqBTrdO0Dvy3ddHxBgn4lpPGygIPvoYFfD9r
         ez5vYwtQSE+SPMz639tsqo8zoLvzFGSbte4H3Rkc4RZ17AZ25bVy+bgYmVvDweYkcz4r
         4D1g==
X-Gm-Message-State: ANoB5plvGeR9xFXeTU8gXTifVmrp51YH7gPJ9VjIXlIWz6rmZZcdM6op
        5O3Aw8TYJF4BMnw9mUJlu7q4Ew==
X-Google-Smtp-Source: AA0mqf5yl/hJSGq91vZq/GoSz5IGy4KgxRszruI1sS2TUorJyRD/x06on1xd6ywwsDaLDEE+VwDfAQ==
X-Received: by 2002:a6b:c343:0:b0:6df:aa48:aa04 with SMTP id t64-20020a6bc343000000b006dfaa48aa04mr11773662iof.161.1670224818991;
        Sun, 04 Dec 2022 23:20:18 -0800 (PST)
Received: from markhas1.roam.corp.google.com (63-225-246-100.hlrn.qwest.net. [63.225.246.100])
        by smtp.gmail.com with ESMTPSA id a8-20020a021608000000b003755aa71fffsm5581184jaa.105.2022.12.04.23.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 23:20:18 -0800 (PST)
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
Subject: [PATCH v9 2/3] dt-bindings: mfd: Add compatible string for UART support
Date:   Mon,  5 Dec 2022 00:20:00 -0700
Message-Id: <20221205001932.v9.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
X-Mailer: git-send-email 2.39.0.rc0.267.gcb52ba06e7-goog
In-Reply-To: <20221205001932.v9.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
References: <20221205001932.v9.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
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
2.39.0.rc0.267.gcb52ba06e7-goog

