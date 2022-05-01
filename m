Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4BE051676C
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 21:27:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353405AbiEATaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 15:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238442AbiEATaH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 15:30:07 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C003C2ED63
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 12:26:37 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id az27-20020a05600c601b00b0039431ba4905so860901wmb.1
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 12:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/kez/qpsFQ+IZamV7zrV7LTtRW1TdlvsPTX0KFg6YaM=;
        b=zYcbbbn6x8nFqBJNcTo5K10m1fVCPAbmzI4EEiqB19Dt0CtN4YfZ+n3eRJUrEUrmG3
         4GQuYluEbb4bGxzAJFOVTQpx6wM/O2xCVrJnUb2dpktdkLrqiH/Ox6Av5VE71LGANb5p
         enO1+LaDy0ieC4/r8HrZy0GpqbFnPqzoGHreSD6/rHVFNHSPh+mlI86BlfOQlPj3tGAL
         yUpREufCVhnuseHLb6prpzQeIJfWvkoawrO/gw6d9/iWGp5FWBubzO2VaHeFijKlLj9/
         lMeN3FdAHsO66Tv9w8FClrjFdeoH3s6srPsX69bA0pDoprHSvxGZhcDojB8LJdJX9q4I
         810Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/kez/qpsFQ+IZamV7zrV7LTtRW1TdlvsPTX0KFg6YaM=;
        b=ajc0ElKk6pjgxagcYu8UuHZyYQpMmv3OgLa03QfKGSeGFppeN5LtOwIKcmUsskgjzX
         /LyBXkai0/qg3hHypSQeiVU8Icmrt/a5WIQWFZDzf5nsV50Ay0rhVujhrEdFKdJHMnTO
         Awc49XETLJ2jLTgaoskcUD2jiGWMPE1Voc/VUG3jr1wgF1hBZ0Y+KR6un4LGG5ecGjru
         wx/9OTvRVSVtJM80z5R4khyE+Zo32IoBRYPRYsA/A4ehhTpThf2eazryhcfky9QzqngI
         iTIh5FkLUgJves3chfzC1MbXedSDZ6IJSmukGaikU8BRXr4oHGyQYAYkwnePZ46HhNBt
         3apw==
X-Gm-Message-State: AOAM530KEx4t6cYyhNueDxBEWKvEBYoHHZr3kt9zL8QVYXEAzxBFtBUL
        WO/31H2M6RAReDR0Hkjh4LFeJw==
X-Google-Smtp-Source: ABdhPJwMWJCsRKRMZtX/Ja6xQmgBBzodM0Qb3tBUl6fsvsA0sjo0C3BxIcXqpeX6QRnynN5mejc5Dg==
X-Received: by 2002:a05:600c:3492:b0:392:97ba:9581 with SMTP id a18-20020a05600c349200b0039297ba9581mr12598465wmq.163.1651433196187;
        Sun, 01 May 2022 12:26:36 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id i14-20020adfa50e000000b0020c5253d8c6sm6448105wrb.18.2022.05.01.12.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 May 2022 12:26:35 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 6/8] dt-bindings: vendor-prefixes: add Sundance DSP
Date:   Sun,  1 May 2022 20:25:57 +0100
Message-Id: <20220501192557.2631936-7-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220501192557.2631936-1-mail@conchuod.ie>
References: <20220501192557.2631936-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Sundance DSP Inc. (https://www.sundancedsp.com/) is a supplier of
high-performance DSP and FPGA processor boards and I/O modules.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 01430973ecec..1d47a38c2a2e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1197,6 +1197,8 @@ patternProperties:
     description: Summit microelectronics
   "^sunchip,.*":
     description: Shenzhen Sunchip Technology Co., Ltd
+  "^sundance,.*":
+    description: Sundance DSP Inc.
   "^sunplus,.*":
     description: Sunplus Technology Co., Ltd.
   "^SUNW,.*":
-- 
2.36.0

