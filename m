Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 303BD7686E2
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 19:50:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjG3RuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 13:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbjG3RuC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 13:50:02 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09B31707
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:50:00 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99bc9e3cbf1so792806266b.0
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690739399; x=1691344199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qguXrs4rxGcbuCHOHcNCgApPSjMlmrZgyKpyWeupbD8=;
        b=zws/0VbtnpKpRF1lvbRBleJfUuecSrRxeRow4xtk/RAhRpnPpBiQgL0ZB2jkQGa3ME
         q/uI/ieAfQtCb/qRnKjGNHMuBTDsI1qBqjq4icaRGik4u7SnjlqfTpGFSZpYLqHw4Opq
         NCYDuuEtQMcqls9LzdQpfabnaDMhZ7vyaYlRUy9npcR2Q1xL+0teS19kW8Ii7q5Q+PUV
         qdboRTgqROPfnTE/usxiSYsr6nHF7n7Y14SxbojW4+lUMWZLuNccXVtwv7HTnzOEHUpP
         DRY9Vm64cIzYTDKsCG+Nka6uFReGNCL02AMNNsmXL6f9AbBSL/d6OAaDYKoBwg0TXhCW
         7TuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690739399; x=1691344199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qguXrs4rxGcbuCHOHcNCgApPSjMlmrZgyKpyWeupbD8=;
        b=Dh0SQ+zC7lQHtq12/nlC/m41Stm1lsdvoY/uFhidD9NW2vGq0/Flm3SKGNTwZarc4m
         lJBG5fftawrChOf88EvrKm8LJ2YiyXtl8xjiU+LuqgjSRyiJp5CEYhv166JAKjMQ293F
         6mQaagIxAsaZ/oaQcxoim44dWql2haQRomjyx0WZ4m0iwQreRJRFSuBjpqMoK6N6Phg5
         6hQMVbb7gpvom932F9e4ASGvTkJdh0CApPai8OYJRCup8Vh67h7kQojlWe+Ha64giPu6
         XEJpBmHPsExxoOm6UOv/iPpNLI+HwMwIkQR2y40B2agnZ3vILIfCDto6dFS/65NpJRte
         p98Q==
X-Gm-Message-State: ABy/qLZ9x5LAeIzp1cNaplZbmkqpPELlMuWe1ETTabXrCtLyiLE0Il/+
        9dOyuKBno+dlHajLvdQaQsWdAA==
X-Google-Smtp-Source: APBJJlGYOCXtkkxRgf9ch6URmqY64GItVtmscencCEMZ8NP0GlBTZlArsL8PgKSu5kTgES1Dkua/UA==
X-Received: by 2002:a17:907:961c:b0:99b:af5a:fc2c with SMTP id gb28-20020a170907961c00b0099baf5afc2cmr6119843ejc.26.1690739399106;
        Sun, 30 Jul 2023 10:49:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id f19-20020a170906495300b00992c4103cb5sm4913537ejt.129.2023.07.30.10.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 10:49:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/4] ARM: dts: st: stm32mp157c-emstamp: correct regulator-active-discharge
Date:   Sun, 30 Jul 2023 19:49:52 +0200
Message-Id: <20230730174954.5293-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230730174954.5293-1-krzysztof.kozlowski@linaro.org>
References: <20230730174954.5293-1-krzysztof.kozlowski@linaro.org>
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

The "regulator-active-discharge" property is uint32, not boolean:

  stm32mp157c-emsbc-argon.dtb: stpmic@33: regulators:pwr_sw1:regulator-active-discharge: True is not of type 'array'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None
---
 arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi b/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi
index f8e9980ed3d4..009209ca673b 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi
@@ -320,7 +320,7 @@ bst_out: boost {
 			vbus_otg: pwr_sw1 {
 				regulator-name = "vbus_otg";
 				interrupts = <IT_OCP_OTG 0>;
-				regulator-active-discharge;
+				regulator-active-discharge = <1>;
 			};
 
 			vbus_usbh: pwr_sw2 {
-- 
2.34.1

