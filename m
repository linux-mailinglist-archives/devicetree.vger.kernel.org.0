Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 377976CBC55
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232301AbjC1KPc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:15:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232144AbjC1KPa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:15:30 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E5816EA8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:24 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id br6so15059526lfb.11
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679998522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QqCZBLOWDafOBoOlTrMP8B0zdSc1FZSNMJAlIExG3UM=;
        b=t9OnNpqky/FwhydCPEZZDj9cC8WhyFJ6DX6Eqp2eRmN28088SkZ0dzeSpRiFki4J+K
         3B7tktQFTrLAH6ALURVDAqxyd4qZ4UVwY+ciAxwz+qreejacdo8NLxZ4yDTQjBZPiDnP
         6h7PScc545ATkD12+MndfEXweXLu0WOpQ+6DJX8GraM4CGV/E/3pQlILhjyzFJzR5XRB
         Ui9oj3wNlNYlLGdDIjNJh64ICbu+gR0yJzVidaXa7edVLMWlAaSg9G9AE6FAjriGR1Wy
         +5zCANGciWvwxpNFhijGxzMkXWRQSk3Bz7t7iG+Ra/0EeuN5oTXpr0SKOxLMcIk4qune
         RvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679998522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QqCZBLOWDafOBoOlTrMP8B0zdSc1FZSNMJAlIExG3UM=;
        b=pCh+iAt4A+AG/hu4UQiUVm8SwBUdtdLr+BTZfU3fTlR0Z9dvtk8Zq/H2B0+5YOz52c
         PDXFT1SmdmXiiaEGqHEXQJ9Fn1225mG6BEBJJTVjYrXa6GFvFh9JoFqaKXL4/1GP9NmZ
         TMCjubc17S+nYfM+P7us1N8p2L3f9JODkPcW855o6SrnXitOWs36T/erKB3DCSM6Np9I
         2+xA+4BxXRVgV2z5V/Fl5Fj5P12aEDKYv4HaI1MLcXJDzXMnyHM/+RII/01kQWEkGM1x
         7u2qL2qoXcSjEhXFArKmWZV78ZEcNMieoCRrZp6ZYILUiH0tc1YQUhQJqBBa2xtm+tUi
         nacw==
X-Gm-Message-State: AAQBX9ftZcGWjYRKEFlR1GoKR3qpv8VSfn6K7FNdkiS2RA1SrFgXNqcj
        1HQigACjumzI5bMiHS4+8APdvA==
X-Google-Smtp-Source: AKy350bgWfxXLD8Q847RJ7ey62vlxVTfAXfCJchvhg8x3HltPj3VenFzVWOk+MsTJ6NlHiarPrqBxw==
X-Received: by 2002:a19:700e:0:b0:4de:3774:2d97 with SMTP id h14-20020a19700e000000b004de37742d97mr3487289lfc.13.1679998522305;
        Tue, 28 Mar 2023 03:15:22 -0700 (PDT)
Received: from ta1.c.googlers.com.com (61.215.228.35.bc.googleusercontent.com. [35.228.215.61])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24959000000b004e84d64ab51sm5061405lfi.58.2023.03.28.03.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:15:21 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        tudor.ambarus@linaro.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v3 3/4] ARM: dts: at91: sama5d2_icp: Set sst26vf064b SPI NOR flash at its maximum frequency
Date:   Tue, 28 Mar 2023 10:15:16 +0000
Message-Id: <20230328101517.1595738-4-tudor.ambarus@linaro.org>
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

sama5d2_icp populates an sst26vf064b SPI NOR flash. Its maximum operating
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

With the increase of frequency the reads are now faster with ~37%.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/at91-sama5d2_icp.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index 1346b8f2b259..999adeca6f33 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -669,7 +669,8 @@ flash@0 {
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

