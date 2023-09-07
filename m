Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 447F4797566
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:51:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235108AbjIGPrJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242982AbjIGP0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:26:50 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ABE51BFC
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:26:32 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7576b53e75eso1573185a.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100374; x=1694705174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Olo4px7uGQsK+1f+jDuGtoxDJqhkdgl7OWYdar49ais=;
        b=nKL90swPIZFp4yHCP5fq3Z1IoZvxB4jRXotBHBHCWSZm2NJByXu6wX+X1VR8KsKXaG
         TmQKLJEzl3ww8UcrEQbeqSjfYjHi3XhIef6wH3WyNthLTqyqnaFKqDUooQmlelPO674t
         MQl1IjRrh0dvAjtXwiWKsn2xmYGqYXmA5JucsFeGO9Fmtf+znoFTtJs5We/QfA3tEwFK
         5xeVpGKVhLVZZmuMMhX1iZ2eUk7Px4YHkoxRFc8lybXPlzquYM9lvi5wHJQgfhYWgncK
         cBgkXpGm2Mo+kcKhCnUCkD1AXQRV1HMhuNW+qCnxGT7HNXFFfI89VEsY2j599L6dIgYE
         Ql2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100374; x=1694705174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Olo4px7uGQsK+1f+jDuGtoxDJqhkdgl7OWYdar49ais=;
        b=KK3kpItBZYQOu3oyy7VuKpljenKnUuQZj3lfKTCzqHC8gMm4uU238sCfdd22vfcwza
         GWQHs0EzHSAfEx/w0wtou3mHBOyUdOjancI4hkJkTWG4geOrkdP2dZRp5iRNgEEOUbpA
         N9YL/S54G/ozxb+tYgaR1EF/GDj9TmR7XCd9z6BzO47mcLpbxEr+GZ/g4XVHNEqjdE5r
         5iaKIQt/ODhs9p8hSlwi0Qrvoiu43aB3cTfQuH9oLZsQkDDLXA++Ij1vEk5cwhgOjbrh
         GyrJtmdHTa+XT5BEUGxWzo8wRYGtZsoqVV0eU0krHvOVlEm3TwcdMMS3zlWYezVnA+Fr
         S4+w==
X-Gm-Message-State: AOJu0Yx7DTSmKrs5swsErMxqRvJJNHlRf9mX0wdbGcQiBDOWSUkvhEtw
        LQ/Y4RNgO5qkFuhkuCdo8YqveICqutw=
X-Google-Smtp-Source: AGHT+IFPpdbH3UYnM+rJozrS9vNkvglnFQm5F6PzYXFNNXKIpJhcVv/IYWLLZnpAWRYWvOjZChPISA==
X-Received: by 2002:a4a:d508:0:b0:56e:6532:467a with SMTP id m8-20020a4ad508000000b0056e6532467amr16558970oos.1.1694100021636;
        Thu, 07 Sep 2023 08:20:21 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:21 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/7] arm64: dts: imx8-ss-lsio: Move lsio_bus_clk outside of soc
Date:   Thu,  7 Sep 2023 12:20:03 -0300
Message-Id: <20230907152008.491775-2-festevam@gmail.com>
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

The lsio_bus_clk node does not have any register associated with it,
so it should be moved outside of soc to fix schema warning from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index f5911dac68ec..b3987dd45372 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -7,6 +7,13 @@
 #include <dt-bindings/clock/imx8-lpcg.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 
+lsio_bus_clk: clock-lsio-bus {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <100000000>;
+	clock-output-names = "lsio_bus_clk";
+};
+
 lsio_subsys: bus@5d000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
@@ -14,13 +21,6 @@ lsio_subsys: bus@5d000000 {
 	ranges = <0x5d000000 0x0 0x5d000000 0x1000000>,
 		 <0x08000000 0x0 0x08000000 0x10000000>;
 
-	lsio_bus_clk: clock-lsio-bus {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-		clock-output-names = "lsio_bus_clk";
-	};
-
 	lsio_pwm0: pwm@5d000000 {
 		compatible = "fsl,imx27-pwm";
 		reg = <0x5d000000 0x10000>;
-- 
2.34.1
