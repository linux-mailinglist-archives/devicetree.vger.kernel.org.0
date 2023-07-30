Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6F237686E5
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 19:50:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbjG3RuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 13:50:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbjG3RuF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 13:50:05 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 688A91708
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:50:04 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bf3f59905so360136566b.3
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690739403; x=1691344203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yKdWXJFxJOmvyguMabmhrddMvFGn8oXWx7/tkmVRvZo=;
        b=CPmpGeWzZs3ZL/cGyJyLCAYINXnwa8buI2DaqarinlaeP0atyea+Gg52V6zg2EbzFr
         XyLyaILCl/HRUQKAA0+a28N8kgavE/I/q7xwtvTD9eWnjHTHCiOkto61goP5DEyH1CKE
         zBgpLdPI7nbWs9ngARyiMSS7SVMZqok6Q3Jak0VQgJSxzd7y44rlvLcH3UDC+PiyjmgB
         7f4QHoi1TAO4jnvYo/Q+J79xffCyiEBWxY97M47hFYHO9qZibnIJt7+UnmA5pq3RgXbe
         JU88sehUMYk4MJzGHHAkhz8vQhjvVE82fLEYCUE/s4yeYkTkriY9Uh0ogNVRU+ZWobuE
         9AYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690739403; x=1691344203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yKdWXJFxJOmvyguMabmhrddMvFGn8oXWx7/tkmVRvZo=;
        b=XzLhEiDwl1BAIVxDt4WqerVqmuYqaUQFbdKLZDmC3VRHLrhYVz3w4WuV7RGshsRdcV
         2bdkYbQhfL/Bp+D2RaLoIMbZ6XbOS6dRzwdVjlfRoWFqkxGU7EBcroNnp0UceHaW036S
         3E1ziq3uII9PvGNYBVgl7PGao4YTPPeGW6rTmAuGyVYCX1aSJYrDlECAZu8vzu7dZ1x+
         AEiqmTkWhMcBoofMJSeB0RrKVGmqjDLQQVePWBHtiN4qP7jConcb61mo0YIs1MYfcjuf
         Oo5waXFFEppjU3fjjOCBzvqtEBTSEAfAw2a8piDCOsCaGTJxAqciODn+yy6MtbOGBAOl
         aIlg==
X-Gm-Message-State: ABy/qLbNPANfUIDy03xHRStPaKkQhGOmNtpC3YFgAxIV0w1mxx0+hE10
        IX+LxWDxor5tH1mmwIdyF0vpA3w+w1U16HbcgXE=
X-Google-Smtp-Source: APBJJlGC3sCLh5foHeUM1Fe+v1Io+TMzDHc0uyIKAFYSSMPfT+pMaUaoyiVW/Ba3seMgfmcKBGAthw==
X-Received: by 2002:a17:907:7798:b0:96b:e93:3aa8 with SMTP id ky24-20020a170907779800b0096b0e933aa8mr6102323ejc.21.1690739402898;
        Sun, 30 Jul 2023 10:50:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id f19-20020a170906495300b00992c4103cb5sm4913537ejt.129.2023.07.30.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 10:50:02 -0700 (PDT)
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
Subject: [PATCH v2 4/4] ARM: dts: st: stih407: drop max-duty-cycle
Date:   Sun, 30 Jul 2023 19:49:54 +0200
Message-Id: <20230730174954.5293-4-krzysztof.kozlowski@linaro.org>
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

"max-duty-cycle" property was removed in the commit f747a1fe7848
("regulator: pwm-regulator: Remove obsoleted property"):

  stih418-b2199.dtb: pwm-regulator: Unevaluated properties are not allowed ('max-duty-cycle' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Correct subject prefix: AMR->ARM
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

