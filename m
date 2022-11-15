Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BD6F629653
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 11:51:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238401AbiKOKvs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 05:51:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238407AbiKOKvF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 05:51:05 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75E23264B1
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:50:53 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id d20so16950085ljc.12
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 02:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9AkXa8WASg2o20B38YfuT9CNbMMG+KNJdLwQnLsBLC8=;
        b=KF3oYHtY/AOseanOMalftIkuvxiap2NGqO5oGJgIhVPScZHSoNNfq77wKVTQkyUIAt
         HpT6XPGUKAHtnoFrMsIPuZTkapyoOp/LN7ErtxZggFVjVdi/sq4+JGP87mx8mahoxH+R
         nsN6qoIet921XSg0v4kA302fSixwq4JnTtRZosjYP0dzv09UjTzmPt5NfPytjkaN5Wp1
         6I/w8NCtDtFPWjHZB7IuK8dGFQD3e3VbB98WUNUfXpBv72koXp8rjrVYa9Z86MAKpsS2
         ZmgAvBgAktcPtI5kUa9wltdD4qklmGDHMU16KCXdrnnlnHW4TxY1igM+7WksngbdR+Jv
         g5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9AkXa8WASg2o20B38YfuT9CNbMMG+KNJdLwQnLsBLC8=;
        b=zTjtV30uw/oo1EOmcO0jaWDkUDNVtDC1PevoFxV4gVwagZYF5N5Zx0xjyA9M7Ixp6O
         76UaF4eiDdmurLT+oFZ10Rmb4+lMboTbvt+hg1/z27PrTcVckUijKPdMYq6iunQw2oI7
         PGqdinWb2MXuPXSAnapHNcJP5ukiykb8obmniDdjafCtpeltVVP8bna6GQXgDiRRBMB1
         s+AoqHz/c1aNAvEs43rUtBxC87DxFckcRiPiRIX2zVFmeQJ7OUKdyMpEY2pigk1Q0gKb
         gxYY0HD9SCPEbWF7d+XkFdTtGfBo1JLDfizr53zl8tiP04HxUPXHTZ17MYIbUd/DKg8S
         bQeQ==
X-Gm-Message-State: ANoB5pmEMyYRl1fGO4RK2MGtYePMwayI7GJqxMU2nv16yPCI9DZ2axZn
        bqInCsGLWLtm6adf3iuuyvLIcQ==
X-Google-Smtp-Source: AA0mqf4MCEywNz5iPN9zNdMtIyVMELylIg+cGIcnfhhvmDnGxCBrQxIXjrEiHs7J90AFG9VKx65I4A==
X-Received: by 2002:a2e:9857:0:b0:277:eba:852 with SMTP id e23-20020a2e9857000000b002770eba0852mr5993560ljj.31.1668509452968;
        Tue, 15 Nov 2022 02:50:52 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d14-20020a2eb04e000000b0026fb1c3e6ddsm2364808ljl.62.2022.11.15.02.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 02:50:52 -0800 (PST)
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
Subject: [PATCH] ARM: dts: imx: trim addresses to 8 digits
Date:   Tue, 15 Nov 2022 11:50:51 +0100
Message-Id: <20221115105051.95345-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hex numbers in addresses and sizes should be rather eight digits, not
nine.  Drop leading zeros.  No functional change (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/imx6sx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index abc3572d699e..80f5efd65c2f 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -1391,7 +1391,7 @@ pwm7: pwm@22ac000 {
 
 			pwm8: pwm@22b0000 {
 				compatible = "fsl,imx6sx-pwm", "fsl,imx27-pwm";
-				reg = <0x0022b0000 0x4000>;
+				reg = <0x022b0000 0x4000>;
 				interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SX_CLK_PWM8>,
 					 <&clks IMX6SX_CLK_PWM8>;
-- 
2.34.1

