Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F01E3674DD5
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 08:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjATHMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 02:12:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjATHMH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 02:12:07 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E23942728
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:11:57 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so2960111wms.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i3+Bkk+XIU7Y4ICBofg74wb2Khfebi4kOszzdZMn3mg=;
        b=ZafJBSbiARhqyQ+ssIrBJPwCDCTw8hwzqRdhRLUocHV8pBmbdzLVZ8/wzLiVgDdk5r
         5wtITDv5Fwus1LjK7H0CGSINKU15KVD6KqKeA0GJlalHg2KJkB+Im6Fl905QWItN1QEC
         v6E695HBTdZRsL5PBBu4HXvbMHMDDNBhdiNljf6hcMRLE0/DeHi+UOVYeK7Zt62iTa3o
         zp4GmEyDAKCsj4G7M+6BBR0NAmrsXph/uTr5hR+gU1QoXrpxTbQW1GaPGdIMXKuOTucu
         4M7ONLVBauSkuyAzE0k33L5VaMucqHDtuorCuPU5gf9Vds2Gbud/rrPK8dvCDEo2/ycb
         omvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i3+Bkk+XIU7Y4ICBofg74wb2Khfebi4kOszzdZMn3mg=;
        b=c/acFBra2uWue4d/TzYeyBq9MznRtEJtwb5ep2jAJqZ0Xt4QVIruUlCCcMWzhBGwQc
         ihfSxDVn2rug1qg8lDh0pKNuwas6V4F29vwnpwIL87tlmG7WZZEK77Fh5gIC0Ugfq5R5
         R2en2yuk1HGKKAAoofzltCOjGYZ0DMfV6E6HE9CwIstjfloNtFnz5N490hL63sfJw6p2
         Qc4abB7S5TVrgdx3IRIFXUMfRgCSkAw1v4YV8eDTZSFkgmJ84kPxKvhLqf5Qkne7r1Oh
         AEY0ry2kSv9qetQUqeACVq+Gpr4rTiDlO4rsnb2Emo2F9ClDhZK19z7onJeaYKU8v97O
         fyeA==
X-Gm-Message-State: AFqh2kruyi2l93pzj6S/jGRYhGrs0jjLSw/ucPQVhTlr1bNbkYJNpRCA
        w8EKKcsAvBBCGpv5U2dWtnXsGA==
X-Google-Smtp-Source: AMrXdXt7+nh8ca7/1yrIp9E/1nrNSGJ4aQFzrZgnmtyQHesPuo7ROe81rlXJlua239KYSzV7UlASFA==
X-Received: by 2002:a05:600c:4e93:b0:3db:d3f:a91f with SMTP id f19-20020a05600c4e9300b003db0d3fa91fmr10681001wmq.23.1674198716414;
        Thu, 19 Jan 2023 23:11:56 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l30-20020a05600c1d1e00b003c6b70a4d69sm1386377wms.42.2023.01.19.23.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 23:11:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: exynos: drop incorrect power-supplies in P4 Note
Date:   Fri, 20 Jan 2023 08:11:51 +0100
Message-Id: <20230120071151.116272-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

simple-battery does not have supplies, but it is referenced by charger
instead:

  exynos4412-p4note-n8010.dtb: battery-cell: 'power-supplies' does not match any of the regexes: '^ocv-capacity-table-[0-9]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-p4note.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412-p4note.dtsi b/arch/arm/boot/dts/exynos4412-p4note.dtsi
index 7a515b87bc7c..e41cf3ed362d 100644
--- a/arch/arm/boot/dts/exynos4412-p4note.dtsi
+++ b/arch/arm/boot/dts/exynos4412-p4note.dtsi
@@ -132,8 +132,6 @@ battery_cell: battery-cell {
 		precharge-current-microamp = <250000>;
 		charge-term-current-microamp = <250000>;
 		constant-charge-voltage-max-microvolt = <4200000>;
-
-		power-supplies = <&power_supply>;
 	};
 
 	i2c-gpio-1 {
-- 
2.34.1

