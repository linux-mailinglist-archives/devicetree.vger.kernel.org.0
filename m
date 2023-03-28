Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D75586CBBF3
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbjC1KIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:08:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232476AbjC1KIA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:08:00 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 733D77A9D
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:07:32 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id y20so15100046lfj.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679998048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQaFD4osD3DHxIZa/buALI2kTZuKgrQvblLMK2wYDmo=;
        b=Zy7aNvp+kqqyuw2iDArozGHYDREgAE5yRQVhgOogYSiEm6Zn0Ko4N4ZAHFbpiQMkV6
         c3SXzZStijEFJyddV1boMdGPxF5p40F3EW+nuMcCJlVtscNJ+BHSfUQ7rpTJTw0aaN6G
         pWJTJIEyX31yc3WhDrGT+60nz+qL3NSkz9t7jGLa46lx+qMwuA7s8ELo2XgL19oq6zM+
         TDnut5eqzKfbRmC4T1Pdk0IQAo7txXaE50z57AMV5ywBV7s6SauA0iWWHTD7nOZiWDlG
         E0J6lXA8h4B5/pe2Ovhguk9Ymci+DuR5fdKWR1Mcsq9JoiDah7gEfFwQ4WloajTzA8KD
         oxxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679998048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQaFD4osD3DHxIZa/buALI2kTZuKgrQvblLMK2wYDmo=;
        b=N0Y9VrT5b1bbUjErm5+Cs6q9Mx4Nkl8IcaMXWf4vDA3/GdLLZFpGbm60vzyWDUrRG3
         copyJdciTn3dMlsQ1nbyzLbD1po6qtHxDAaIAfnKCHsmArBjnZatC3DEC7TCDuLEw3VR
         ZQpcNHS4X1CXFbeOVdigOULLQyTi3tjgS3t0ZOeQYufapzkOZwUrjlSm+rZV4NsWcca5
         Op5s8giDjAeWsw+n352OJom4lwf/ed7g/z52tcoilZgy/vxT9UJH253Ko+X1UkdVjZfI
         cFDl4SjIOJnGSMlXuDAclZViLKBP6STlPJv4JXgohvf9i+SH3HkzVrF3JPii9mX+RsG0
         h0xw==
X-Gm-Message-State: AAQBX9eynP3RIUKET4WQWM7xwuAxyaN/VxyIRc0EaUgi0FPHGTm4Tat+
        knDY9z6uM0ZPs0Z7L1GMHgeFwA==
X-Google-Smtp-Source: AKy350aW1f4TTMZKwNfQpTfuRkMYUA25SWc5xDJeJyeTqHxQA7xhI0DQB4Zmzndeb1ph+N1atefO7Q==
X-Received: by 2002:ac2:5519:0:b0:4de:e802:b7e3 with SMTP id j25-20020ac25519000000b004dee802b7e3mr4371321lfk.19.1679998048436;
        Tue, 28 Mar 2023 03:07:28 -0700 (PDT)
Received: from ta1.c.googlers.com.com (61.215.228.35.bc.googleusercontent.com. [35.228.215.61])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651203c900b004db2ac3a522sm5039572lfp.62.2023.03.28.03.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:07:27 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2 1/4] ARM: dts: at91-sama5d27_wlsom1: Set sst26vf064b SPI NOR flash at its maximum frequency
Date:   Tue, 28 Mar 2023 10:07:20 +0000
Message-Id: <20230328100723.1593864-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230328100723.1593864-1-tudor.ambarus@linaro.org>
References: <20230328100723.1593864-1-tudor.ambarus@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

sama5d27-wlsom1 populates an sst26vf064b SPI NOR flash. Its maximum
operating frequency for 2.7-3.6V is 104 MHz. As the flash is operated
at 3.3V, increase its maximum supported frequency to 104MHz. The
increasing of the spi-max-frequency value requires the setting of the
"CE# Not Active Hold Time", thus set the spi-cs-setup-ns to a value of 7.

The sst26vf064b datasheet specifies just a minimum value for the
"CE# Not Active Hold Time" and it advertises it to 5 ns. There's no
maximum time specified. I determined experimentally that 5 ns for the
spi-cs-setup-ns is not enough when the flash is operated close to its
maximum frequency and tests showed that 7 ns is just fine, so set the
spi-cs-setup-ns dt property to 7.

With the increase of frequency the reads are now faster with ~37%.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
index 83bcf9fe0152..4617805c7748 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
@@ -220,7 +220,8 @@ qspi1_flash: flash@0 {
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <80000000>;
+		spi-max-frequency = <104000000>;
+		spi-cs-setup-ns = <7>;
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		m25p,fast-read;
-- 
2.40.0.348.gf938b09366-goog

