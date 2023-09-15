Return-Path: <devicetree+bounces-394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D59B7A1735
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DEC31C213C3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FC58D27D;
	Fri, 15 Sep 2023 07:23:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47653D278
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:22:58 +0000 (UTC)
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D5A410F7;
	Fri, 15 Sep 2023 00:22:54 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-273dfceb3easo1371363a91.0;
        Fri, 15 Sep 2023 00:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694762574; x=1695367374; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LyY1P/Um0of8SC7pIExKL3uasiY0J3NOHqMMObs04Ac=;
        b=iJuTc+HjIH/W0zW6UmyvJ6uxgqpC8yyb4Ea0mZ57LKM8neX+QQ1sW4FBoM+vFR/RDX
         M4nimjqkPQ1V7/83pz7RE18Axt+iPPSU8lV9ESJNLOsWLx1z1h/7nOihgYbOTq7PXArV
         jIe3wYNErevJ9dhvAppaRiZsrJqoaUSoP2NdIwU+uxQznw47u0lEDo2jMzDKG/NsPas/
         7KejGmc16XEkFvwO7Xup+KaSKiWJrHs4BojBp6ctkOjB46sK8nOIlXNTeErnY5zpR0jT
         g2RMu71h6wPEcJAg1Q7Z0YQckfNG/s78oNPn13FQRoGcHkefif8e0l6z8wYu28opMRP/
         stDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762574; x=1695367374;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LyY1P/Um0of8SC7pIExKL3uasiY0J3NOHqMMObs04Ac=;
        b=XQTID2sLyDh7S/FcMnQz4zEI0eJd6/L6Xy2/Ad6uWzOIVcHsmUuW1u9cf1pDJJ/qA6
         BYDcuqP988tsVlDWsQtscuIBF1RQHmT3bDGGQD8/TLOAVuMETmC9iI8Y89fhAnUCtWUL
         P1SEk574fSepX2WKxSEu7ZxzRZkPwCw70MmC7MAoiHE3Tvo5kQbl6kOh/edtexD4p340
         s70uKPSmovIEWmcqehlgjl5vPeA4diopIOzCTOyVhzW59n097gXbEKopVOYMPGfyLbjS
         BhSKQRVYbbndYrs+tA4AR0S48f3lPAWtXnjLRbgqIUSL6SNHpEmCUqfKAhNzzFH9wvY1
         Y5Dw==
X-Gm-Message-State: AOJu0YxowgEqCSt05gnFSTAPJR89TgTc0R7Ory52+Bw1gIYCnmqqQH9U
	il8ekdwP7tf4vUHj3hidRbA=
X-Google-Smtp-Source: AGHT+IGvr8WzjvcDBHoMtkleaP3mPTG/02siLWI4WX6UguEA5/t1b5l6/usIgOQuhI+avenUMMmXEg==
X-Received: by 2002:a17:90a:528c:b0:268:352c:9d13 with SMTP id w12-20020a17090a528c00b00268352c9d13mr751765pjh.0.1694762573570;
        Fri, 15 Sep 2023 00:22:53 -0700 (PDT)
Received: from localhost.localdomain ([222.95.63.58])
        by smtp.gmail.com with ESMTPSA id j5-20020a17090aeb0500b0026b4ca7f62csm2348283pjz.39.2023.09.15.00.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 00:22:53 -0700 (PDT)
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
	Wang Chen <wangchen20@iscas.ac.cn>
Subject: [PATCH 03/12] dt-bindings: riscv: add sophgo sg2042 bindings
Date: Fri, 15 Sep 2023 15:22:42 +0800
Message-Id: <20230915072242.117935-1-wangchen20@iscas.ac.cn>
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

Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
Milk-V Pioneer board [2].

[1]: https://en.sophgo.com/product/introduce/sg2042.html
[2]: https://milkv.io/pioneer

Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
---
 .../devicetree/bindings/riscv/sophgo.yaml     | 28 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++++
 2 files changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml

diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Documentation/devicetree/bindings/riscv/sophgo.yaml
new file mode 100644
index 000000000000..82468ae915db
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/sophgo.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/sophgo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo SoC-based boards
+
+maintainers:
+  - Chao Wei <chao.wei@sophgo.com>
+  - Xiaoguang Xing <xiaoguang.xing@sophgo.com>
+
+description:
+  Sophgo SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - milkv,pioneer
+          - const: sophgo,sg2042
+
+additionalProperties: true
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..0e0d477dab38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20063,6 +20063,12 @@ F:	drivers/char/sonypi.c
 F:	drivers/platform/x86/sony-laptop.c
 F:	include/linux/sony-laptop.h
 
+SOPHGO DEVICETREES
+M:	Xiaoguang Xing <xiaoguang.xing@sophgo.com>
+M:	Chao Wei <chao.wei@sophgo.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/riscv/sophgo.yaml
+
 SOUND
 M:	Jaroslav Kysela <perex@perex.cz>
 M:	Takashi Iwai <tiwai@suse.com>
-- 
2.25.1


