Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A67E26C97D7
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 22:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbjCZUpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 16:45:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230468AbjCZUpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 16:45:07 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5A9D618A
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:45:05 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id x3so27876517edb.10
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679863504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vKotHhrSArMlYMD87zRBXjHIfz20EsMTTThdF51WPwM=;
        b=VCVLa21fd+C5o27Qx3JrI7Pw9/Bh/TOA8hFB3ta/N/0a0e1EOBnqxBaLMOB56YQBFI
         HIVz1/jZHSW7RFSmatOhlwB6o7HbhaSjxvapcuF9smjwKE9ouFj1Ly11AOoPM0+SsfP4
         wqEMvcTnzzq+fTcbNR/PnI+JNooz6DMS/Rvl1bwr55XdVZN4Kbs+sYrvZ9k4W0obApGI
         btb35zFGYPLuhy09WfKThW13Dn8QsvtSsaq8qnL6PvNcyhGNN6ff5KKIxq3pv/cMleBD
         lJ41duKO+XYEplnhtsAL4dQRtyY5KRkuV6R809WCzt6pYuMFW95d7+Q5ydXrLBr/JEk0
         MqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679863504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vKotHhrSArMlYMD87zRBXjHIfz20EsMTTThdF51WPwM=;
        b=Tr+zK2O5nGlEHI3hmY7yEBjldMXh2qOSz2HPd0ClurBoCOLGPtsaUpw5jM5bEPmu60
         Ww0Dx+1fRDZtH6quMRRaX453TGQIuTzyr7Yew8Qw17vM8PKNwE0paoAOzq3zlBg9H1L3
         42o5zI9cbWxuRnmCVDnqSKtu1vdlR6MZmNX9ud4gTKmHX0DJqhiaGsCVFoB5SG+OAIh7
         27ejmBPORVHysx8pqkYqO5fuvcr4nls3BX01c931ebX7MgpmoI9fyu0VuI3oBpUYgCm9
         Cgn4YkXgk0/MWQe5NwLjCjvxJASguWpZclwO7K0eBRGqDhR/SZKvjm1JR/es2NGU75dm
         oJHg==
X-Gm-Message-State: AAQBX9f8ILIhSxGjk28hMXonC4CrYZ1MOOBFSujkR5DRZCaUAc2bjG5m
        B0uVkVEEXHLqotRpoYTDERLuHg==
X-Google-Smtp-Source: AKy350ZN90o6ec4Uu19ORnJ37DvU+BxCitB1JQcNCAFuy2fgpfIPY8OMwkUTtAkqqcSYz3jdLwfiVg==
X-Received: by 2002:a05:6402:48e:b0:4ff:844a:ed4c with SMTP id k14-20020a056402048e00b004ff844aed4cmr10180632edv.0.1679863504328;
        Sun, 26 Mar 2023 13:45:04 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id n7-20020a509347000000b005023ddb37eesm1578418eda.8.2023.03.26.13.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 13:45:03 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: imx8mq-mnt-reform2: drop invalid simple-panel compatible
Date:   Sun, 26 Mar 2023 22:45:02 +0200
Message-Id: <20230326204502.80794-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"simple-panel" compatible is not documented and nothing in Linux kernel
binds to it:

  imx8mq-mnt-reform2.dtb: panel: compatible: ['innolux,n125hce-gn1', 'simple-panel'] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
index 200268660518..3ae3824be027 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
@@ -26,7 +26,7 @@ backlight: backlight {
 	};
 
 	panel {
-		compatible = "innolux,n125hce-gn1", "simple-panel";
+		compatible = "innolux,n125hce-gn1";
 		power-supply = <&reg_main_3v3>;
 		backlight = <&backlight>;
 		no-hpd;
-- 
2.34.1

