Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC8679750D
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:45:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231724AbjIGPpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244152AbjIGP1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:27:49 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C43BE1BC7
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:27:23 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-414de729f32so2244441cf.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100402; x=1694705202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TN0I/EriirwezwY9lAo13lSdNF4nfDwgLXxTHZBdIko=;
        b=e3aXv3ss0dgwmibyhz1CRQrGgQ3BF210g928IHISdo8y8bR2fNVmeH1CKCVWwyNE47
         txp9Cprbluy8/mWRXk5TEJuekJPJ36JdeOJFxi5yFqQkbvIu7wYasewNroAO8dr77/X/
         2AKlX5iyT09XLRvXLAmRGpFH9k1qv88XkkCAd3yOgGkg9q2oOl9hucZ5Ywjt7+uNHKR4
         09INv9mhLPC/q/sAueM5RNjjgG/2qt/lNZ/+2atcLQtFO1dWHQ5Pf+SqHDVo0Yj/ZNPE
         W7poK9wgJNljIBsxoF++n6RQihoIQJyHuc5U+fNRJdx6InqpYBR0W1wU/AgY9o5+2tpK
         4m5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100402; x=1694705202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TN0I/EriirwezwY9lAo13lSdNF4nfDwgLXxTHZBdIko=;
        b=GPuM3nJcSHWtU0c7gfSKZJapsSuFuG8uMb3GYmpPje2c0nGrHLcufDnsfd8OdQHlFM
         7U7jNKXM9Z2MzwQiuhK8fxLV2z7WxJSeOV+qnCrPNn0on5rFkuUVUCoXUsguMk4gLUUz
         ViqJHsnyA3NJcNw7AYrbK2UxGCt6POjYDCI1ESYbDte0UI76pIcsoSwfJpAboV1CCbNs
         y8wGMhjEtei125Vigm2LnQK9MiNzhYB0WVOHWTcWItpQG3cB0zBFVhdwd7MQP26Y6Zqp
         cnvd2Eal5AX/60t8RGvg1B6/RmCS0Xcsl5vrRf2VhbwPHwmoWf9vFEC/lk8W/AYH+rcR
         o9gw==
X-Gm-Message-State: AOJu0Yzm7d78Sve9Z2qoOCxS1N1dntEwDoGTxfx+wVV5TjaiSUdTUTfe
        uDablZxRJP5n6WnAlKUkpcaZXB4tMwY=
X-Google-Smtp-Source: AGHT+IGMxurjeTXDze+TRrDhSEYcCfdUUohbwl8mcQH669bxAfXWAyDvG4YTkwJeE5kKJXMCu6goaA==
X-Received: by 2002:a4a:eac4:0:b0:56e:94ed:c098 with SMTP id s4-20020a4aeac4000000b0056e94edc098mr17794124ooh.0.1694100035854;
        Thu, 07 Sep 2023 08:20:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:35 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 7/7] arm64: dts: imx8dxl-ss-conn: Move conn_enet0_root_clk outside of soc
Date:   Thu,  7 Sep 2023 12:20:08 -0300
Message-Id: <20230907152008.491775-7-festevam@gmail.com>
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

The conn_enet0_root_clk node does not have any register associated with it,
so it should be moved outside of soc to fix schema warning from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
index 652493ae4bb5..b47752a878c9 100644
--- a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
@@ -6,14 +6,16 @@
 /delete-node/ &enet1_lpcg;
 /delete-node/ &fec2;
 
-&conn_subsys {
+/ {
 	conn_enet0_root_clk: clock-conn-enet0-root {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <250000000>;
 		clock-output-names = "conn_enet0_root_clk";
 	};
+};
 
+&conn_subsys {
 	eqos: ethernet@5b050000 {
 		compatible = "nxp,imx8dxl-dwmac-eqos", "snps,dwmac-5.10a";
 		reg = <0x5b050000 0x10000>;
-- 
2.34.1

