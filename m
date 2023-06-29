Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65D82742703
	for <lists+devicetree@lfdr.de>; Thu, 29 Jun 2023 15:10:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231430AbjF2NKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jun 2023 09:10:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbjF2NKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jun 2023 09:10:34 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B37C30E6
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 06:10:32 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fa96fd7a04so6529585e9.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jun 2023 06:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1688044231; x=1690636231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=If9xo6kn4YujIxJM57M8VcoisAQkvWP6F35kjaMRoCU=;
        b=ZBhOs4I9ifZegsYe3qXTXR8dAlOBX6Ty63SQThWZd2xvSAS1Lgq7ohJVOHVxHC1PFK
         xQV31RdFzOevaIgXGX3KyV7NG1nYozCblo/ebbTMTkRJmngLouqM0eKRsDwqJJxuHNAI
         Fy0mW9ynohpuwjYr5Xoa5xCTWg5MzD03YMsp7K6nWabipEokGPXMl3RPQjZuzwes97gD
         ahJB2aLxJrW6/4zyfu4d3mgbfEU1iPCzcVht0xTPPzgeDMbcN2WJtR/fRQ6VrlpfZUYo
         Bx3Q3GbATjVCWfNvapS+WpWXpoVQLi9/Ie72auy+FNd+9KjPKsUGQyMs80QPNJwo4aRf
         htGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688044231; x=1690636231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=If9xo6kn4YujIxJM57M8VcoisAQkvWP6F35kjaMRoCU=;
        b=Vdiic4RSFfpuHmqVG9KQwKhkeNSinshaKOD999UlesasKdufrvN86Uav3iiqX/9Shg
         sQTYIRCvnnpZSvnIv8C1hRl+PAfOEzHFyGCUwKkfWtPe6UKhwZTgegKRLmGMC25aV6tz
         HDclBmthrmotgkYfmsr5x1W8s+YU1wKq54VwUmrvP1eHzhtKyOqUcenRzONqvsRMrQPh
         IRTMjp+6tuAThXRtKQEQVNLIwOmC8F/+hSY6ScoV7SlER4y6XP6fMQbgPcfOkqV4TP6c
         oBCBhDNCCUAbi10tglJH/n490+BEVljIBPiPYi/QS9ayjV6bkSCTSQsGVVefxE0y+Ci0
         +aSw==
X-Gm-Message-State: AC+VfDyQymG+uce3pUS9uoyGvTUtz91CtElhTG0laWYY+mK/MM5uKBMf
        DD//4aEzC78PW50cdrBu17QWPEaKRCmMOE3PUeo=
X-Google-Smtp-Source: ACHHUZ4mxkbeE1RFqAi923ibpyMDQyTqnQFQdJ1GQrjokoH19pXys1qp09wkM58RybXBMBl2J/ojDg==
X-Received: by 2002:a05:600c:2205:b0:3fa:8866:14af with SMTP id z5-20020a05600c220500b003fa886614afmr11561901wml.14.1688044230842;
        Thu, 29 Jun 2023 06:10:30 -0700 (PDT)
Received: from [127.0.1.1] ([77.205.21.223])
        by smtp.gmail.com with ESMTPSA id v4-20020a05600c214400b003fa95890484sm11885899wml.20.2023.06.29.06.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 06:10:30 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
Date:   Thu, 29 Jun 2023 15:09:56 +0200
Subject: [PATCH 2/3] ARM: dts: am335x-evmsk: Use usb0 as peripheral
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230629-usb0-as-peripheral-v1-2-167f78a11746@baylibre.com>
References: <20230629-usb0-as-peripheral-v1-0-167f78a11746@baylibre.com>
In-Reply-To: <20230629-usb0-as-peripheral-v1-0-167f78a11746@baylibre.com>
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, vigneshr@ti.com, nm@ti.com,
        Julien Panis <jpanis@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688044226; l=617;
 i=jpanis@baylibre.com; s=20230526; h=from:subject:message-id;
 bh=MGG3TEvRfj2CNy0MbxtNy3cknxHiKAVsOw5IHcDhAxQ=;
 b=RQNlS17x8D+g368Ck+RoQTs9E4tN0PsPhOqBDI8DPNA8Vv7knhdFT/1JBAC1TACsBNyOo2qer
 0Xv7zwVpnHeAjhIBVyUCBBookCyGEFyaDzqZiNxZs3SnIv80l96hW7B
X-Developer-Key: i=jpanis@baylibre.com; a=ed25519;
 pk=8eSM4/xkiHWz2M1Cw1U3m2/YfPbsUdEJPCWY3Mh9ekQ=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch configures usb0 dr_mode as peripheral.
This USB port is mainly used for RNDIS and DFU.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 arch/arm/boot/dts/am335x-evmsk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/am335x-evmsk.dts b/arch/arm/boot/dts/am335x-evmsk.dts
index 5b3278c0c46a..03300bf45cdd 100644
--- a/arch/arm/boot/dts/am335x-evmsk.dts
+++ b/arch/arm/boot/dts/am335x-evmsk.dts
@@ -503,6 +503,10 @@ tlv320aic3106: tlv320aic3106@1b {
 	};
 };
 
+&usb0 {
+	dr_mode = "peripheral";
+};
+
 &usb1 {
 	dr_mode = "host";
 };

-- 
2.37.3

