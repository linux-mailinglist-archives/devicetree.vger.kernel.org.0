Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63CF64115BB
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 15:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234077AbhITNaF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 09:30:05 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39030
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239650AbhITNaD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 09:30:03 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9E7EB3F31E
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 13:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632144515;
        bh=405kNu3dtB0zJ30yHuYcgVnAp+AYJ1QTK0vyYlLZaqY=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=NQdLJw9QEHoYLaDLev9ToUXchtqHQGvd8KwaKvH+08yotM8UNHx8Kf+N2TD1LSh0S
         SFFNumz0X/s364OXjyI+dIbJo4pBoE3dMA5+8GdTxQV6hob8dmlMPT/7nST0cw5CLd
         d+O/aiIePC5ip7COoui+qhQB+FfujidNR6ejfWi0CBabvwIeb94fnGmA4coDsQZ9DK
         01bu40uYWNPGQoyytINQ4FkNFGe357F3pwbaqmUmMJx8uGq+TvKYRWsXEXJwF5UNhS
         U5Bqvvh6neG4CaTVTJ3hS2Y9VTU7uaB9hHb/cmC8e4j3QMX3qU+CVwLmbPrkVxEsMo
         aJdMbZJS+mlVw==
Received: by mail-wr1-f72.google.com with SMTP id z2-20020a5d4c82000000b0015b140e0562so6100315wrs.7
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 06:28:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=405kNu3dtB0zJ30yHuYcgVnAp+AYJ1QTK0vyYlLZaqY=;
        b=nA9I3HzPQIef7uygELkoaHFEIKsZIfrWNS/+CxgwyNnuuhVlZ9vsz65paOJS0K+CpG
         oswZ90pXmBGju+J/lf8v76Qhl4QEuwFWFbw3MRjiGFWHzmaXn7Iadrc2QWxCmtbPW70H
         oZRDYaIbve7CFk28MsQctdp/IbN+eSTBCY8qJ3jJ6WeQpInI3QcogZTnolr1SoE/LJr6
         ZnoWVgQeXjWAOi0RJmB8E6y1O0nNzf8BIHHhVdtvINTlwhgmrNpbJdrfQXzdlFvQbw/T
         qVCJHSzehLRzxjkDIqVtinSg1HjKj4UysjgLXrD4jlgNvjqBTkLbcb7SU0ebO3Hup+Wg
         TQAg==
X-Gm-Message-State: AOAM531PsWBX/xEBwg+bm5gXmLNt6kJeZBeiqE1hnuKroLcaR5lalvhg
        01SHRqI1COmPN3rWmoWDQXlCjpuiv/1xyuWPA6oKi+UcsX4d3u5Fy6mcGmUq3dEQ9PLOd3T84ep
        MNFi4mECTTOzV2bJ8ceIiCwf5eFxIpXboBpKxezA=
X-Received: by 2002:a1c:7201:: with SMTP id n1mr24134471wmc.19.1632144515397;
        Mon, 20 Sep 2021 06:28:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyn/S9tRY6RVjn6ynl0DulA8/tnIBG0wKbhfeCztIh58oZTCS+xiYF7PbLFUUBnXpyQ/mByIQ==
X-Received: by 2002:a1c:7201:: with SMTP id n1mr24134462wmc.19.1632144515253;
        Mon, 20 Sep 2021 06:28:35 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id g1sm45429wmk.2.2021.09.20.06.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 06:28:34 -0700 (PDT)
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
Subject: [PATCH v2 1/5] riscv: dts: microchip: drop duplicated nodes
Date:   Mon, 20 Sep 2021 15:28:26 +0200
Message-Id: <20210920132830.152802-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTSI file defines soc node and address/size cells, so there is no
point in duplicating it in DTS file.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index b254c60589a1..3b04ef17e8da 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -9,8 +9,6 @@
 #define RTCCLK_FREQ		1000000
 
 / {
-	#address-cells = <2>;
-	#size-cells = <2>;
 	model = "Microchip PolarFire-SoC Icicle Kit";
 	compatible = "microchip,mpfs-icicle-kit";
 
@@ -35,9 +33,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x0 0x40000000>;
 		clocks = <&clkcfg 26>;
 	};
-
-	soc {
-	};
 };
 
 &serial0 {
-- 
2.30.2

