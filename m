Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 918BE711BD2
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232713AbjEZA4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234501AbjEZA4S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:18 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 593F519A
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:17 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-394b06b6326so4988b6e.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062577; x=1687654577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mzBhiddR23alLLsKhGt4jvABFbCN8a07XcVNY4YIPTw=;
        b=ric5IepjipgQNiG4Z4WJv0O1rMmCLOANqreycqArN30j/j30ouivmmNaNgWSoIWG36
         CYU9NOqtoJJGXiURUh9LbODuxUBgWv4RMLPG7q2CUqj8KyhOOXRgWmHXnmezHUVQZy+R
         RtuwBSV4wS3bc59J5VElDFWKie9wZsinCFe5LytaWWPBbFzv4lcwO2PBODlZuHiSXT9B
         xWwLCOHnf53YcBN8CFPV4/VC8ZW1R5/iKbGplr9tMsjZ2omVshBwsOPojsn9H7na0GLa
         gLTuvrhgBNvUpsRzLpeObP2Vg0mfO3L2rDZPfGAbsgCbZeG9LF41wtMyMoXVSQklddoH
         PmKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062577; x=1687654577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mzBhiddR23alLLsKhGt4jvABFbCN8a07XcVNY4YIPTw=;
        b=fJ5ZjlFl9jKXdstR6qQgcc41T/0pG2ThYGVlVYk4MGRNspqUlAoFFy1L6Td8UBDs97
         YI6ZFmrjR5l8KE1tkiqXfU9mOWiQFIdsRS/a0iQ2if3O7IKBAKBX2H8Ur+lIdCZR7JRN
         nuymva7Y89fqJu1D7oG4htzQOukXJSBxkvyp0oO5YOpBKVGyYDw4nKDNqT4EdbmGmgJn
         XU32aL/8bPq0veP02z7Mx8f2L3imA48bMBTNxHpLUNzMfAtuiiACylXq9sNx/wQmayOO
         Mri8PjKs+FrR9g8+Obo7vBuNdohAw+OgupwT3OLtyARSb5WHC/szovBLagCn5xAKmQh2
         6B5w==
X-Gm-Message-State: AC+VfDyH9KNtaNkJ+GfbDh9PhknL1A2jrjTnvoYeZHsxPaNpee9hZ8VW
        KTctIzBnR5veTDFAbT56X+A=
X-Google-Smtp-Source: ACHHUZ4W+FZG6sBw8x7ymsh3s9NI8BoB3SFk4msta2vL/+lCGTZUOQ2EC1FYr3v6cBLATRwMj0P3KQ==
X-Received: by 2002:a05:6830:22d3:b0:6af:801d:e59 with SMTP id q19-20020a05683022d300b006af801d0e59mr3355236otc.2.1685062576985;
        Thu, 25 May 2023 17:56:16 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:16 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 12/15] ARM: dts: imx6q-cm-fx6: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:26 -0300
Message-Id: <20230526005529.150418-12-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6q-cm-fx6.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-cm-fx6.dts b/arch/arm/boot/dts/imx6q-cm-fx6.dts
index 1ad41c944b4b..ffb3b8eeae5d 100644
--- a/arch/arm/boot/dts/imx6q-cm-fx6.dts
+++ b/arch/arm/boot/dts/imx6q-cm-fx6.dts
@@ -141,7 +141,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_RCLKDIR |
@@ -152,7 +152,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(3)
 		>;
 	};
 
-	audmux4 {
+	mux-audmux4 {
 		fsl,audmux-port = <3>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
-- 
2.34.1

