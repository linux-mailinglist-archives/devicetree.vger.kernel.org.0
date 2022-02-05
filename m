Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E10B84AA87D
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 13:01:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379131AbiBEMBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 07:01:03 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:44382
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1359174AbiBEMAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Feb 2022 07:00:55 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BA96540031
        for <devicetree@vger.kernel.org>; Sat,  5 Feb 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644062454;
        bh=o1EGYrWsRqx/bd/p11jiwzAPNZIWt1CcXa2YB+SDcqU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=QeS2HxGH7uiwxSa1PZEAYLi9o1XDqAz7+D6S6at8knYmGyV+Pi7WA1BpOXlr0yBWc
         AIqCR/FzaaLm++6QDlG5BpA5Y7XzshDLY6qFy9C/A6lRoZ/TbRj+OkzD50p+iy+0wn
         8B29LCFXOuQDDg3y1Ehgg0MPf+Q1bUt74zFcaFBbosYGlTrbzcsJVcbjrlwh1oYW3G
         UTVKM40dYsORjQmLB3wi/nFTUT0bUSHpIKaH84bZn4hMwTiHB6dk3P/hlJ5ArndPks
         h5lEWV0O2ULhrwgYo2z6RmKjMwiB/fZYDZ5zaPCkqYDFsTIFgo5QHuRBLbBu1RH9lE
         HYFW19bp4onYA==
Received: by mail-ed1-f72.google.com with SMTP id o6-20020a50c906000000b0040efa863337so1756179edh.4
        for <devicetree@vger.kernel.org>; Sat, 05 Feb 2022 04:00:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o1EGYrWsRqx/bd/p11jiwzAPNZIWt1CcXa2YB+SDcqU=;
        b=212G3+YuZpNcWVl/8sESrnAsATSIIRZUw/yTcErPdG0QKDWmpeoB7dwsFyUgpm+3/L
         wdmmngTQksDoTIGX1N8V+di4qsTitBZtHQXKOaY4wMYBvvKQg8iOuydYmk1biGcvlLIb
         pSW/Tsnp70lbxtr05NH9pt0iihcllRtYm7kout/tjrvZHrGFbJgQ/2U1hWNOZZNU5Bkh
         IdqST1U8Hr2mCx9+hHj3go71elzQYZAWQM/4LbrqIAXEAOp5h3zYvYj8wRGIZ0imLlSu
         +sYMWhbY8Aov5v5WRbDjScZh5ilD8hsm8oBEnpez6s16QNG4W63D1RD1A3BMvIR5UNXU
         j21Q==
X-Gm-Message-State: AOAM530vZ5GVbXzz9Wuh/nKPG5uUavQAaz6n3236dcOdtzB1W5qZ3iuo
        TEV2nZ5V4327QpUyw2TdHjFwQImUCbftHIkkJP3ecfq1RvueS1MBUFZjjLsi1XPBCkaCA9BZFc/
        uYtIavOhfQbtNNxdx1BqpDEoYuhdPgU7/hTQ3RzE=
X-Received: by 2002:a17:907:e86:: with SMTP id ho6mr2798331ejc.107.1644062453437;
        Sat, 05 Feb 2022 04:00:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwQlCeqMz26UIEovHWLj3a0eLUbdAk51v9fPINLLN0Da01Ex++DNyWpYgFCBrBW2KGNFSgF0w==
X-Received: by 2002:a17:907:e86:: with SMTP id ho6mr2798315ejc.107.1644062453210;
        Sat, 05 Feb 2022 04:00:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m12sm1534185ejr.218.2022.02.05.04.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Feb 2022 04:00:51 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/5] dt-bindings: memory: lpddr3: adjust IO width to spec
Date:   Sat,  5 Feb 2022 13:00:40 +0100
Message-Id: <20220205120043.8337-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220205120043.8337-1-krzysztof.kozlowski@canonical.com>
References: <20220205120043.8337-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to JEDEC Standard No. 209-3 (table 3.4.1 "Mode Register
Assignment and Definition in LPDDR3 SDRAM"), the LPDDR3 supports only
16- and 32-bit IO width.  Drop the unsupported others.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/memory-controllers/ddr/jedec,lpddr3.yaml           | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index c8577186324a..0c8353c11767 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -34,10 +34,8 @@ properties:
     description: |
       IO bus width in bits of SDRAM chip.
     enum:
-      - 64
       - 32
       - 16
-      - 8
 
   manufacturer-id:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.32.0

