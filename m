Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49DAC70968A
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 13:29:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231245AbjESL3d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 07:29:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbjESL3c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 07:29:32 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB70BCF
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:31 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-54f8e5472a4so469705eaf.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 04:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684495771; x=1687087771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ejT1HekoTuTtiQ5rliaJhJUFFTJ26UWGUs+MnEQ+4SA=;
        b=KqPuTB/AKut9u9tRgTQJCY7oQTHUFu5j1Qdx0a4xKhrRZPwmhiOeArk6uJjzcbkOdd
         vTXdys2df9vm3+hq+e35VxCrTLkMn1ZxyNVb6kSZ3hrmSnqDJKndSTI1MfLFo9HgY6JV
         pSvWHOgfgZsP19K5yB8U5sJyaLHDrcXeAbUAtB4TTH1YDfefWqc/jkAMMzBBKETy9Rwa
         X0bPn8t9CKldDECz4cJ56vFrxOsT92h/7FLgfIWkoo0PWRJJbzK5lkeqrmiQll3KGsOQ
         drdQFMVPGn4OBSoSgJS1woMIYxF64Kr9LrYgkKgWF4yNkMyM13JO47rGIW4KpTJtOm+/
         C8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684495771; x=1687087771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ejT1HekoTuTtiQ5rliaJhJUFFTJ26UWGUs+MnEQ+4SA=;
        b=FhSk/gRFvIRtTz2ivYTm4Rvk5Wd6tdLPOV6axG+DUI5udDAR+/5xjiX6X+Yb3CMpkO
         543ipbMg1A/D49UTjuVdNmvOQcWB0JIzn+NNKs/gWBKTnLxq8wU/JV5A9/bPJRQ4QgnI
         hT3qQy6y5GvIxH9g2r7U31h1eUZGB0jAkwUPIMIRY4k0/XalXE7eZgfde2grGbWqzy7a
         niA0ENj4zxfLEITHr7sM/TUOYI6qQxQUktesdaxY9Updzc3iXixF0CSDVOZj9NfUUHRL
         OOuWVEEH3dvpel4SZrAQYtl/aKU45TT5TWr+RmFBmMdoKjy/FJCeTFEq2RJFT8nzuAT2
         KC3w==
X-Gm-Message-State: AC+VfDzK6LxwyPgp94r0EnAUHaRHSdyN3Wk03WmtorOeTDNXR+jPzCe0
        2KzdZ6b/cSWUEwKfp/huppk=
X-Google-Smtp-Source: ACHHUZ6wU4RRaQBqezoxRjWB9ZC2LARmL/O+oU6TTN72et49AdQnJqLBhL44+nCuVbqvqLppgN9BoQ==
X-Received: by 2002:a05:6820:16a3:b0:54f:d702:a405 with SMTP id bc35-20020a05682016a300b0054fd702a405mr765990oob.1.1684495770981;
        Fri, 19 May 2023 04:29:30 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id u1-20020a4ae681000000b00549f4d87eecsm1327679oot.30.2023.05.19.04.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 04:29:30 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 3/4] ARM: dts: imx6sx: Add LDB support
Date:   Fri, 19 May 2023 08:29:13 -0300
Message-Id: <20230519112914.309669-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519112914.309669-1-festevam@gmail.com>
References: <20230519112914.309669-1-festevam@gmail.com>
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

i.MX6SX has an LVDS controller that is connected to the eLCDIF.

Add support for it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- None.

 arch/arm/boot/dts/imx6sx.dtsi | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4233943a1cca..442106565025 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -844,7 +844,38 @@ iomuxc: pinctrl@20e0000 {
 			gpr: iomuxc-gpr@20e4000 {
 				compatible = "fsl,imx6sx-iomuxc-gpr",
 					     "fsl,imx6q-iomuxc-gpr", "syscon";
+				#address-cells = <1>;
+				#size-cells = <1>;
 				reg = <0x020e4000 0x4000>;
+
+				lvds_bridge: bridge@18 {
+					compatible = "fsl,imx6sx-ldb";
+					reg = <0x18 0x4>;
+					reg-names = "ldb";
+					clocks = <&clks IMX6SX_CLK_LDB_DI0>;
+					clock-names = "ldb";
+					status = "disabled";
+
+					ports {
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						port@0 {
+							reg = <0>;
+
+							ldb_from_lcdif1: endpoint {
+								remote-endpoint = <&lcdif1_to_ldb>;
+							};
+						};
+
+						port@1 {
+							reg = <1>;
+
+							ldb_lvds_ch0: endpoint {
+							};
+						};
+					};
+				};
 			};
 
 			sdma: dma-controller@20ec000 {
@@ -1278,6 +1309,14 @@ lcdif1: lcdif@2220000 {
 					clock-names = "pix", "axi", "disp_axi";
 					power-domains = <&pd_disp>;
 					status = "disabled";
+
+					ports {
+						port {
+							lcdif1_to_ldb: endpoint {
+								remote-endpoint = <&ldb_from_lcdif1>;
+							};
+						};
+					};
 				};
 
 				lcdif2: lcdif@2224000 {
-- 
2.34.1

