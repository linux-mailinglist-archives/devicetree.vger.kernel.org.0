Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3054B711BCB
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233106AbjEZA4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232528AbjEZA4D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:03 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 708B61A2
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:02 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-557c27145d4so26958eaf.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062561; x=1687654561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ia4/S0F68REO8cAUYDaGSmNabqF8ob/+yYblTrpHB8=;
        b=StXO8+Mu+QJU3tzHPcPu+AYQcKk+0qHkN/McELKCkxsbsjH73h6jqTmHKQyuG7ZQhY
         lIWhPF3wLan83U4ridMyTjHkkh5ll0L+dsusp4C3B6a+9oI7ZPbm6vfUa3QjC5YkHDtE
         FlXZhxgPj0uSh1wjB8VRteMlzdUa04HVhQMGxmPK2Fe+fN2/B1C3zGn9EFZzXA87Wv7Q
         1sauu2br5XDPGSKfgpsrBVha94L9b6ZmEz5iqBsZRaGId4Ba9iLMpBcEthoqSkdDawi9
         4Ac+W/0TBPu2FIsJMpnFHqU5m5PhHltb6cmwru0rhllfYTjRlJNq8ue0zP14LwbSBWtu
         fHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062561; x=1687654561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ia4/S0F68REO8cAUYDaGSmNabqF8ob/+yYblTrpHB8=;
        b=B3uDATKedJyRCBFdariRx3enrzjcC6B5Oip+FsHV2Iecjz/EBUp0z5mQFcYOuFP6lL
         PI6KRTH7FaLx06A3WCzipdjnSvXakNyVKMhrn1nEcu5dmjUEWD82o/DLXnIrZx6qvoWF
         WWLsnwZzJ6TEMl8OpMw0qdJTjsEPaoh7enmdj2sFzpOZAE5G3/gFTWcw2eXun1Wbx4DD
         U5fKghAV11z3D3UnItUqaBo0s0xnltsFqpWMqJ/m7oNpcAxU/K1kMFZel0v3Q7D1n6Q3
         giXEGehZPr5lwPt/JkQjQTX+jwMBHsOcBNyoiLm1CQ7mOmKgDi9k16zhhggE/LUyP+fz
         sb4w==
X-Gm-Message-State: AC+VfDwevgUEymwsY0ap2ns+f2OLR9A7IHJMcWFznoKCwtEGbgzlr1C1
        Gr9enyMgmWpd7j8clKqyPY4=
X-Google-Smtp-Source: ACHHUZ6GxF9cnezDio/HsFGfmn4fDsiRjuVxfZNLNAPH6F1y3/n5+rQ/EAGJrdQ5Zk92tlvAWqce2Q==
X-Received: by 2002:a4a:e0d7:0:b0:54f:e817:6827 with SMTP id e23-20020a4ae0d7000000b0054fe8176827mr218595oot.1.1685062561544;
        Thu, 25 May 2023 17:56:01 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:01 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 07/15] ARM: dts: imx6qdl-phytec-pbab01: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:21 -0300
Message-Id: <20230526005529.150418-7-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
index 51d28e275aa6..a41e47c06ef4 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
@@ -75,7 +75,7 @@ dailink_master: simple-audio-card,codec {
 &audmux {
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -87,7 +87,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

