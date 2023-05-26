Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 296BE711BCD
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234304AbjEZA4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234348AbjEZA4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:06 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A1701A4
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:05 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-19ebec56cf6so48301fac.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062564; x=1687654564;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zEHnwNj05WRWeFWWB2Ztix00r0pJYXZnW/M3ld1E1zs=;
        b=Gh4DU6f6wvehgR3q2mHtST5YsdWjxxqKbF3nh6Uin1p/CQnJQvF98oD8Hx+V64BWCK
         8VP5MApHDCrIw4oAQTBjs33sVblvIlcW5d5ImrOprTfbCEDag9Mjm4Wcm7/Cchm4DkYR
         NrzfGSaN7poowNvH43nkH5BDXMMBpb5rNTOehhU2J/+Av9urXquawsG+MLAXBwSWPJm3
         zvfkju0riyRQ5PR196K7/c6YfAALsxomVcvdF2aC1fKBE8YhtCk7+WZsu7LOLTklBjBu
         McEKLxhBtfD9xbquGkMbszX8bMdaHrsTmu9UvwOSkKuLqA3imQisIQiNU2sLT0AL3AdT
         GPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062564; x=1687654564;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zEHnwNj05WRWeFWWB2Ztix00r0pJYXZnW/M3ld1E1zs=;
        b=lWim6fpg8saDcG+NxGPKjti7vZhHDFJznWKcJy1iIw7tDgysihjT9p8747v9vyfRI2
         jafxNmcKv0PDv9XsgBLYcUKvdmwjdsps4o5/pGPRdwpBrTWRnDgBISYGDSV6bevDBeWf
         ypg2CAUy6taGRUd4p4SmWNLD6yEiUjp57+VZXigFCb8HlEtQff/7Na8YGu6B23yHP4+p
         r9V2GpHiSUxbvKcTQxWy6UqnW9l3kSmfQJ0L/HsfZnvENtmwEfLzR5wn/vCoIiZOcm1k
         0b/M/m6YhNOOUsMi+4yVmHMKC4y4oP4wb7V4t+24ISbu9CsrCg1i1bnt1G4Cq6fgqj2A
         0/wg==
X-Gm-Message-State: AC+VfDz1GJD7822/1yLeqCOxLWiVmJIGUF7FEtosz/jIoqffKO16cA7Y
        bd48jhLzK6nmehe5fclG7nk=
X-Google-Smtp-Source: ACHHUZ4u3If8TOGClLUO14KlnPBJglxd8bkhp5I++9EDpyHJc79atqModInTHNJSDQ5nvCmgxW6+Xg==
X-Received: by 2002:a05:6871:68c:b0:19a:16d2:4a9b with SMTP id l12-20020a056871068c00b0019a16d24a9bmr90857oao.5.1685062564541;
        Thu, 25 May 2023 17:56:04 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:04 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 08/15] ARM: dts: imx6qdl-tx6: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:22 -0300
Message-Id: <20230526005529.150418-8-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-tx6.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-tx6.dtsi b/arch/arm/boot/dts/imx6qdl-tx6.dtsi
index a197bac95cba..e2fe337f7d9e 100644
--- a/arch/arm/boot/dts/imx6qdl-tx6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-tx6.dtsi
@@ -216,7 +216,7 @@ codec_dai: simple-audio-card,codec {
 &audmux {
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -228,7 +228,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

