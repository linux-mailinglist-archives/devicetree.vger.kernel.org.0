Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BEF3711BC6
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:55:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbjEZAzv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:55:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231495AbjEZAzu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:55:50 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79016194
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:47 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-394b06b6326so4929b6e.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062547; x=1687654547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tICO0rJjDaeJp76pIkMUQTEC45od1KzR4AQm9q8+nrU=;
        b=YZY7wWOdrTBLF53x6KbpRl5t3tGsdXPip6JiFdGH03iv28aTraDk/bruIgRnHCzLPn
         g7VG/Nk1HeG4S8ubnoEE5XzvCNu8FKIbNWZC1KHnVgV7sl9JcNzkFYa2XCY9rQaliHvi
         8n2UtuIi+xytbmPvG08/eSUvhLt87nSCIWPlFo7+Vx3qSpV6ou5d+ZfZci1FMuoY+fAu
         7gXMvb//hQsjEPu6cMvxhN0O6Io2UCDw34RXOYcVEmNe/VwuMR1hzEnVm7po7XoBVKY0
         ynSPvbYFHWLdYG20z5SrlulTURY79rzX5yVpePv3cWoHK5S8Mg07vRKsQaVmTq4s6sU1
         45uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062547; x=1687654547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tICO0rJjDaeJp76pIkMUQTEC45od1KzR4AQm9q8+nrU=;
        b=mHG+ziti6wxZ5m6a9V/Y19FsuBpWSEXyWRxwMcgm4UnJxKdv+6zpbr426ykjRdPBvi
         UFUIeO05rs1V40VT09xAKqEonzSWM2FL6qQ6VVCrzlkMEdUISFcap/C8Qg/6kYOoSAIm
         uI9fqM/oDWPcMUCYZrH/o+rGq4h8GCEzeBLCp1f3+fsBzX0AOFs+tUSpk8vZAVrKXnbY
         gs2CO/juoeQ4kJVCIcZhwARYVoheVKAtLbX0XtMCSlHFwVD6r+qwPORrjymdmi8OPUXx
         WG0hpB1fYCh2XDoNiGccauFyQ0t/hG3TfgFvZcAPiALn/X+QsZ/rrQzGn3GhDNpqeYyT
         EEhQ==
X-Gm-Message-State: AC+VfDxCVSiOK+sR1sN3rtE7d/UDCd+rIMC6Rfe8Nn2u6VSFEijbxkWw
        w1cKZZq09rh3RrtX9WAIcaDcTYiPRio=
X-Google-Smtp-Source: ACHHUZ6fb6b3v3KZmMjr0HXkzCbg7EZDDjkMTyGVMGS/F32Eb05wl9IgiuOsjPSH6UnmpCl4rEpKVA==
X-Received: by 2002:a05:6830:22d3:b0:6af:801d:e59 with SMTP id q19-20020a05683022d300b006af801d0e59mr3354899otc.2.1685062546784;
        Thu, 25 May 2023 17:55:46 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:55:46 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 02/15] ARM: dts: imx6qdl-hummingboard: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:16 -0300
Message-Id: <20230526005529.150418-2-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-hummingboard.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi b/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi
index 2ffb21dd89f2..bfade7149080 100644
--- a/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi
@@ -147,7 +147,7 @@ sound-spdif {
 &audmux {
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -159,7 +159,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

