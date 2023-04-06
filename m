Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 705466DA0A2
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 21:04:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbjDFTE0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 15:04:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240518AbjDFTEO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 15:04:14 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BDEA30E4
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 12:04:08 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6a11f365f87so1187607a34.1
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 12:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680807847; x=1683399847;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tgMSLoXvpb41dzn7vUbLqG4YYGMU1dgRXM40AmhHt3k=;
        b=kMX/P8uRuh4nCfSPQXZMNuxXEwuQirPpCMzCU4gnXNa2aSTLGq8DMRDppHeVD3U/MI
         a7OCbUSc+9w+r1GTD14CsrL9DTnLoezq+adGndZpSPQfwYUrtAXd7dKuHMLPvsy0VndO
         utVvRuFqkNp741ZH59L4avn20gWfJ18lSmsFfKTzyaAdx6KfO1dA/qL6uHkzHENnocV+
         2A5jfacQPHxDw46+hu8pWKOftFHc3/CcGXGALDtjNAptyS/zwdkkOkiDR4AvY+CluXWe
         PHLus7FNvlzinp4Y4+1bTi5UDbNF9k1z3emwZ6uxDB+m3agjPz8tr9ySDarxVPxZ37FP
         XC4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680807847; x=1683399847;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tgMSLoXvpb41dzn7vUbLqG4YYGMU1dgRXM40AmhHt3k=;
        b=aYqZorSXw9hWEPh1yDwXCnCUiwUcixIi+MmtSbAr0q7EBCQhiM2ADzRjkyhc++klhE
         RnWjbk0JxYXpsrmoyEue9/KIzkc+cKnIGpstYf2e4xBG1qqNLpAvZh6FDLsbBmvP/s74
         z9UAV+L7a7kNvFieCbsk2+yeuhL+t8ZlMB8OK+OjlryjtDxhGuNa5lx4sp8tdcsGC7uu
         dIDN1yzT0gIDIwsfj654fERnF+q98UiDUgbNQ8HRXFarAg/73O/zyuBShSAiyvsI1V9g
         xPxa7/man+myv2hbwLMWVI4Op9onfOPDFUaUF3F2Wwe/+6XVm2vw/thO6OUsbPIYnLRU
         txsg==
X-Gm-Message-State: AAQBX9fnAa200GKV/jJ8lpOT0WMK3C5delJc3mLXterUMXdQt5krCwI8
        bPgvvwWlDAXL9lnV7sX70u5o/UoZwbg=
X-Google-Smtp-Source: AKy350YAqdbAzkif8xUQ6LbO+5MM7Ceb+V7ivrupy8k+evqC08095O2JIY7T/QKhIXWrhhyN55pOZg==
X-Received: by 2002:a05:6808:1995:b0:385:d91:ee30 with SMTP id bj21-20020a056808199500b003850d91ee30mr2852309oib.3.1680807847256;
        Thu, 06 Apr 2023 12:04:07 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:c4b0:ddac:a031:82c4])
        by smtp.gmail.com with ESMTPSA id u10-20020a056808150a00b0037832f60518sm986761oiw.14.2023.04.06.12.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:04:06 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] dt-bindings: samsung,mipi-dsim: Add 'lane-polarities'
Date:   Thu,  6 Apr 2023 16:03:53 -0300
Message-Id: <20230406190354.1641352-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The Samsung DSIM IP block allows the inversion of the clock and
data lanes.

Add an optional property called 'lane-polarities' that describes the
polarities of the MIPI DSI clock and data lanes.

This property is useful for properly describing the hardware when the
board designer decided to switch the polarities of the MIPI DSI
clock and/or data lanes.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Rebased against drm-misc-next that has samsung,mipi-dsim.yaml.

 .../display/bridge/samsung,mipi-dsim.yaml     | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index e841659e20cd..04eb440ade72 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -105,6 +105,35 @@ properties:
           DSI output port node to the panel or the next bridge
           in the chain.
 
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                oneOf:
+                  - minItems: 1
+                    maxItems: 4
+                    uniqueItems: true
+                    items:
+                      enum: [ 1, 2, 3, 4 ]
+                    description:
+                      See ../../media/video-interfaces.yaml for details.
+
+              lane-polarities:
+                minItems: 1
+                maxItems: 5
+                items:
+                  enum: [ 0, 1 ]
+                description:
+                  See ../../media/video-interfaces.yaml for details.
+                  The Samsung MIPI DSI IP requires that all the data lanes have
+                  the same polarity.
+
+            dependencies:
+              lane-polarities: [data-lanes]
+
 required:
   - clock-names
   - clocks
-- 
2.34.1

