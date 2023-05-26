Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55592711BCA
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbjEZA4D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232561AbjEZA4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:00 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FAA7194
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:59 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6af8a21556fso67304a34.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062558; x=1687654558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXBO2N9svcNcLWKkfj+MbW/nvmFiOfCCqGGm4ZKQji0=;
        b=UPhLbvzU/a1Ux+jIfeH/4HflPnPxDk3d+bHwH3CGo8JeyHCKUtkIUawvfCApmseSNc
         Ii8vD4y95aJB9eCUMP+E+YlSG7c29x6dQcRF2/ME+6XIc/kgRQBm180D9o2XWjshtvNr
         qt00WQTU7DZqNQEPom94AOmJUz9UrdSjWgvfi+GLY3RiIQqUYpc8/gp/WKQYha6XoVyu
         6dTxMUWwNL1OAmESqgy/SdzhIAv8sgjX+rgPg7ztt2J9v9ITznrro6JT27yegVbYJ4pJ
         EzQ0rZpOcsobWYtZz2h9EOKUuYnOWPcAMdzsKH2v0p5Dklv4qeQ+/7SxJb801AGMyYgP
         oNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062558; x=1687654558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IXBO2N9svcNcLWKkfj+MbW/nvmFiOfCCqGGm4ZKQji0=;
        b=lkOik2pt+SukdZbEBechS8d9BdLwcL+Tn4QA9+gDON62hwuqs6/CSQ0UvEtsOQTAv5
         6u1TMIwlJvVrCahJg88zwKROJ+J9u+3AAOqUAOdiAlz9tc0m9/69zsy/wxGQ+p3ULcfP
         QzP1q3y+vRCnPwhiuYS4vbpFItDk8+fMGopl8XwrN9zLZAhtU2tyWAQ0wUgN+TfNQJhu
         hdtLDN9u5RSF+KWEaNAIyYESAEDQzRUgZ7nTypBVhVxReEkvkchrYl91YzivFjdU2H3n
         ba3EcroOep/Bk0mJJDYy/Fzkjd28RJWpWuEXx+5W3b5xDcDX8pVl0UuYfiUqQUahBak/
         oMGA==
X-Gm-Message-State: AC+VfDwlf7Z325LzlJiXBWn8J24BFLpnYsDj/fUAxH+NHhb0OtB/gKLF
        VNFjjCcHKTCc1aUYnOja2mI=
X-Google-Smtp-Source: ACHHUZ5Sp0uTNsHwYIFxQ8H8rsyyeyT5XsvKAxUSpkh1rSOTevv70omXSacw5GOyysXMuZq9YIAyeQ==
X-Received: by 2002:a05:6830:461f:b0:6b0:6e9a:b5ce with SMTP id ba31-20020a056830461f00b006b06e9ab5cemr551712otb.2.1685062558639;
        Thu, 25 May 2023 17:55:58 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:55:58 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 06/15] ARM: dts: imx6qdl-mba6: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:20 -0300
Message-Id: <20230526005529.150418-6-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-mba6.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 7b7e6c2ad190..b497303013c8 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -129,7 +129,7 @@ sound {
 &audmux {
 	status = "okay";
 
-	ssi0 {
+	mux-ssi0 {
 		fsl,audmux-port = <MX31_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -141,7 +141,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX31_AUDMUX_PORT3_SSI_PINS_3)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <MX31_AUDMUX_PORT3_SSI_PINS_3>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

