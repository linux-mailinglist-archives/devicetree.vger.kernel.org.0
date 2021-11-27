Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 332B1460222
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 23:40:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356553AbhK0WoM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Nov 2021 17:44:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356557AbhK0WmL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Nov 2021 17:42:11 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4DD2C0617A0
        for <devicetree@vger.kernel.org>; Sat, 27 Nov 2021 14:33:07 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id p3-20020a05600c1d8300b003334fab53afso13534639wms.3
        for <devicetree@vger.kernel.org>; Sat, 27 Nov 2021 14:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hN+6gbYdyGAjVnMlgQrBqQi/CF2WLkIegNLftvsH2gY=;
        b=DlVHEKe1sf9t1x3J3dV5oUzT5laj66uD+D8FcpDAJGtTw7W6R/G6/4i/1FsAegGaC4
         DW4mVPYOPZZa1fR+gJVNcxrDMoGaTpCFO3BS6HqLDhV685L/RFi8oZ3uCTMIVamCk/rH
         Gbm13j/4qRRRpYZNvl7glovJJVa4VSthBqDZ1Emi172S1esenJHvEmYHb1eH0HfsP46I
         EIUfXDANPd+JKuTHyKrw/fL7UZ2YD9yL22xJNnjsCng73w0MP+ZI7cfIWty5543aPlMg
         jYSBaNQJ2WS81kRXrTK+CKnleaWNOIepZa+TUGt8DNK8znwRi+QHw0uezn0wfC/HRYbd
         ewkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hN+6gbYdyGAjVnMlgQrBqQi/CF2WLkIegNLftvsH2gY=;
        b=VuWDi26+4dsiwD7JA3Fo1iHrw314VfTygoSHc6DY+yX9Gny4syHH5bhelkBHo6HWX/
         pzdonIkxFQraFMJRYbt+0P7i7mN+SFTdm2R1uHKPetgA0238vX9bXQgt1BJCrtWhSfGm
         jjv/BzjoSDpX3fcCkLOi1IEdtyLkUvNpNBEyAMPbEUZ5tpbsE2Il4H5CI+02647/Hl8Z
         ytuq9uGHxd5Q3PKNuubTu62BGNOt9IGfFQwejyUFDyrtRwipJPUkQyIijwfGcVuTN8Mu
         nAlpeaUI926LrwrOgFhm6XzpqPS1JnVDjh4t53dP7FxQ68p394lC0H/nHT48w4ePUX9G
         DdpA==
X-Gm-Message-State: AOAM530V1bL2QGY+28AetiAxbz7qfHJnyJeDXgWgomG5i6syeMj+J6lO
        nC9UymIxjWUOTdULf7CrbEKF1A==
X-Google-Smtp-Source: ABdhPJxR6Q7r+leY9cj8FBiR+YQOouaiZQ2fWT9sTrdBPHYHb+gpo78GRNNQbc1FsqSfzm0h3WuhFg==
X-Received: by 2002:a05:600c:4f87:: with SMTP id n7mr25568893wmq.63.1638052386493;
        Sat, 27 Nov 2021 14:33:06 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id w4sm10078421wrs.88.2021.11.27.14.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Nov 2021 14:33:05 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-i2c@vger.kernel.org
Subject: [PATCH 7/8] i2c: Make I2C_EXYNOS5=y impossible when EXYNOS_USI_V2=m
Date:   Sun, 28 Nov 2021 00:32:52 +0200
Message-Id: <20211127223253.19098-8-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211127223253.19098-1-semen.protsenko@linaro.org>
References: <20211127223253.19098-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When HSI2C is encapsulated in USIv2 block (e.g. in Exynos850), USIv2
driver must be loaded first, as it's preparing USI hardware for
particular protocol use. Make it impossible for i2c-exynos5 driver to be
built-in when USIv2 driver is built as a module, to prevent incorrect
booting order for those drivers.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/i2c/busses/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index df89cb809330..e815a9dffb2c 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -613,6 +613,7 @@ config I2C_EXYNOS5
 	tristate "Exynos high-speed I2C driver"
 	depends on OF
 	depends on ARCH_EXYNOS || COMPILE_TEST
+	depends on EXYNOS_USI_V2 || !EXYNOS_USI_V2
 	default y if ARCH_EXYNOS
 	help
 	  High-speed I2C controller on Samsung Exynos5 and newer Samsung SoCs:
-- 
2.30.2

