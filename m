Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC60D581137
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 12:34:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238664AbiGZKeS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 06:34:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238657AbiGZKeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 06:34:16 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA0D22CC88
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 03:34:15 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id m17so19251696wrw.7
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 03:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dVpUn1ya8DZAmfEkPodqRgTC7Rp5n0FnEcoh5sI/x9E=;
        b=598pyo7Pho0sXAWSrhHI/4pPNNR42w1FdwJKoS11KfZ8OGo1qnHif44ryBqVmJYqI/
         JExhDmtPEQjbR0QpepvVfSVrQwsMKTn3VjGGn8rc1wF5bAU7xgd/sdmSbDl0oE3Oz//5
         MTWOZhosTtqYpOyDPAz8NyDNNFtnTK9aZ0bxICn2BPhOfyD2+R073sTL6qydQuDG06Eb
         yjgkSkRh3kuf06kojrmmGN/ejF1s/JkOKyVPpoTeEza1zNtJSYVWThFc1Pln7nP0pjgV
         NiMC1EyeoA5SDe6E4lZLBfFvQ28Tu2h4XVfKAE0vcz2k1Ds5lHwEScoQwIh2dPcSXSCg
         0lYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dVpUn1ya8DZAmfEkPodqRgTC7Rp5n0FnEcoh5sI/x9E=;
        b=uAxwbIqHv5YSX9r3LJnKIu6tkRD62i2h+XHSYGCZddlvxjokonjQKl9U8ZXNVlQ3c3
         u1mCSODyaraUzUhpKe6T8QXCkdBovWcgKvBvCz44ubac4WbLSb1MCUobB1rJcIueqPH9
         QXHiy393wbCWFUWoAiiF9DqwPvZ1bkfNL1dwg9r4GyC/Pz/pCFisP3SSz/bL5kBiOCH2
         Dq4/OpfPxOi8Oly8OJKg51suDGKACfeURImIqWjmBdBEpvUmXW8ml/m8Qimss6jCmOjL
         XivB3wKX6aFnZx9etysHk3NklT1jnMYTAWDuU4oxc7tfE4jzAREm7XCqLOQKDLLDM6zz
         T5Uw==
X-Gm-Message-State: AJIora8M1w5SvWOaUkqOkQxryLWNsAIMFw7w0FjLfch6sgTi+Cb4fnyT
        0mle2BBmtDyUpl971VE4t127Bg==
X-Google-Smtp-Source: AGRyM1uO7T50XsgowPKwutHFpPO1yqrdBIf0BIORNhJdo+xEZAG3b7hTHiB8/txL1HC5YOjr1eK+kQ==
X-Received: by 2002:a05:6000:144d:b0:21d:8109:701d with SMTP id v13-20020a056000144d00b0021d8109701dmr9986486wrx.443.1658831654383;
        Tue, 26 Jul 2022 03:34:14 -0700 (PDT)
Received: from localhost.localdomain (2a02-8440-4641-6f91-91b7-326a-5d27-a1c3.rev.sfr.net. [2a02:8440:4641:6f91:91b7:326a:5d27:a1c3])
        by smtp.gmail.com with ESMTPSA id ay35-20020a05600c1e2300b003a2e42ae9a4sm20617121wmb.14.2022.07.26.03.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 03:34:13 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org
Cc:     khilman@baylibre.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.com, lee.jones@linaro.org, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/11] DONOTMERGE: arm64: dts: ti: k3-am642-sk: Enable tps65219 power-button
Date:   Tue, 26 Jul 2022 12:33:47 +0200
Message-Id: <20220726103355.17684-4-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220726103355.17684-1-jneanne@baylibre.com>
References: <20220726103355.17684-1-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Schneider-Pargmann <msp@baylibre.com>

This board uses the pin as a power-button, enable it.

Needed for driver testing but official board support pending.
TI commitment is required before board upstream kick-off.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am642-sk.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 7a84223406f5..d789fb7c2162 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -348,8 +348,7 @@
 		pinctrl-0 = <&pmic_irq_pins_default>;
 		interrupt-parent = <&gic500>;
 		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-controller;
-		#interrupt-cells = <1>;
+		power-button;
 
 		buck1-supply = <&vcc_3v3_sys>;
 		buck2-supply = <&vcc_3v3_sys>;
-- 
2.17.1

