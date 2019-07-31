Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 12E277CE70
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 22:30:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730825AbfGaUaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 16:30:01 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:50269 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730824AbfGaUaA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 16:30:00 -0400
Received: by mail-wm1-f68.google.com with SMTP id v15so62195257wml.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 13:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yjwyF8h24+6MkrK2XCkddWq6ewDMefY3p/JkUhfcGxo=;
        b=qzcz7Cl6t4xg8YUv9zpXFmqkJhMi78y34+n3ItM5RM3vnuvyjB8v36KL6skLRPl1ST
         s06JvtshN15JWJg4/St3iS9Z0/Rg0NPCEszd7U+ijuu30Hu/8+Z6yXLfLnhCIvqnF3Oi
         JSgta8K8mMlRlPHlkBqTlIccnqXCMp2penXjc+q2Nb2fHmNWPiTgTtkuozyLQEfIq6Oa
         FOdJcwQzal3USJs9/3CYN6CHs3JYnb2TvvjR6iII4E2HD5EXpwqMHBkcZAr9QVEj76fa
         YWJ9VY7e8YpVSpVpAejGPGkBtSCZ7ZQOGC+voq0I+kw+vMMTzPvd2JX2c1LumyOWOsGf
         T5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yjwyF8h24+6MkrK2XCkddWq6ewDMefY3p/JkUhfcGxo=;
        b=JGU3z7ojincrtqs51Y/rBD6m7bqCdjgWmoI4w5mvFZcs72BRWxpI2LDTpLUs/t5yHW
         0xSKdj2j02EhkgJuS4qYmPKgphPqG4ppfoZD47yzo9cOlxm4UIQmA9Q/ZKPAbttjigiq
         gacSz4C5Gcl3cRYs65YD3MUqDooTqZHh/mDSohVv8C7bUjDml8kmOuvrcaDKTYJaufQR
         nIwhP4CC+UWqsIwsN9Eejm1oTYphibGnY0zAAdEb89dyiPPI3PxT6Ry3uQumC3FYd3H+
         TUKTvRTnuykOSsqxP2xfTE+1TF7A4OG2TbwuQebU+SHP3npIe+jZmZzEgJKbDcnulzXe
         2H+A==
X-Gm-Message-State: APjAAAV9oP4eirSztPCL23WwK/1E71Xgav9YJkldeV6rA1RytSDL6IBA
        d73meAiN8Us+Nh76p5ZOfJ7HBw==
X-Google-Smtp-Source: APXvYqwTYu0Ia5Oacgfvy6EXO0KAmKGEQZx1LX6+bJ4LHOQNL65LwwWoyMz5BQ/0ICXimEC4Sbzm9A==
X-Received: by 2002:a05:600c:da:: with SMTP id u26mr108777580wmm.108.1564604998460;
        Wed, 31 Jul 2019 13:29:58 -0700 (PDT)
Received: from localhost.localdomain (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
        by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 31 Jul 2019 13:29:58 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
        sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
        mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
        will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
        heiko@sntech.de, sibis@codeaurora.org,
        enric.balletbo@collabora.com, jagan@amarulasolutions.com,
        olof@lixom.net
Cc:     vkoul@kernel.org, niklas.cassel@linaro.org,
        georgi.djakov@linaro.org, amit.kucheria@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, khasim.mohammed@linaro.org
Subject: [PATCH v4 13/13] arm64: defconfig: Enable HFPLL
Date:   Wed, 31 Jul 2019 22:29:29 +0200
Message-Id: <20190731202929.16443-14-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The high frequency pll is required on compatible Qualcomm SoCs to
support the CPU frequency scaling feature.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 34c3ac4e4b79..04b7fb26a942 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -698,6 +698,7 @@ CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
 CONFIG_SDM_GCC_845=y
+CONFIG_QCOM_HFPLL=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_ARM_MHU=y
-- 
2.22.0

