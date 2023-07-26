Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDD1B762CA0
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 09:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232452AbjGZHHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 03:07:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232396AbjGZHGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 03:06:24 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64F182D6A
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:04:02 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bcd6c0282so2476366b.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690355040; x=1690959840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBZ9nkefs+Guv5W4o1fCyA4lt8kjyOA2HRoasDNFuK8=;
        b=jhhnyEITh5AaGNVeGXy/ByEcFQXL+Sjx6SGJ8azKZODSlFR3+UVgKmfZ68dGz3cN5e
         0Cub31uI8AeH7fMUsCHZoRzaPYz/+kpw95/s4FCUtL524aA2dmy7fdOU1Ve4PAb4t2W1
         Ek4kaHRaDh6ZcrzS9m5+QjNVANz8z1MBxx3S83IKzNNh1boYh5s/z0SS3AvqwPBXzNa/
         RmUT/X9cCZWRbkZ909fxrLVkSQ5lxyXgjHxeUqCPUEgrkSBYmCmv4/9hJ+i7IL5Ljbod
         rWS3hE4aufZ+8fQNhnisFBnkUBfSPgkY3/mpTYLUNDzkqbwmWrTUAAoUwYp3p/cOWeQP
         73cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690355040; x=1690959840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KBZ9nkefs+Guv5W4o1fCyA4lt8kjyOA2HRoasDNFuK8=;
        b=M3ScuPaxXGpx0CXJ+XkP8HWEuNX2d0iZ+rA5ThcDxCoE6eINS8kzLVOyrLPMgpEBCP
         Ct9uBxAY5vygHge1SWzBdgS4+nF6V/hTbt1hrDgjpy63GhBGw3DvTRtHG1Pz8FovIobH
         Q0TF5R24i6g9co7F4Pnv8h3h6smVrisgBb9bafffk0zkNhXT9bcqdGfVfRbTLEONZwfy
         49bFpoHGXyv5qRsL/p2RjPjtpcYyePO1flhIguPMJuPmixtvne+t70uDODq13zQT/0a9
         fS+Qa7vqngFEMZGo+f7kkO6swiIDqCijmGBZIknMfefVOGxp0Gb2ArZpa+geXN+JzeHh
         6sUg==
X-Gm-Message-State: ABy/qLacS+4tF41EbjIjw84zLFBApF0W6bS46pM3gc3OIi0rVDqviUY9
        2u7WyBqZI7pt3wrkx8EICDfAkg==
X-Google-Smtp-Source: APBJJlGn3l9hRuVm9wnbpKyx/+KTgfdlF7yVYlWpOmc5m8Up6hQRd6J8D6rVsblNvjqg6B4+wve9sg==
X-Received: by 2002:a17:906:73c8:b0:997:e7d9:50f7 with SMTP id n8-20020a17090673c800b00997e7d950f7mr967939ejl.66.1690355040781;
        Wed, 26 Jul 2023 00:04:00 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ks27-20020a170906f85b00b0097404f4a124sm9212372ejb.2.2023.07.26.00.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 00:04:00 -0700 (PDT)
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
Subject: [PATCH 4/4] AMR: dts: st: stih407: drop max-duty-cycle
Date:   Wed, 26 Jul 2023 09:03:53 +0200
Message-Id: <20230726070353.103989-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726070353.103989-1-krzysztof.kozlowski@linaro.org>
References: <20230726070353.103989-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"max-duty-cycle" property was removed in the commit f747a1fe7848
("regulator: pwm-regulator: Remove obsoleted property"):

  stih418-b2199.dtb: pwm-regulator: Unevaluated properties are not allowed ('max-duty-cycle' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/st/stih407-family.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stih407-family.dtsi b/arch/arm/boot/dts/st/stih407-family.dtsi
index 3f58383a7b59..29302e74aa1d 100644
--- a/arch/arm/boot/dts/st/stih407-family.dtsi
+++ b/arch/arm/boot/dts/st/stih407-family.dtsi
@@ -111,7 +111,6 @@ pwm_regulator: pwm-regulator {
 		regulator-min-microvolt = <784000>;
 		regulator-max-microvolt = <1299000>;
 		regulator-always-on;
-		max-duty-cycle = <255>;
 		status = "okay";
 	};
 
-- 
2.34.1

