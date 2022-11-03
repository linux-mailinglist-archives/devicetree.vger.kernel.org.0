Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B331B617B00
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 11:42:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbiKCKl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 06:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbiKCKl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 06:41:59 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53AC6631A
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 03:41:58 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id y14so4005935ejd.9
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 03:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N9L4CyUBoVpNks6rJINgLnagMIgj5X1tlpqb7p0rgzg=;
        b=KZj4LSRUWKyBfai+fmMpV18hquLqkp9xOrWq8909wgaRgaklmsTNmwInr2MyxIwaGR
         ti71O4ssQ4fFPkaxGZutcTpB2pOsQzCtq1hLeSJDKZ7dtv1OJePq++tyKRMwJxkRM3Rg
         y4I38OMq+vrq4yUD6lWmxL8W7qHG82V0Mmppo+8ogBUburwgBkts9oEys5wCsQcnSoVB
         aCMaufk0YBUFh6B1Yr4hfALS+WPppWGsLofw+fxtnvK0rHBgjHEmDZkVF8xtT5PVrMbX
         koRDuKeT3YIbD5fdCrMYxa5oTcoAcgb6p9eCsbHVAhcuiJHJj7F2NMq4uLXTQtj+O0Tn
         UtsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N9L4CyUBoVpNks6rJINgLnagMIgj5X1tlpqb7p0rgzg=;
        b=mGm/C5+f0ONNBgvwd63MuRsIQniRDvyzvSGvGE8FcomI5i7qS4gVuDhZUc5+cEw1sR
         Uswe0nB/FvIUIuthfb8nVZQfjhKaQaTiHncwyRRAbDLrIrPgzibBNWgZKDEncAvKQA+I
         1QDv/Yk7Jr7jX1R48rpxpHc1KAcFBU8qZyW2PyiwCZzNM+ygkj1xsYJ6f7WkHu3wWHFq
         v43ah4gWQ9nD+tvHowaiRQb4/UApOaG1fsVWoBmdSd+SnFMn9LVnmdPsTZQFq4GvyHOC
         7XzFE2j5PgaCL2cdHk8B1I2JWvdJBxf9fqhv/NZ4PcRYrYhte7EjTpj4jFubYyjZ9/Xh
         KrUQ==
X-Gm-Message-State: ACrzQf0j2fULmaMljH74EkQ7QsazxvWwDVnI7rwJYOE7XiJDMMGpisyA
        toxTEKpYKDBMOjUyqPs8HH/4gF4sF8w=
X-Google-Smtp-Source: AMsMyM6dqc1kT15/OxmAEY/AFCXHOGNQwYsTQ1Lw1WHMgeFTvUBAoGVKX/94Go7fQEWQw0QuAR94Ug==
X-Received: by 2002:a17:907:2c68:b0:7ad:8ba7:664a with SMTP id ib8-20020a1709072c6800b007ad8ba7664amr28448941ejc.488.1667472116778;
        Thu, 03 Nov 2022 03:41:56 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n16-20020aa7d050000000b0045d74aa401fsm334687edo.60.2022.11.03.03.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 03:41:56 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcmbca: bcm4908: drop invalid "nand" interrupt name
Date:   Thu,  3 Nov 2022 11:41:52 +0100
Message-Id: <20221103104152.19502-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

String "nand" was never a valid interrupt name. It was never documented
and never used in Linux or U-Boot driver. This mistake was propagated
from the bcm63138.dtsi.

The whole "interrupt-names" property is optional and can be skipped.

Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index dac9d3b4e91d..ba1d44e98c32 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -532,7 +532,6 @@ nand-controller@1800 {
 			reg = <0x1800 0x600>, <0x2000 0x10>;
 			reg-names = "nand", "nand-int-base";
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "nand";
 			status = "okay";
 
 			nandcs: nand@0 {
-- 
2.34.1

