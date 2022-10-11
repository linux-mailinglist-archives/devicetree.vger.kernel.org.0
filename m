Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 895B65FBB17
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 21:07:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiJKTHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 15:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229790AbiJKTHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 15:07:02 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE7561EEF9
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 12:07:00 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a29so22577117lfo.1
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 12:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1P7Tu7Zg7/Oeo00x3C4gJ2qIBP6l/X7v2PzjR6kX6w=;
        b=hILRhdT9omOyvQ2apWYCiEXHlIGcUvRQkVm3PQv9TTOn+zR1DJYMfRFpkpr+Q0yjO8
         Jgy94s96wo6jsSI34jdO4y2bRkuna2ba96hV+l/6yZIcHyoAnDEHbfisYAUgsyeUDue/
         GUllEcpBDpRbb1fo0xirnzAhtfwD/mLxdj+uOUsysg7hkk5+lSCwSkVs3IkV64zeq3n6
         M9hBew2RTb9cPo0cLTsd244HCUhh+4ffsm90FBadHKGtBnUAnVowmuJr7vONqaa4dsJy
         D37jQ/gYV1cT9za8fLdKAZ5cN0MfEZzRROr4bPALT9S9O1pRiJuXHv/FW80aIKvYWhQd
         PgNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m1P7Tu7Zg7/Oeo00x3C4gJ2qIBP6l/X7v2PzjR6kX6w=;
        b=Xi0l+ThPBopdabziftKclBGIYg9oi6tIyxlvlc8u4G5fZqvXxASR18o2BvyifsR2CU
         9Gxr3+KBWGI7zW6Ov8Bxa/Er+Fx2gUmStBOIPrNI+LsG4RrzKUSrbek5YAcUAbw4XBvU
         IAi7j5kH+PgDKgziGMpSWTPfqugePcfkMpPQBqRFaO9l9Y2qgSTca2aPf+EFdqIQQ5tk
         0DA0iwMVqbm1NMDGS7nlIPaWU3NK8UW6xLuyyeUyrwL/XKGFJSkot6bjR2MJzBQ0hdZR
         i645GdFSirwXLVhoPMPuIYUhHSdgGYdaUKz5HsbYSS4xdhqDVaw6horNYIWNsPEjxWp8
         P1zw==
X-Gm-Message-State: ACrzQf2s8R8M3lxVRxs5y8SGZqhUMC1ibxXtKsfKAEwTLUN2MM3c9c96
        doHawlJCtwVhgrcdhxfZZrkTAjdjHSgHpe9amGU=
X-Google-Smtp-Source: AMsMyM4nToM4VlUHs5cLXbpMdF9jUqFfGxQLatV/ebWePg/1kAvblTIaBUN2zOEsmt0vDuqmGVkQ6Q==
X-Received: by 2002:a05:6512:230d:b0:4a2:fd3:9208 with SMTP id o13-20020a056512230d00b004a20fd39208mr9349742lfu.557.1665515219127;
        Tue, 11 Oct 2022 12:06:59 -0700 (PDT)
Received: from michal-H370M-DS3H.office.semihalf.net ([83.142.187.84])
        by smtp.googlemail.com with ESMTPSA id p9-20020a2eb7c9000000b00262fae1ffe6sm2270477ljo.110.2022.10.11.12.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 12:06:58 -0700 (PDT)
From:   =?UTF-8?q?Micha=C5=82=20Grzelak?= <mig@semihalf.com>
To:     devicetree@vger.kernel.org
Cc:     mw@semihalf.com, linux@armlinux.org.uk, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        upstream@semihalf.com
Subject: [PATCH v3 3/3] ARM: dts: armada-375: Update network description to match schema
Date:   Tue, 11 Oct 2022 21:06:13 +0200
Message-Id: <20221011190613.13008-4-mig@semihalf.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221011190613.13008-1-mig@semihalf.com>
References: <20221011190613.13008-1-mig@semihalf.com>
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

From: Marcin Wojtas <mw@semihalf.com>

Update the PP2 ethernet ports subnodes' names to match
schema enforced by the marvell,pp2.yaml contents.

Add new required properties ('reg') which contains information
about the port ID, keeping 'port-id' ones for backward
compatibility.

Signed-off-by: Marcin Wojtas <mw@semihalf.com>
---
 arch/arm/boot/dts/armada-375.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/armada-375.dtsi b/arch/arm/boot/dts/armada-375.dtsi
index 929deaf312a5..9fbe0cfec48f 100644
--- a/arch/arm/boot/dts/armada-375.dtsi
+++ b/arch/arm/boot/dts/armada-375.dtsi
@@ -178,6 +178,8 @@ mdio: mdio@c0054 {
 
 			/* Network controller */
 			ethernet: ethernet@f0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
 				compatible = "marvell,armada-375-pp2";
 				reg = <0xf0000 0xa000>, /* Packet Processor regs */
 				      <0xc0000 0x3060>, /* LMS regs */
@@ -187,15 +189,17 @@ ethernet: ethernet@f0000 {
 				clock-names = "pp_clk", "gop_clk";
 				status = "disabled";
 
-				eth0: eth0 {
+				eth0: ethernet-port@0 {
 					interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-					port-id = <0>;
+					reg = <0>;
+					port-id = <0>; /* For backward compatibility. */
 					status = "disabled";
 				};
 
-				eth1: eth1 {
+				eth1: ethernet-port@1 {
 					interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
-					port-id = <1>;
+					reg = <1>;
+					port-id = <1>; /* For backward compatibility. */
 					status = "disabled";
 				};
 			};
-- 
2.25.1

