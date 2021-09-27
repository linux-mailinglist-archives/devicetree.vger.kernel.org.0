Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AED8A419492
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 14:50:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234460AbhI0Mwc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 08:52:32 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46094
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234427AbhI0Mwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 08:52:30 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E33EE40192
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 12:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632747051;
        bh=kbXZWPaqkE+qi2UkSZceVKtKOIxxsWqidwnT9f4+61Y=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=n5GgXpHP/C7Vk51yJVHsv0qDi6sJ098+w6P8j0suAY7FXAF/WIm5vghKatdS8cnf2
         Ln6ygFMgEcNSk4YRAdQMp+/lVOHAuRUmcJEqcHC60HcinTWibH1PssjHkeRDUD1ZCF
         9BwzrYcvTDDzw5zcoLzI3wB/rTT7+3HuJeb5SkQD775O5thwQq+DmYc29xPq3zDSP2
         5dHY+0tSPqDoGqV2TKNdy0PMv8Xk3w8biGzefHI82ceFTGxcy7atstpUpdMhY6Ie0E
         Pyozeg8hKHq6Yv9Zno+ozwuWiRQzUMBxCpca6n9hBtXmsnhGaLrMD0ofQ0VlNsdvr4
         rUOgJgmU+ZbHQ==
Received: by mail-lf1-f72.google.com with SMTP id a28-20020a056512021c00b003f5883dcd4bso15726915lfo.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 05:50:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kbXZWPaqkE+qi2UkSZceVKtKOIxxsWqidwnT9f4+61Y=;
        b=JhJAtpyPIzJA2cBzSdGmMtHWNk22KtvFymSRHzovcz5Uuob4Y86F0UGFqkXkjXHYk2
         WKT6+afQQfFfjWsFviUqe5zoB6UWfJTvTIKqKwp5QLi6F4/ggqs3aKgAtseymTSoVW+l
         ND50H3lPbdRLwoxICG2GeDXHZtd7bWKOWWKsgV6pxRUNowH/eFQDytRk0zxEW3FCwpmS
         RPY+qnmjjMLXdRmos5wH5UReTs/HysX3FUsu30GFkArOsC1CujIHaJVk5vUsIhuO7mxF
         yt0XygpLbjV7BodbNtxqFDSscnUKFneREgQbacSXxw4576NzG9pOCZWSNcMxHJKPDL0O
         jfkg==
X-Gm-Message-State: AOAM531RdM3La1RfQaKiGAQbG5SHENZbwijdSprQdtJiz+Aif/iQuy8+
        SqQSdRUXaNGTupdd6dtICj5LEJKjyEUXIDm+zk7wCXVQEnahKJfLiZtk9xNJQ5DOAlJckm72EU9
        pRTadDJKjqsCQ39l5DCQTM/rnUDwyj8Bqk7q7Hf0=
X-Received: by 2002:ac2:47ed:: with SMTP id b13mr25204259lfp.647.1632747051399;
        Mon, 27 Sep 2021 05:50:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMaM9Tc/3Sf/+ppdhry9L6l8UQ0qQ8h8nkUrM4xE3wk1hVkdcDG25FWuf57DjlukjnWtXjcQ==
X-Received: by 2002:ac2:47ed:: with SMTP id b13mr25204228lfp.647.1632747051152;
        Mon, 27 Sep 2021 05:50:51 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v28sm1592102lfi.22.2021.09.27.05.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 05:50:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v4 3/6] riscv: dts: microchip: fix board compatible
Date:   Mon, 27 Sep 2021 14:50:41 +0200
Message-Id: <20210927125044.20046-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210927125044.20046-1-krzysztof.kozlowski@canonical.com>
References: <20210927125044.20046-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to bindings, the compatible must include microchip,mpfs.  This
fixes dtbs_check warning:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: /: compatible: ['microchip,mpfs-icicle-kit'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>

---

Changes since v3:
1. Rename DTSI model to Polarfire SoC.
2. Add tags.

Changes since v1:
1. Use microchip,mpfs for microchip-mpfs.dtsi, suggested by Geert.
---
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 2 +-
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi           | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index 3b04ef17e8da..07f1f3cab686 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "Microchip PolarFire-SoC Icicle Kit";
-	compatible = "microchip,mpfs-icicle-kit";
+	compatible = "microchip,mpfs-icicle-kit", "microchip,mpfs";
 
 	aliases {
 		ethernet0 = &emac1;
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index 93730afe6c58..1d04c661bccf 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -6,8 +6,8 @@
 / {
 	#address-cells = <2>;
 	#size-cells = <2>;
-	model = "Microchip MPFS Icicle Kit";
-	compatible = "microchip,mpfs-icicle-kit";
+	model = "Microchip PolarFire SoC";
+	compatible = "microchip,mpfs";
 
 	chosen {
 	};
-- 
2.30.2

