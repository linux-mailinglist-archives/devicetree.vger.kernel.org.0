Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF191709798
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 14:53:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231437AbjESMxJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 08:53:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbjESMxH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 08:53:07 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D057C10D
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:53:06 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-554e9835f4dso234598eaf.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 05:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684500786; x=1687092786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=krsGcXa7GEcykxpLnKUmx0Yh+Lm3P6pAyGs9X6hUAcs=;
        b=LhGn1DHDwnzt0E1Yr4FxLS7HJxxnTItFXT+R4rPA9PkLTpof3iDm+9gX7SVI1UF7p2
         OX+d/itit0SwrOe74GjL/dp3XD1eAc8ThLhKLoAgVeKIEovQ+pE2ySZL9SPNY4R7kWrV
         L8W57Cc0FurbFVt5GUur7NWcdAmRC9y6oy9em58gzi9c6014RumHuaNDwiPAcpDFZ88C
         Tkv+fjPSxT/znxzK0Fri9sGKYWfOouXDu8Gh0BT1bJB3d9x5snsms3lqUIgG7Q8bJM1d
         N06H4lUZFSuzDbD+90Dx+vjWewmjqfCRl6jHIhUEp9w80/U27q/S/VsdYWmcFyFTGz7T
         JQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684500786; x=1687092786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=krsGcXa7GEcykxpLnKUmx0Yh+Lm3P6pAyGs9X6hUAcs=;
        b=Mb9n8kxKv39XDDyYeovpP7epmkRvJxJywoB38nc6ENUrlF94dJNo1ikx9C5/STnSOJ
         Hzs1AqFGkFkDxS8gMQBKmYk6J0T1odCqMMn6g4j3P/UY/cJBlnzQnaIfLXEyrfyOv8ib
         opZXOKDUENEA9iABu1fEPnK87eixM2tTySDgOFWquoGAASR/O+y5CPy6D1Bx8s3K88ho
         r2Gj+yyodEOKo4xHAvgUJwmtLcOSLqBcn6k2LNDC0D64jLIAeuuqzbfFTBcQrPwCnezj
         k4MeglN2/lyM1YdgfsP0CBx7Zi3jAlA2ucynp6E/7lV+9tSA1j+6KBtUZ81JQrTmn7ru
         T7cQ==
X-Gm-Message-State: AC+VfDwiUuc3vKQwogahkk8QsvsFSSAt0NFZwbj/0xhTpFryi+mF/ugN
        oaUqXO9Pzg0nqjqlIuCcAWs=
X-Google-Smtp-Source: ACHHUZ6ldh2+rXc0/avcwTFZxJhxqwc8kBdtDwUnkf7qmSmVEj8GdDhLElYF3t3up5JtF+fK+5ozGg==
X-Received: by 2002:a4a:c310:0:b0:54c:a420:aeda with SMTP id c16-20020a4ac310000000b0054ca420aedamr710019ooq.0.1684500786148;
        Fri, 19 May 2023 05:53:06 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3a54:c40b:8f0c:b968])
        by smtp.gmail.com with ESMTPSA id i19-20020a4ad093000000b0055278f297f8sm1375321oor.33.2023.05.19.05.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 05:53:05 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 3/4] ARM: dts: imx6sx: Add LDB support
Date:   Fri, 19 May 2023 09:52:35 -0300
Message-Id: <20230519125236.352050-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230519125236.352050-1-festevam@gmail.com>
References: <20230519125236.352050-1-festevam@gmail.com>
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
Changes since v3:
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

