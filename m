Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16D4574C837
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 22:30:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbjGIUaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 16:30:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbjGIUaW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 16:30:22 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2804103
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 13:30:21 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b6afc1ceffso61025061fa.0
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 13:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688934620; x=1691526620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UtFY5gTAaY9q5bjZEYwOpDzLkWnCyMxHf/Gn+VJEzFI=;
        b=xS1HANqzCPIXDXDduNF7SsCuujTygdYMYsMG+iO3XD/lfuwXnyCO75pMqwUjNSFS3N
         DWF1+65sLsp6QyvtaUqWpiY2BqbomqemXi3wO3/L0iO1f7GErIoPSLrA3pgD6oxg4C6a
         39pmMHUb+41uRSFIhJIgj8xSGpkBdE2fYug9FSH4OZE6x/P6SJOeigXzIQAJZbMorNzl
         lJmVU9W4DevtKUnAIoLZGNMHwz10h80DEVDdsX8LEpPEd9A8KFQTdB421Pi3lLaLRw6y
         f4VB/AIeUZKXVEEr/BFlMJLkBYEdvIyvwGTxaaLHdqvwp1mAX6ybrDq7zbKJgpVuIMo3
         tdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688934620; x=1691526620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UtFY5gTAaY9q5bjZEYwOpDzLkWnCyMxHf/Gn+VJEzFI=;
        b=aYmaXP6DXEpibQ+HSL7t35EtRNDcB+2h1VjQsqQjvzT7SRQFKh4u85/4XHIHUaIjQ6
         2I0+wqpzILpoI5CgHYh05pNuM4GRvnF4bsaAe5x9GZ+0cemGpYhpSZPZ6I2EXBZftuWO
         TrM6wsxnHsjPf0Q0fSZWrJlg9Wg8hDNFCWDBmoXmJWlkpIGureQOuf9eGTl7GRAzow6I
         Cna18kURrashb3PqS0k46+Piggv1hAhmX7KfiXYb7Zorl2Z5L4TcTzvsXmnOrjBEbeyk
         dFe4q1m6tXwgSyxcQaeFqUjVBt+L+AvW/rKhRc+W72fnrwwQBsVvFy2kBc2J+3foM7Ay
         QxcQ==
X-Gm-Message-State: ABy/qLbQs/74TUpxzz2raeP4/0reOxrfrx3txzdCJwTyP4xbFcnArkA1
        DbPV7ZqAmKBUwIGrJ0hdPDfuvg==
X-Google-Smtp-Source: APBJJlFg3wm3Bv3OLi2E+bqd6Iuf/vw0/jhW4LRLvDbwVehnrssv1sFum2uMEnI7Ji7r9FIhLgppCg==
X-Received: by 2002:a2e:86d3:0:b0:2b6:efce:f787 with SMTP id n19-20020a2e86d3000000b002b6efcef787mr5804139ljj.51.1688934619981;
        Sun, 09 Jul 2023 13:30:19 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id c11-20020a2e9d8b000000b002b6d86b08fesm1721679ljj.18.2023.07.09.13.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jul 2023 13:30:19 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] ARM: dts: nxp/imx: limit sk-imx53 supported frequencies
Date:   Sun,  9 Jul 2023 23:30:19 +0300
Message-Id: <20230709203019.291823-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SK-IMX53 board, bearing i.MX536A CPU, is not stable when running at
1.2 GHz (default iMX53 maximum). The SoC is only rated up to 800 MHz.
Disable 1.2 GHz and 1 GHz frequencies.

Fixes: 0b8576d8440a ("ARM: dts: imx: Add support for SK-iMX53 board")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

Changes since v1:
- After additional consideration, also disable the 1 GHz frequency. The
  datasheets are clear the the SoC is not required to support this
  frequency (Fabio).

---
 arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts b/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
index 6ea103a49697..3d9f14f32efd 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
@@ -77,6 +77,16 @@ &can1 {
 	status = "okay";
 };
 
+&cpu0 {
+	/* CPU rated to 800 MHz, not the default 1.2GHz. */
+	operating-points = <
+		/* kHz   uV */
+		166666  850000
+		400000  900000
+		800000  1050000
+	>;
+};
+
 &ecspi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi1>;
-- 
2.39.2

