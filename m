Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B2B8579615
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 11:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237046AbiGSJSw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 05:18:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237198AbiGSJSN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 05:18:13 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB051FCF9
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:18:12 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id u14-20020a05600c00ce00b003a323062569so582318wmm.4
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=w4Ktoqzz1Exy/sRhoFGGavi+DDf1MrBcDPMFNzulUkQ=;
        b=Vkp0bSB8Nexit26+dMqDfVkgDLL8G6yuCxiEtwNK7/MGprfXAbkuPNvSgoLbYv2t3u
         2RCmgcUtfQCw34G/+lAst8GAzwacDKnT1+fbwBfnKgbIzT+lQmYHhUyLCgFi9M1U5Nc+
         xmYljhOYlt8zOoMk6bo+Y25qqQq1XZ352KAJrtfwQU1p3+iwiU9EbHzXou1JIh9fSmra
         ujS8kXD5by3Ibo48xrtNUYlTHu2j9VUNLgwtBeidNQbltPBWKBzvY4Lm7T/T4fn36WuW
         4hNm3wZIPM/5191O4D+/a/ClKg+2wcQE5c1AlDBTJ7/j9btixF1Wqlt3s6ERNAV8ZKK9
         7SUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=w4Ktoqzz1Exy/sRhoFGGavi+DDf1MrBcDPMFNzulUkQ=;
        b=5nMME7e/UfbTxNdvysJVp4AFMYUj6Ni1LSq4Wa78o0POu3P5RlB0QYyW0Qsbh/zFAl
         CgEgZTgL8l/ObVqPT+YMDMeWfluC66yXaHITltQty+s0MU/v1kuXNV0zaJIJRXuddsre
         k4gFVtr0ZX+KJGdXqO6PXEpX03k1TrZsNLycydYum4oAukJwaubJnsfS32ITx5bhFpY1
         O/B8SmiV27ri/4ticmBTcD4rmkBMUY6jwBNubKbhJlp0bmVWaWlCkrXS9TsNa5BxvBSC
         N5zQNgplwoSGMErVOjCeCF+D3eME540hp/f1hsdhei5ZKWBIMHbh3ixM0iuUa4C1/CYa
         RIeg==
X-Gm-Message-State: AJIora8/BEAvJCydfedrAUMU2Hz8Y2QtDGiEoN3avYG520/ZizJgXnvb
        Fv6ob5Cz7PUit5ByjJZdz9M13dtkwY+Sng==
X-Google-Smtp-Source: AGRyM1sb2CZAbsIXskksA/XctCwJvdIcff61RVokT1M9LvtalVOVRAgbNDXjIz6XRwtYOq+RMxfjGA==
X-Received: by 2002:a05:600c:209:b0:3a3:11a3:d6a8 with SMTP id 9-20020a05600c020900b003a311a3d6a8mr14038046wmi.13.1658222292167;
        Tue, 19 Jul 2022 02:18:12 -0700 (PDT)
Received: from localhost.localdomain (192.201.68.85.rev.sfr.net. [85.68.201.192])
        by smtp.gmail.com with ESMTPSA id bk19-20020a0560001d9300b0021d63fe0f03sm12944281wrb.12.2022.07.19.02.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 02:18:11 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org
Cc:     khilman@baylibre.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.c, lee.jones@linaro.org, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 13/14] arm64: dts: ti: k3-am642-sk: Enable tps65219 power-button
Date:   Tue, 19 Jul 2022 11:17:41 +0200
Message-Id: <20220719091742.3221-14-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220719091742.3221-1-jneanne@baylibre.com>
References: <20220719091742.3221-1-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Schneider-Pargmann <msp@baylibre.com>

This board uses the pin as a power-button, enable it.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am642-sk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 7a84223406f5..1aa441db7097 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -350,6 +350,7 @@
 		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-controller;
 		#interrupt-cells = <1>;
+		power-button;
 
 		buck1-supply = <&vcc_3v3_sys>;
 		buck2-supply = <&vcc_3v3_sys>;
-- 
2.17.1

