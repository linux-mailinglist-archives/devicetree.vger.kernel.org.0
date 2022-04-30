Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49F7B515D5C
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 15:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230452AbiD3NQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 09:16:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378947AbiD3NQS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 09:16:18 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 587B88300B
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 06:12:56 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id e24so14021930wrc.9
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 06:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D3SEdr+fxIa6eNX5euS5Om6MuK6d2iGlkw5zs0H/ONs=;
        b=SkmHarr4ODHRRfHsVgW+WUZyogxa7T/pT1YaBfhU7ZFrtvTjXUbrQfqi/OyqAAvPlx
         WLvmoOBPYswSby7Wlf4NKPOMi1bPXU/vk5A092djDYYM17RPJNBliiwtkQqLd7vrKi1Y
         tfKnWH2Pz1C8DBZfrsckNoKk6XJzxqM6iFAdbKJwpdpDJtLXEokZPRoZsLVyhs0LVKH0
         fMd977IxvpOH5iDbZnz+tfT0ptHDjlExVzX5wEPxDCKVcSBgj7axOfFVEZA1s618hH5n
         DhwV7NhonaR9XLG13BEBpWWV3dvTJ1Wn9JsTRs6xn7YnHdYLGSYFCoEGkrUhrO44/3EA
         7NpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D3SEdr+fxIa6eNX5euS5Om6MuK6d2iGlkw5zs0H/ONs=;
        b=allypIq5zzXo5J/BeFWeDE0uQYjXqoYVuOYkKaH+9SnwHSIVB0BqF9/DFA2B2cR3cE
         nmW80yHa37DZn62TIKUN8OnWz/DjvWZpNMvxdduv1Bh5FvS/uFzfv3FoCMp2+eaxKKu+
         +8xIok/P/EnD8dGkA2OUCNkFZw/ExG6aERcuV+9h20MwfuLwJT4YLiKN09IXycGC/ifT
         MIQ0f4sjub3gZDFNdIfwHTyMnhVwzfrDAVnCNB1gF9bfGiOI3hSLLsLiqyIItXxmZ5E5
         Bg3skQqJ3+Lz1TCn2YXuo3/0dd8wdg75fA0lQRHElSaugAa1WOt5TD4XzIpmB9Et2v6X
         wfbw==
X-Gm-Message-State: AOAM533A+fbl/58fuBvH2zPIMxehQ+W/oQp1IawnPtsPpP9V3MWYRqs2
        uyA9gCRlWlhXM6xde/t44Thyg48+/oCB5OpY
X-Google-Smtp-Source: ABdhPJzMz8I3WPzdOc01vlw14L5jOcx76muJKJWSX4TSNP+dxUOGGZG58Ebk8tPI/T3KW4pjmDxb3g==
X-Received: by 2002:a05:6000:18c9:b0:203:fb67:debe with SMTP id w9-20020a05600018c900b00203fb67debemr3004347wrq.494.1651324374961;
        Sat, 30 Apr 2022 06:12:54 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id p9-20020adfa209000000b0020c5253d8ebsm2004439wra.55.2022.04.30.06.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 06:12:54 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
        Conor Dooley <mail@conchuod.ie>
Subject: [PATCH v2 2/8] riscv: dts: microchip: move sysctrlr out of soc bus
Date:   Sat, 30 Apr 2022 14:09:17 +0100
Message-Id: <20220430130922.3504268-3-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220430130922.3504268-1-mail@conchuod.ie>
References: <20220430130922.3504268-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The MPFS system controller has no registers of its own, so move it out
of the soc node to avoid dtbs_check warnings:
arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dtb: soc: syscontroller: {'compatible': ['microchip,mpfs-sys-controller'], 'mboxes': [[15, 0]], 'status': ['okay']} should not be valid under {'type': 'object'}

Reported-by: Palmer Dabbelt <palmer@rivosinc.com>
Suggested-by: Rob Herring <robh@kernel.org>
Fixes: 528a5b1f2556 ("riscv: dts: microchip: add new peripherals to icicle kit device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <mail@conchuod.ie>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index 746c4d4e7686..bf21a2edd180 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -146,6 +146,11 @@ refclk: mssrefclk {
 		#clock-cells = <0>;
 	};
 
+	syscontroller: syscontroller {
+		compatible = "microchip,mpfs-sys-controller";
+		mboxes = <&mbox 0>;
+	};
+
 	soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -446,10 +451,5 @@ mbox: mailbox@37020000 {
 			#mbox-cells = <1>;
 			status = "disabled";
 		};
-
-		syscontroller: syscontroller {
-			compatible = "microchip,mpfs-sys-controller";
-			mboxes = <&mbox 0>;
-		};
 	};
 };
-- 
2.36.0

