Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBD5D648E6C
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 12:33:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbiLJLdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 06:33:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbiLJLdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 06:33:49 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 453DE1FCE9
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:33:48 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id c1so10999407lfi.7
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p0lueEQV8bs/kWVCH3tW3cQ/+828DDvHkZS20zWBKkg=;
        b=XiFKTRMJcoCBme3OwFouiPgQFj1gcilzzvXTE2QsjRQFlKr+B6eQBzFjMpz4z8Bl1X
         D+A861aGAd9Rdxn6h6dgct3xdIvmYogMCPEkpJ31IVL9EgBMdVUjWsQ0YNSuNmLZEEvr
         yC4haFPjjo/Le7uZj2jnhzh7zV/4ObOJ+yQtICOraIMGzVIDpx1kD6GUXoi+/3iwsbt5
         spbAiReRXa4gRwybgEuYevNFheiBUAJgM4f3V5OXwcwnSfTzLSga/AaPoPgraRzZoRhY
         lc4Q43FuSrfCMozkvVkxHt/kWUZbPl2/Z7ApHIsib39W2ltRK921Rdaj5ufcPrHbJtN9
         hj3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p0lueEQV8bs/kWVCH3tW3cQ/+828DDvHkZS20zWBKkg=;
        b=LUplTeng+Mh0qPMvdF7gIwydUBCQEnS0N+1NkhFyrgvcLPcfMpq5bnQLEIfEXu1Z1T
         tologMtjse4UN+4I5Usfbzrl4N+kw+l/01PdWjNd7K6XjQtnncZjrX/BwlYy8T/kWz+D
         nNUsaHRcCjyDOnaB/L3HavSgnDyBlIYeWP5O3YbgZEl0Ozo3AcZizF4EBsh+L8+b4RZE
         3fm6PTX1l+mDD57P2fZb9w51CD45mYsH2hT/dW1sWRvvCNsoDVEVXJuZL5v4+sjItR8K
         IpOU7y7A+WrbuID6mPHOfWrhb7C3jt6jZCaywpioUsIorG7+B3KqKOmGKuJAaUkx/KOU
         H3SA==
X-Gm-Message-State: ANoB5pmtl6FePRwdFYaTh94imu7Ngagtm/JtWdU8F1bm5ACLJaguL7sc
        owaLtQ+28FMNfbGOdkeMxGSUWQ==
X-Google-Smtp-Source: AA0mqf46q/ie95zjF6yLjSM5spNdYweGqVtRQ8OpQQWRaxrTO9l+rMk6UgCs0ErZI2A0vUsG8WkMQA==
X-Received: by 2002:a05:6512:34c6:b0:4b5:6569:ab0 with SMTP id w6-20020a05651234c600b004b565690ab0mr3855943lfr.62.1670672026588;
        Sat, 10 Dec 2022 03:33:46 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t1-20020ac24c01000000b004b501497b6fsm691532lfq.148.2022.12.10.03.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Dec 2022 03:33:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: imx8dxl: drop 0x from unit address
Date:   Sat, 10 Dec 2022 12:33:45 +0100
Message-Id: <20221210113345.63912-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

By coding style, unit address should not start with 0x.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
index 6b416fb760d5..ca195e6d8f37 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
@@ -67,7 +67,7 @@ usbmisc2: usbmisc@5b0e0200 {
 		reg = <0x5b0e0200 0x200>;
 	};
 
-	usbphy2: usbphy@0x5b110000 {
+	usbphy2: usbphy@5b110000 {
 		compatible = "fsl,imx8dxl-usbphy", "fsl,imx7ulp-usbphy";
 		reg = <0x5b110000 0x1000>;
 		clocks = <&usb2_2_lpcg IMX_LPCG_CLK_7>;
-- 
2.34.1

