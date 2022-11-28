Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6234A639F9D
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 03:45:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbiK1CpH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 21:45:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229694AbiK1CpE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 21:45:04 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA88A18D
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:45:03 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id 130so9141781pfu.8
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 18:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QblcRigJwoZRgJNZ6iEUB9TwI9CjJLNnmBpOtD0NOv4=;
        b=X3sSZ+vFG6pKcKMZiHZGfHhEOFIOeF/8wlewh8ih5nKEHqeWHGRbNzi7PT3jvF2Zep
         gL4Yqon1S38u2PIODz45DeUfheiQLdKs5WcMngFJHGdY9DH+fNXqB0G5r76thAU0cuN8
         lVtRjMTVe7nPolWSbVdIATDJx0CrgN4ovsMHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QblcRigJwoZRgJNZ6iEUB9TwI9CjJLNnmBpOtD0NOv4=;
        b=AXkeorf53mcJQNap8y4l/BsEHgVySsNEKUR+SaDKIYjM3/2kQVCdzFs5WRh/2+cpb2
         dYxB1/h3XKgg+kgOsQgTAgTsk2o5en+dHbkBmwq/srfhOz8nAV/af8g6x9UM3TSriPAn
         voVunBSsh2j8BeSjwwKwqHyalMaF6L3U9ONzHwQbQWkedjqjDPPRFB3+6sTX35iHz23w
         IGsD/to7KgWvmQp0iLiyKHDLsSw/qTd41e1Gsqzg4QjaMlI4Fir83o7w3oEGjqMfAPnk
         YClAaRySWgYiAFOWU4Pvz4R4uVIoZhYwjZ4QM6ajTAmUjdP1ublZ1PD2C+2qK630RtE1
         WDdw==
X-Gm-Message-State: ANoB5pmu4akCVJ07rVjnjgZv6m5LCkPB0fQpa8AEmbbgr1CmUDvfSKwb
        8PjA9lhiyM4SzCHZVXwMPTyD/HVlzTFgTMumReU=
X-Google-Smtp-Source: AA0mqf6H2EO/npUQnxPso24DXuIYncg32lomcwgcRx/74I+rJHmoea/NN4qLk23bdx3Tq/BPyk+ylA==
X-Received: by 2002:a63:1f0f:0:b0:439:4c73:821c with SMTP id f15-20020a631f0f000000b004394c73821cmr25484433pgf.109.1669603502519;
        Sun, 27 Nov 2022 18:45:02 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id z16-20020aa79910000000b005752201d4ffsm1431568pff.213.2022.11.27.18.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 18:45:02 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 8/8] dt-bindings: mmc: sdhci-pxa: add pxav1
Date:   Sun, 27 Nov 2022 18:44:07 -0800
Message-Id: <20221128024407.224393-9-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221128024407.224393-1-doug@schmorgal.com>
References: <20221128024407.224393-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible for the pxav1 controller in the PXA168, along with
optional pinctrl properties to use for an errata workaround.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 .../devicetree/bindings/mmc/sdhci-pxa.yaml    | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml b/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
index 1c87f4218e18..e3fb34853921 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/sdhci-pxa.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Marvell PXA SDHCI v2/v3 bindings
+title: Marvell PXA SDHCI v1/v2/v3 bindings
 
 maintainers:
   - Ulf Hansson <ulf.hansson@linaro.org>
@@ -34,6 +34,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - mrvl,pxav1-mmc
       - mrvl,pxav2-mmc
       - mrvl,pxav3-mmc
       - marvell,armada-380-sdhci
@@ -61,6 +62,25 @@ properties:
       - const: io
       - const: core
 
+  pinctrl-names:
+    description:
+      Optional for supporting PXA168 SDIO IRQ errata to switch CMD pin between SDIO CMD and
+      GPIO mode.
+    minItems: 2
+    items:
+      - const: default
+      - const: state_cmd_gpio
+
+  pinctrl-0:
+    description:
+      should contain default pinctrl.
+    maxItems: 1
+
+  pinctrl-1:
+    description:
+      should switch CMD pin to GPIO mode as a high output.
+    maxItems: 1
+
   mrvl,clk-delay-cycles:
     description: Specify a number of cycles to delay for tuning.
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.34.1

