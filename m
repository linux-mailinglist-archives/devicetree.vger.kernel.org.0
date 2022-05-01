Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A01E51676E
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 21:27:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353653AbiEATaI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 15:30:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353769AbiEATaH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 15:30:07 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E1702E9C3
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 12:26:36 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x18so17266015wrc.0
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 12:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yXuZyYuRv2REW3xNUVVnJn5xBkq6ukaavBE2YyyTs5c=;
        b=yfp4HXcMs0RhpwqwOaCqmtPb1ty43fDaEFbLZOYxlBumkJM5qegc+nYExmH1YD2DZe
         mWTqYXXUtaOU3x+4EtEFPJNb1wfJDinFJ7mul32H6s2E3qOSHHxVORlAd3n0WS/nhB9j
         C/xyvIVlueAqPdaMkrNdahGvoK8c5J+vtE3UybjLop+hFHdA+DeFjDV0u/V2hjJkG51c
         K26+oLC226hbsKQkv3EnguXnJnuNDPkH7VNXJM13+whV7y3VbdkHNbuADqA7z6yCYVzB
         /Q8n/Ql+hw0NqUOricRB+Jzwp3qYU5MSF+ryV+3r7vxfHkuaKO0UT/TWNSHUrLuVvnun
         J67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yXuZyYuRv2REW3xNUVVnJn5xBkq6ukaavBE2YyyTs5c=;
        b=yvHn+v+rGrP9gMbsiyRda0PAKRmdw7GJ2omid2juxLL97BHUKro8yZohULEMrWiDX1
         0INoG1mIz74h688+rNo4nuDWPc8KXyLZ/WKRNbO2wRp1soAqFy5ZotJT2+5aJcAes6l7
         1Ifbzfk4M+Q7gYwMJgd65OsVOwnYVaTVzlEbj5HSUWwBzvKooIGU0HP/x+9EMbTVKnfH
         QI4kzCCEMHWbaPNLnQxWqo8ywAFaP3ToXYgIYYMwvKwjFQ4SzqCF8wS3QrXRrjespLE8
         /No2DepVjjnm1hpARjsSzq5OGtfspSDthEMwxmuQfAbVzw1cGXg5TQ2MVjhROG+VMOUJ
         n6YA==
X-Gm-Message-State: AOAM532IFcFCKtMK/TR6zptbtFOcGhr2VYNYXPcJyRTdUzaVbtIWQ8Zr
        8rsrL72GBUnbDyh/oqfnAMxjterMiSUSglKH
X-Google-Smtp-Source: ABdhPJwqhGdhqeNBRhleuU7ALx0JG2WXpKA91xs11gZLug79RdGh7uFAnRWNtlDveYBpjTyYFd0Qvw==
X-Received: by 2002:a05:6000:18a2:b0:20c:3edc:3f9 with SMTP id b2-20020a05600018a200b0020c3edc03f9mr7450723wri.580.1651433195126;
        Sun, 01 May 2022 12:26:35 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id i14-20020adfa50e000000b0020c5253d8c6sm6448105wrb.18.2022.05.01.12.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 May 2022 12:26:34 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 5/8] riscv: dts: microchip: make the fabric dtsi board specific
Date:   Sun,  1 May 2022 20:25:56 +0100
Message-Id: <20220501192557.2631936-6-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220501192557.2631936-1-mail@conchuod.ie>
References: <20220501192557.2631936-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Currently mpfs-fabric.dtsi is included by mpfs.dtsi - which is fine
currently since there is only one board with this SoC upstream.

However if another board was added, it would include the fabric contents
of the Icicle Kit's reference design. To avoid this, rename
mpfs-fabric.dtsi to mpfs-icicle-kit-fabric.dtsi & include it in the dts
rather than mpfs.dtsi.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../microchip/{mpfs-fabric.dtsi => mpfs-icicle-kit-fabric.dtsi} | 2 ++
 arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts               | 1 +
 arch/riscv/boot/dts/microchip/mpfs.dtsi                         | 1 -
 3 files changed, 3 insertions(+), 1 deletion(-)
 rename arch/riscv/boot/dts/microchip/{mpfs-fabric.dtsi => mpfs-icicle-kit-fabric.dtsi} (91%)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
similarity index 91%
rename from arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi
rename to arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
index ccaac3371cf9..0d28858b83f2 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
@@ -2,6 +2,8 @@
 /* Copyright (c) 2020-2021 Microchip Technology Inc */
 
 / {
+	compatible = "microchip,mpfs-icicle-reference-rtlv2203", "microchip,mpfs";
+
 	core_pwm0: pwm@41000000 {
 		compatible = "microchip,corepwm-rtl-v4";
 		reg = <0x0 0x41000000 0x0 0xF0>;
diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
index 84b0015dfd47..739dfa52bed1 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
@@ -4,6 +4,7 @@
 /dts-v1/;
 
 #include "mpfs.dtsi"
+#include "mpfs-icicle-kit-fabric.dtsi"
 
 /* Clock frequency (in Hz) of the rtcclk */
 #define RTCCLK_FREQ		1000000
diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index cc3386068c2d..695c4e2807f5 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -3,7 +3,6 @@
 
 /dts-v1/;
 #include "dt-bindings/clock/microchip,mpfs-clock.h"
-#include "mpfs-fabric.dtsi"
 
 / {
 	#address-cells = <2>;
-- 
2.36.0

