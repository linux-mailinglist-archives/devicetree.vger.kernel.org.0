Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67D6D4B5CBB
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231159AbiBNVWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:49 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231191AbiBNVWl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:41 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3891713CEC2
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:20 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 194DB4049B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873739;
        bh=L1zH491qgS41n2AXbaIQ7HS33ONC7FahLUP0TNtgPew=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=HRns2mMnw0qjs40FRUism0e+YHl5dw5tLMxjm33CEVZFnv6K/JM2elQQkRKQLZSa9
         b3ad8nWmD1xkOBcFcPQeqaweune4fzILjGHp0tZVmEAEfF/Wcoi2gEossSruX3oNec
         Mqts29zmGbzu768GNXQz/fJg+it53DkMEScP62plIEThegdLZoK0dOUNPi9JL96ARk
         icc35HbuEfnOMsB0Ks7Vh2sd/yKbmTtIVThF+j4m8tWyz/2uaxBMJ9ZEayOX1PXE+N
         dTlcum1e5ch1WghBDL/wgOpm1hlAYrM8n8q/ynwyKIp50cRkiqgFfRUQYA+NjWwyGS
         NpTnDUWhdiL0A==
Received: by mail-ej1-f71.google.com with SMTP id gn20-20020a1709070d1400b006cf1fcb4c8dso1214221ejc.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L1zH491qgS41n2AXbaIQ7HS33ONC7FahLUP0TNtgPew=;
        b=AtYUD1ig6S9x9K0RddH5LBmIOskLFNKMp5kxag9vtgbClZZ9IjZO90NB+dLkzOP2fR
         psxvFPACgKRniE36BE5aV2zYyEeuUxqujcNV55DJuG1tdjWN35YYr1Nmc9jfumQDxAUF
         e3Im75SA1spy3laY2OeKA05ujBd1oYmF40tLUhYSiF2a8kfxNWP41u37ChVj0U2X+p4T
         rEbIvZ4ZM8J+6hhduuFiQHIlgsL3hCGCTlXBI6halzK4gVICQjJm7Vhs6rZrFwUtcxSe
         o/T49SBx84bFiayDF5xcWcuiN5xkRPYD2Cv6iCZoedPstU9xMc9FggDOPA5WbqgaywLf
         Ayow==
X-Gm-Message-State: AOAM531IW6NW3/PsbB+6R7IaxfAcdNheAnNDyy8bLQJCzNyMJcD+/22O
        v1u7iPOjOoQNPqm2us3sODysKQ6eiPUU9aDvPSevz+t5sh7rr40qUUZK4fVXcg3y60qAhiOYeYC
        nbxRyjYe45oQWkoLeBHwaOqQIrsmqM8xuN0fFSWY=
X-Received: by 2002:aa7:dd04:: with SMTP id i4mr764648edv.313.1644873738462;
        Mon, 14 Feb 2022 13:22:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxYZT3hfmG99BK+ndmDIe3ewA0JwFYesWd9OClq7wO2HS/MuYgpu2ey6gvbQ4bbF24Sx8ij6w==
X-Received: by 2002:aa7:dd04:: with SMTP id i4mr764632edv.313.1644873738297;
        Mon, 14 Feb 2022 13:22:18 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:17 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anson Huang <anson.huang@nxp.com>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v2 11/15] dt-bindings: pwm: intel,keembay: Do not require pwm-cells twice
Date:   Mon, 14 Feb 2022 22:21:50 +0100
Message-Id: <20220214212154.8853-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pwm-cells property is already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Acked-by: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
---
 Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
index ff6880a02ce6..ec9f6bab798c 100644
--- a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
@@ -31,7 +31,6 @@ required:
   - compatible
   - reg
   - clocks
-  - '#pwm-cells'
 
 additionalProperties: false
 
-- 
2.32.0

