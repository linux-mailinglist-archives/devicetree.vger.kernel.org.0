Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE0B0567741
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 21:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233245AbiGETFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 15:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231365AbiGETFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 15:05:01 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 025DD205DE
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 12:04:56 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n185so7578881wmn.4
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 12:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EAejLaRmDI7ahw+8pWedR3a7Dpv7oYIzED6NiiTc7a0=;
        b=gH8Eh0uSyp1pd8lYOTghOMpllbsaSKtH0LZfoePu+NLFoGUnlrt/bMlxOQW8M9nYhm
         2RcpqIr/5SHSJXL1yLCB6PqDhUDzggWiwdYDbx5v3OTdAqaVLNZekmK5HwJU8AM+QJrV
         /T44OnuWF5AME4PsrRs8vhQbGU4Onl26sSNn1wqmfQ2bn6F3OggSTLoCL33SK/nWdIaP
         7Z5v0Aza1Kf+VxyRjvGNLOltssWMr9PoSSvETyshYXAkAsZuPzMlFI9rZ7+27fy75akx
         9uMzCdfvFIU+oAjoE3bdvC7hculNfq448yw1hlj7Rc0xgBHMq3tap751KKBP09thts6R
         rdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EAejLaRmDI7ahw+8pWedR3a7Dpv7oYIzED6NiiTc7a0=;
        b=Ug7VqZYN+hxONmDb82jn4vrmaiNiDrmYFmJfML7FKlimv8VE4CiSwUt2eNnAE6e3+o
         MFVerfLaPhP5Zri7shvpg7TASyF/ETezlA794TDcSv3L6SQFwYs3C5NioDKvUl0UpYkK
         osv9gg1YmNxK/iLWNEjQJWGJncqP2V+mi6R9ZZ5BzMjjeYCgV6xGvozKCGbagYFr0Xn9
         WVY55i0BO5m4fRL9zuNTawojVF5Hfxcgwm8Nxdxt1tSeWbusxA0tCwWShixUmWwZB7Tt
         B1+aYX6W0P9nTYiaVO5cBpVN19YheM/rxlpJMFy+G0SuR4Ji1671vUzeUeu/KdfqwmgN
         7hIg==
X-Gm-Message-State: AJIora/vbhHyJM4KKMwOtan5yPI3W+s1QE9lOdzhZWkUn9xY8LRBVTCI
        LVQ45mqiUT15hC5sHBAwtcDPjw==
X-Google-Smtp-Source: AGRyM1v5EycBOklnarxa0uQO3GFtyp55frrKZpEg99ryhZLuRXj9VDMx0b33n8f0spv/5bGvXvOHyQ==
X-Received: by 2002:a05:600c:2284:b0:3a2:b7d6:609b with SMTP id 4-20020a05600c228400b003a2b7d6609bmr5625866wmf.83.1657047894458;
        Tue, 05 Jul 2022 12:04:54 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id d7-20020a5d5387000000b0021d5c52f4b4sm9912961wrv.34.2022.07.05.12.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 12:04:54 -0700 (PDT)
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
Subject: [PATCH 5/5] riscv: dts: canaan: Add k210 topology information
Date:   Tue,  5 Jul 2022 20:04:36 +0100
Message-Id: <20220705190435.1790466-6-mail@conchuod.ie>
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

The k210 has no cpu-map node, so tools like hwloc cannot correctly
parse the topology. Add the node using the existing node labels.

Reported-by: Brice Goglin <Brice.Goglin@inria.fr>
Link: https://github.com/open-mpi/hwloc/issues/536
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/canaan/k210.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
index 44d338514761..ec944d1537dc 100644
--- a/arch/riscv/boot/dts/canaan/k210.dtsi
+++ b/arch/riscv/boot/dts/canaan/k210.dtsi
@@ -65,6 +65,18 @@ cpu1_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
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
+			};
+		};
 	};
 
 	sram: memory@80000000 {
-- 
2.37.0

