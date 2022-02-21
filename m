Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9F894BDDD8
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355218AbiBUKqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 05:46:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355346AbiBUKpp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 05:45:45 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34E1825EB6
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 02:07:07 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DD26D3F338
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645438023;
        bh=cW/QUWxRYPJ01JIv+IxhlaCd34Ezps7vx3XaRgs0k38=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=mE650o2OFMEldwIsOHtit9UymdWipuSPrEBD5QlJtznspRv00LfH1mO5r77YBaspI
         SIkNPYdXnowj2ckEJJIQmV7rn8vfU1A/PREyS7JgPWUiOSlQi7V+npMg11XOfr0wzv
         hs5H7WOA0tDfKBZhDE3EaoM4LasnPgiukfhHK4e7+JFVIaRNmIwJYFrF12LYnfWlX6
         c6ujWJ/d1iNalE/M25cPUngXkG2p8oFWeZReg5y+Vj9QOZ2lvs739C1nfkFMyl42NG
         po3oLscVXRBumYpOzRwjCa9i+KbFn69rI4+4MlDriWO2Hh/fFpRjRZhygwwqQzHUB5
         pPp7NWQk/Wo/Q==
Received: by mail-wr1-f69.google.com with SMTP id f14-20020adfc98e000000b001e8593b40b0so6503389wrh.14
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 02:07:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cW/QUWxRYPJ01JIv+IxhlaCd34Ezps7vx3XaRgs0k38=;
        b=SZ+91rbZYFonASCI+GJyGAbvzlVqJp0Kwk1Y3pRXiV4EOA+pBN4Ag7y0L8634SE6Rd
         2F9OKXbFnL1+HKFOp9Qa4yf6meISXcNVbzg8XnsAGQ3iDFPrAPG0GtyBxNNYXjiZEF3O
         zwu5ySwbwFNlDYMISwUFok0S6+Uu2vvU7hDTMz19trjotXGBmS8IqYhAMQ4UW+MMn8r5
         gb36Q+1BV6wG5F7SYVKJkKZljSnGR2j2MkbjdupTHxcxE14h5rfyfkn3DbaL6LOdSkfU
         Lw80J1NICAoDkymkj8r2IyFL//qIy1xSwpH0LLxS+tE2xh1bQAgqRHPKYQCh3Hj4ma9c
         B4ZA==
X-Gm-Message-State: AOAM532XfdaN1ID/4PTnRU6PFQjRlKHgHkE8U6QAmLEIWt5C3liWwJqb
        aYsCmmzy5D9Woktu70HXFnQkr7WhvF34WvYpGndKz8m0AC9Puziej4rpd4X8X/kHHYyUFLbnjeA
        pg2BhSAed+57PdOSV7XDmpxl3dTX5bbVsAcv2I+w=
X-Received: by 2002:adf:fbc4:0:b0:1e7:2060:d65 with SMTP id d4-20020adffbc4000000b001e720600d65mr14402418wrs.583.1645438023620;
        Mon, 21 Feb 2022 02:07:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzSDnIuvhfhf6ztWmXo0/EYg1RcHqQ7IBUSFa3H9QTNRrd4GTrHx0Vh3osgtoGhA5uLVbSAgA==
X-Received: by 2002:adf:fbc4:0:b0:1e7:2060:d65 with SMTP id d4-20020adffbc4000000b001e720600d65mr14402401wrs.583.1645438023436;
        Mon, 21 Feb 2022 02:07:03 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id x18sm49516678wrw.17.2022.02.21.02.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 02:07:03 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Roger Quadros <rogerq@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org
Subject: [PATCH] dt-bindings: update Roger Quadros email
Date:   Mon, 21 Feb 2022 11:07:01 +0100
Message-Id: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Roger Quadros TI account bounce with:
  550 Invalid recipient <rogerq@ti.com> (#5.1.1)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Roger,
You should also add a mailmap entry for your inactive emails.

Best regards,
Krzysztof
---
 .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
 Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
 Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
index 272832e9f8f2..fa86691ebf16 100644
--- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
@@ -20,7 +20,7 @@ description: |
 
 maintainers:
   - Kishon Vijay Abraham I <kishon@ti.com>
-  - Roger Quadros <rogerq@ti.com
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml b/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
index 51c8a36e61f0..8694b9eb52f9 100644
--- a/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml
@@ -8,7 +8,7 @@ title: OMAP USB2 PHY
 
 maintainers:
   - Kishon Vijay Abraham I <kishon@ti.com>
-  - Roger Quadros <rogerq@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml b/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
index a634774c537c..eedde385d299 100644
--- a/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml
@@ -7,7 +7,7 @@ $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 title: Bindings for the TI wrapper module for the Cadence USBSS-DRD controller
 
 maintainers:
-  - Roger Quadros <rogerq@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
index f6e91a5fd8fe..4f7a212fddd3 100644
--- a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: TI Keystone Soc USB Controller
 
 maintainers:
-  - Roger Quadros <rogerq@ti.com>
+  - Roger Quadros <rogerq@kernel.org>
 
 properties:
   compatible:
-- 
2.32.0

