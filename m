Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33EF04DD96C
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 13:11:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234446AbiCRMM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 08:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236058AbiCRMMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 08:12:50 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9FFC1F083D
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 05:11:31 -0700 (PDT)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CF8DF3F1AB
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 12:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647605489;
        bh=lvXN32xWMwqKUxNGexSgeJG3uEGExxJ/K8H5AwYMdqU=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=kqEGMtV6kkAJuSOZvgnINUJSB0RW0XzUn05VlSJ0gufn4qEtavenQbX5VCNuonizK
         yA3cYqFQ58iV9XCBx8g3G0pWp/HrABQueM5SSih76JvZp8Eg6ZKGCh5KQu1jIvSXAR
         0f75dN9nhtGlir3yDdNX3kQLJTTqwJEbP9W/t7LKjVomPnq9Gds/itri6Ikne6phkm
         0Xxd2TQC0tyYSWMHMmsmxstidY5OZ2KOOQCEUFNMlKcadDbbLuCN06x18UtIfZ0/68
         OqP8hPng3eLv6t9TqFaFOGRE0ec3ELDJLirDpyBo5n1216BTIjlvnXqc64SV7Ty8L0
         Q5YLXQsrJNB9A==
Received: by mail-lj1-f197.google.com with SMTP id h4-20020a2ea484000000b002480c04898aso3387730lji.6
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 05:11:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lvXN32xWMwqKUxNGexSgeJG3uEGExxJ/K8H5AwYMdqU=;
        b=SA+v6uFJ7IiSqyLPS3EPqTcddVZExk0G2qigXCYJHhUtDV3agO1g3yG1wdPtvBu8BM
         TTzK2Prydz3LKcKR7ISvVkm6YOgNAiLowV3zQ73KpzXMoRqT1Qv18o9eQ+CI1xyUfLPD
         RwYX4ueMopXTBwqwNIq9xaUrtlTfH2vCpMJLtmslC0P9owZvihfK+huf2+cYjOYtX0io
         8uP79tesorbxP07OVx2BoyASRsDM+goD0+LwlyzYSWii8kQf3YX4LCL7Lik/GmIJCvzQ
         Fft7MuDRnI3jXGXwCgSMhxBigLtrQ3avh7BJ1vkZ8R2+ojobNsOlmo9n2LNAulhOSEq1
         g03g==
X-Gm-Message-State: AOAM533B6f0dU3j2Tf/4F8jAGjavC9k5CF7U/TO6CeCtWS6mgvsrdfpq
        WCo32BXdXHp95GtIZ3bLgDvMMUP8DWeLPlDYpdbChJRBoI9xm/Xx/a9o7Ud3w+BSPWK6k+1YPkq
        xmvw1BvKNX4EpMoSRCgSSe1Lm2Ob3M4Gk7HWZnfI=
X-Received: by 2002:a05:6512:3b95:b0:44a:1de:54df with SMTP id g21-20020a0565123b9500b0044a01de54dfmr3211542lfv.211.1647605488535;
        Fri, 18 Mar 2022 05:11:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWnQHUOh4+kIJLXpmMZOz6RYDvKlF9U3Ib9DEoUH8CIfpREXO3SjMF0GS+wtqHKsDbm2a3GQ==
X-Received: by 2002:a05:6512:3b95:b0:44a:1de:54df with SMTP id g21-20020a0565123b9500b0044a01de54dfmr3211534lfv.211.1647605488317;
        Fri, 18 Mar 2022 05:11:28 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z1-20020a0565120c0100b00447a7c10e4dsm827132lfu.31.2022.03.18.05.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 05:11:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] arm64: dts: n5x: drop invalid property and fix edac node name
Date:   Fri, 18 Mar 2022 13:10:44 +0100
Message-Id: <20220318121044.108750-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The intel,sysmgr-syscon in EDAC/memory controller node is not a
recognized and documented property, so drop it to fix error:

  sdr_edac@f87f8000: 'intel,sysmgr-syscon' does not match any of the regexes: 'pinctrl-[0-9]+'

Align also the node name with Devicetree specification (generic, not
specific, and EDAC is purely Linux term).

Fixes: ef82c9be844f ("arm64: dts: n5x: add sdr edac support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index 50b29fa7ee01..62c66e52b656 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -26,11 +26,10 @@ memory {
 	};
 
 	soc {
-		sdram_edac: sdr_edac@f87f8000 {
+		sdram_edac: memory-controller@f87f8000 {
 			compatible = "snps,ddrc-3.80a";
 			reg = <0xf87f8000 0x400>;
 			interrupts = <0 175 4>;
-			intel,sysmgr-syscon = <&sysmgr 0xb8>;
 			status = "okay";
 		};
 	};
-- 
2.32.0

