Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5150C5BAE2A
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 15:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231264AbiIPNau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 09:30:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231213AbiIPNas (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 09:30:48 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E9D075498
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 06:30:47 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id e16so36028287wrx.7
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 06:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=6x3Tj7tEWzF/PXB7GiOSZ3dAZDugeuF///iJalkLWP0=;
        b=b+/A0ne7xCPUFUEcIOb1qqYJd5dEbE0v/cz5WgUMA6KxktE1V0BwE70WWjuJjs+mJp
         U+UYln+XpTrvZN0eoj1oc7bBLD9oRO3t04C8gbH5b1J/0gKiI0AdPoHsGoJNZisBbN5E
         q1QBBZF9Bp/8PsR1dH4UwtR9Qv3VbMq8HAlP1+HC4AVsgQvlgcJ8m7ri0R0yAobu6ePR
         tswWNfE8nFcPhmZX64dh15uH/5SOsNlSzanBkQmwN3ns3zMWaMETMbxBIcgMgQI0ShYz
         GW/slyafSXX08b+cVKHLOqrHf+jkZ3wHhuRhv5douRIs9JEoCo/EBISOy3MJyaN+ZH9Y
         D4Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=6x3Tj7tEWzF/PXB7GiOSZ3dAZDugeuF///iJalkLWP0=;
        b=cwVeb5oie7JBthKi/Q4G85v9BNRVmKhuLxMfqgQElJzb/nGQPZiXs9UasTMCBmaXsh
         EADFqNP6c8F9qbQdW6YBvQyO1DmAYRf5RKdUA/ZNKKVFjwGBwlfICrrPj71kwXuXnaD2
         0QpbgQbIZcre08KIW7/25oJVDwfs9Gy4PGaV99dWWc6l/xL7OLPg0cSGxK412YjfKkVa
         EIJEB6v8QUxeo5osGRyMN4xL0G8ztw07ntcpMlp2c6TVA6k3tS1GZhka0Ab3I7H4pIxQ
         gjX+DSsE0JxBKccEcO0nDoPDpiuHx+/Fm/lhufW3IBAaMj/Y6I0FIwjFJzh7A0dU3tgW
         5CCg==
X-Gm-Message-State: ACrzQf3EsD+QuLia0/YXxqogqE/ReAd5AnX2S9XEKs8WFM1D+b6LKyCe
        pA4gtCu/Rqx6zOBspN37Q8huW/oyUgAoKw==
X-Google-Smtp-Source: AMsMyM41h9RQuxsubvEd0b0gS3dZ5OGByovX4AVlxZ5K45YtQnYwYnOM7DlxiXxmAmB6ii/mwrLc5A==
X-Received: by 2002:a5d:4dcd:0:b0:228:d1e4:9cf1 with SMTP id f13-20020a5d4dcd000000b00228d1e49cf1mr2774634wru.182.1663335045759;
        Fri, 16 Sep 2022 06:30:45 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id k21-20020adfb355000000b0022584c82c80sm4934404wrd.19.2022.09.16.06.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 06:30:45 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     maz@kernel.org, mark.rutland@arm.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH] dt-bindings: timer: Add QEMU compatible strings
Date:   Fri, 16 Sep 2022 14:30:00 +0100
Message-Id: <20220916132959.1910374-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QEMU uses both "arm,armv8-timer" and "arm,armv7-timer" as compatible
string. Although it is unlikely that any guest relies on this, we can't
be certain of that. Therefore, add these to the schema. Clean up the
compatible list a little while at it.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/timer/arm,arch_timer.yaml   | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
index df8ce87fd54b..fa03fc0fe320 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
@@ -22,16 +22,17 @@ properties:
   compatible:
     oneOf:
       - items:
-          - enum:
-              - arm,cortex-a15-timer
-          - enum:
-              - arm,armv7-timer
+          - const: arm,cortex-a15-timer
+          - const: arm,armv7-timer
       - items:
           - enum:
               - arm,armv7-timer
-      - items:
-          - enum:
               - arm,armv8-timer
+      - description: QEMU uses both compatible strings.
+          This format is deprecated.
+        items:
+          - const: arm,armv8-timer
+          - const: arm,armv7-timer
 
   interrupts:
     minItems: 1
-- 
2.37.3

