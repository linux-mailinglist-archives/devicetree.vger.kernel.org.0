Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3C673F7594
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241109AbhHYNIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:08:18 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57366
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229547AbhHYNIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:08:17 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 886F740766
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629896851;
        bh=o56Vii3vIaufxY0yhYD75jzw1vAZOzm1fMDFt3af7a0=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=fJja3WGYNvIORmNbwyJ/tP3npLKl+tpRx/qg9Pt9f8taQXQbCrlYY4iLWThterY/B
         RehMqkohcV1wuSZ6gh4iYK8tXi7XQ8/dcZADvSyA+IVVlN+oqFPI6nzvBL2EE+4MWB
         xCQX4a19ucQLXgikW3pYbt3ARJrabxUmuYr7OTgq9nQy/fsiM827INxZhGRKwhL4VZ
         0PfbsGKxgRAV0leA239Mj9f8bkLCU5u53CvY/HgackMhWWn+o18BHtLPmrBWa+FNGb
         Qx/leAapat5reB4n4OKKChtp3jo4UNpKghyaM05G7pT70ca2C7iiNB1+MI7H4NdkJg
         OavatMlPhcebw==
Received: by mail-wr1-f71.google.com with SMTP id z15-20020adff74f000000b001577d70c98dso120136wrp.12
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o56Vii3vIaufxY0yhYD75jzw1vAZOzm1fMDFt3af7a0=;
        b=XOt2W+UgY4VC7Hn2kYla873qi/89xLUkesSGe7Jj2iBgDRloMsyH4HHvw20DvP36q2
         y4vikowLOGDvzGLBwCXGHfPXnV2ZLCco7qkS44kVw2OxrEoWV7LzmDgFJhFfYloYlKik
         6+vV+g3BiMinVZaS40O48fTzVPMnjZbv89ZdboAEDumT67cVyeJ2ea96ZrI6/XGbYGnf
         3pXZw76C/OPtG60OlKp2h1l0qeuiTXINKWwARYONIB9ZdJPK1pFAAjhVluwAOakcLcXT
         eQAhuU0lKYMhtkHTArYWhcR0IbAjATn54EBLb/Re2kZdDpNWJTTs1on3/ICgTWXgsCY4
         qijA==
X-Gm-Message-State: AOAM531T6RMBnDBLXvZ+PHCoHYhLG743SGdjqs7mM9pBKM1c8wguIoQF
        1ZBx2raE9V3ZeTPbe820oshaUPDJDTEWPhwReLjRxklwPAdjaY9VDBWEDftbfKK4u8n81JY0O5k
        MkCuUlnxaqeQEB710GEvzSeLVPWmWOXyur37XrIU=
X-Received: by 2002:a5d:4844:: with SMTP id n4mr9558350wrs.191.1629896851260;
        Wed, 25 Aug 2021 06:07:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbzP/WWqwkYlUeY6Mf6Rxm0/Z0NF1FU4ZMQ5NiuU2i6Evp8bK3D0s5JVHwwbaNlLo12KS46A==
X-Received: by 2002:a5d:4844:: with SMTP id n4mr9558330wrs.191.1629896851121;
        Wed, 25 Aug 2021 06:07:31 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.172])
        by smtp.gmail.com with ESMTPSA id l15sm5131706wms.38.2021.08.25.06.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:07:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Atish Patra <atish.patra@wdc.com>,
        Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] riscv: dts: microchip: add missing compatibles for clint and plic
Date:   Wed, 25 Aug 2021 15:06:39 +0200
Message-Id: <20210825130639.203657-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
References: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Microchip Icicle kit uses SiFive E51 and U54 cores, so it looks that
also Core Local Interruptor and Platform-Level Interrupt Controller are
coming from SiFive.  Add proper compatibles to silence dtbs_check
warnings:

  clint@2000000: compatible:0: 'sifive,clint0' is not one of ['sifive,fu540-c000-clint', 'canaan,k210-clint']
  interrupt-controller@c000000: compatible:0: 'sifive,plic-1.0.0' is not one of ['sifive,fu540-c000-plic', 'canaan,k210-plic']

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. None
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index d9f7ee747d0d..6f843afacfad 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -161,7 +161,7 @@ cache-controller@2010000 {
 		};
 
 		clint@2000000 {
-			compatible = "sifive,clint0";
+			compatible = "sifive,fu540-c000-clint", "sifive,clint0";
 			reg = <0x0 0x2000000 0x0 0xC000>;
 			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
 						&cpu1_intc 3 &cpu1_intc 7
@@ -172,7 +172,7 @@ &cpu3_intc 3 &cpu3_intc 7
 
 		plic: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
-			compatible = "sifive,plic-1.0.0";
+			compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
 			riscv,ndev = <186>;
 			interrupt-controller;
-- 
2.30.2

