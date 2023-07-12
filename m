Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6422474FF38
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 08:29:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232128AbjGLG3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 02:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232107AbjGLG33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 02:29:29 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA841999
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 23:29:25 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-991c786369cso798349066b.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 23:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689143363; x=1691735363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QIHZ9R3luUe4h54VtlXXPhHVEQN7PHyTj2OXRY7l0a4=;
        b=nQ5MMGz6V0Ctiba8knaHIj7gFUUj3nYQBV/sFw4uU/wuarxFZps0zaiCEe3BzfYyny
         I0pkEyQoTSQqrtp34Be3hrW2vv+FhKjh5t9WZ0MaBkOJSJzGOZ4Bz8HljgqjD6UTm6nh
         okJm9ogtaCbJYqjZTnvTN/9VpTWwJPXFzO4Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689143363; x=1691735363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QIHZ9R3luUe4h54VtlXXPhHVEQN7PHyTj2OXRY7l0a4=;
        b=RmONeVdXSUkaA3ZHOVd/bGDE2ky/kKh7+erEZZi0mFtBQdfxb7ZmXa3tvoP9TRV9kz
         z5bSdDDOpS8JBMbmzbJNefDu4SWec0WxBG3Gffoo8thlH5CFGA/zo8HWve1STzlbWnIw
         OKgHJHPj8LrVFw7Z8M5IsnRmOSFW6EjUEDwggPB10292XuusacVhqcL23RiIoA2lOv7l
         TtMqB+AdCM7Lm5Grqwwfp5oDZr3yatoXgSSXzEtV6JMDGTrHp43RweL6Ydv5qZ/vqmqk
         P/6MKziHaxY/SK0FVjrGjpVmWnxs2Igt1pgeqI+ETdTpmqtO8WOSYbe9+KdoalvkQ0sh
         xfAw==
X-Gm-Message-State: ABy/qLZ79/E0/MOqOrhumy0ZfWJFHODepVfdOE3v0IDh50beO9qjTpiY
        zp/QtrOsk8RKG/yiiBkRTIa0ag==
X-Google-Smtp-Source: APBJJlF6kaM0+Fj/YeEAF0tg4VcXht5KPiPTGDDsWu1QP0RK4apL9ZGQ+NdBjHGi5HVQe+wd3fhqyg==
X-Received: by 2002:a17:906:3504:b0:982:bb95:5014 with SMTP id r4-20020a170906350400b00982bb955014mr14341745eja.64.1689143363363;
        Tue, 11 Jul 2023 23:29:23 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com (host-82-58-49-236.retail.telecomitalia.it. [82.58.49.236])
        by smtp.gmail.com with ESMTPSA id d21-20020a170906371500b009890e402a6bsm2065390ejc.221.2023.07.11.23.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 23:29:22 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 1/3] ARM: dts: stm32: add ltdc support on stm32f746 MCU
Date:   Wed, 12 Jul 2023 08:29:16 +0200
Message-Id: <20230712062918.2248573-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230712062918.2248573-1-dario.binacchi@amarulasolutions.com>
References: <20230712062918.2248573-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LTDC (Lcd-tft Display Controller) support.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/st/stm32f746.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f746.dtsi b/arch/arm/boot/dts/st/stm32f746.dtsi
index d1802efd067c..36eda1562e83 100644
--- a/arch/arm/boot/dts/st/stm32f746.dtsi
+++ b/arch/arm/boot/dts/st/stm32f746.dtsi
@@ -507,6 +507,16 @@ pwm {
 			};
 		};
 
+		ltdc: display-controller@40016800 {
+			compatible = "st,stm32-ltdc";
+			reg = <0x40016800 0x200>;
+			interrupts = <88>, <89>;
+			resets = <&rcc STM32F7_APB2_RESET(LTDC)>;
+			clocks = <&rcc 1 CLK_LCD>;
+			clock-names = "lcd";
+			status = "disabled";
+		};
+
 		pwrcfg: power-config@40007000 {
 			compatible = "st,stm32-power-config", "syscon";
 			reg = <0x40007000 0x400>;
-- 
2.32.0

