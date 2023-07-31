Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4237C769335
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbjGaKgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjGaKgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:06 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32E6A130
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:06 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-686efb9ee0cso4315205b3a.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799765; x=1691404565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrIzfE/+T06YP4U9ycEtCcYbxfWBj9va9apqP3C9yKE=;
        b=hm+TeSbGb0Erqsxs3Q0BY4hXxMD1VYtzsUTT5BwVSqEWzIE84/OpTQrMFGCHReUcQC
         XBk2QH09nmz1CCxBaalKSminOc7qTi9f7gZLcwDErrxj1eHxYprCajr+z7FeGdL9XFs9
         zdW8VhfPJfl2KFpfjqW8AZaVKICYRIPufog4OxpUaHRIX9Mdqg9y/7KhV3F8fYtCcd67
         MT6bw1s3Fk3o4+cdYJSSmpgsZvk+f0N23yZmr6HkQmdQT7RjVWTn+JXuVnY6Sl0cgg2Y
         fwzZ1XM7+ww5ejyRy+kpofF58jbU+yRj8r3O0vg/bvrY3N3TuEgMsIb5mR+mxoklUd5z
         6Hqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799765; x=1691404565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrIzfE/+T06YP4U9ycEtCcYbxfWBj9va9apqP3C9yKE=;
        b=a6FU2E6xBv1GHXUo5tDSoyS2J7LrQM9k4lxzX2gAGXjhg+f/fgtxH39/QJ+fsirdEO
         c6GrBwxZD3okYHi3NQJzb9OSr1V5Vc62Bg33dliHf9INpkh+pIf90t4/olqltCTo2rnj
         1hXP6P6Y/MlYA1TOXe9d25oX6rZ+/wHjV45LoHD40SXHMiSyjMu8OMYrvw12As1sIMUC
         CqU9KCHiPdkH59b6cvfsweIaXYQM18md82YtrUvl+tW74yc/UHa3cWnKbY8Fdi9siDqV
         O6VxEzA8cK7LkOIysksZxyIMdOGDC6LKIdFmT86es8GLUNvdqske3MlQGOr9lnMViIQP
         7AEw==
X-Gm-Message-State: ABy/qLab9/DaWdVaM8WDw8ZtZGly6hp5QGzJ7v9v3kIiyzteuHNyfARt
        Y3Qb6hrlC1KWWOF1K9dUYPqpnw==
X-Google-Smtp-Source: APBJJlF06xRyhUt1idVUt7T/VvOLRcrKNRXCFjz2EjL0+G0yxZGyv+XaT6zyxvMivggGygosC3ewsw==
X-Received: by 2002:a05:6a21:7896:b0:138:aa5:51ec with SMTP id bf22-20020a056a21789600b001380aa551ecmr11954504pzc.46.1690799765707;
        Mon, 31 Jul 2023 03:36:05 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:05 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 05/13] ARM: dts: rockchip: rv1126: Add pwm11 node
Date:   Mon, 31 Jul 2023 16:05:10 +0530
Message-Id: <20230731103518.2906147-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwm11 node for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 931a1ffc22e8..86b560dc3b64 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -243,6 +243,17 @@ dmac: dma-controller@ff4e0000 {
 		clock-names = "apb_pclk";
 	};
 
+	pwm11: pwm@ff550030 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff550030 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
+		pinctrl-0 = <&pwm11m0_pins>;
+		pinctrl-names = "default";
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	uart0: serial@ff560000 {
 		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
 		reg = <0xff560000 0x100>;
-- 
2.25.1

