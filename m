Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3BBB769332
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbjGaKf7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbjGaKf6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:35:58 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 691EAE48
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:56 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-7656652da3cso299974885a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799755; x=1691404555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kzjqWoq9A6qFKTJ1GXcqTxSYUR9XYkOkWwlDCLQJeeg=;
        b=TE5pDLRXqAXrd8gxwu1wnMyzim+BqTAnGzL5c981RZ/GR5OzgY1N/YRaekNn1tkWhd
         EdWhE54ucrRUcX7KhRwVdJH5K8snGlMbVewQ51AItXWfVmN9TX4+PoJ2NJRJI2tGOCSO
         iN6PAGTAtCizHzQiOXPeAt6mwJMRR0Uv0o+s26BojBL2XJGIfyQTXWTNsz31R238fnZJ
         bb7IsP1nFF43Sor9B6ELrtF01UA9FiqOBaIc1o8yWDyTKUpOFljOLGkxfUzXkRLgdCo6
         ND5mOgY/7X7qwoPAMuvIl8xG0y7DVA9NoKgUacKKUq6aoGWhKtjuKz4aYUWqm78W2iEf
         aRHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799755; x=1691404555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kzjqWoq9A6qFKTJ1GXcqTxSYUR9XYkOkWwlDCLQJeeg=;
        b=mGJr7llfKAA3rYucYCp1BsaNZxKER0uXQSlhqWsF7W6F1hyBXmrRoeWQGslCCjGSMx
         HYzahwxhlteVhVnrSqPdCwc4Umky1NFnkk4HzA19FMjh4axPUJOXNLErQjW++hl5+o0n
         2cyJWUNNM4RdCF9oaHF3pjQt2V9F3/9cEsT//cN/DM+3nxHloZB2QONFInEUW5FUyud+
         CSWM9lUzDkwo8xV5kgZcajLOtTTDKJe+v58S4JecmF5vzaR4jXQ/LUTR2WPnxqm9XlwI
         V2FPqCCuYCgoF5V1D+p44jujuNWLTiE43bPSCu7BP+QCStQNkcRrxUP6FngdUl6+N+OS
         +njg==
X-Gm-Message-State: ABy/qLa5dA5ZKqQKOdtzfTr46o/UuZzlPTx3vMhV/CGzZdfkARkLB/Xg
        U1mQnKCacQckmqnNNOK7r61bjg==
X-Google-Smtp-Source: APBJJlFCK+1VmvfRrU67lBkUSNt04LWjIjz37nJvS7SEm/ZsRG1iKpV9vWv53SuU8f5dbbVmHRiouQ==
X-Received: by 2002:a05:620a:2909:b0:767:7c08:479e with SMTP id m9-20020a05620a290900b007677c08479emr11881034qkp.53.1690799755488;
        Mon, 31 Jul 2023 03:35:55 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:55 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 02/13] ARM: dts: rockchip: rv1126: Add pwm2m0 pins
Date:   Mon, 31 Jul 2023 16:05:07 +0530
Message-Id: <20230731103518.2906147-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwm2m0 pins for Rockchip RV1126 PWM2.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index b77021772781..239a1dd9360f 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -69,6 +69,14 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	pwm2 {
+		/omit-if-no-ref/
+		pwm2m0_pins: pwm2m0-pins {
+			rockchip,pins =
+				/* pwm2_pin_m0 */
+				<0 RK_PC0 3 &pcfg_pull_none>;
+		};
+	};
 	rgmii {
 		/omit-if-no-ref/
 		rgmiim1_pins: rgmiim1-pins {
-- 
2.25.1

