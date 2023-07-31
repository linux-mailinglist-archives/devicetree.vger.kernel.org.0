Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0745876933A
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230447AbjGaKgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbjGaKgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:22 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BEA2E46
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:21 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-686b9920362so2968346b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799781; x=1691404581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lr/IRa0Gy3cXDJfJQ3C/islU29JYFF9cRXQo0YY1xm8=;
        b=yJ4OAXudxqBZFhr/OyaJCKK4Fpkr1LIhOPnfV6fQsYdVGfxWuqpmW9wYrIJxU9WSv0
         7cbp4xvw/8YMZrBMS9VUZNTL2Zo5AwcIlW3wnS8JVcvkdBISE/GAYfQ1MH3dalhQM2vT
         LWOqCprBIxP64zzmdEBECGxw5J9ZT7az3nIAnbSrA++/tV8BrASy+tO9xuMQt/JA1qY8
         2itpno2Nmn5RS/20BJt1E8YZwlLhz/B1zs92OoA6FJN5466akXrJWO+09UwQprYeaKHe
         3xPHjij63xrtEvBuS/w8enuvScep0c2A4lByrw+n9N9gCl7ccNRCNZfM9IT90n9nQFkR
         PaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799781; x=1691404581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lr/IRa0Gy3cXDJfJQ3C/islU29JYFF9cRXQo0YY1xm8=;
        b=G9wCdXPta0WCqNy58cbfBBFuWgu5bNGkrx6W+VH9Ok9irsWISFEQSIkAavQa//C1gX
         YytP43UQXHxR47HeVPRRNNpB1SELxxvjCctGbBSOqoCO2Q7svMgsRNWZJsoSR5hQ5p0i
         AV75OsUZKifR6oPdKp6v3BrNaiyzQQ2a/0z/ZyVwe4TNJty2gkn9BoZvE3NVwx1Tlp7m
         Wn3n64b52q8Ep5uMBkxmBWq+yrfAxiHMK7Ts9y+SUgcc00hm640endBsmX2ruifbOpBy
         sh6DmsM/zcgWnF7ZM8W9dUFvh1VdCcZBwmaxvZxdupE70WB3MtIAZS4BPAKacHAW9DH+
         gydQ==
X-Gm-Message-State: ABy/qLbMD7Gbw8QEcbR0hieT83eSgO3aQVFJ7YsNUj2nK4pZDlJ4R4T7
        1iAaa9XImCVhInf2eqiabqnswA==
X-Google-Smtp-Source: APBJJlFRxY1Cy24Y086tRrFk21t6zff+ANEgQENQZLIdnmYNVKsJ+PFWvKSp6WojMQ2IOrtA7Rxe0g==
X-Received: by 2002:a05:6a00:2296:b0:687:1be4:46e7 with SMTP id f22-20020a056a00229600b006871be446e7mr8645601pfe.9.1690799780782;
        Mon, 31 Jul 2023 03:36:20 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:20 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 10/13] ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
Date:   Mon, 31 Jul 2023 16:05:15 +0530
Message-Id: <20230731103518.2906147-11-jagan@edgeble.ai>
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

EMMC_RSTN GPIO1_A3 is connected to FSPI_CLK in Edgeble Neu2
board.

So, drop the same GPIO pin from eMMC.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
index cc64ba4be344..e3e5752fd6b7 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
@@ -52,7 +52,7 @@ &emmc {
 	bus-width = <8>;
 	non-removable;
 	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk &emmc_rstnout>;
+	pinctrl-0 = <&emmc_bus8 &emmc_cmd &emmc_clk>;
 	rockchip,default-sample-phase = <90>;
 	vmmc-supply = <&vcc_3v3>;
 	vqmmc-supply = <&vccio_flash>;
-- 
2.25.1

