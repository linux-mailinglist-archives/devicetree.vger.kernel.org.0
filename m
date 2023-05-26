Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D856A711BD5
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbjEZA42 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbjEZA41 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:27 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E416199
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:26 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-19a5fab868bso73557fac.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062585; x=1687654585;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uzyy2Y7kUiv8FIAcpqQf1ncDJkGxxNFj+LjkP7Ztwsc=;
        b=qOXEej9HK4jC3lGDk0SAeDGENpJaFB3KX2r6myLSZGzsMU9rqzxVpI25NPAPmQ+1mE
         EF2rKhaRmqVM+eWRHtYqDUj/QdPPuk6m9G6yyhPX/iua/RKay2ilElRTFnFbenzdmq+c
         ZTIdG46gmSStOlMuAj/zbGKOS2yvS7Cpzqsz/GEqkFcJ7tfL//U1kJtKx4XnfR49RYcz
         vOyXbQtrmr2WHqh81xsoDnPN5CxLSf5YFP2YYF4CzmsfFYc9ygi62HU4RuO+p1dZrl9G
         +lrEhsqQ/JV2Spm5XnqJl5Q7zqn0H2tQgVvApZz24xoVDliDWcyRcpvx5pm39o+YikqV
         fxUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062585; x=1687654585;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uzyy2Y7kUiv8FIAcpqQf1ncDJkGxxNFj+LjkP7Ztwsc=;
        b=OgoRR+zawz9ef1KaXV/I6vlPVJdgV6+b0vtglG56apUQ05+xPY+HnyuzyDP1ung5Co
         rZvWsvcnzNMF15k0j6wy0wA9KoeqWHDJfBKxpW96smlMir4SN4AZuO0ceE2gPMUQpJzx
         L4f094g/MfcsuSQZ9CBd7njoR3hlDgm2kPXxkQRkPUTCGWtqZ3MRYQVdxv+q5OeGW6yB
         wiC1Fj7q60VIpwn1f9bYJ1CHeOvSqZhaDVMqF4fwBbPcpj9ZMRzqrpTC+gzJKajex+Q7
         RUgM16zZpyaGJpqygEbJDk7IJxfR7/CWkl3o3JdWozTVqtjyqKXWBsJyQCTM4XcWL+Cd
         nP6A==
X-Gm-Message-State: AC+VfDzH+NVtw/sI4NUy/genDhBuWaspYAgs7LGZs804RD3+zQRlTK+Z
        iG5VTnWhzj5OXWpdGsd4j/ABiFPVznc=
X-Google-Smtp-Source: ACHHUZ6cqmrtYj+kZPPbdeyguYzPytBssO2Wd4pyK4cbLkv9jSfD+O45er8JbkDup4MmRMVyY+EttA==
X-Received: by 2002:a05:6830:4596:b0:6af:a1ed:3c9b with SMTP id az22-20020a056830459600b006afa1ed3c9bmr618720otb.0.1685062585476;
        Thu, 25 May 2023 17:56:25 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:25 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 15/15] ARM: dts: imx6qdl-zii-rdu2: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:29 -0300
Message-Id: <20230526005529.150418-15-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index abd72d72ae99..9ff183e4e069 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -848,7 +848,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -860,7 +860,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
@@ -868,7 +868,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(0)
 		>;
 	};
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -880,7 +880,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	aud5 {
+	mux-aud5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

