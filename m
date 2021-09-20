Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 165B54115BC
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:28:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236109AbhITNaG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:30:06 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34816
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232145AbhITNaF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 09:30:05 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 859463F4B9
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 13:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632144517;
        bh=2AzFw7QWiJnpc3+D+qC2D6oogvLnCMo5bvL1ARpYSXo=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=anzmh3cSRjCudH90A+kGAbH1vmtyCsjtCpBL2ZHEwiFVN/Cl1DlpauVE4vdKXqoVX
         jGAXxT0ENP2d+q93N/J1j+H6IPfWmK0e2ZVd2a1dwkmENsrS4QFvkqUF+Io7BYnkeE
         Rz4IMjV0mW3EXkYTpWeY0VTOcVAffgnXFIeRVEW/nhQmn3SttFzV0U2ZDZy+Tnip7y
         oRt4z9p5Axomr9ycQWb6Fvg6TuiIuZLrT0c75WMApT4egIScTd15+JnhzX2U1q5Wgy
         tNifM9INTymniWf1L8IxXlWByBW8vVbi09zZepQF5W6OscgvEb9xAKojKGIMCNvOxu
         GKipzhSRGEIMA==
Received: by mail-wr1-f70.google.com with SMTP id m1-20020a056000180100b0015e1ec30ac3so6069412wrh.8
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2AzFw7QWiJnpc3+D+qC2D6oogvLnCMo5bvL1ARpYSXo=;
        b=2OJjlwmgS94KcLQ5MfNS8An1mFGM39ckmwvgvpStxPPDFYz2DMJcVMAP+2BxjHCmeN
         /SSrErPW2bOsEfpG+TQxxN8qiMS3RVRE17Ag84xyE9r6qH6lgY1zxMCm4/0Jhtqt5WhS
         5nrxR7c7jlEGkcG5oqF+WvaRKr6Oyo8aCf7qME3jgsZolRdzQhjrFvO6+vWKtvRdD4cp
         DWU5NO1fZcVIwzi6Csaqk2nN8JGp0m+uN2MabtL3Xb+m809gT7wGS4FUtGL4zVQCLUx2
         jA9j0yfKr9tC+PsIieNMS1Fd9JAY29pyGxGgl7i0o0cUPyffZgON3TFjLKmdXLfa8fUc
         WGbA==
X-Gm-Message-State: AOAM531bDEpHsrldCCfEkSLz7MAJCL3pCFzHDP4jVnh2QGS7AbqcvSiV
        VGxiUjx2hPdMEnD17RPW+bK/SUPQG2ROTJJiDNRDdIP5PptHzB3gzLeCBdqdrA1WOnJeA2RoghE
        JBwrth9jFGeFMOG6io9TTclsc1ILsCPplQ4j+W0c=
X-Received: by 2002:a5d:5981:: with SMTP id n1mr28699589wri.82.1632144517093;
        Mon, 20 Sep 2021 06:28:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSiSdjOviE8uDI2M7ioL6Ah/Ji7EmmwwgOyGTiKDoQWzfexMbXalZc9SNAB0GLcwen2n3+kg==
X-Received: by 2002:a5d:5981:: with SMTP id n1mr28699554wri.82.1632144516917;
        Mon, 20 Sep 2021 06:28:36 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id g1sm45429wmk.2.2021.09.20.06.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 06:28:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v2 2/5] riscv: dts: microchip: fix board compatible
Date:   Mon, 20 Sep 2021 15:28:27 +0200
Message-Id: <20210920132830.152802-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920132830.152802-1-krzysztof.kozlowski@canonical.com>
References: <20210920132830.152802-1-krzysztof.kozlowski@canonical.com>
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

