Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBDB679752D
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232705AbjIGPqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:46:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233129AbjIGP2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:28:53 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D87161FDC
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:28:27 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1d0f967fba8so255011fac.0
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100452; x=1694705252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8yw7qYQKf4MRRlQRofJbIYEQdqtg5x9f7gQUo3t0q0s=;
        b=EzDwJWCnIMpmZGw4g01bRNu0+cOriWD5BvOcR0ooaRX+vPrhKrsEP5f3/qolx5jpyw
         Vs1Dxrg9u/7F9+Cb/slXreG2mx+x7R3fX1noEB9tYRVOC5psOqYbRAMuygwHopeL3MSk
         FCjuBwhyNyKoXtDhJrQwE02UXtghUzFCNlgmc1ua7UCAsvi2sS0ERKi72V4IdL83FJNw
         N9lKybDrV3RrUSQ7vWEk6WYJn5rcHgQAluhPjs3yTR/YmHXQpukGjyEZB57rgUzzk2Rq
         afgUUgZiDiyuwwxpK3YXVpx5hqOcJUkZlU525HVHMhRJs8msMWXN05s6JbqaN+YxtnXl
         3kjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100452; x=1694705252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8yw7qYQKf4MRRlQRofJbIYEQdqtg5x9f7gQUo3t0q0s=;
        b=Z7pGk877XBCbkpylWFhmWWqtwqjAZv/M9rvnNJn9tIycpTwA/iVDQdTcJPflh7LtWI
         hGF/mCWUnvDFIe7VWl73/FHOm0Ejzt3Wrq+jn4vAnuQCyc1NRHocUpoZjwWOxgNTgsEJ
         GBsbWr9BL2LAIZ/Rvs4hLIr00GMYjxptEf79j5R21MFdDLyP0FzUqKeLPMddQWSlNhEC
         c68l7VQgMfBSacqdL2nSynAIHIE3a0d+Iux0Ymm9UkA9QsDBpGxk6nPgv1SCja/Ddu/D
         ySBPzaDEFfgQvD4kom8Ru+S+3WNR07srhUez9QGxtAgFys6OiZAZOpfVhX3gaMg+tHcs
         r+8w==
X-Gm-Message-State: AOJu0YzlYCw6/xVW6tY9T3Y1+Xv6SbMiSIhxdqPu1vWCKd1q1ZJYHJSN
        eq8e3Ii6Q5TbUkYwfApC8kTGlmZ/vBM=
X-Google-Smtp-Source: AGHT+IGRQh0kfd3YAzYLaV+/fDbecRHUI0ff31kJYW9tcjhPFLEZhwdsIdNFq/QSjmXtVK919Tshjw==
X-Received: by 2002:a4a:e38e:0:b0:573:3a3b:594b with SMTP id l14-20020a4ae38e000000b005733a3b594bmr17527936oov.1.1694100024553;
        Thu, 07 Sep 2023 08:20:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:23 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/7] arm64: dts: imx8-ss-dma: Move dma_ipg_clk outside of soc
Date:   Thu,  7 Sep 2023 12:20:04 -0300
Message-Id: <20230907152008.491775-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230907152008.491775-1-festevam@gmail.com>
References: <20230907152008.491775-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The dma_ipg_clk node does not have any register associated with it,
so it should be moved outside of soc to fix schema warning from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
index adb98a72bdfd..0fa0e97628e6 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -7,19 +7,19 @@
 #include <dt-bindings/clock/imx8-lpcg.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 
+dma_ipg_clk: clock-dma-ipg {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <120000000>;
+	clock-output-names = "dma_ipg_clk";
+};
+
 dma_subsys: bus@5a000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x5a000000 0x0 0x5a000000 0x1000000>;
 
-	dma_ipg_clk: clock-dma-ipg {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <120000000>;
-		clock-output-names = "dma_ipg_clk";
-	};
-
 	lpspi0: spi@5a000000 {
 		compatible = "fsl,imx7ulp-spi";
 		reg = <0x5a000000 0x10000>;
-- 
2.34.1

