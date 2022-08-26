Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 519125A2769
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 14:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230132AbiHZMIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 08:08:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbiHZMIh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 08:08:37 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0128DD4E9
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 05:08:36 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id d71so1206045pgc.13
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 05:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=D3lfFqV/J6np/aW5HDDLz5odIk3AM7hN1s/0B3dYotU=;
        b=gAfZvDAdktIb5TyU9JIzfgSHc7/cF9NEnuBaYDA69C3HDO5Gf7klwiAIhHMmWL13Ou
         NGtasPQ02ONGFVScwbo42v1TAcJJ+n9t2tfMR8t5gB3VWgwWoGnFMUJj3hvaMxrg9oZ3
         o7Modppjeop5I4upslDnJCbe/MFAYcyGZ6Rz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=D3lfFqV/J6np/aW5HDDLz5odIk3AM7hN1s/0B3dYotU=;
        b=I3/wg21h88KZukHx3lT6YxnqZfwI6Wyim0ZTO4NW5lmJenOiM0hJkh69szUMHQcqWX
         9Mv0N8YvZCVoTpAgBHnqUxWMVwgluC+JrlYQh3ZWqxj/5KZepN0o5YOrssxtJZtcBAti
         a+COjTuOq2T5p15/l7VwpjkUYz89Qq5LJKASQ7EQm0FC2FaxwmU1NXg1gBNQNG40gjb3
         Ze/y/bMSgoB+6SqH5txSjDmX/KVDgkGpjsXkRFDaO4K4bniiCCyl5r3um6nysKeqSZMs
         9+TrEVF0b3JbRdU9zwHj4o4avSOgnhRGthxyHSjh3NC0Owi5rxq6cqiy9M0jDe1EwgEq
         Cg3g==
X-Gm-Message-State: ACgBeo0AoPYSVnAsxcg2eukRCPjABrg4lO9oH5qJzOFEhpuaoB/OpXaF
        eQgH7of89Lv8xhXrqN3XgA56OQ==
X-Google-Smtp-Source: AA6agR7MB+OcGuWwGdUko5ghXWjA/zoHklq9WWg0sAeH2yRes0aBG1YitjbkGEXe+ZssLdhQJtgD7w==
X-Received: by 2002:a05:6a00:174b:b0:52f:c4d1:d12d with SMTP id j11-20020a056a00174b00b0052fc4d1d12dmr3603050pfc.41.1661515716228;
        Fri, 26 Aug 2022 05:08:36 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.247])
        by smtp.gmail.com with ESMTPSA id w2-20020a170902e88200b0016f1aa00abbsm1416364plg.195.2022.08.26.05.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 05:08:35 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date:   Fri, 26 Aug 2022 17:38:16 +0530
Message-Id: <20220826120817.1623536-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the dt-bindings for Radxa ROCK 4C+ SBC.

4C+ replaced DP with HDMI and updated MIPI DSI/CSI FPC connectors
compared to 4C revision.

Also, an official naming convention from Radxa mention to remove
Pi from board name, so this 4C+ is named as Radxa ROCK 4C+ not
Radxa ROCK Pi 4C+.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v2:
- fix line wrapping
- collect Krzysztof Ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..ec3525fb1e60 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -537,6 +537,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK 4C+
+        items:
+          - const: radxa,rock-4c-plus
+          - const: rockchip,rk3399
+
       - description: Radxa ROCK Pi E
         items:
           - const: radxa,rockpi-e
-- 
2.25.1

