Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9BC2619B79
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 16:24:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231651AbiKDPYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 11:24:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231920AbiKDPXy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 11:23:54 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AA4D1EC42
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 08:23:42 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id y16so7493224wrt.12
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 08:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HKLm3c0Ax0RwyQg3Vkst8SF6fjIBP0oMiPrQPMQRGn8=;
        b=EST0Mno6ZcUNn35RK6/5T01htqzKrIy4DsFvjxw4NO45a0Pd7ld77pc1bAkwv2l8sq
         JqCD2+3nWNt/Ujg26yi2xFhxlB/SpwdLF6nYI6Hx05NCoL1TKgRFYkdhCzyUd/bpRGe5
         XzMP/HWHrjxUKBCtWJaw5YpNCozlDxNSmnO25z53F0nr94rMUWnG2Gp+1P56wzhpMbjV
         ANzJbH6tvLP0NMwTaF5Erl0o5rTR5kPlvYCrE4gix9arMK3S8ts2y5HlKwEwWl0CGuYa
         HmZwmWnMUDdEsqZ0GpNqP6WP/ohceRhe1emscNA4097HM4hTiEwON2gGRjFRcDipbjw8
         j8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HKLm3c0Ax0RwyQg3Vkst8SF6fjIBP0oMiPrQPMQRGn8=;
        b=otHT5emNaOg8CQsfHIOKsK2pYU38in1C8tkdYcLi8BJKmyWv0Kh8sOauWtvl77f5Or
         BNJ5YiNtD6Epbkp8RqlLZC2POChtmAqgnXx23NtnLcbyjzK0cQnOqafeWfwwlHeLaYc0
         vBNBMK/DjDGR/NrtHdHz1jqcW/D7qkzo9s4zSoblPun+qJlQvwk4Ibd9QPfsKo6yMTuH
         tC27dmPllCM58hVxW+bs+p/H1XHug4qWtlBLpHMv922ffIp0+xQRyCPJc5O7i2YSHHtL
         SJKSy6lu5aC6OH/2+eUmkmH2YVocNGBXHaNA/+ZDrTJppGaec/VUj5SyxJaBdP9HdQDj
         AJ2w==
X-Gm-Message-State: ACrzQf0nyNwiI9D02Nh6XNtU53VETUugzixtMHmJTlNoH7QB+zl29YYO
        7JiT88xISWj2llBtBLU7mUob6g==
X-Google-Smtp-Source: AMsMyM5plT1v0BxoKm5y6MF2smf9QgdX0jb8O87uviwA0mbP2P7KKSRz+mtBkq42k0Mc6hxqG+3Odg==
X-Received: by 2002:adf:dbc6:0:b0:236:c090:905d with SMTP id e6-20020adfdbc6000000b00236c090905dmr19908171wrj.132.1667575420565;
        Fri, 04 Nov 2022 08:23:40 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id l41-20020a05600c08a900b003b4935f04a4sm3689764wmp.5.2022.11.04.08.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 08:23:40 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org, dmitry.torokhov@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, catalin.marinas@arm.com,
        will@kernel.org, lee@kernel.org, tony@atomide.com, vigneshr@ti.com,
        shawnguo@kernel.org, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, marcel.ziswiler@toradex.com,
        vkoul@kernel.org, biju.das.jz@bp.renesas.com, arnd@arndb.de,
        jeff@labundy.com
Cc:     afd@ti.com, khilman@baylibre.com, narmstrong@baylibre.com,
        msp@baylibre.com, j-keerthy@ti.com, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
        linux-omap@vger.kernel.org
Subject: [PATCH v7 6/6] arm64: defconfig: Add tps65219 as modules
Date:   Fri,  4 Nov 2022 16:23:11 +0100
Message-Id: <20221104152311.1098603-7-jneanne@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221104152311.1098603-1-jneanne@baylibre.com>
References: <20221104152311.1098603-1-jneanne@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Development boards from TI: SK-AM64 PROC1004 include the TPS65219 PMIC.
Add support for the TPS65219 PMIC by enabling MFD, regulator and
power-button drivers.  All drivers enabled as modules.

Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0b6af3348e79..61ae9c0326ca 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -415,6 +415,7 @@ CONFIG_TOUCHSCREEN_GOODIX=m
 CONFIG_TOUCHSCREEN_EDT_FT5X06=m
 CONFIG_INPUT_MISC=y
 CONFIG_INPUT_PM8941_PWRKEY=y
+CONFIG_INPUT_TPS65219_PWRBUTTON=m
 CONFIG_INPUT_PM8XXX_VIBRATOR=m
 CONFIG_INPUT_PWM_BEEPER=m
 CONFIG_INPUT_PWM_VIBRA=m
@@ -653,6 +654,7 @@ CONFIG_MFD_SPMI_PMIC=y
 CONFIG_MFD_RK808=y
 CONFIG_MFD_SEC_CORE=y
 CONFIG_MFD_SL28CPLD=y
+CONFIG_MFD_TPS65219=m
 CONFIG_MFD_ROHM_BD718XX=y
 CONFIG_MFD_WCD934X=m
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
@@ -680,6 +682,7 @@ CONFIG_REGULATOR_QCOM_SPMI=y
 CONFIG_REGULATOR_RK808=y
 CONFIG_REGULATOR_S2MPS11=y
 CONFIG_REGULATOR_TPS65132=m
+CONFIG_REGULATOR_TPS65219=m
 CONFIG_REGULATOR_VCTRL=m
 CONFIG_RC_CORE=m
 CONFIG_RC_DECODERS=y
-- 
2.25.1

