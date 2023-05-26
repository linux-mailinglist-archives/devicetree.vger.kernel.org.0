Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03E06711BD4
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231990AbjEZA4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbjEZA4Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:24 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B61019A
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:23 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6af9f389fc6so46641a34.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062582; x=1687654582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5OBuOXpxL7Jeq4MJld+rLMuLkGckMKJ81XFBNr0Jgs=;
        b=UwrtyhSvIesiPuX+CcBrMfo9qrXQMS3m15csZxvvSLYvr5RrqiUnnMzbhUQFyZ19Wa
         YJ/4FDP76hmy3ITANPehuB59EZ4uwemJwh0TgjUn6NXYEJuqMRHkiLS6rjDBACfXrb77
         5mYADXaimnZie8w1QAKDAqdkdCFWSd6C+rrTii2BaUxJRFLmxCLOAV4UI4WuS6y268Q7
         hKL73K5G+/EReUNa7Uehl72TFZbOxJNY7K/ItAbm/8iFmPBFO1bCeu1fNaMgirRueoGc
         2yJRTBWi+fBK0S2ieUPHazRmgenz7q9eeObajNTDDSxLpmgePwm2kkuJP8x+mPCidhMK
         Orcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062582; x=1687654582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l5OBuOXpxL7Jeq4MJld+rLMuLkGckMKJ81XFBNr0Jgs=;
        b=APb4yaUA5zCB+JgiidwgWvCuD0wpgttP2iPtrzEDHTw6VH+3ZSVLyfWjp0ScZlxaiv
         zFIIzrfenguwKDzbrP7Hb3gAfVfbBAFQYpEs5IknPdU3T/lavXbU+XPvCuOVhrdkkTIL
         oW0skh5zsvoP8bUoiu4TCItw3/CqWRpuYfuH0mGUWL6Z19WpmiDBCFdzciDr6zw3YyLZ
         KxxpDMYo4eMnDJK7E2enLWzvI9PD5ZZ7KH0Gvjz2djno2LVIGTtWb2HZ+j7KnjtM3j8x
         Csm9t/YXR5WaATKxgZUgt5Vx5VBI7B9PNQKSWaTuzTJ/+Wx8eu+F8AF32mvDJcIgrSsO
         vtpw==
X-Gm-Message-State: AC+VfDz3+7vuIdsQruE9v4nbQLGHR67ULsk5zbIdi5iv6wnKb6y7Zt9m
        y+BcPPyfA/8er1MGEOBmnUU=
X-Google-Smtp-Source: ACHHUZ4q7yN42ASiLSZdLbOsbzaEe+qETCMPHR0gnR+KQdNcKa0L/P5x/3oRJRojsFOTdTHXhA5usA==
X-Received: by 2002:a05:6830:a94:b0:6aa:ea92:6c40 with SMTP id n20-20020a0568300a9400b006aaea926c40mr3184011otu.0.1685062582725;
        Thu, 25 May 2023 17:56:22 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:22 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 14/15] ARM: dts: imx6qdl-var-dart: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:28 -0300
Message-Id: <20230526005529.150418-14-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-var-dart.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-var-dart.dtsi b/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
index c41cac502bac..200559d7158d 100644
--- a/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
@@ -39,7 +39,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -51,7 +51,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

