Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACFE75FFDE
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 05:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727115AbfGEDww (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 23:52:52 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:38531 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727053AbfGEDww (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 23:52:52 -0400
Received: by mail-pg1-f193.google.com with SMTP id z75so3663723pgz.5
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 20:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=xu4ABObSCRqu2Mk20412Tl9QlsmSP9rhZN50xb4/big=;
        b=vHnLM1ceUx8eJNufwRNa4exnkzXDK9BF97MlNTaSuJK/19VnmYTb6P1oxMxWmt2qZM
         J3Up12wI6K/5fFJJ8INdCuhVjHHvfUoxC10L0tQlvkF2IjJl7/+B7GW0VfGcKgvuygkd
         nd8Y96VhgpUub3exDdINyCDqWH6LIFqQTfaDZD3EVCVJ5uMlhDnB4pfGksPOYbNhE0Uh
         NNJH0Mgu8OrV0QiIP2e0IvJ1aBTGFEvcUTQ9lvfyY2tmCA0hd5+8ZEfOMuxZ4sOzeqxg
         gV4oXVrHs/qTFEyxAlBB4uZ+IJvVIihcL+qUxfIeNuUWOfjPZK/RDsGtP0lUwoIUkrKN
         FCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=xu4ABObSCRqu2Mk20412Tl9QlsmSP9rhZN50xb4/big=;
        b=DjQu3YOplRGplmmjoNRQDc5RNWgl0JreW7+Rl1UA2BDgEMvczileMCk0Ue5/tRbUFT
         68lwRzw7DYoPd9VcKyf9277R7EEhvs69QRJWz+8F5kJemBr2Rvbk8ZuLDMvOaForQhy9
         UKzVTAwIrY26fiPcQSnSFcoxiC11enVQ3xPdsgdrkRAcfnpW6hy/zrpUONjBLH6g3ufw
         ZcZg23N5/+GNdQH/eaReWk64qM8gHgQF8SY5fwueA52T/66t/od2t3YYbp4Mv61Mkq2A
         WZAqU2KWPtnk8+Wt+BBDICEyca10VzaOLCFxwDyAVImpR3F18EYhql3gSBG5fpCTlSE5
         gvNA==
X-Gm-Message-State: APjAAAXkD261FS+0+Es82GG0m8LgcF9I/x0cgLzmXmM1B0r6faiuGOde
        4BM1ONVw1zh1t4gaHy+aTURIJ6Ud
X-Google-Smtp-Source: APXvYqxQ+E22P6Re+Mg4H6Bbhpk0RvNKsPjNN0FoGD6LstocEGajOh5zyUSY8+myfFRJaaAYqTh8zQ==
X-Received: by 2002:a17:90a:c58e:: with SMTP id l14mr1917724pjt.104.1562298771973;
        Thu, 04 Jul 2019 20:52:51 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com. [147.11.224.80])
        by smtp.gmail.com with ESMTPSA id 3sm4305336pfg.186.2019.07.04.20.52.50
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 04 Jul 2019 20:52:51 -0700 (PDT)
From:   Bin Meng <bmeng.cn@gmail.com>
To:     linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Yash Shah <yash.shah@sifive.com>
Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Date:   Thu,  4 Jul 2019 20:52:46 -0700
Message-Id: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Per device tree spec, the "status" property property shall be present
for nodes representing CPUs in a SMP configuration. This property is
currently missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
---

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4098349..0fff2a4 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -53,6 +53,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -77,6 +78,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu2_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -101,6 +103,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu3_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -125,6 +128,7 @@
 			mmu-type = "riscv,sv39";
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
+			status = "okay";
 			tlb-split;
 			cpu4_intc: interrupt-controller {
 				#interrupt-cells = <1>;
-- 
2.7.4

