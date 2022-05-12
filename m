Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CDFC524D6F
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353968AbiELMth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:49:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353979AbiELMtb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:49:31 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A42F024E018
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:23 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id ch13so9960225ejb.12
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iyLgDkdQHyZAkcqdjwAb1osRIT28CWJKpvenchINumw=;
        b=JdLkQLmHfAHy9A7YLF7J2qNbjiUoDHrM7P4JAtchg/RdUvu9GL5EIUQdu5KuSVEOU+
         LeD745fz88MA7UGUhk8tJ7YbHGs0bg+j/+Y5yHQHU8ZFsbwhGS34EysnRxNUem6paDn9
         kri2xDtw8cl5IAOyftiRAmUt2QH1lpXGCX/7fAB2owB4onsAPGUjlKHqf6tW89sbLeVY
         m4MJ3exP/EjqWQTPGC90jN9NlRJsBlD45V/jFTwJlEJUNErWYZSlX+c2RbS5Au+ANz9l
         mnQ7uI70FmEQrwwlzmMwqUQvMsS6QGZElfb2YNuH8gnc0MVicgT74k0PFMIBj1Wx1RlP
         26ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iyLgDkdQHyZAkcqdjwAb1osRIT28CWJKpvenchINumw=;
        b=N74OIpzOF3TSiSHvfiUEHOp5Qlm4667Q3z/3Hhf2rCIOvMlMMCuvutfQ1eyjs9V0IV
         miLs3TteA6GeQ6ucajcu2IW3FT1gGpreZz5OtUJsPerPP3B+NZUKZAo2hCAMlTxGjQ8+
         gKeShjlnLqp8cxHyGv3Bfu2QMChugMfGDzTVJfBtNBTLnaZy+IxMW+2M3GmbE6bsj6Po
         gM9F7AJYwuEZoTkuNHc5PCsckBQHEhGe/ZNd6TiNyPgmj0EjnhxwEWP2qP6NAT8/Elf1
         6pe4Zy7s54k4ZZCqJBhubqJv/f17MJOdcHYxfpzxR97L9333KoM176iSJIk6SaSQ5oh+
         K3lg==
X-Gm-Message-State: AOAM533Q7xQfTv5Yuq+sZ9xX7ba/qJJawYzxQc8CZazFtsYMGUhEEzQV
        pVOXRi3klMbQneBKkDUtIfpbZA==
X-Google-Smtp-Source: ABdhPJz3DcrS0XnZld/BLlHleyGDnDxfRB0k0ZwXdVVvRVsQEwmYKD/Trh4sgAO5bFmxGD/348dkoQ==
X-Received: by 2002:a17:907:9609:b0:6f4:d4d7:7c82 with SMTP id gb9-20020a170907960900b006f4d4d77c82mr29492507ejc.483.1652359763207;
        Thu, 12 May 2022 05:49:23 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-58.xnet.hr. [88.207.98.58])
        by smtp.googlemail.com with ESMTPSA id h3-20020a170906828300b006f3ef214dc2sm2109475ejx.40.2022.05.12.05.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:49:22 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 08/11] arm64: dts: marvell: rename temp sensor nodes
Date:   Thu, 12 May 2022 14:49:02 +0200
Message-Id: <20220512124905.49979-8-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220512124905.49979-1-robert.marko@sartura.hr>
References: <20220512124905.49979-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the temperature sensor nodes to use "temp-sensor" which matches
their device class instead of IC specific naming.

Remove the status = "okay" which is not required as its default anyway.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index b89c7455612d..f21a855fc608 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -152,14 +152,12 @@ &i2c1 {
 	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 
-	nct375@48 {
-		status = "okay";
+	temp-sensor@48 {
 		compatible = "ti,tmp75c";
 		reg = <0x48>;
 	};
 
-	nct375@49 {
-		status = "okay";
+	temp-sensor@49 {
 		compatible = "ti,tmp75c";
 		reg = <0x49>;
 	};
-- 
2.36.1

