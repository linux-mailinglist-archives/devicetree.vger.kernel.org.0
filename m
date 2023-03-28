Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C7166CBC56
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232144AbjC1KPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:15:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232509AbjC1KPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:15:31 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C5AC65AC
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:24 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id y20so15124149lfj.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679998523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukK4h27NxoigC7dSjFLoWuySuRs80nENr66pmBmOuMs=;
        b=SIWBJdYx0NsDp3HLVTSD2orttoOvTI+JMUKiRHbVMoPvP/fkf8dD95XDm51CtZ+OOo
         kgnz7f/HpqYgeq1C3viPhmbollrT91JCSA8Wstwy21QduknsnlZooS/DFUiOqqxy951i
         fa5d3HQWjTPb2PjSZewdjExQOE3f1J5afX4jl4Ok0DIU2Oj1qIaal25zxE8BTMsfnamA
         i1fhGP5pRtZV0JgSgFe0KmOmY27YMoVVdY+2mJiz8sx1gRfneUrbvaIkFhLyEvX8IU2j
         GNYnME+73KjwIe7emky/aX8/tfXBsaxAuOzykXQsVc43ggc5+0rU9eTALBG4ucDbFMvx
         OC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679998523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ukK4h27NxoigC7dSjFLoWuySuRs80nENr66pmBmOuMs=;
        b=PEp8qQjJx8wP36845G+99wvQ43Hib/0XwdX5C9twwd/JIHBNFYhYiMJMMGfe/MXXlE
         pUuN6nxjRVwmzpPQsbJPEL0v/b7Ty7xCJntQjDr1lTaqNTvv3Zb3NaLF4RmAT8Y2ahJd
         7CvTFSWr1eSoC/chiY5C+54mEGrw2M/5QykJfDlpLW50TcQlAoS2vdqAP/1MsuSew4pG
         3Q9k02viYo7j6yLvMZ9HeOLa6dHVVuAF6T2F7Ga/XVgizjsdxkJntxX/yyn5imtPqoxr
         N5DMzxWSbPqomDQISMtsdSOMlC0fEIVv8x3yEWIPNuR90fTtztnEHzevept8RR7NonWt
         wg3A==
X-Gm-Message-State: AAQBX9fFSVHBOcC1slMWFMZTB/KugnClqDhStN85VhwsTqamglhFMj6s
        x67BBvXMNKBcrEEUQRKsesDLvA==
X-Google-Smtp-Source: AKy350aae0f2FYHIpDZhSd7ktpKXsqTfGK8Y8AMhjonOemsJggYQiRFmsDVMKoCcXA5YT6VMPczprg==
X-Received: by 2002:ac2:50c3:0:b0:4e8:5854:11ce with SMTP id h3-20020ac250c3000000b004e8585411cemr4748667lfm.41.1679998522917;
        Tue, 28 Mar 2023 03:15:22 -0700 (PDT)
Received: from ta1.c.googlers.com.com (61.215.228.35.bc.googleusercontent.com. [35.228.215.61])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24959000000b004e84d64ab51sm5061405lfi.58.2023.03.28.03.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:15:22 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        tudor.ambarus@linaro.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v3 4/4] ARM: dts: at91: sam9x60ek: Set sst26vf064b SPI NOR flash at its maximum frequency
Date:   Tue, 28 Mar 2023 10:15:17 +0000
Message-Id: <20230328101517.1595738-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230328101517.1595738-1-tudor.ambarus@linaro.org>
References: <20230328101517.1595738-1-tudor.ambarus@linaro.org>
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

sam9x60ek populates an sst26vf064b SPI NOR flash. Its maximum operating
frequency for 2.7-3.6V is 104 MHz. As the flash is operated at 3.3V,
increase its maximum supported frequency to 104MHz. The increasing of the
spi-max-frequency value requires the setting of the
"CE# Not Active Hold Time", thus set the spi-cs-setup-ns to a value of 7.

The sst26vf064b datasheet specifies just a minimum value for the
"CE# Not Active Hold Time" and it advertises it to 5 ns. There's no
maximum time specified. I determined experimentally that 5 ns for the
spi-cs-setup-ns is not enough when the flash is operated close to its
maximum frequency and tests showed that 7 ns is just fine, so set the
spi-cs-setup-ns dt property to 7.

With the increase of frequency the reads are now faster with ~33%.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 180e4b1aa2f6..5cd593028aff 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -578,7 +578,8 @@ flash@0 {
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <80000000>;
+		spi-max-frequency = <104000000>;
+		spi-cs-setup-ns = <7>;
 		spi-tx-bus-width = <4>;
 		spi-rx-bus-width = <4>;
 		m25p,fast-read;
-- 
2.40.0.348.gf938b09366-goog

