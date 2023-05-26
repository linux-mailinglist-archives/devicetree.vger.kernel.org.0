Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27EF2711BC4
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:55:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbjEZAzq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:55:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbjEZAzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:55:46 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D0D194
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:44 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6af8ccb491cso68896a34.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062544; x=1687654544;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=URB2hI1SjHd1MIJn74ZJAoOcq5iKLuqZpVHQmIWa7kk=;
        b=ro2UElC1Uu3yVmOF7EoxxSqR7VL12inLwfiJvy2g0TH9xLd1kIUPmY6EkuDrNL0WHQ
         h4wIrnwTD2cis7V1N4gMaMLA5t+EOvrG2vXn3OMUAAwW0oChyq5N2VMRTDmVL0EOhUE5
         7L9P+OnDvW+23LhUnNJ4b6k9xoePr8+WC4l2csDPWE7AKTG2a6OAbuPeSze8Vqs+Cb7T
         yHAnpAqBCZTE6s6CIk/MpOUMHeQsWoHp7EzL7c/Ru3x8ZP1RKb8gPxHrCu3jnDlB1FyU
         oJhCnnmzAWH99NXfBiV9YCPaALZLu1Y3HLBm7cwBLTjx37U+xLRnegrwufrD2oNMyNaT
         1rNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062544; x=1687654544;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=URB2hI1SjHd1MIJn74ZJAoOcq5iKLuqZpVHQmIWa7kk=;
        b=h6niXbcvqnmjd6Z86/XAQHg/R2gNmpxQT3YQj9kOD9BhmS3VsfbRCrrFd6s4g5x/mO
         NhKwQe6lDm98VsqOBXLyPJX1ypqims6r/y33lOlj6uG7PJ6+X6itP67xdj2CAwRx7k5F
         pkpUqXROUHZzJRU1iuxv88YsojxRxqLecb2fAgRLPOjuqgfHwbtWm+IBpzLM6Uj8ryNq
         L8DmPo4UTPBIJjsp+Gk2JEnpI3vlWD0GL/0dfr0Wr7XGjdM5/WPseVpgPIzAgfcdru3z
         f+y44MlzBS9jgrLl2QSaaAWR5Tk6tLvBNIJ2x9GqcCOK9ksnNRhIxKak31Cso94m1DP+
         jYjw==
X-Gm-Message-State: AC+VfDzTTlCiNW1EjFZv8nl5/8f4JgjYWewq5bpy/C/GeBzYJOVyvxnR
        PnK16Wt2smbWjIw9GPKl7+8=
X-Google-Smtp-Source: ACHHUZ53kkwPtes0qMfbPizKHhb/otx1Drly6CrrDFmTcMuQaL4B6NoO/2tOz1lUFL5csKaeEfo9UQ==
X-Received: by 2002:a05:6830:270e:b0:6af:4800:6414 with SMTP id j14-20020a056830270e00b006af48006414mr872281otu.3.1685062543731;
        Thu, 25 May 2023 17:55:43 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:55:42 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 01/15] ARM: dts: imx6qdl-gw54xx: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:15 -0300
Message-Id: <20230526005529.150418-1-festevam@gmail.com>
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

According to Documentation/devicetree/bindings/sound/imx-audmux.yaml,
there must be a "mux-" prefix in the audmux port nodes.

Add the "mux-" prefix to avoid devicetree schema warnings.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
index 4e20cb97058e..f50a16bec67c 100644
--- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
@@ -187,7 +187,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>; /* AUD4<->sgtl5000 */
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -199,7 +199,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	aud5 {
+	mux-aud5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

