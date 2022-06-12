Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3302B547BE3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:50:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234642AbiFLTut (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:50:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234559AbiFLTus (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:50:48 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20034EF74
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:50:46 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d13so3438998plh.13
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+m7njuw0a6ohy2SWyhocTfVc+DZHY7gqsgx6eJfQ0/c=;
        b=Ew0gtCSoJFrP2+1Wn2uXJAd/8U6V1vPyGey+JZ0GDJlD9kmTno2O6b/R/i5YPE/3fg
         v7awMJgJkot7sn1eI4H8Dn6v6A9Fh+c/GPBrbZ7tnkYqlp22A3++cSQAwYw4Al/e6Xol
         +FnZJ+YjgYrpvcR30cJjW1eH3XlTVIjHY37+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+m7njuw0a6ohy2SWyhocTfVc+DZHY7gqsgx6eJfQ0/c=;
        b=EeR036s6ZXRf16odv2EZHv7pslD7q8YpHDwxCnue8mo/9akHF8nUW1AYwRPHeRp+nT
         fsEC0yUx3+gsBsExoLNkcMPdZS2LQ9nUWki6WnNSA5+YmlS2Hq26um8h2qmzPK2HxvKB
         211mhZ48i19mhlkInlqaw6xFHgG029HuJGCFSZze342sNAjNP3wfHtOHORAm0zfSwWC2
         rDZ49CV0SKN1R7NfHV4fU7hB/LUqocrnDgIFcPGu7OU9U/4hbZb0tXHjqqV/S3m0hJcT
         hvK0aVu/mAUMYB/iQZm3/ipsBKRdG8uiph+J7Mdyp0Jg5L3/lBMigIrz/3uZ9AqDZT2R
         9RgQ==
X-Gm-Message-State: AOAM5311wYRT/S1KZoIkHjC+n7xsVBVeYKsemTnN4SGMGVzKvp19jop/
        2j5qSrL1qpB0QLmtsn3rmp0kmA==
X-Google-Smtp-Source: ABdhPJxYOeIMxC6ytIRWrAkqro7DmQQ7N0mMk319J3WBS0G5cQrzqc9+qNj9VrOfm/mlFs96dZ3kQQ==
X-Received: by 2002:a17:902:ea0e:b0:164:1a71:beee with SMTP id s14-20020a170902ea0e00b001641a71beeemr55364600plg.10.1655063446187;
        Sun, 12 Jun 2022 12:50:46 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id t3-20020a17090ae50300b001e2fed48f48sm3512826pjy.41.2022.06.12.12.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:50:45 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH] ARM: dts: pxa168: add timer reset and clock
Date:   Sun, 12 Jun 2022 12:48:12 -0700
Message-Id: <20220612194811.165874-1-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer was missing the clock and reset like the other peripherals
have assigned. This was causing the timer to stop working during boot.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 arch/arm/boot/dts/pxa168.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/pxa168.dtsi b/arch/arm/boot/dts/pxa168.dtsi
index 4fe7735c7c58..16212b912b94 100644
--- a/arch/arm/boot/dts/pxa168.dtsi
+++ b/arch/arm/boot/dts/pxa168.dtsi
@@ -53,6 +53,8 @@ timer0: timer@d4014000 {
 				compatible = "mrvl,mmp-timer";
 				reg = <0xd4014000 0x100>;
 				interrupts = <13>;
+				clocks = <&soc_clocks PXA168_CLK_TIMER>;
+				resets = <&soc_clocks PXA168_CLK_TIMER>;
 			};
 
 			uart1: serial@d4017000 {
-- 
2.25.1

