Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA2C851AF52
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 22:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378187AbiEDUjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 16:39:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378174AbiEDUi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 16:38:58 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 711DA10DF
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 13:35:19 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b19so3499300wrh.11
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 13:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RprtUxA8LLqon8+v6D8C02QlLfkROjmGkz+QRU7rBDI=;
        b=aDLMYf06Nnx6e/HeHuwHBam2WaPjC9EAVu1x5UdXLNi9+1AQ1ryhQgRhiMsk6xEwhj
         Q5VvcUsbCQNBgFc/hLKCKjiuy2wSPw2+teFGRZgielDG1jF4sb20dFDeXmj/9KTur4zn
         1rdc7SuZyzTadFWSgIVlUtg9cfJwihJEgkBdpATxIETghw2304yVE5O8g7wry3E0PicG
         eNHmqdQeXu4EVh9I3qkC6FquyINd6WEs5Qsn6FCxjggGSHxo/X4TjQ+q/guHnN26gEkU
         ATI68RDc9b5+DEJFVvhLhXV3XU63jtndtN+uTXlrLrB6yZOSvvY0vCemtmyEu/ujuyT3
         Fwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RprtUxA8LLqon8+v6D8C02QlLfkROjmGkz+QRU7rBDI=;
        b=NSrBtS2wsCucrcwtNba+9KPxr3wtK48cVMCEn+dzeV30A+nfTN6150/85Gp8zrLv98
         uWfgqYNd+aePH/4VLtiw6d8bgkom2vXFl0O7tUahfzpeSqgC0WLZuL5JCbVfvEDPbvxF
         9/hmm2DH/Er0KN7QGh3GXLzcRVNQocd3gPfrj6FO5Ikat7ZOgCEAjNVMoiOo3bjqVvHV
         q5rqu96V8tppWFyZjavqxHsIp6U7Q0SmE2+OZJJTGbjmzWpi0E6m9F8gzEhoE3tIVmOE
         +solAmep9EpzLLiL5z4b5OYtlFq98DyLmafK0zCWYgSpazeVov1TcChJWwxBKlYn31x2
         RYng==
X-Gm-Message-State: AOAM531sOMwzT432FaaBTCGuGnMTlwcA7h8A4d08AhSQlAxuANxqhINg
        HeL7YGQbR/chhDuzKash81kBRA==
X-Google-Smtp-Source: ABdhPJxteJVJs+X9m1ttN+KqKFgEscJRioMfV5WffwO+tTjBvwM5rUsFtEO24U/iKXSoIxw0gw+YLA==
X-Received: by 2002:a05:6000:1d8b:b0:20c:54e6:1659 with SMTP id bk11-20020a0560001d8b00b0020c54e61659mr16780999wrb.169.1651696518687;
        Wed, 04 May 2022 13:35:18 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id l20-20020adfc794000000b0020c5253d8dfsm13330101wrg.43.2022.05.04.13.35.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 13:35:18 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v4 5/8] riscv: dts: microchip: make the fabric dtsi board specific
Date:   Wed,  4 May 2022 21:30:49 +0100
Message-Id: <20220504203051.1210355-6-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504203051.1210355-1-mail@conchuod.ie>
References: <20220504203051.1210355-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
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

mpfs-icicle-kit-fabric.dtsi specifically matches the 22.03 reference
design for the icicle kit's FPGA fabric & an older version of the
design may not have the i2c or pwm devices - so add the compatible
string to document this.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
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

