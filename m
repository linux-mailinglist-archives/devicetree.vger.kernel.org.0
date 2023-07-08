Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36A6774BE9D
	for <lists+devicetree@lfdr.de>; Sat,  8 Jul 2023 19:37:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbjGHRh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jul 2023 13:37:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHRh2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jul 2023 13:37:28 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1E1FE4C
        for <devicetree@vger.kernel.org>; Sat,  8 Jul 2023 10:37:23 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b702319893so46479461fa.3
        for <devicetree@vger.kernel.org>; Sat, 08 Jul 2023 10:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688837842; x=1691429842;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wIrx8Hh4+qsy5gD7/8sxxizp8ZgMjlQzNcy2cLogGsw=;
        b=tlo0jnyjw1HFN+Q7mdU36TusuH+aZvScVaxyl60NdmYt7X9+piYMlVfm7ZsX0ERNKT
         srl+TZUXOojeJcg82cZQHra2kco3+4c+Mye7czL78lWxKVRkU+dAxKmdEkTIHYOSqGEw
         xyGyMFDYasD2915Thk481AYlkvLgZF4ybj4iWTPC/Y7Jyr0pbcn5sDipDDE+1jso8UdR
         nqUhgEZMaAOgO9iv4X4xXxiToxHr1m/pSY79YfcW7X5vp27XuyCW1wx6uO2NEdUrxxsb
         KCsKYTLzj1OZfPz+cWZqll+ygpOenof+DFreUthR5HsMI2D45RKzhQC2OqOzyZw4pOOU
         XONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688837842; x=1691429842;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wIrx8Hh4+qsy5gD7/8sxxizp8ZgMjlQzNcy2cLogGsw=;
        b=Wplu3KdKXXQc0W4HgKl0czbtQjBdtwejNB5NAvXXEeHUqnYBbuO/9Q31OJL/Q7pLD5
         hdsX0OPQRHv/Kk5Kfh2JtDtZFBIRbDRcp7sYq+ify9UmMEHwqylSVtAgX+qZ+V4m34no
         ZpqCDhjNM6N5EofbCpYEeLsZp1AURjv44ZdWMljl8AGB+FvppVVuuyl8EmxJzB+trpmV
         Fb2Pmgvq7HQFuhLQ642WNHuWuUsImNQYK4bPIInflmaKFp2y5W/z5Fj+/YxyXQtvrI9A
         XOsliEYZIFrtweYOPtDeIVoMty8KfJ4de/lqcDCDAzleCvpaJSZQT6CaDQfJLjMGT9iW
         WiYg==
X-Gm-Message-State: ABy/qLa8vfLuCDNygxX9YiITondjFrjJAoCSleZOQ1OsJyvFTV4mG6Z/
        ijcuTims33Z6rTlQCZ6D99/scQ==
X-Google-Smtp-Source: APBJJlHEiHVjnLwDN4pfhQ+lKSf7HN+2dehTkk8GPn/j5ADoBQIzFiHnHOQIALPJG+IHY0hlC7aNDQ==
X-Received: by 2002:a05:6512:2344:b0:4fb:7675:1c16 with SMTP id p4-20020a056512234400b004fb76751c16mr6522159lfu.49.1688837841940;
        Sat, 08 Jul 2023 10:37:21 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id g25-20020a19ee19000000b004f3afa1767dsm1072917lfb.197.2023.07.08.10.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jul 2023 10:37:21 -0700 (PDT)
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
Subject: [PATCH] ARM: dts: nxp/imx: limit sk-imx53 supported frequencies
Date:   Sat,  8 Jul 2023 20:37:20 +0300
Message-Id: <20230708173720.3548414-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SK-IMX53 board bearing i.MX536 CPU is not stable when running at 1.2
GHz. Disable that frequency.

Note, officially i.MX536 is rated up to 800 MHz, but running it at 1 GHz
proved to be stable.

Fixes: 0b8576d8440a ("ARM: dts: imx: Add support for SK-iMX53 board")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts b/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
index 6ea103a49697..ccb993ddc445 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
@@ -77,6 +77,17 @@ &can1 {
 	status = "okay";
 };
 
+&cpu0 {
+	/* CPU rated to 800 MHz, not the default 1.2GHz. Keep 1.0 GHz as it seem stable too. */
+	operating-points = <
+		/* kHz   uV */
+		166666  850000
+		400000  900000
+		800000  1050000
+		1000000 1200000
+	>;
+};
+
 &ecspi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi1>;
-- 
2.39.2

