Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A140E711BCE
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232561AbjEZA4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234435AbjEZA4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:08 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0613F194
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:08 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-397f4260599so5870b6e.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062567; x=1687654567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3d9Hy9j38VyakHR7tQTx6ZRjO27gIUprt1DMKK5yQmY=;
        b=XMpGjYFL+N7+R4eMSAMhpQCrOihXnpB1i5MDsebyFuw/8OiS311QeA5Cwvv16FRoIq
         dzRiMkZHzbva/PYgmiGwdYPdyBN+lw/los1A29Eb6qTPZ+DldnnLB8t32hzZei7z+rFU
         yefqaLrJkcbCvhaTYawgqTkPqwx57pdM/yFvzlx5l5tSNNfd/Qzd6lCXykwb9ET4zIYQ
         88FlBdheUe1RcCaGQbBNrOjG9EvejypUL0fZADVZnawS3lW4r86qsRY4IPWgbjT9tqpF
         N1muskP9ecJgK6K8VaH4030SRe7H2W5mfGihzPwfmC7Ofsa733sC3Kd1ax+9m2UcRHBp
         APRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062567; x=1687654567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3d9Hy9j38VyakHR7tQTx6ZRjO27gIUprt1DMKK5yQmY=;
        b=T4Ennp646sUtCFM4cfKvhxs6TzT8xspezlYrC9DSNv+MTRaDFVOqCE4cVyE4PaZHWC
         5FSJDzwh8nVl8pN7kJeT4BIgFqYyA7Y68mdamGYhJlr8pwUweO2Y7Nsol1ka7rL4G0ho
         fIKWLRNBa5iPE1YoEz24ff01HgSFKoP0meMjYEWPCqPF0gjVaIApj9Y/SRcsjTxQj1UB
         D/IVJB1vEL4jlF9sY2Pt1FEcm/pb8QeVzSjbOj81oCrt8EvSeXpLXiqsem6NhX6Eaebn
         W4ToccStI8J5LEDRipWCguFsr8WH7xWfA2SworOMFggNIdr6idvsKyglOVBLIk7vGtbV
         X2vQ==
X-Gm-Message-State: AC+VfDyD4rDaaXkrf0RTh4PxD0Oj9Cx9Umh5vOaC92p3YQs6jexdiqzB
        oQwgVrk71i/AsSIF3MReNEM=
X-Google-Smtp-Source: ACHHUZ5GlSGnKO74dZTFp/vL6gxF1OSvfm93naX9FoOW8s4Qw5faqipecGKL1W3Tybn7EdPCtwbzKQ==
X-Received: by 2002:a05:6830:22d3:b0:6af:801d:e59 with SMTP id q19-20020a05683022d300b006af801d0e59mr3355110otc.2.1685062567626;
        Thu, 25 May 2023 17:56:07 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:07 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 09/15] ARM: dts: imx6dl-qmx6: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:23 -0300
Message-Id: <20230526005529.150418-9-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6dl-qmx6.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl-qmx6.dtsi b/arch/arm/boot/dts/imx6dl-qmx6.dtsi
index 150d69858255..05fd8ff4da1e 100644
--- a/arch/arm/boot/dts/imx6dl-qmx6.dtsi
+++ b/arch/arm/boot/dts/imx6dl-qmx6.dtsi
@@ -48,7 +48,7 @@ &audmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_audmux>;
 
-	audmux_ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -60,7 +60,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX51_AUDMUX_PORT6)
 		>;
 	};
 
-	audmux_aud6 {
+	mux-aud6 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT6>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

