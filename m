Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85D79567740
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 21:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233254AbiGETE5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 15:04:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbiGETE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 15:04:56 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 909E0201AF
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 12:04:53 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id q9so18868533wrd.8
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 12:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ia61xjYZRZJlY+9xb00BGdCtYvU+CPGhICs6f5ZBvAY=;
        b=LgY3wj15rZfyPkNFwy/Q/05dDlJOgaYzX0JTd0xz7r/ylNZFU6sm8GCVNQ2urRAVdm
         CkscfoU23VZ+NxtXrj6d1CYcK5/gqnhrW6BraIrqUGrymi2gro2CDc5rPQmr7D8x5S1q
         IIXzb7QwpcDzFyyqHAC/hmNBNEpXIxhuEKa9OVvi9S8siKSrSTl5DySskUngGK4T0/wt
         CL4huuFlUJFA68LQHfh6XwxZs7l1MXp/kXCnzlX1lck+s3fQ7DCQ2Jak74KKrnW52WsY
         okuchUG6xc3pPxY4ap5GCU8TcXHvCy3l58VQQ4CbAdEsCLNecF1COBWun3N17gYEaooA
         D5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ia61xjYZRZJlY+9xb00BGdCtYvU+CPGhICs6f5ZBvAY=;
        b=lkSWj/+jmWpOO2deOEVOWAECPi4MH/31ubesG67MzMKq9DAwtlBZlEWx6JL3yxrCjH
         ssAi2tx0OGwdxglTCap6W+Y0z62kHjs32wk8TDU1zihKJZUog8IaZJ1owoBauURYblLV
         50h+Pl7p+2q9rjpqL6vKwYxrnZtyOYlmgv8ZshkOOiKi3J6N67bMhMhEuqtJ+fXlJKZT
         96r5fDvLzxDpT1KR+2JdaI+GFOJMGU+gDWTN3dHlFLZg/UP4b6Hoff1xtCrgZWxn4mso
         lTKIWUxDoBOKLzT7xG5Y0IGm9aWi/wreikcr9H/j+pMfjscTbhb9wt1AM0fhvaDntxp3
         hiAg==
X-Gm-Message-State: AJIora/f8cPXrtQDCayimDnutOK8yKVsNC3JEbncBi/ml7NMOXZ2fAGi
        hoYkFxDmlDuoBFrwGPisldEZ2V8nrNLFzWjqYJw=
X-Google-Smtp-Source: AGRyM1tfUrutzCcev1jR0MNPW4nQzPfSNDQNeYJBmdJ1xJzSas6+URz89sHyVueorcnGMkr2xdlaUw==
X-Received: by 2002:adf:fb46:0:b0:210:2316:dd02 with SMTP id c6-20020adffb46000000b002102316dd02mr34750910wrs.557.1657047892078;
        Tue, 05 Jul 2022 12:04:52 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id d7-20020a5d5387000000b0021d5c52f4b4sm9912961wrv.34.2022.07.05.12.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 12:04:51 -0700 (PDT)
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
Subject: [PATCH 3/5] riscv: dts: sifive: Add fu740 topology information
Date:   Tue,  5 Jul 2022 20:04:34 +0100
Message-Id: <20220705190435.1790466-4-mail@conchuod.ie>
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

The fu740 has no cpu-map node, so tools like hwloc cannot correctly
parse the topology. Add the node using the existing node labels.

Reported-by: Brice Goglin <Brice.Goglin@inria.fr>
Link: https://github.com/open-mpi/hwloc/issues/536
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
index 7b77c13496d8..43bed6c0a84f 100644
--- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
@@ -134,6 +134,30 @@ cpu4_intc: interrupt-controller {
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
 	soc {
 		#address-cells = <2>;
-- 
2.37.0

