Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD49C3F7598
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:07:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241122AbhHYNI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:08:29 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34508
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241148AbhHYNI3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:08:29 -0400
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BE60240795
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629896862;
        bh=KyQicLYMcvTUsuouhObsDgwfTY/CvChfVjl2/JZq64I=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=R115xsZyxH/Q76lTbQTEzk8Vm7dyFFRhxmffMtnTk2BfHW0LRVic1GzCiaUfXO9MG
         TBh14iO8Ydy2Soc9itQgVJDyhJGyJpvJYFYMHz5+vzdn5/oysHjPi4VcgwSB/9EfRY
         yVUJn5+1U9Nh4jl7fLV7pbGxkr9s2vTUHcDCcZ4VADQAwosc81Un0Jrhdh3Y94jo0z
         uMHL5Z7ArGB2E4OmwygWyM8nmV/BQFM/S80XD2P6gLHlPtfYpimi/SRPniV800MpUC
         4pCIb90XRiQxpLnz2EYEoquj1hK976AXaAr5UuwLPAaPSL3CkObmrWoe2CyOzOxYL6
         eiRu3blQBXZZg==
Received: by mail-wm1-f72.google.com with SMTP id o20-20020a05600c379400b002e755735eedso1871415wmr.0
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:07:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KyQicLYMcvTUsuouhObsDgwfTY/CvChfVjl2/JZq64I=;
        b=GlXZo9GQvtIzLvs09s/JwHM6HTVpM2HIUDHrmmVW9oJDzCiEMUy7LDhNJBBO2dytNP
         DnXKykIaiNHDpIQSFrwuWxgzSEhgnZTdrFkSr+nJ42yuqmOjttBLVz0KfrPPF84yKvO1
         sdxcJO3flHk3A4C9Dxg5J4sBAMi6qdiE3KXYjGHpjOmyI+pNDQl3M9+BqC4ntPge5wvg
         TR5IRLfBNeyS+5yB559e/sNjcbrpUVyzvrx01mUf4BdRciM6dJAzO8f9xtpoW4ed7QhD
         ZnSoXoY5s+FLsZrHA6YOp4GeY788r2qBC+ZxgvDRNvg/msYfRh0akWgUaheG5vm3sRg/
         9VCA==
X-Gm-Message-State: AOAM531+i5gQqP0iFuKaExX1zWrgtwECxCjdFO9pFFH/Mlsq7kIu7UgM
        pz37AF2CqobNidaJqAhfymI+7zrYR7u00/A2EZW/r6R0dScDWhwpdGEWVLoi9nHeY0V/jnq0Yyj
        nptKSoCeG8WXZ2m/OlJYQvASDLpmL3lmpNJQNHa8=
X-Received: by 2002:a5d:470b:: with SMTP id y11mr4414938wrq.213.1629896862479;
        Wed, 25 Aug 2021 06:07:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJymGaQjcUdOwV3zt6DSSauTaARbluC+y5buqBuM/DilS0IyIs1Ghq/n8Uq9R2+mq2+IXRyyaw==
X-Received: by 2002:a5d:470b:: with SMTP id y11mr4414912wrq.213.1629896862368;
        Wed, 25 Aug 2021 06:07:42 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.122])
        by smtp.gmail.com with ESMTPSA id z8sm20944201wrt.77.2021.08.25.06.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:07:42 -0700 (PDT)
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
Subject: [PATCH v2 5/5] riscv: dts: sifive: add missing compatible for plic
Date:   Wed, 25 Aug 2021 15:07:05 +0200
Message-Id: <20210825130705.203824-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
References: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add proper compatible for Platform-Level Interrupt Controller to silence
dtbs_check warnings:

  interrupt-controller@c000000: compatible: ['sifive,plic-1.0.0'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. None
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 7db861053483..0655b5c4201d 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -141,7 +141,7 @@ soc {
 		ranges;
 		plic0: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
-			compatible = "sifive,plic-1.0.0";
+			compatible = "sifive,fu540-c000-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
 			riscv,ndev = <53>;
 			interrupt-controller;
-- 
2.30.2

