Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D76751AF4B
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 22:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238667AbiEDUi6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 16:38:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378168AbiEDUiv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 16:38:51 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A465B4A
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 13:35:14 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v12so3498958wrv.10
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 13:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kj6gvTW508ioZB9vcsmBa5dLyYw96Kxg9vwOPe1U7nc=;
        b=ZgdbVjocHD1S3M+lP8I4gH6GE2rr3avbmlNrIjk2/LFKV1MqKier3SIMbVlIHRTDan
         vdqKRepi5sP97IeC7HIy5liqihPb9OVfLTqUaeTx92WoS2k1wCMka0qf9kkzNUW0l0cx
         BAmYYLHeCV2rj2Qd3V6sL8ZIA71qB3Fa4G3bC8Z4oEI0sjGzNquuLw2GCdvmLKBHJ+Hf
         zdc/yM0nQiCO5YgyFMK6+Q1J5wv+7QxVDpfatED7jKxqnAK4AJUha/KGw/gLEpjAuETa
         EIbi/8UV1zNuR/iBM8m0k9TC8xpydg2uOxhD+lYhdNbDFSvZNG8pesj1n7qDAPsmVbrI
         gVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kj6gvTW508ioZB9vcsmBa5dLyYw96Kxg9vwOPe1U7nc=;
        b=oXRLdNb6n0aBzdHY4Qy5liMMb+bKp/HEJN/9HKAeWPJ1p66r4xv5ME8CYvIuurDS1y
         kOhI0uphf+d5/gd3Eu2wveAQBDI49fDk5f22rFuR8ep9eO+kldeqOZQfQW/+gbCIjC6d
         TD87FxQYJ1stKloIF/kQMaOSO2GWgXQmesbsKlXC+HAslakKt8uYBdDfADHw8PjSELhV
         2qhqUqjqcfshZwxGiP5HhES3hC9lE34gif7ZqfPqYEo8v6idTAZokh9LY9LzrBYUexSV
         MkeKGBgNI/9z0hhtCkkoR4s2EDL99FOROnMdYza9IbeStrPvunO3gNL/dsadqlID2iec
         /gMA==
X-Gm-Message-State: AOAM531W6cV6Tuf2RwUBccaxHtK9bUcvgQUJgDRJmY4ypV7XlgMzOf7w
        G8i76jD2eRQqzB9qBMPmK1VGmg==
X-Google-Smtp-Source: ABdhPJyHwjBb3mBRYup5T5Ul0WqJx3T9zZ3OHhmfsSdK2MfyRNs1CmC2GTuBHMEQSuFPmjaaCSlndQ==
X-Received: by 2002:adf:f0cb:0:b0:20a:ef39:d42b with SMTP id x11-20020adff0cb000000b0020aef39d42bmr18219145wro.8.1651696512891;
        Wed, 04 May 2022 13:35:12 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id l20-20020adfc794000000b0020c5253d8dfsm13330101wrg.43.2022.05.04.13.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 13:35:12 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v4 1/8] riscv: dts: microchip: remove icicle memory clocks
Date:   Wed,  4 May 2022 21:30:45 +0100
Message-Id: <20220504203051.1210355-2-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504203051.1210355-1-mail@conchuod.ie>
References: <20220504203051.1210355-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The clock properties in the icicle kit's memory entries cause dtbs_check
errors:
arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dtb: /: memory@80000000: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'

Get rid of the clocks to avoid the errors.

Reported-by: Palmer Dabbelt <palmer@rivosinc.com>
Fixes: 0fa6107eca41 ("RISC-V: Initial DTS for Microchip ICICLE board")
Fixes: 5b28df37d311 ("riscv: dts: microchip: update peripherals in icicle kit device tree")
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index 3392153dd0f1..c71d6aa6137a 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -32,14 +32,12 @@ cpus {
 	ddrc_cache_lo: memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0x2e000000>;
-		clocks = <&clkcfg CLK_DDRC>;
 		status = "okay";
 	};
 
 	ddrc_cache_hi: memory@1000000000 {
 		device_type = "memory";
 		reg = <0x10 0x0 0x0 0x40000000>;
-		clocks = <&clkcfg CLK_DDRC>;
 		status = "okay";
 	};
 };
-- 
2.36.0

