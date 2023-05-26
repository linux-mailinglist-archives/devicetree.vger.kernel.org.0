Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0EE711BC7
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbjEZAzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:55:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjEZAzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:55:53 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E92F198
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:50 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-397f4260599so5842b6e.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062549; x=1687654549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rfv4jEpoFWZrFuIWXuhoLqu3ACe79xziaIquvWa9Oxc=;
        b=CvaVJXsk/lFvFsx4+7ggFh5fozeWi8cA1M7FSKzktQWU/MSHgaiz4ZUi9NkG8CW+oA
         KEMQPWmVBWyKe8Le7Q5RtcqVPol3d2iMVyMfwbixHhOhyIbSVWk2Z9+0MyEUyrmIfg+z
         i8xt+h8IaRDHkZmYMVQHF5vnFRCQzJyS9b/lRwxCB/1VrnpqmHBdzsxmw7LcinPKRc9L
         O7oIc5bBoXPedjfMjY7OU0gN7o5SQmr6wRkk9dmbVYZE9d7ia1YPybinN1ff4Fe42V/X
         OsPXE5o2HnufSeW1tLvXx4we3ZZzPgBR5mPDWrMMzdqmbywHnREnq9kGVk0Cdjdze5a6
         +uvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062549; x=1687654549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rfv4jEpoFWZrFuIWXuhoLqu3ACe79xziaIquvWa9Oxc=;
        b=Yjs+fjWJCtfS1bdS/4Vvr/hYO44ozpZMFmtaXfCrudKO4P0+0iLK3ilh1+q5u22dWc
         TPdXict/wtRf9pJpcRN4uw6gM3+V99RQXQDeg74k6gdKKO9jb2JqCaCCSU49iTvahcLV
         o3XD6SGbMba9KzpFnQNG+x7meOoF8750W7ztFop0tyTmNA2AFhKJJHdJcsWAliq04Qz2
         wA5uHvyuoo4xUCLfRInP4K8Rks+SWGLaeydTk1spBY+16/H3E7WoNuO6H8pEmAG6gCkJ
         7x4nVpJsPqj9LoYCsTukzEOdfOcVn9/kQYv6ke0NDuoWeOTdvBej4TPctWBSGYiGEp5v
         Xujw==
X-Gm-Message-State: AC+VfDwRKSHwZ68wsWJ9IVnh29Gq6tpgFQIVb/EnJaYtOP0WKGfp1kFb
        8bGbMaGL+cBXcXhCUnRermM=
X-Google-Smtp-Source: ACHHUZ687cd/pvI18HwVnY05b1jme5sulZzuDPqMCkGW3ZCrwYlxYByBf9uKF//uYppTfWmtNJccFg==
X-Received: by 2002:a05:6830:6612:b0:6a6:2563:2dcb with SMTP id cp18-20020a056830661200b006a625632dcbmr4201206otb.3.1685062549681;
        Thu, 25 May 2023 17:55:49 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:55:49 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 03/15] ARM: dts: imx6qdl-gw551x: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:17 -0300
Message-Id: <20230526005529.150418-3-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
index 0fa4b8eeddee..29960d1cf6a0 100644
--- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
@@ -171,7 +171,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>; /* AUD5<->tda1997x */
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -183,7 +183,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	aud5 {
+	mux-aud5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

