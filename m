Return-Path: <devicetree+bounces-405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E17A175B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 911F6280C8F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81292D289;
	Fri, 15 Sep 2023 07:26:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85080D27B
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:26:54 +0000 (UTC)
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE7519A6;
	Fri, 15 Sep 2023 00:26:40 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5776089b652so1384102a12.2;
        Fri, 15 Sep 2023 00:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694762800; x=1695367600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lmxSozsjyQbgMnJPbBrqJiUPwUPx63V+RTOPBnTrVeI=;
        b=mPo6iw9tRu1ZlDkDi1VrugcuT17EM9AoSKfnVYIJ46wyl1wn/iePU7A0cfetT8+B02
         /ZFBCXX3+Q/ocPgs0B6HFssyf0rzjNGZ/bDLSBOHTseW5O22gZcMAosnchriIP9mmyVN
         O4b7OErzJOUHp4Xh9v81GQvWuEIU277/AeSgcCC9h8571p9fZzY+sDOqH35uGGH39OyY
         PhI7zSsBe+opPgOnCaI8p5UuLenSO0w48eNCEpqI5QZASu5sTORv+qQJ/+uWt62RhJ2z
         xwNDM8P9wGC1J+Ik2db354kHNHsu3HlIeFy/s1KeZ2zxniBthll8vdK72Je69Dl+LcfR
         mvKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762800; x=1695367600;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lmxSozsjyQbgMnJPbBrqJiUPwUPx63V+RTOPBnTrVeI=;
        b=OZrzFS8DXdHMRouq37rm7E+cnrMvxP+JugptbhNoFC4gifs2+3NHQ6pmYnWuiBVEXT
         6t/+YCiQL4uq/kJM184YWg+jYjxj//3AWK27MKdahpLguslax4yxPikuUV8Kska1ntlP
         gr4N3Vp41UueecyBq/SY/8O9ccdBnSWwAaD+Uj06X10+LGVeyn8VTycDd7PTzLyimsey
         SytkdVHAT9oHRKGy2/8dESgjN2OsWydodsOzPxGX2oBOCxfU/NPLIRSNQdAOoe5EeEdc
         CMTI7FlV+9XwZplH6tC4CBlI5vJC1wXtu/LPGi/D1QsAaD/5gnyKj8G4Yuyv1PyjOvKZ
         rGjw==
X-Gm-Message-State: AOJu0Yx4RyLbHocI6xlPwQjEwZVjSgpr1dmo2srsnuzvs6cYqmwHdfMj
	Z2eOSk7cNBUB2rA7egCMYE7e2fUmIvTj0Q==
X-Google-Smtp-Source: AGHT+IGa6j32V1x4tl06O/eJUeO2dvjf2EDNjj2i7ll9q98yTmiqb3goHPZMF8yaQeznxj+9hgsHRw==
X-Received: by 2002:a17:902:d491:b0:1b5:561a:5c9a with SMTP id c17-20020a170902d49100b001b5561a5c9amr1033676plg.39.1694762799968;
        Fri, 15 Sep 2023 00:26:39 -0700 (PDT)
Received: from localhost.localdomain ([222.95.63.58])
        by smtp.gmail.com with ESMTPSA id c17-20020a170903235100b001bde65894c8sm2757385plh.268.2023.09.15.00.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 00:26:39 -0700 (PDT)
From: Wang Chen <unicornxw@gmail.com>
X-Google-Original-From: Wang Chen <wangchen20@iscas.ac.cn>
To: linux-riscv@lists.infradead.org,
	conor@kernel.org,
	aou@eecs.berkeley.edu,
	krzysztof.kozlowski+dt@linaro.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jszhang@kernel.org,
	guoren@kernel.org,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	Wang Chen <wangchen20@iscas.ac.cn>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Subject: [PATCH 11/12] riscv: dts: sophgo: Add sophgo,sg2024-uart compatibles
Date: Fri, 15 Sep 2023 15:26:24 +0800
Message-Id: <20230915072624.118388-1-wangchen20@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add compatible for uart.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
---
 arch/riscv/boot/dts/sophgo/sg2042.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
index 5c4b82f13207..87f7667bbe63 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
@@ -492,7 +492,7 @@ &cpu63_intc  0xffffffff &cpu63_intc  9
 		};
 
 		uart0: serial@7040000000 {
-			compatible = "snps,dw-apb-uart";
+			compatible = "sophgo,sg2042-uart", "snps,dw-apb-uart";
 			reg = <0x00000070 0x40000000 0x00000000 0x00001000>;
 			interrupt-parent = <&intc>;
 			interrupts = <SOC_PERIPHERAL_IRQ(112) IRQ_TYPE_LEVEL_HIGH>;
-- 
2.25.1


