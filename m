Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD06711BC9
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234388AbjEZAz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232561AbjEZAz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:55:57 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A719194
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:56 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-19a336df959so73891fac.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062556; x=1687654556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZUKk8vtJHRdCUWhEvXEUI9X+wPzIe3sW0tfiJBoo1H8=;
        b=RZI9o3xqKaUysrF301/CgqczN+KnyUlyBVBeVliH1yBIAd6ZlC+tAT/ojVkdmcLyNE
         WAoYb0QNFgzaM/j3UYZiqeUk4RP5Kha2FuImpX7OCAISWiZhJnwMbFjb0nTAywpUTkbE
         t7ePwDDY1y+95i6ymiYnAMngcVH1KD2mD4WqW9GCxe+GKaMd26LVd9SmQHaaA9JWXXf2
         YM26a579FmIqTonUZlgLvujcxhmnbWdm24378R0fK7ZXvPVBsQWM8jYrsiWtmPg2z70f
         akEcGXu6vxLXW7A36tg9qWup0fj+xo/9rCOUEuCzgEeH5E+wKrIvfcUXB/fBRBJ7Yc8U
         GmNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062556; x=1687654556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZUKk8vtJHRdCUWhEvXEUI9X+wPzIe3sW0tfiJBoo1H8=;
        b=BdtZebAppNDptL+18DWT8Q8Q/3E8/+mWbNPYWItIRmEDpq/XWj7ScDAGyfHnhiR/XJ
         yPFfza3uIzes6OvFTEQ54UYZcxocDbesPL7DWTBcHVOGGVf0dzq/PRmWFXB/T2NUTg+L
         bhlfaP2XtgKld5Wk+Cfs39ZgOytK7ya32Rt0HHPzbVOC52aTfqU0Fp9dV18wK3VMKwYC
         mHFRs5koSJl/xzh6IyD3PhoKcpRZPKcm0dTDtsOWD3EJxbjXn/z6shsRKXoFQBbXTTTx
         UteGtIGccHhtfKBEmjWSqL63/Uj8iYlxd+PT8M6KA5BALN1+AoEuwUZxGnsM0H1Fs7mM
         IKQw==
X-Gm-Message-State: AC+VfDxbYeD8B5HqFzo+ekOE5FfvGLoHo78+gySdd1QJ3bed3/Cn4/mD
        eljZQr69qfsheApgFVgVl5A=
X-Google-Smtp-Source: ACHHUZ4119Pf9EldtbCAdRYHzOPFNoqyZN/pXtCt6IjfIjeKykzTGln6Ze9ldguT+rvCUi9Nwn9VQQ==
X-Received: by 2002:a05:6830:33bb:b0:6aa:eec1:5372 with SMTP id dw27-20020a05683033bb00b006aaeec15372mr582986otb.1.1685062555749;
        Thu, 25 May 2023 17:55:55 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:55:55 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 05/15] ARM: dts: imx6qdl-icore: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:19 -0300
Message-Id: <20230526005529.150418-5-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230526005529.150418-1-festevam@gmail.com>
References: <20230526005529.150418-1-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-icore.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore.dtsi b/arch/arm/boot/dts/imx6qdl-icore.dtsi
index 23c318d9636f..efe11524b885 100644
--- a/arch/arm/boot/dts/imx6qdl-icore.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore.dtsi
@@ -109,7 +109,7 @@ &audmux {
 	status = "okay";
 
 
-	audmux_ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -121,7 +121,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX51_AUDMUX_PORT4)
 		>;
 	};
 
-	audmux_aud4 {
+	mux-aud4 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

