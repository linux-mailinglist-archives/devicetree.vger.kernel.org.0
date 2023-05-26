Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF86711BC8
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbjEZAzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232561AbjEZAzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:55:54 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71563199
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:53 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-19a5fab868bso73445fac.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062552; x=1687654552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c57Aw1+cY0/r3wup50+mVLnEc5LJKtbuUztSc189jlI=;
        b=HiUwigmYthDeNuLPNy9jh9dGyzo6bIEZd7KKyfdAYlW7DFDwlDNjEgxYGIfqDiZUfw
         ZDc5wuVbtWCBaLfCpTaNTpZNpj1uOBGL+1nEnSIVK9gaETR956rsfRZhlgeKlRf1nnub
         ltLk0upIArUcXyhKto7fQW3aUs1da3R9KVCtQHC1YMQDywmGn/IgLUvZSvLh1e90IP1s
         sRNnsUdpZMRA/MnGtBCVcx+6nB8sPVFue8z5O+HNuQtYgXN2txO6J4vspr1VSTrTDEuI
         Vi14AB2L5rtqRFFq9ptRldkFIH2X8Dd4GbCW9x7zHTXCFEBqG9f8J+pgkpIjYJos19jq
         qDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062552; x=1687654552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c57Aw1+cY0/r3wup50+mVLnEc5LJKtbuUztSc189jlI=;
        b=MFDgZJ2UggaYE48KJ5O3wEY0GJnsxfFesmmvixLp0qMjQ9RCbGV1MPNawYxXXhxUSu
         V9TDLR3u13ECKXlMfe8iTrzU5f1nsUt52n92+UfbyxDSgBnFLXWKur76mI87jM8B/fsj
         uyBtwCyrWkKEnS+ZiMkyhkmcQ+88YT9FDqbAUUrvm4WPWY8mEsR/AHat59lcnKCuON0S
         iMwIbnv2xc/9ENHTlRsOzYJoeW5hPvi2uNyQpuQaiPgpWEQIR+ih8jk6mzZ8+ubN3DQi
         TVcJaN0Ov/sZTfFDee9pePHCQwWvrjmV4eZ4PdOSkanpzkyq1VYsRvnQWzUjBF1kqxFS
         33HA==
X-Gm-Message-State: AC+VfDyw2Qal8h4XKSGb3kXOGZIrsZ9I4kMzywXlnknDrAUH+5TrUvDs
        LeLS6GZkJ/yhUuDaKjI8IsrDlhcMGQ4=
X-Google-Smtp-Source: ACHHUZ5+1g6oDoRDFy9tD8tQMervyPPfM8kgbQjx1rKiYYjPX9m33V1m3e/WR9UYZuRhRGmYjEe6zg==
X-Received: by 2002:a05:6870:7aa:b0:187:7a49:d227 with SMTP id en42-20020a05687007aa00b001877a49d227mr94114oab.5.1685062552756;
        Thu, 25 May 2023 17:55:52 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:55:52 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 04/15] ARM: dts: imx6qdl-hummingboard2: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:18 -0300
Message-Id: <20230526005529.150418-4-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi b/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi
index eb1ad28946d3..0883ef99cded 100644
--- a/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi
@@ -179,7 +179,7 @@ sound_codec: simple-audio-card,codec {
 &audmux {
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -191,7 +191,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

