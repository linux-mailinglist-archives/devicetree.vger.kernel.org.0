Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16DE6A5AFC
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:44:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbjB1Ook (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:44:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjB1Ooj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:44:39 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A53F221296
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:44:38 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id r27so13503055lfe.10
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QZVVT1Mods1CC3LcSWFUfhrlLPTbyk1rZyppNmATSPg=;
        b=ckKQQNQbdWfdjQJnyWRnLdwTsyTVq0xb1jE+G6u/q/he9tZCcx82MXXDpCmm1YadPj
         +9ynPS6AEttBVd2IJJ4KXgO6Ehi4jI6YI6onRHZp84zz/hg2OoUrAXy/m4Hmy2ZRCc/X
         w9v9ZmXNe6lQa3JxHsjaLk8IUpyJz2oXqkpY0URiIlubPiDDTLKgyjajO51nq5J1GYlW
         zaR0sV4BiXL/Lj60MWuikYLPfR0RrJjjV6D2VTuYnrK0WL1n1MadweH83l4tj6e4+uX7
         YBpO2LcRkDQjgDyOjGnc2WZrNhxAGeN5tLvFlmZQzrbJ3jV4q+ZRCrov/y0HD/YXDOiZ
         KejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QZVVT1Mods1CC3LcSWFUfhrlLPTbyk1rZyppNmATSPg=;
        b=JZf4HTRSRHbFBPmG/MzkKLFWb9PZ6MuxM1HPQ4EbHe/azg/qDzrK/JgCRsxmAb8np0
         G3XkKyBFSHapkJF7RPl/e+fju6nhCAJtU8e1qqMIS6nbZ7YI/Tc65AlXgrB+M1oZe7bG
         U5daarteiOXM+wGa1uSp0F29yFBdJnacDtwf73tIyPDkC/uGtAO7o/yip0DgBUYVk6b6
         6rfLuoG57X/2D9bRqqMlNASsfDtgHI3KFnTx/lH0AEMb+N0ozPSLooAOVUyHp717LHJY
         HCzZ9nRtQ9A6DhGN2rUve4EmOigVusTlpnVHKEpgp/XdHle7vDu/53oXkTT8v0CiXgKQ
         3nqw==
X-Gm-Message-State: AO0yUKWdwDbmR+K+eJlLjEz7nVIYNdHR7/y/iE4CD5tZWxxY1WDk407S
        lDyMzJlqFJeDDYHSUf2Z2cU=
X-Google-Smtp-Source: AK7set+bm1vzDhG23EKntj/E97vPZSD1WG1LAxLOHySXIxmrQoCkP+3atnL5S42WFI4X2WH7d4vwIg==
X-Received: by 2002:ac2:5589:0:b0:4db:4fe5:c001 with SMTP id v9-20020ac25589000000b004db4fe5c001mr541607lfg.39.1677595476800;
        Tue, 28 Feb 2023 06:44:36 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b10-20020a056512024a00b00498f67cbfa9sm1365554lfo.22.2023.02.28.06.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 06:44:36 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] arm64: dts: broadcom: bcmbca: bcm4908: fix NAND interrupt name
Date:   Tue, 28 Feb 2023 15:43:58 +0100
Message-Id: <20230228144400.21689-1-zajec5@gmail.com>
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

This fixes:
arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dtb: nand-controller@1800: interrupt-names:0: 'nand_ctlrdy' was expected
        From schema: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dtb: nand-controller@1800: Unevaluated properties are not allowed ('interrupt-names' was unexpected)
        From schema: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index fc96ee7ab39d..1240fc5fb08c 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -556,7 +556,7 @@ nand-controller@1800 {
 			reg = <0x1800 0x600>, <0x2000 0x10>;
 			reg-names = "nand", "nand-int-base";
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "nand";
+			interrupt-names = "nand_ctlrdy";
 			status = "okay";
 
 			nandcs: nand@0 {
-- 
2.34.1

