Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC4B75E683D
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 18:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231477AbiIVQQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 12:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbiIVQQI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 12:16:08 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E0D2EB115
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:16:05 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id n15so9432150wrq.5
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=rsvkRsPhXHyqjG3IrHR5KoCBpzHVbWWSnvgI49rkKnY=;
        b=eSGbB/AqaLzQjsmsEnLWV2zrRgRbccRxCkC/dbswA3lZ9SpTfTkqmhW+hBixh/47XU
         GLqxvLrmmK9GFvQ4EEU5EIYYx6px79FCbTqbYpAjF3Xnk/uUDsVqUnyfVlT9dON6153M
         sfGGGHT05SRnyCeTYP8PsRO9c9WRC3RE7mFttmMvahbGg++njHxYd7GLzV86vJCOcwpy
         JHUoy5PQbhrQSij6wKlgcYlPpthnBmcQ4oB2eQIzr8wKl9LXISJAKzO5qBkaBkuRszaf
         bdZTFpjHJvasHQNoYTgizWlDnUGTPwhS5bWBoieewv43ZOr3sTPAHWw4puTFkXK+O6ri
         1sUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=rsvkRsPhXHyqjG3IrHR5KoCBpzHVbWWSnvgI49rkKnY=;
        b=deOglqRgI0SebzmuV5RhaolfHgV8mEAgIdjpjCHWGBowIyF2lEaQF/UtBmCdOFED0I
         dLEo5toXYvtNEh489j/FGKVN+rLDQpVkr8amBG1Yj5J4yX3qVlQNeaVVjxQQZjzcmvi2
         c0vxJJsLwRABM0rlhTV2akwURAQ4Hu9KSMXMEjsMG5JRrw1PJfER6AJ9XAC/YC5gWLPv
         AkC2jhk1k6551BhzPVgG4QUv6Ex3p2S6vHyzWhM7TbE39uG6quM/vzlo2MNYvf2NEjK3
         VSeWbf549ltpCz3CaiwF0+XNUTgHx7jTWumwwBDXNuxrf+ri1LnPZhRIUj0WcV0zB33m
         0fTQ==
X-Gm-Message-State: ACrzQf2xCV7MJm7n9P834FffpksQO+Y2OUSXkGJu7FaPTMcBIwuzFxjx
        kKnYkocn8xNZYmJ0UiYBFUAvHw==
X-Google-Smtp-Source: AMsMyM7cSC3Nx8hZGehVhWhzaxZB7qp4dGSvf5vsV35VEVRcacSDRdFMPy9YdDDejwG07pSY3GO1yA==
X-Received: by 2002:a5d:6b83:0:b0:22a:80e4:f379 with SMTP id n3-20020a5d6b83000000b0022a80e4f379mr2543574wrx.3.1663863363609;
        Thu, 22 Sep 2022 09:16:03 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id c17-20020a7bc851000000b003b47575d304sm7568304wml.32.2022.09.22.09.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 09:16:02 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     maz@kernel.org, mark.rutland@arm.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: timer: arm,arch_timer: Allow dual compatible string
Date:   Thu, 22 Sep 2022 17:11:50 +0100
Message-Id: <20220922161149.371565-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.3
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

Since the Armv7 and Armv8 architected timers are compatible, it is valid
to expose a devicetree node with compatible string "arm,armv8-timer"
followed by "arm,armv7-timer". For example a 32-bit guest running on a
64-bit machine may look for the v7 string even though the hardware is v8.
VMMs such as QEMU and kvmtool have been using this compatible string for
some time. Clean up the compatible list a little and add the dual
option.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v2: Reworked commit message, removed "obsolete" description
v1: https://lore.kernel.org/all/20220916132959.1910374-1-jean-philippe@linaro.org/
---
 .../devicetree/bindings/timer/arm,arch_timer.yaml     | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
index df8ce87fd54b..c5fc3b6c8bd0 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
@@ -22,16 +22,15 @@ properties:
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
+      - items:
+          - const: arm,armv8-timer
+          - const: arm,armv7-timer
 
   interrupts:
     minItems: 1
-- 
2.37.3

