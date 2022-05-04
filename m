Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D453F51AF4D
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 22:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378174AbiEDUjD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 16:39:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239772AbiEDUi7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 16:38:59 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5630010FE
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 13:35:21 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso3902448wme.5
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 13:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/kez/qpsFQ+IZamV7zrV7LTtRW1TdlvsPTX0KFg6YaM=;
        b=OzZyx1llwNQhvtNr3EhzufY2pfeGAnTQZ8980mXd99emptugndbzow05J7OXa8m8Xu
         nqP+vnqzlOc8kFKMq/iHrWMedvjQ0wRUG+S6H4wF7jl0Za89CZBcRF4J5wksf86kGhMj
         KrIvfuB1e62wN7PxM6tUfql2MvRjusCaH8FUy4WoNLxv1xPZsxlUOaOjz0eN4iMqdeeg
         mkaG14zpKOLYsIheTbsOJqXU3Kj4mOfQNxRjiFvz9zmvBAKMTPGk8x/owLYrzK1Y9nts
         1Ts50BdFx8cFdgu/qKUZoQVP75gO+N4ac/cN7jK+IUdqCbCasA2zIH60wWTZoHtf6qwh
         2H6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/kez/qpsFQ+IZamV7zrV7LTtRW1TdlvsPTX0KFg6YaM=;
        b=KuzVsa6vcpS3pdFvoQr7N5a9ucjBDNR3xBOi+yHsFHpEBENa4d8h/8XsLPlnjQNQ3s
         upRpt6coQkNPUX5PGVE0v3GfVZOiLySdCoDxpmhq0BOS4ouoqXChy9wtvjosRQs3Jhhm
         1/g4/6gUoaVO7sJcCKSOFU9ujPMuf1Z/GawNM/+YJ4SfXfACFmGb7hyEEPQ9OgG3qrkN
         LPEwM5YLfs6+s15QQmmCYCIOCAxTBaz7nvQr3RPC+XANmvAKpK0CZn1tgfUzWAhyM2/Z
         3X5VClm80RFAr7Cz4QeDQnWQHYvlzGUyR+k4Ng9JGbkoxbK2DE4b8CI0dVlFkI//VA7+
         DxcA==
X-Gm-Message-State: AOAM530CGGRlOhmiTGOHGISJmxuIeYlodV3HpGhtocr2QPizVTziq5h1
        ZARbOeABnH4Yw5i3DtB6fGhq+A==
X-Google-Smtp-Source: ABdhPJwTP+LGkjMrAS/D90kMOMXTYP/hJZZwmXwXPYgDQ3kVDjSRRrJF5JOfWaxcbNwZKXmG/pVgEQ==
X-Received: by 2002:a1c:5459:0:b0:394:1191:a1ff with SMTP id p25-20020a1c5459000000b003941191a1ffmr1086431wmi.96.1651696519959;
        Wed, 04 May 2022 13:35:19 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id l20-20020adfc794000000b0020c5253d8dfsm13330101wrg.43.2022.05.04.13.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 13:35:19 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 6/8] dt-bindings: vendor-prefixes: add Sundance DSP
Date:   Wed,  4 May 2022 21:30:50 +0100
Message-Id: <20220504203051.1210355-7-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504203051.1210355-1-mail@conchuod.ie>
References: <20220504203051.1210355-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
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

