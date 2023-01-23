Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7A43677F6A
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:18:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232676AbjAWPSB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:18:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbjAWPRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:17:43 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A7DA2B098
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:17:01 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h16so11110419wrz.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OFTnHcRctLWrnULhb3EI/HUIzsZhbsTYXYP8OfwRkEw=;
        b=ntVxbmy6Fq0vOni4vVui6s4bRpjxK3RukrFp13xG0a5SYybDV2IsZk7PoZx297/T7m
         xUdg3rdDVHEYXmeCsp/nof1/mYreJEWye+gvVmJNxlGoRlvsKu+rs0i3PMysgqkxyszv
         vGQ9EirwDhLgGMfK5z64e42HMg4ED50n6jfbOM4pQFmxc8rF+n1fXrs//huwKsLV9bEh
         pjBgRNIlU2p63XQC+KIk/qdYEbK3VUpZxtXtOJE9kjmlHjnvPtbnDAuowlRyErae0rdi
         XbpL6sjoApOUeneDfVkL/z5rFuobGwgGR0Yl4HG7lr7OHj9s/Y5PVaQcWesrjk0PFjtN
         ozwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OFTnHcRctLWrnULhb3EI/HUIzsZhbsTYXYP8OfwRkEw=;
        b=dZBwPhASbts+9kGwpjXBckk+/lW5U/AKWmDbQN7uutlzGCptPGiKU/oB5qrLOLAwj3
         1n+z5zm5qI4uSNrflmIAmV8Wu3nOm0FDb9DBdqNHkIK7gtbHQyxTbWnIAI8ATD/EecKB
         8hpwL/HosdW3dz1x7MUIENNj0aOdCwu9bA+HzCCrOoD5edqjrW75jhKRYOA+sJQPcBmP
         gJ4ZYeXKB9gTGcOk7CSfSp2YKqC0SOKdNVPNZxr4ZBR7QWcoVdFxe2UCO7iY0lIvRrIx
         wUzJsqvd+ZrSqkrfdCOuZFPSMZ0VYkb6SVCWBamgkr1ijBAGYwHfjB0MjKLdfzuGtkqB
         XQMA==
X-Gm-Message-State: AFqh2kqcCp78+pbG4oRcW7QUef+t5g2YGI3T/Lm0SZt705k+dZSz+5cH
        ihb5oyBzBBKFulZGJC0Ka7Ncnw==
X-Google-Smtp-Source: AMrXdXuKXxzCkpYs6AOdh5Ygh9/C4C8N1s66O4nAlyeXCjk2dt5C/yN0NuE+xCc1aM7XRI8/Wwd9rA==
X-Received: by 2002:adf:dc88:0:b0:2bb:ddc0:dcc0 with SMTP id r8-20020adfdc88000000b002bbddc0dcc0mr20331561wrj.31.1674486998285;
        Mon, 23 Jan 2023 07:16:38 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6e83000000b00289bdda07b7sm4529287wrz.92.2023.01.23.07.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:16:37 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: mediatek: mt7622: drop serial clock-names
Date:   Mon, 23 Jan 2023 16:16:33 +0100
Message-Id: <20230123151634.370011-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The serial node does not use clock-names:

  mt7622-bananapi-bpi-r64.dtb: serial@1100c000: Unevaluated properties are not allowed ('clock-names' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt7622.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
index 146e18b5b1f4..62487a3c4db1 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
@@ -526,7 +526,6 @@ btif: serial@1100c000 {
 		reg = <0 0x1100c000 0 0x1000>;
 		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_LOW>;
 		clocks = <&pericfg CLK_PERI_BTIF_PD>;
-		clock-names = "main";
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		status = "disabled";
-- 
2.34.1

