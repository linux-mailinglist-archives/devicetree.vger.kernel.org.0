Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7C7A582E71
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 19:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241486AbiG0RMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 13:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241487AbiG0RMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 13:12:10 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5CB474E3E
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:41:53 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id t17so15673954lfk.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HLLpAzhNV/l0ttpD0m4mlf6L5UXu2Cn5/3KpjyhDTBY=;
        b=uPUaQqLTpWBsddAvwhB8kXR3XZqpK0bsfMJYxtl6vmn0LIxzSjWbEkXM+1GyWv4q3K
         0lXRAxsqbWIDmTHN9W9otGvZnmtq6Gi31EciPJxgE8fjh2qUREoJtZEh1xQiYckDq06b
         RsAcgGnVa7t22jloyDww1FlcS+NSMIoxuplRVXowLQCO7zd4UqWHIJTdos7ONZAPMoQO
         X8GTSCn5qBzEmzNsHgudvTRUKqbh5UBpG8+/KsiBX1774UKZHSPq9SrIQvAY2SyBGYum
         lrUgOkkjGsHBhfhQR0ZmWQvSkCw8rH2kUtWhMyPFl6EyINP0S5yN50siJJonzjzCBX5j
         aA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HLLpAzhNV/l0ttpD0m4mlf6L5UXu2Cn5/3KpjyhDTBY=;
        b=FndDssvNlt+rguyeYuL2uYN6Iw5P1gZVdjkzsIRLVVWsc38eEMTjYQmR6c/3SHEj5C
         7zSdGUzjVKCuoRO6hkILeGt1rJfsWT9Y6oxgz8P0mduQPSbmNeoI1SVCxMRSm/Pe/6o+
         mPUSmW80wICzuDHccb5vyxDTlMksR+hKgZBrHKb74PRuzYVjJf3svQlkTOfZNiB6hahE
         8O+daVb5eXgJAc95QBLbIdCwTJCUPT7zY9VphwRtkygP3cVNk1PSVbEmQ6/pV+XFLrv9
         7VjB6/Pyh52nRh7V/n7V6av3ABK63j3pWumoqXvF6j7EBG6mylbMbPA78GHMU+fE6EIy
         KIFA==
X-Gm-Message-State: AJIora86S6P7zcFdiibeKpfBwiVfZJ9X4fU4yTVDtmm9ywMGmu14gPGd
        Ma4pa+mkvJSwxg0iwErHbFI/xA==
X-Google-Smtp-Source: AGRyM1uF0dw37mu6pVrn0amas3Oc/3y1uf9T6DdFSISA35nOH4HUEzm1LE/4X3+zt0Kb9+FISznkdw==
X-Received: by 2002:ac2:4f0a:0:b0:48a:839c:2fe with SMTP id k10-20020ac24f0a000000b0048a839c02femr6823774lfr.40.1658940111411;
        Wed, 27 Jul 2022 09:41:51 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id z19-20020a056512371300b0048a73a75908sm784409lfr.302.2022.07.27.09.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 09:41:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Schocher <hs@denx.de>, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mtd: microchip,mchp48l640: use spi-peripheral-props.yaml
Date:   Wed, 27 Jul 2022 18:41:48 +0200
Message-Id: <20220727164148.385476-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Instead of listing directly properties typical for SPI peripherals,
reference the spi-peripheral-props.yaml schema.  This allows using all
properties typical for SPI-connected devices, even these which device
bindings author did not tried yet.

Remove the spi-* properties which now come via spi-peripheral-props.yaml
schema, except for the cases when device schema adds some constraints
like maximum frequency.

While changing additionalProperties->unevaluatedProperties, put it in
typical place, just before example DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Technically, this depends on [1] merged to SPI tree, if we want to
preserve existing behavior of not allowing SPI CPHA and CPOL in each of
schemas in this patch.

If this patch comes independently via different tree, the SPI CPHA and
CPOL will be allowed for brief period of time, before [1] is merged.
This will not have negative impact, just DT schema checks will be
loosened for that period.

[1] https://lore.kernel.org/all/20220722191539.90641-2-krzysztof.kozlowski@linaro.org/
---
 .../devicetree/bindings/mtd/microchip,mchp48l640.yaml      | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
index 2cdf6bf3dc4a..8cc2a7ceb5fb 100644
--- a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
+++ b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
@@ -22,13 +22,14 @@ properties:
   reg:
     maxItems: 1
 
-  spi-max-frequency: true
-
 required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1

