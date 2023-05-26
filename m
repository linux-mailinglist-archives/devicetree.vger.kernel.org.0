Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38DC3711BD3
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjEZA4W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231990AbjEZA4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:21 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D28195
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:20 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-397f4260599so5889b6e.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062580; x=1687654580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QIeNnIJ4IeMovQPzaK7BQxDWJ9m4MNKmhYgT3URiZl4=;
        b=GsrgYL67bNJrhCz6mfEVdRFNAs4x6PT3OZ8NDqbUZgONruQgDBvr0ra8r2MBiAn4Wa
         IzTxDfe5O1ExuXu8SZju8N/ciYqukKxdqiEWhKoYZ30yRtoCM0GJoW/u34i9WFUCEARB
         l5CPfW+B1l1fDPbJ3PY7nik0kn82uqd3bwZK96jn+x84xnYETCR5WuJMefA0gJ9U/H5G
         C/l08BN4f32NWqraKBaPx8g1rvuU1e6ZXX+VFpauQE9LhmEhJyTpZoUQ2AQGHjUhX3va
         FjeEnUz8lTDsFJD6PDFxJQl+YXGHVddgmr1VQ54GyNCPTzX/DNQZ4H4GUjDimYehvd0D
         kSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062580; x=1687654580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QIeNnIJ4IeMovQPzaK7BQxDWJ9m4MNKmhYgT3URiZl4=;
        b=KOSR6xXNPvwrSxoyu5oLghow5bI0m2rziV4vAROzXWRL8sgrts3Vwovs8sm78FqKJj
         BbBWyJNehabGEEky/5aF9HMtXzVuF30VrB1DTM5yEnahFt9so0p65IAGfzZr3ZZWrJEV
         a5PcetXH0DCYrLvAcSY32BLnCEwLvH/JCcsgJ2gjhpyTnjRmpl++bkdjG80czaLJ2Bz6
         ZXegkpM4X8ZcHzWnQHX2hsyVigOXbyf9+tAyP7oYWcfZMEtaSbAcBKxQ5xSPz8vmHd5u
         HeZlYNws/tw0O4qoS8eiGjWWuYPCqswM1embE4rsRjTfaBPLfr0sNMhQ0ZGisKLyhIEp
         zWGg==
X-Gm-Message-State: AC+VfDynpLucjmmjeJFoveJKF9IIbmSo6QOGVE9/EOikkumkS4jSv+ZU
        XoIFuw9e6QbuHV3TLRkw4Yo=
X-Google-Smtp-Source: ACHHUZ7iU87/lAR6sP6mXOQdXI/IohdkcuiQNByZqGPC5nbWzQYP/Pemwpk1Ww/qXVtTENZiwBMZVQ==
X-Received: by 2002:a05:6830:6612:b0:6a6:2563:2dcb with SMTP id cp18-20020a056830661200b006a625632dcbmr4201853otb.3.1685062579840;
        Thu, 25 May 2023 17:56:19 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:19 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 13/15] ARM: dts: imx6q-display5: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:27 -0300
Message-Id: <20230526005529.150418-13-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6q-display5.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-display5.dtsi b/arch/arm/boot/dts/imx6q-display5.dtsi
index fef5d7254536..b88b8aa730d7 100644
--- a/arch/arm/boot/dts/imx6q-display5.dtsi
+++ b/arch/arm/boot/dts/imx6q-display5.dtsi
@@ -147,7 +147,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -159,7 +159,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(5)
 		>;
 	};
 
-	aud6 {
+	mux-aud6 {
 		fsl,audmux-port = <5>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_RFSEL(8) |
-- 
2.34.1

