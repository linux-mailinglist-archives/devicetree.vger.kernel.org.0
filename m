Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72C81711BCF
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234276AbjEZA4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233928AbjEZA4M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:12 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAE1F19A
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:10 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-19a336df959so73928fac.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062570; x=1687654570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4dun7hz5XngEVgCEhZ3Gje8XRbf50hKW5WjBka6CFw=;
        b=qWXkYwpzN4hBebcdgjjima2b6Yi7+BxNkIeOvsfCToTUXXrQx97kg2n6zOjvP65ehs
         /UCjrxhQsWDrIbPohABh+K/84XY3Q6V9cjnY8z6BNsHZq+r3EBMZNCiAmynb5DWaOpkH
         hbkN2VKT8EkDGr055o5kSFVLBqtz15TKvVujqttwRrE8ne5acCeG3Bk93IIH71F+IlZH
         h7EiLymivvKydaA5hVDOJcnZFR4u+nd7Jj9WLwGiTIaQmb9AAWHoQoE1mDFc+Cr1YDgT
         RhMIgP2n98S2XPjsXzS5vYO2v2MrnciOeYnCKvL7oPSRe2wQw9g0Mrf/9R0bkMxVhKn2
         mlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062570; x=1687654570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F4dun7hz5XngEVgCEhZ3Gje8XRbf50hKW5WjBka6CFw=;
        b=Rqd9t7atcB6n6pl29CQhlHsweCoG17NHaNycLCDUQka5pYLW8N5JKFoBOJFUJRk0Z0
         8pecuNoS8Sa6CHSQbnPyMWHjVHJRQFFlwgGYpqB+UsmOD3nHqSr/ptIwVtSlR9Cx67vO
         UK4xGjrKxJMUKUZGTgKv5jTtstSgr2baX0sH6SSvAkVvZSgZonjkv/yVKGXuZSlitNHd
         nQYQks3odE2YslUiD+hd/c2Ku+qo0/pAkgvvWYMylzrBupiB+3Vv5ul6uxJ3GIbc+Aco
         64BIQxJJkIb6sqhQiB5FVj7omRT1HNzdxnQx+W17Gf7fSJaZsdgXbZJzL0CDnIoiLEzR
         HiYw==
X-Gm-Message-State: AC+VfDxxHRhf7JSoVmzdfy96aBIpHMckp4RuTQzlmLUNQDL01ZezCKPC
        u2wrrUgQ2EHlyj00fyo/8jU=
X-Google-Smtp-Source: ACHHUZ7MCvwCqIeVnzz3lOfu1T5wdFClUamlj+hmTzZoZyKnCKKkHRAwgrgU1jBe0G8H5jhl/nO+Nw==
X-Received: by 2002:a05:6830:33bb:b0:6aa:eec1:5372 with SMTP id dw27-20020a05683033bb00b006aaeec15372mr583156otb.1.1685062570616;
        Thu, 25 May 2023 17:56:10 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:10 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 10/15] ARM: dts: imx6q-kp: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:24 -0300
Message-Id: <20230526005529.150418-10-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6q-kp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-kp.dtsi b/arch/arm/boot/dts/imx6q-kp.dtsi
index 5e0ed5560040..091903f53a56 100644
--- a/arch/arm/boot/dts/imx6q-kp.dtsi
+++ b/arch/arm/boot/dts/imx6q-kp.dtsi
@@ -135,7 +135,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -147,7 +147,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

