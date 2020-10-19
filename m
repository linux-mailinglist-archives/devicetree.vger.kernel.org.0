Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BAAA2928E6
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 16:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729302AbgJSOHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 10:07:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729284AbgJSOHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Oct 2020 10:07:20 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0359C0613D3
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:07:19 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id s9so11591372wro.8
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PndEcJoIhu8Ps+w0iBL39IDLYKub+UL8r52UvlKnJPk=;
        b=jXznkorpMbudtjKvBK4N2QF2KUBXyVi6JOt43LjMCWyqO0eI+NX5Ra79Mw6fO6R4hV
         VQQao6w/fLm0ghZUYIZk5zVG7sGfX/Q5W/6c4jiY04AJ4mZZ7BC7Gybz9AACJs178wF/
         NRCf2NNy/LKrKLIZkF8QxD+aJngGEvFGnsJIYdiMAy+FQqdaB3suFwIKI3pTM/2S2Rhg
         QV8yxYmPM5QglOe4SR1YeNEdTW8UzDkYonThnq725J+DuvVxhby2SgS1U+sZ8zUvLnAB
         6TGjK+mYNHJWehouP+Lha3mwUxtpTWDrhz1tesldO1lxVOiMxWVcRHu9kSbla0L23zyD
         JXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PndEcJoIhu8Ps+w0iBL39IDLYKub+UL8r52UvlKnJPk=;
        b=dCkXsbnj3k/Dql498PIAnTUo3FxCL16NhJSgWJLWg+mglaDRSXq3vjxVQrroBvqkpS
         A/IYCgKQjClC1NW9FNFxBRA3Mp3hWst10i4tYWCXzSNnnoMlPcwe9WjoXXZOJVAw4dxR
         6XUMkXIA7k7HbkrsBQtdoTe+APQ4QQkMJak5OmN2GwzcMgyp5y50k80OXB6bWvSOJEc/
         Qwp1qavLV5LC3rO0YVezEggAONciUTVY2kT2TdDWY8kwzstQheVOHrWkv6s4+UkjycMv
         pC6AZwbtx/R3ORvhJaga0JsMckUPsRc4+YPFHXuNPL8JyZLjuK6seTnGsA2MuhZAN1nq
         vIOA==
X-Gm-Message-State: AOAM533Da1M3mznHwv8WQ3/3bANmttnxwpeqewiK5kZY29cB9C36tBI9
        h7WNl/av+VUKJrGrfR2PZDHxMQ==
X-Google-Smtp-Source: ABdhPJxbu5w5soYFv2Gj3kP13jgoxuRXjNkYcBYnVYdc/YxGK5tt2wig/DTZ0pvnP2bONQqInoEfww==
X-Received: by 2002:adf:ed8f:: with SMTP id c15mr19230884wro.136.1603116438263;
        Mon, 19 Oct 2020 07:07:18 -0700 (PDT)
Received: from localhost.localdomain (26.167.185.81.rev.sfr.net. [81.185.167.26])
        by smtp.gmail.com with ESMTPSA id a3sm114182wmb.46.2020.10.19.07.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 07:07:17 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, lee.jones@linaro.org,
        u.kleine-koenig@pengutronix.de, thierry.reding@gmail.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 5/5] arm64: dts: mediatek: mt8183-evb: add PWM support
Date:   Mon, 19 Oct 2020 16:07:05 +0200
Message-Id: <20201019140705.1518822-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201019140705.1518822-1-fparent@baylibre.com>
References: <20201019140705.1518822-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the pwm driver and set the pinctrl for PWM A line.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index ae405bd8f06b..c8e1d97e564f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -333,6 +333,12 @@ pins_spi{
 			bias-disable;
 		};
 	};
+
+	pwm0_pin_default: pwm0 {
+		pwm {
+			pinmux = <PINMUX_GPIO90__FUNC_PWM_A>;
+		};
+	};
 };
 
 &spi0 {
@@ -381,3 +387,9 @@ &spi5 {
 &uart0 {
 	status = "okay";
 };
+
+&pwm0 {
+	status = "okay";
+	pinctrl-0 = <&pwm0_pin_default>;
+	pinctrl-names = "default";
+};
-- 
2.28.0

