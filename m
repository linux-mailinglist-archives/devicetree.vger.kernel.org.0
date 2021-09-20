Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2917A4117DF
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 17:09:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241207AbhITPKu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 11:10:50 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:39938
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241180AbhITPKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 11:10:50 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 99FE63F226
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632150562;
        bh=2AzFw7QWiJnpc3+D+qC2D6oogvLnCMo5bvL1ARpYSXo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=GzisCl0VFyuetRRa2ZKFMqFNQd0wVpmc6HjhyxEGWjnRJcmN7kxEV6LZ5viCQqISD
         3/GUXGGIaUCzWKpZ2vgzXds/61Zm9C8e+ZKzYamsv8/mCPk6pC/sR2bND77mFmHRa5
         1SBnyRWIJi7kChZWuNM5fFj5081ws1aOfqedtZ7D7vpXMicZ8HEkgitRBkD62rj/PG
         W6vElJofhpo/ZJ5Liaq60wNYAQgAbPDW5G1Hpmwx3KpsJ/D+HClNs/URSJDWSw57Gf
         4yjaIPR9qLWDkpyXDnS824n0Og1aAlooO3/pLePvAKDUmd0CFQqs4ngN7BLzOalNIt
         3LKNX5tfLqicg==
Received: by mail-wr1-f70.google.com with SMTP id c2-20020adfa302000000b0015e4260febdso5029765wrb.20
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 08:09:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2AzFw7QWiJnpc3+D+qC2D6oogvLnCMo5bvL1ARpYSXo=;
        b=Qqou1FJ+k2FadrWuJJR1dvRuKJqGLaJRXoDXwpGkSZ2fa3P0KmYwSs/5PmGPKVJH5i
         wPkVShx73TJAHPo1D++jQrAPnooX126cdtEmYMEYhX08gKLIM/B154HuLzFeuCQVs8N0
         NI6fPa0McKG5CmMNfE1WmDcq72mtnU2ebRXbVK1+uQCmKmpmvO0l7Yn5R6mTBB2Kjj07
         /z2NGvpa6ZVs/W/R8iEwkab3Mxr4BMcpMymIQmoIk4wdC+fDIz0g5aSZeuxYgSYQgRe3
         CfWakqTfV4vlg97RWaKvNklB//jcuCY4eWsuHCusbBpSWk00ZJlAOaZa75vWEZ/xUpVv
         8ZkQ==
X-Gm-Message-State: AOAM533zNjqpc5telmNXBPBnT8nfVGFz1ujeWwuATE2kg64rLwmCzFJq
        +zfDPmHgMxCzniokHmryhi0bSoLNCbuF56VlWxhpHdt3etLykMgWOZyq/q1rGjkcudClDBTA6+B
        hHN29ru66uKFz2cHMWW1GwhPladF43FahA3BKCjY=
X-Received: by 2002:a05:600c:21c8:: with SMTP id x8mr24829311wmj.163.1632150562322;
        Mon, 20 Sep 2021 08:09:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyh9HwY7qtDiYuXsvesg74JozhNdGgdehheDKBXdv1dZ+7W5s7qvmts4pXM0X21xET38Gx3ZQ==
X-Received: by 2002:a05:600c:21c8:: with SMTP id x8mr24829283wmj.163.1632150562129;
        Mon, 20 Sep 2021 08:09:22 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i2sm15803136wrq.78.2021.09.20.08.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 08:09:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 3/6] riscv: dts: microchip: fix board compatible
Date:   Mon, 20 Sep 2021 17:08:04 +0200
Message-Id: <20210920150807.164673-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
References: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to bindings, the compatible must include microchip,mpfs.  This
fixes dtbs_check warning:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: /: compatible: ['microchip,mpfs-icicle-kit'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Use microchip,mpfs for microchip-mpfs.dtsi, suggested by Geert.
---
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 2 +-
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
index 93730afe6c58..5084b93188f0 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -7,7 +7,7 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 	model = "Microchip MPFS Icicle Kit";
-	compatible = "microchip,mpfs-icicle-kit";
+	compatible = "microchip,mpfs";
 
 	chosen {
 	};
-- 
2.30.2

