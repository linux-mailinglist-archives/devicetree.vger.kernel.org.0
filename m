Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03F6270F75C
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 15:11:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbjEXNLF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 09:11:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235935AbjEXNK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 09:10:58 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5142DE44
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:35 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-19ecaeaed38so21918fac.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684933834; x=1687525834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zr0soab68gxeDgA4gOvBbbhgnDO2bWdpTNiV8OsbIMo=;
        b=E41CaFj/JMiw8LOeo1hvZI/rmxN7/0V3lk0gBm8A3VKF4HG8Zu/ViN33MX3W/BznKc
         dDwyly1GIfyPQCZUxgXaRbRbOKb4A23AYF7AZ56zjEc0gh40uiVxssY3KdxUeyYSWpTN
         VJwp63l+O1uRWE0wpGJebxkCv6OU0eto+vuSjjhOlrYFkBGtdq+bSxmmQ5BGx2axpQX7
         v31CTyGVYZbk1KvMiejmIy2Vos7AYIIUDw4Sbad2CdSqk9jynr/gPbwqYCxxSg2/JdEr
         hs8bl0rUmu1IXG4Av3hAYzsUgxmP3XFiutL5l0DmmtI85XBVEVouT3VNskabmo8uExwB
         6+kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684933834; x=1687525834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zr0soab68gxeDgA4gOvBbbhgnDO2bWdpTNiV8OsbIMo=;
        b=Vm+2Sga8Xx0eerfmCuaHJl2ES4E82riblWIHufZlYWyKrjmGCSUy8PsQyG02oO/IGB
         BKQcOXlauJJMUh01LVipaKPyiDLigF4OV650nww+bu4l4Xkvz90qAisEqVyHE1ef2WJL
         +3CE6ZbG+Ib0/P7j43k5ljLsRUHsF6Gvqi+jkZx8MJrMCrYn0Du0IcvEukoCtrMUzxvM
         JrDrEjevLiWI2KExfMr0A84Z3Jv+vL+RCYILq9tCCPpf7ADg3J+PGzSVtbpHVykEQ+9e
         lGvP9x46cX5ceB3ib7dnzMd2hNdtBHzwVCpUQbD6z8At2sErpQtxnk0EmvqyWy+gFoC6
         BZsQ==
X-Gm-Message-State: AC+VfDyI+gWu7lo37cWq/d74RETYpa60+gGZq6Ed1hx/c/C081do3S6O
        XQIGwfKe6hFdmknpFURymbfLIi3aMTQ=
X-Google-Smtp-Source: ACHHUZ7X/RtQOvfx/IHDd/RKVcYyl6gIc4ECTYbXdsYhO78IlFCgPDOnv3ipcxrL5Dt26MRgM/eN3g==
X-Received: by 2002:a05:6871:14e:b0:192:7328:d with SMTP id z14-20020a056871014e00b001927328000dmr10481245oab.4.1684933834490;
        Wed, 24 May 2023 06:10:34 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:14ab:657f:c6e7:b30b])
        by smtp.gmail.com with ESMTPSA id v21-20020a05683011d500b006ab1830d483sm3234546otq.77.2023.05.24.06.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 06:10:34 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/4] ARM: dts: imx7d-smegw01: Remove unneeded #address-cells/#size-cells
Date:   Wed, 24 May 2023 10:10:05 -0300
Message-Id: <20230524131008.161193-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Remove the unneeded #address-cells/#size-cells from sram@0 to fix
the following 'make CHECK_DTBS=y imx7d-smegw01.dtb' warning:

sram@0: Unevaluated properties are not allowed ('#address-cells', '#size-cells' were unexpected)
From schema: Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-smegw01.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-smegw01.dts b/arch/arm/boot/dts/imx7d-smegw01.dts
index c0f00f5db11e..76bbc2ab126e 100644
--- a/arch/arm/boot/dts/imx7d-smegw01.dts
+++ b/arch/arm/boot/dts/imx7d-smegw01.dts
@@ -97,8 +97,6 @@ &ecspi1 {
 	sram@0 {
 		compatible = "microchip,48l640";
 		reg = <0>;
-		#address-cells = <1>;
-		#size-cells = <1>;
 		spi-max-frequency = <16000000>;
 	};
 };
-- 
2.34.1

