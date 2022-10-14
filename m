Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 614B15FF57A
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 23:33:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbiJNVdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 17:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230023AbiJNVdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 17:33:44 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C719A1DD8A2
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 14:33:42 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id b2so9146542lfp.6
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 14:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hw2W+lQ+Hv9z48dDP42SJngsa6TM787Uybb56JTsIU=;
        b=IzjtkQDeQYFdEn4qZzb1y1MhYYgveIXQ3jXngRhUccpAUTAv2U56wpVEo4vTa7Ije4
         sAupNlsKBfXuyjJMbKI1gyZDdYl00MbAfewpZYfg2yPC/+GlFo7ry7JPZ9XBuviAPHf1
         xe0mno2Y1BaXlBQLr2ksEzGoRieudyDUjsWBHUS6EQVhJP819XxvT1zMUEsrbLwdY9Pm
         7bHlbgY725Ccras+osgCcPSMdyan91I4QlxbukJFOvL1AYW0haPqlPU9w03RY+A2JMok
         5kINGb3i9YDCuFkLCexSEC3CwDQ/o5uusvv8+JOtwI17ngetxbEAF6UU53D8pBUTF4bs
         D08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6hw2W+lQ+Hv9z48dDP42SJngsa6TM787Uybb56JTsIU=;
        b=0KCJ+JieOZs9hhdP3g8Cgpfr0jpzvDQCRXYxhSSSaPK3dm/4tcpzEaPSBavt6L3vpt
         2ZOLKvfMCX1YdujjMsYamxNPaRoDxnyeyo3Gyr0BUQY7w5bBo3yu8oa97agCZqRU29j2
         fUB6+1oKV1jp1HjADhC/YZVwaNLSoFJSXANscEms3gF9uvtAaBzUTrIC8htECLyXgFB6
         lZWMlntjb4dWPzj50YcjA/0EdlKF66VIxik7cmfS415KnSTgUmmzzoTVjlSnAHmORFNp
         2vWFAMZ8Jm6lreYrQpreDG4uP4k0BDFCdLV7DByGWi34Fg11exbBqRK93U/NQebuU+O9
         uSrQ==
X-Gm-Message-State: ACrzQf1I6Wc1fwc+wW6dGTLm7DmJQsIPXyDXrVWPSydIUiSDIOJfjiZi
        8YAgDHsr9qG1gf3Fuhv2F95+GRglXH1bgW0l
X-Google-Smtp-Source: AMsMyM5e+mqse7jgqB+fvyHTHDmwUvq7Ma4QJCvAULxUDpj58pm7P4FgR2I8cnXSkGuc5SX2RoitPA==
X-Received: by 2002:ac2:44cd:0:b0:4a2:3fcd:c960 with SMTP id d13-20020ac244cd000000b004a23fcdc960mr2482364lfm.590.1665783220846;
        Fri, 14 Oct 2022 14:33:40 -0700 (PDT)
Received: from fedora.. ([78.10.207.24])
        by smtp.gmail.com with ESMTPSA id d4-20020ac24c84000000b00494978b0caesm494036lfl.276.2022.10.14.14.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 14:33:40 -0700 (PDT)
From:   =?UTF-8?q?Micha=C5=82=20Grzelak?= <mig@semihalf.com>
To:     devicetree@vger.kernel.org
Cc:     mw@semihalf.com, linux@armlinux.org.uk, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        upstream@semihalf.com
Subject: [PATCH v5 3/3] ARM: dts: armada-375: Update network description to match schema
Date:   Fri, 14 Oct 2022 23:32:54 +0200
Message-Id: <20221014213254.30950-4-mig@semihalf.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221014213254.30950-1-mig@semihalf.com>
References: <20221014213254.30950-1-mig@semihalf.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
2.37.3

