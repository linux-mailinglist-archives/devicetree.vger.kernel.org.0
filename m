Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5EF6CCA44
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 20:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbjC1Sv6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 14:51:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjC1Sv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 14:51:57 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4F02212F
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 11:51:55 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id bm2so9752489oib.4
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 11:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680029515; x=1682621515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9ugK0mF23Fyz7hIZHjINC4te6PX9o49izU9uda+2KhI=;
        b=nw9r5fgqg0Ld7v6lHR2FfbA8mt90+LUawTK5sC/KLTefo6PORIkIMwKScaTdFO5Wi2
         xvfcFBbBGjBzUKWVYEEt7oASg+5FQ+i40ruACfLGwj5q4PxJGUp72W61zXz6xZ7u9wqg
         p63hTZj8b/kjsYM4l0G8feJrnBuqOE+zOX96W3tyf0PcJPD4nZ+j6sqjqzl0L0aN7PSf
         vZNkoJoIn8bqoOHJC+IpQKZlNYkM6Yl5rZZD+mTy0jDinzUpp/oDvg1aC3s2/gh+6ZTl
         4IMKLjpVuTpNKs71PQDcRtF3/Ao1t6M0MCoLbxrdW4X87jCvO/rRIVhAJZaToSXVKtNu
         qjog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680029515; x=1682621515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ugK0mF23Fyz7hIZHjINC4te6PX9o49izU9uda+2KhI=;
        b=17dPmKFy/sgwHfljHfbVXaUMQHgCwzq3Jxqj5leqFiZEoVkhalCvpjCTK6XdathlHP
         mw9x4IXQxnApueQBil+Z17erE/Wi17fNV06B9YarxJ2EiPccstVhd1aWMBIbFPbl88gP
         H6qVHfr/YImHMgOXmlP+lCg5VdEuweoMcfS+HTTDqOYA2XW7QN9L3OKK66kHv8Ofzfqv
         wglgDfEZi+nGtYyzdl5t69qO9F7UD7I8AF+F1pSyqm25okol2sI4tNyM6SUV5O8nFMKA
         jaW4WB49eB19jb1ot/s31mPv10Bt2bGMa/Tc4dVJtm2bt6Z71Xh4UBXf88kcItCMUEJT
         PYlA==
X-Gm-Message-State: AO0yUKUQXbWIkF39zwMjfOoJQC4hqSGp3B0XL4mJg+vguYlDCU/5TI1g
        rUMOLrT61vjG8UJH+8Kl8c4=
X-Google-Smtp-Source: AK7set/XSOgsuu6JYhcUEdpMJdG62pxJ60qdWX0FA1mTc36MAqWyFM7OCnPMvuOdHyyTfmSloIU3kw==
X-Received: by 2002:aca:2b01:0:b0:36f:9a3:7cdd with SMTP id i1-20020aca2b01000000b0036f09a37cddmr6559468oik.1.1680029514996;
        Tue, 28 Mar 2023 11:51:54 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3342:12c0:f0a:8ea8])
        by smtp.gmail.com with ESMTPSA id m206-20020acabcd7000000b0037d7f4eb7e8sm12683518oif.31.2023.03.28.11.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 11:51:54 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alistair@alistair23.me, philippe.schenker@toradex.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx7d-remarkable2: Remove unnecessary #address-cells/#size-cells
Date:   Tue, 28 Mar 2023 15:51:46 -0300
Message-Id: <20230328185147.529718-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Building with W=1 leads to the following dtc warning:

arch/arm/boot/dts/imx7d-remarkable2.dts:319.19-335.4: Warning (avoid_unnecessary_addr_size): /soc/bus@30800000/i2c@30a50000/pmic@62: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Remove unnecessary #address-cells/#size-cells to fix it.

Fixes: 9076cbaa7757 ("ARM: dts: imx7d-remarkable2: Enable silergy,sy7636a")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-remarkable2.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-remarkable2.dts b/arch/arm/boot/dts/imx7d-remarkable2.dts
index dc954e4f63e0..92cb45dacda6 100644
--- a/arch/arm/boot/dts/imx7d-remarkable2.dts
+++ b/arch/arm/boot/dts/imx7d-remarkable2.dts
@@ -321,8 +321,6 @@ sy7636a: pmic@62 {
 		reg = <0x62>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_epdpmic>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		#thermal-sensor-cells = <0>;
 		epd-pwr-good-gpios = <&gpio6 21 GPIO_ACTIVE_HIGH>;
 
-- 
2.34.1

