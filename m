Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE7556773E
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 21:05:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233244AbiGETFB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 15:05:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233226AbiGETE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 15:04:56 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 119D91F63A
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 12:04:55 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id k129so7609179wme.0
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 12:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ofJfdtzmNhmvEWJSidzM2l5f2gdgrg4wmjMzsjAB6EY=;
        b=KPRE2MqxrWAyJ5KFiyW7W2wK/Qp+4RPmBjBPEqd1Ad/RcYiR5eQ4b0SjLC8+sW6c5P
         qCe+z2nKJvGF2GFscoJorSvxk3sNLrfiQ670bUOmB+jACJp9lOakMIuOoOquUdd1Qxyv
         4EDm71nI0XdHb50X7lVmgkNNA8h+QeAqqFaZRYx0mt4T9wPF4HSxuJSZVFf6rY0oqkVT
         u6puW3UWxcyi0rIhc0wj0mC6W6JuMvcvCDBN9Ol1AIcLjv5JSGeLkYTCy1WUs9jLAU6j
         QEfjz7TawPKt6zY2D5YLcdcoWm1Upk/knSsY46BnHYsWbDiw7/Xji7ElmxcyNbFD2ayK
         sg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ofJfdtzmNhmvEWJSidzM2l5f2gdgrg4wmjMzsjAB6EY=;
        b=2kAuSofjMrQ1ByazMkZxuKmhGbRkRZTCwtW/9vxCKYnawnoSPRkGLxnX7hL6xG/mOn
         mowJ4SbPBdiycyEpRp4ihB3ExCmsFaI1LiMjIC7/CIO0bsOiBtOQ3/otEr/hFOgBNRZT
         3TAtCJZ13qN85ybOuU17rYtvE1zYkzNBc8b4q5Os8+q9RaPzKOn6Q+6SQ9nVP3047ccV
         fd784SNaXiOFdC8O/raNFUXFAmdAYMkKtui/1iFIiVUCVQg2uIo/+kJ9B/4oibjK9aGa
         +q6mPq1b+qtCSOwUMJdRStEvTOraNdIaH7klTVB8iqQVpN1On+IKLCsGHWkaN5Faa3y0
         gmKg==
X-Gm-Message-State: AJIora9qJUDjoeWuSbeOIOrrVy0nRlHiit8ovWHG0V3DPPcAZ8Jov0IX
        KRbSNyJsSpMrGyxpXzM67YgHPw==
X-Google-Smtp-Source: AGRyM1tI18mclpFxyL39qQ5/YsPKhSiZSy4A+5WH0urBxCix8CHueAjToJskt0yqz1LTAmw3L7LhJg==
X-Received: by 2002:a7b:c381:0:b0:3a2:aef9:8df4 with SMTP id s1-20020a7bc381000000b003a2aef98df4mr11492100wmj.7.1657047893260;
        Tue, 05 Jul 2022 12:04:53 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id d7-20020a5d5387000000b0021d5c52f4b4sm9912961wrv.34.2022.07.05.12.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 12:04:52 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Zong Li <zong.li@sifive.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Jonas Hahnfeld <hahnjo@hahnjo.de>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Brice Goglin <Brice.Goglin@inria.fr>
Subject: [PATCH 4/5] riscv: dts: microchip: Add mpfs' topology information
Date:   Tue,  5 Jul 2022 20:04:35 +0100
Message-Id: <20220705190435.1790466-5-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220705190435.1790466-1-mail@conchuod.ie>
References: <20220705190435.1790466-1-mail@conchuod.ie>
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

The mpfs has no cpu-map node, so tools like hwloc cannot correctly
parse the topology. Add the node using the existing node labels.

Reported-by: Brice Goglin <Brice.Goglin@inria.fr>
Link: https://github.com/open-mpi/hwloc/issues/536
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 45efd35d50c5..0a17d30bb3f2 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -138,6 +138,30 @@ cpu4_intc: interrupt-controller {
 				interrupt-controller;
 			};
 		};
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+
+				core1 {
+					cpu = <&cpu1>;
+				};
+
+				core2 {
+					cpu = <&cpu2>;
+				};
+
+				core3 {
+					cpu = <&cpu3>;
+				};
+
+				core4 {
+					cpu = <&cpu4>;
+				};
+			};
+		};
 	};
 
 	refclk: mssrefclk {
-- 
2.37.0

