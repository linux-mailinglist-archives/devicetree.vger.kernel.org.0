Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 569A751AF54
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 22:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378121AbiEDUjA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 16:39:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378212AbiEDUiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 16:38:55 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89FFDD77
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 13:35:17 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id x18so3553620wrc.0
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 13:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q+pycwnKwDuKNdF3Y2w0IfQQiZ0eOLqkgeZDr/yI5II=;
        b=YWkiZKS3EMmfrCefyHqphbQyh5SswFCcaAsa0DngSr/zLNYdOi8JRAAAo7uJ1Tn9Sf
         tdm13xCaRGKdYRx0CWnG36Yc5zzbWTOBrobB7bzmYdOGjCVxbZ1rRlBVmf20YJL0rZq/
         a4PFp6PbPrsK0bXUaifCqMmVSU18OMpPIRmthwLcza06jkZB7OjUWtdPbk+O2AaOQjQ8
         Zruzet6oFpzHmMhxsNqQHfwfV4yBXG/LfqYNxURiC95CTVdsjdRo0OYYrp4lOQhkGVaR
         QiGqGDDaYVfW/tEmndVW6AqVCuHit6zBLLTxDnnkESpnErZMHnTlU36SV6bqZs5q2eiw
         IzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q+pycwnKwDuKNdF3Y2w0IfQQiZ0eOLqkgeZDr/yI5II=;
        b=rz36lsR1THbKkOY3fLA//svHZJBWR+SPc0uP9c1XKr3KHdWxtnI7TELSD/9graPUlM
         /XWYEZWJMoj6c7sekn/xN+6W0kQlf69IzXK9JP1s3jsg6mVOH1+vSG8VH/lts0T3OCWJ
         0ocJxkJknKDCyq/VvXiZajfkbYZV3Epnhe57FB4Dq/34Dua+wX/soeP3/eAVA+v9OnJs
         2Bnrp1Di1N0qhpVtNKL6GMSMDoVg2QG/vpBLex6rIbcpF0ZuaPjL7mvq0j2beiuLHTC3
         57aBw27zaaUAxbYpqEzjgP5URawHqp6nOvfGPv2E6mZxCv7Mu2BdtEK23Dmcm8wHeCUv
         zavQ==
X-Gm-Message-State: AOAM5307YN+fZWFXLLpCOLfDV6fHL6Ak3P51VLxHJm+p3GVyRyHwQeHD
        kj192sIpPuz6rr5qeVAbNmnJVA==
X-Google-Smtp-Source: ABdhPJz925mygdEuN6CsxYthlUWASDvvEV0Pc9CThWjW2wo5tYgfu3S1X/n5dwMx9r4I1cjO+EP+hw==
X-Received: by 2002:adf:fc09:0:b0:20a:deba:8d3c with SMTP id i9-20020adffc09000000b0020adeba8d3cmr17798556wrr.44.1651696516139;
        Wed, 04 May 2022 13:35:16 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id l20-20020adfc794000000b0020c5253d8dfsm13330101wrg.43.2022.05.04.13.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 13:35:15 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v4 3/8] riscv: dts: microchip: remove soc vendor from filenames
Date:   Wed,  4 May 2022 21:30:47 +0100
Message-Id: <20220504203051.1210355-4-mail@conchuod.ie>
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

Having the SoC vendor both as the directory and in the filename adds
little. Remove microchip from the filenames so that the files will
resemble the other directories in riscv (and arm64). The new names
follow a soc-board.dts & soc{,-fabric}.dtsi pattern.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/Makefile                          | 2 +-
 .../microchip/{microchip-mpfs-fabric.dtsi => mpfs-fabric.dtsi}  | 0
 .../{microchip-mpfs-icicle-kit.dts => mpfs-icicle-kit.dts}      | 2 +-
 .../riscv/boot/dts/microchip/{microchip-mpfs.dtsi => mpfs.dtsi} | 2 +-
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/riscv/boot/dts/microchip/{microchip-mpfs-fabric.dtsi => mpfs-fabric.dtsi} (100%)
 rename arch/riscv/boot/dts/microchip/{microchip-mpfs-icicle-kit.dts => mpfs-icicle-kit.dts} (98%)
 rename arch/riscv/boot/dts/microchip/{microchip-mpfs.dtsi => mpfs.dtsi} (99%)

diff --git a/arch/riscv/boot/dts/microchip/Makefile b/arch/riscv/boot/dts/microchip/Makefile
index 855c1502d912..af3a5059b350 100644
--- a/arch/riscv/boot/dts/microchip/Makefile
+++ b/arch/riscv/boot/dts/microchip/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_SOC_MICROCHIP_POLARFIRE) += microchip-mpfs-icicle-kit.dtb
+dtb-$(CONFIG_SOC_MICROCHIP_POLARFIRE) += mpfs-icicle-kit.dtb
 obj-$(CONFIG_BUILTIN_DTB) += $(addsuffix .o, $(dtb-y))
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi
similarity index 100%
rename from arch/riscv/boot/dts/microchip/microchip-mpfs-fabric.dtsi
rename to arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
similarity index 98%
rename from arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
rename to arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
index c71d6aa6137a..84b0015dfd47 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
@@ -3,7 +3,7 @@
 
 /dts-v1/;
 
-#include "microchip-mpfs.dtsi"
+#include "mpfs.dtsi"
 
 /* Clock frequency (in Hz) of the rtcclk */
 #define RTCCLK_FREQ		1000000
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
similarity index 99%
rename from arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
rename to arch/riscv/boot/dts/microchip/mpfs.dtsi
index bf21a2edd180..cc3386068c2d 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -3,7 +3,7 @@
 
 /dts-v1/;
 #include "dt-bindings/clock/microchip,mpfs-clock.h"
-#include "microchip-mpfs-fabric.dtsi"
+#include "mpfs-fabric.dtsi"
 
 / {
 	#address-cells = <2>;
-- 
2.36.0

