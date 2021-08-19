Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 604313F1D2B
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 17:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240378AbhHSPp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 11:45:59 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:42332
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236197AbhHSPp6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 11:45:58 -0400
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 3F5BF411FE
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 15:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629387921;
        bh=49SQrS5qR/DGh2JT33Ed3tk6OzvNaJscxeaopNy6uIc=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=OPTF5lllgss6UEEJ8M6/soyQRuNHwjF6WuDv+1kFo1JnCiiipLe/SDpPjax63uQCa
         3rtEHyzAOajOazJBX7Y/z/NBY5ppeLkC7cOREy0xm9dKF+IVmmDUqnpCkk8MKIOaBU
         vrc8DMfL0P0HjnE4qEMZHDLyJTTMmSWXFVdvPVmW+BeJxmd6W8R4pxCAFoHoPsnrTA
         XDlGEhHM1wHTrDyhTyIMFemcZp99sV2KK5D7nLnf/D3PE4rdABFziPy0a7pyRwmpIg
         YZUtU90SAddkl+WYiWQ8PeW8SRaHEBzlFocM+fNPEgvLPCU/nY3rU+4GrCw5HwaqFy
         5dASVwUWiZAMA==
Received: by mail-ej1-f71.google.com with SMTP id ke4-20020a17090798e4b02905b869727055so2418962ejc.11
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:45:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=49SQrS5qR/DGh2JT33Ed3tk6OzvNaJscxeaopNy6uIc=;
        b=ek+G7dmGpbsEBGU4KNyoAKQc2/Ae0gF9N335XgNqFWO1IhS9RVcV+bPWPyfOHhiROh
         kwVzglq3Wj1PR2iW9xPRUeHztgABGmd7TL0vQnxfpITl2s/XTYNzvp/tbNpdggUGDmsQ
         ucwpwJKj7jsRxk0Y3GlCGGAvOaKgpInXKT0FFV0ld2VgatOiBz/8LyeepXTWrIIOOU21
         3YHhy93psHnfz2JMprzCfvAfx2nKTiLcOMzJZIU3J7UZJKlfabkrBum7USkblDd67HWz
         mDUT0dl6RHkew7ytdrQCO3kouexjlZue0pGbFuj4Jjx8lecCjQk++uWOuIQTgKMttCkR
         zgTg==
X-Gm-Message-State: AOAM5315aIdZblshUmUFJn5dnfSDjc24IiKEt0HNuIUVCXMFwojZu9q+
        h+Ccfn3GQcrwzuGnJEnpVo+1fCRxqHbqjn7AFVFbOsKo85gKIvlzMwpsCqfWQj0NxlPWDslGGai
        eu4FQE4+kwiXAeZWOzqoTz9pgkyyRZP4NIquU7gQ=
X-Received: by 2002:a17:906:5909:: with SMTP id h9mr16162309ejq.329.1629387920971;
        Thu, 19 Aug 2021 08:45:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbVkNbqqPYyJfh7GB4lkzG2WE+LhjQwuFLKnM8+tFCQCy672AdvPh8cIFy52i1DWdjPI27+w==
X-Received: by 2002:a17:906:5909:: with SMTP id h9mr16162276ejq.329.1629387920830;
        Thu, 19 Aug 2021 08:45:20 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id f16sm1925373edw.79.2021.08.19.08.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 08:45:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Atish Patra <atish.patra@wdc.com>,
        Yash Shah <yash.shah@sifive.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH 4/6] riscv: microchip: mpfs: fix board compatible
Date:   Thu, 19 Aug 2021 17:44:34 +0200
Message-Id: <20210819154436.117798-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
References: <20210819154436.117798-1-krzysztof.kozlowski@canonical.com>
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
 arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts | 2 +-
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
index 237830583514..62f7651de538 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "Microchip PolarFire-SoC Icicle Kit";
-	compatible = "microchip,mpfs-icicle-kit";
+	compatible = "microchip,mpfs-icicle-kit", "microchip,mpfs";
 
 	chosen {
 		stdout-path = &serial0;
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index b9819570a7d1..cb54da0cc3c4 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -7,7 +7,7 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 	model = "Microchip MPFS Icicle Kit";
-	compatible = "microchip,mpfs-icicle-kit";
+	compatible = "microchip,mpfs-icicle-kit", "microchip,mpfs";
 
 	chosen {
 	};
-- 
2.30.2

