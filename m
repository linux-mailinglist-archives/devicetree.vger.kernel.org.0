Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6302745003
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:52:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbjGBSwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:52:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbjGBSwf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:52:35 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09572E55
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:52:16 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-991ef0b464cso668623666b.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323912; x=1690915912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pjUhmIygZYCOJx+IwpLSnrki+UfJw1mDf0lmWeJU89A=;
        b=gmv1i2l+mYvvmaWWGYNt2avTJNj+pgsrePsGkcQdjgIUtkGEV/2x+oiNLaKyopKq/U
         C8EZOTNUjlrkZHd6cNxtCi37flkHwRsSNaJ74W4B5gIHQSLOmlEfLDjRguEy/ZWWbtFP
         oIAWkIeF5fTUtjNX54WydJXxHPTwOHEyuvljOMbu+Hy3IL9PkKbq4A6AH3U7b1NMOliY
         V5JvxPwHdRgZEs6sIx/ypbKoTEz24iJWJUV9GBUdNfnyJPBB865kBc62QAf71qTonSR3
         By88JtOZws+9+Oqx3GM3DyrLN5ja9JzbK7dk+mnOoOPH9gvfSYeH6anS0817HpicxBpc
         qFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323912; x=1690915912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pjUhmIygZYCOJx+IwpLSnrki+UfJw1mDf0lmWeJU89A=;
        b=Jmynplt4DV0VDeSsXMGeIX93LkVGK6YbowM4tidv9lQ7ky85zVNqq0Ft4LJtaQ/5qx
         bXe3wqv+GEv6ZpfBNxBlNRf3rDymQX5/TcahbcRgUcuFjKcRbAUbB2CIJuWvcHxHN4iR
         9/xC9QAoA5gOp+8cX3VegTVPqBYv4/lDrQW/4dEhHXaibkER9rbsxSPrJ8eudgWgIB6n
         aXMzETrHWVkq/+eNiYwnw3dtbwvCLgfCIVoDgQ1JaXMJi9xdlzyTdNh2gWPupRhXfZDD
         RKuorcoBIGvFNozcNNyFFLWAZDapOz2RAlFcerHiXxnakKlp4haDsbjN4Kb9bHOXN/b0
         Tp6g==
X-Gm-Message-State: ABy/qLYsl7aa1/1VhGBx4DOpGnWW0Qe4gHhzyW1l6WEoBN3FL5R7hy7V
        BxtcQ2KJ+ftUhEn3w8iYQErjOQ==
X-Google-Smtp-Source: APBJJlEurvh0U8jJrclQQkLZn8m9WskM/7t8NbKSTa/wnB6jpEp8qi/InD6WRqemTDY395abmZcPnQ==
X-Received: by 2002:a17:906:830b:b0:988:15f4:fdba with SMTP id j11-20020a170906830b00b0098815f4fdbamr7173169ejx.14.1688323912287;
        Sun, 02 Jul 2023 11:51:52 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id z18-20020a1709067e5200b0096f7500502csm10857893ejr.199.2023.07.02.11.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:51:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: imx8mm: split PCIe ranges
Date:   Sun,  2 Jul 2023 20:51:49 +0200
Message-Id: <20230702185149.44212-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185149.44212-1-krzysztof.kozlowski@linaro.org>
References: <20230702185149.44212-1-krzysztof.kozlowski@linaro.org>
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

Two entries are expected for PCIe ranges.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index d6b36f04f3dc..a831fd8e3706 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1345,8 +1345,8 @@ pcie0: pcie@33800000 {
 			#size-cells = <2>;
 			device_type = "pci";
 			bus-range = <0x00 0xff>;
-			ranges =  <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000 /* downstream I/O 64KB */
-				   0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
+			ranges = <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000>, /* downstream I/O 64KB */
+				 <0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
 			num-lanes = <1>;
 			num-viewport = <4>;
 			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

