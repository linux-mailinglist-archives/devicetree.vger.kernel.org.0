Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A533D582EF2
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 19:19:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232882AbiG0RTy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 13:19:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241641AbiG0RSg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 13:18:36 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B08B79EDF
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:43:52 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id v21so1853563ljh.3
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pGvBGO7The5vMYhAFkbpIL+Mx8zg6qvgHGnml6XuW/Q=;
        b=kT8v/97SO5qLemWpEOWgpsCzVFRBTJYQVgSNWxMeLA16Y2z+rJrCOKi2p4POvRXPbP
         jjZJvOZubNUSNIu1yOPJNnupfVf2+J6ACs7Aol56110eu1sX8VAGfaNJg9wrDM5w/Pt6
         LNfPyGeA42f6Omj/+ctTdqrqHoVpXo2BpltaGDUA7ROclI22vXnhkISrlVPqsfBxgMHI
         yu2HMuNWmFp+DmZG+6shqoEW3hPhHfPGfyNq93wS3wy15d7vDJrTYisKeaySnQkKb6hW
         YLV87o4hDYRKoLUJIOmnmdOxlPAIDrqwj+dwuGw4IlP0QbO2XQdG55iXeYgxg/dMy5vx
         AgAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pGvBGO7The5vMYhAFkbpIL+Mx8zg6qvgHGnml6XuW/Q=;
        b=VanU3kTA8h2dEUO9TYRjX1p9L+jCSalND6ISYwuRIul4A2g+4RpyPlMKzgf0FAogmA
         chbLCiGqZN7nlG7v1sR+m6e1TDayIOQOXijb/U0ICEejtcNodNAttNb+9dx0YnLhuLzM
         3dvzdynC5/6GbjY71iJdD+xyKH+KXVkta++8mHPfula92AYzb+DghtjevUcOPqyUiTjJ
         sR3nc3ibgW2DSH1g5JjRpBmA5TorKiHN/CUZhcOaV5QtboMgJGEg3yBYxXnSvAq7fmnc
         0YvIgGg+5EtTOdbmwH4NqR4zHsYwZCUPXX79KdzEYDL63OUTQsh4YtUlQAhCdxY8o6Db
         tx3Q==
X-Gm-Message-State: AJIora+WHZFBpaM+m05/8QPW5mdYiDo2CgQxg7ctswp6YZn59YvpqeOc
        tDUVREZUjgByoJlwDrKkhMaQ6Q==
X-Google-Smtp-Source: AGRyM1sUZd0ZGxF9ub3vjabtve4gBxpZIV8y/DKP9xt3YNCnlcWviSeIKQsMlcKe4GnCRnhJQQPrRg==
X-Received: by 2002:a2e:8095:0:b0:25d:f573:db4c with SMTP id i21-20020a2e8095000000b0025df573db4cmr7587113ljg.62.1658940230242;
        Wed, 27 Jul 2022 09:43:50 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id i22-20020a056512341600b0048137a6486bsm3865662lfr.228.2022.07.27.09.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 09:43:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Conor Dooley <conor.dooley@microchip.com>,
        Ivan Bornyakov <i.bornyakov@metrotek.ru>,
        Moritz Fischer <mdf@kernel.org>, Wu Hao <hao.wu@intel.com>,
        Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: fpga: microchip,mpf-spi-fpga-mgr: use spi-peripheral-props.yaml
Date:   Wed, 27 Jul 2022 18:43:47 +0200
Message-Id: <20220727164347.386398-1-krzysztof.kozlowski@linaro.org>
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
 .../bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml          | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml b/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
index aee45cb15592..527532f039ce 100644
--- a/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
+++ b/Documentation/devicetree/bindings/fpga/microchip,mpf-spi-fpga-mgr.yaml
@@ -22,13 +22,14 @@ properties:
     description: SPI chip select
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

