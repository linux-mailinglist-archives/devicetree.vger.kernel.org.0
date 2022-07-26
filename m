Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFE0758127B
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 13:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238840AbiGZL66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 07:58:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238707AbiGZL66 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 07:58:58 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D93D832EFA
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:58:56 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id t17so10037427lfk.0
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jA+mqudhBBZi2Q/yV+jzZ+rW7CDDtET6U/Ixmvt8ur4=;
        b=OEx9hi9DiBotTSc9NDiSVFVjtV0XPO9DE0KkWuIzknPN8KIpFfYTsymDloa+FvuuTH
         TXSbBxtrEW/6REw64WBb2iw+t6apwsb+MieujLHGnA9ZzlqvUwntVzWL6kNwRbQO80Yw
         08fef0leKuTPSdXaK1B0nq73TSDNBR/tn+7W8697ANyrpOhagpYmq3xSeyHU5SMbEnla
         K246TeNm2EOy/a1Odvi81WAsagK17pW7pCAn41tBdvMVxO06qv7P3X2q0jhJrniRFwvi
         PbKeYwvTFv4ktw+N3NMpTlQrQDn1UDVlM5T5A30/wngtk/SH4L7wb/w+40Vnb/zG/Vh5
         TnFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jA+mqudhBBZi2Q/yV+jzZ+rW7CDDtET6U/Ixmvt8ur4=;
        b=wXuZQbQS39b0x0lbO0arVOMLlfKXsZbtFUinInwpvHMg4waUAzpwmPgMCPt12PpEjz
         t4uFYS3r8rSMhfurDQgBNiVlGcXtaT3Dw9Q1x64ozmVVjH3h9HB/rd0XX4HP416YXexG
         g5gjDW7J68+RQU3/0cKJNx1DfX9ZxCxzRzJS7tmye1C+izTYV0Qv/kkOrLrMrV/331bt
         WtaoKe+HraViI5obnvzhFk79AwQJvD61swGUwWkqCt8coCHplbINAUG7dX+0XDplLXKa
         roY7ve+jDfjADOgMIhhMhY9AkXA1F/ugCu1D/GMOu6/R6p00cqdOli+S+SjNEcgPG5ms
         OTcw==
X-Gm-Message-State: AJIora+aQKxy1YqLCU57+tce64Gpdbp/p4JCnlU2Cims529qh5IWh7VP
        wTzIPTe++EgZAQB8b0x7Rd7cjw==
X-Google-Smtp-Source: AGRyM1stGsVW9B5+RaHQ2eIH6Xm0MbVHcEZFesSN28iMGL0Xm4GTDsV2XCnVrqIn/tbfBX6mLgoEMQ==
X-Received: by 2002:a05:6512:32c2:b0:48a:9822:ca2c with SMTP id f2-20020a05651232c200b0048a9822ca2cmr2514915lfg.117.1658836735012;
        Tue, 26 Jul 2022 04:58:55 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id u5-20020a05651220c500b0048a9526c7d9sm773000lfr.257.2022.07.26.04.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 04:58:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Saenz Julienne <nsaenz@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] dt-bindings: soc: bcm: use absolute path to other schema
Date:   Tue, 26 Jul 2022 13:58:39 +0200
Message-Id: <20220726115841.101249-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220726115841.101249-1-krzysztof.kozlowski@linaro.org>
References: <20220726115841.101249-1-krzysztof.kozlowski@linaro.org>
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

Absolute path to other DT schema is preferred over relative one.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index a6e8018084c6..e28ef198a801 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -14,7 +14,7 @@ maintainers:
   - Nicolas Saenz Julienne <nsaenz@kernel.org>
 
 allOf:
-  - $ref: ../../watchdog/watchdog.yaml#
+  - $ref: /schemas/watchdog/watchdog.yaml#
 
 properties:
   compatible:
-- 
2.34.1

