Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CAFB799A10
	for <lists+devicetree@lfdr.de>; Sat,  9 Sep 2023 18:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231482AbjIIQpC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Sep 2023 12:45:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbjIIQpC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Sep 2023 12:45:02 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65DB6CD9
        for <devicetree@vger.kernel.org>; Sat,  9 Sep 2023 09:44:28 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1a2dd615ddcso939431fac.0
        for <devicetree@vger.kernel.org>; Sat, 09 Sep 2023 09:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694277867; x=1694882667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wFSV/8h7SRbVo8swyd/EANGt95lWe3c3z2Gfpe2dh70=;
        b=LNUFoxG/foOHo+WDCFuCYjx/hqF7W+JsH7JZHfi8WZyfhMtSuhfiF2iwLH5jbB8dlF
         bEy35Qzs84RQNqm1ZXKjMniyJyqyhiv87t2bkSqazSPveE0kWjfj3k8oPsaU8mDpDmtr
         ckxHM6uhbJRk8SIIjn0MjSzWL1GpWms8df13QrsVticlI2WCWYyKW0fJ0YjjrwztDc7u
         0n8nqW7sm0s8hr2qao+yOim4e/N17Vo9AuN6RwBRv9HTnu0RFpgoBykKpPB98XnTyl5D
         4eHTpRCLlWktH2YrPPNjO0zqJKD5Aq+akWFTx1vaEdG64LGuYF1lc98KRCJkgE4EFZWj
         +qUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694277867; x=1694882667;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wFSV/8h7SRbVo8swyd/EANGt95lWe3c3z2Gfpe2dh70=;
        b=HATNqEodcvKeyeMkcRLg0xxRWWtq73YQZJxykJ1CLeQMdIMi7xlT76q35frXF15Jwl
         BrZeoMUzFfJfKOgbX18eSps2SFSrxm/FtkYZAnfB4NtdJGnRG6c5a4EVhtjWhBzVIr59
         50203JYRezHWcDExt0g9tE/5xqx8MLpXKVNgoaha0YEF+lRvI5BjhRvjezgoIDWoEJQ+
         mwXnM1cf2vpAgFiw/6rCFRcFUcZSEocBV/aGtKYbYLHjJO+OA7hKkyWM7Tx3K4CibHPC
         qr5l2zDwTJyDYjWkupww2wS/XVPuG3zPm1nADJVrTlSI9tRWMHOqpir/E+gvBQ0iHJhb
         MD6g==
X-Gm-Message-State: AOJu0Ywe+ifHOZM1l0ftVXcGChTececZntMFCBkKqlvgXTE4Qzxka953
        Z/iYHH/t7Hm9WNtzilqfTYw=
X-Google-Smtp-Source: AGHT+IGbB5z7a8iwlhxVZUgQ/nJd75pJ6+rdkivlXaTawQ4eJkzvkfzJ6S7cYjAP6IEAhS99cUIRcw==
X-Received: by 2002:a4a:2a54:0:b0:576:8e04:2875 with SMTP id x20-20020a4a2a54000000b005768e042875mr818181oox.0.1694277867596;
        Sat, 09 Sep 2023 09:44:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3785:ad26:cd88:709])
        by smtp.gmail.com with ESMTPSA id y4-20020a4ad644000000b00573a2a5d5a2sm1598311oos.4.2023.09.09.09.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Sep 2023 09:44:27 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8dxl-ss-adma: Fix i2c compatible entries
Date:   Sat,  9 Sep 2023 13:44:03 -0300
Message-Id: <20230909164403.1084032-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Per i2c-imx-lpi2c.yaml, the imx8dxl lpi2c compatible should be:

compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";

Change it accordingly to fix the following schema warning:

imx8dxl-evk.dtb: i2c@5a800000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx8dxl-lpi2c', 'fsl,imx8qxp-lpi2c', 'fsl,imx7ulp-lpi2c'] is too long
	'fsl,imx8dxl-lpi2c' is not one of ['fsl,imx7ulp-lpi2c']
	'fsl,imx7ulp-lpi2c' was expected
	from schema $id: http://devicetree.org/schemas/i2c/i2c-imx-lpi2c.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
index e2eeddf38aa3..a9095964ac91 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
@@ -16,22 +16,22 @@ &adc0 {
 };
 
 &i2c0 {
-	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";
 	interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
 };
 
 &i2c1 {
-	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";
 	interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 };
 
 &i2c2 {
-	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";
 	interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
 };
 
 &i2c3 {
-	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";
 	interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
 };
 
-- 
2.34.1

