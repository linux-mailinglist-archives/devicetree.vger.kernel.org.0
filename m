Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8747B3F7588
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241046AbhHYNGX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:06:23 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:57254
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240945AbhHYNGW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:06:22 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1023A4077C
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629896734;
        bh=j2CmHETEfQosnB82At+fI6P+jueRuH10iqGIAMLDsaM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=j6PsU7c+oX7kobG6+21yLqhAzJ8A95aULdob5IZx1VRfxhmjPmIXrJ2rFtjlczChF
         r6KDywcSFtm7YQEqnyTS20tYnbSk0uTx0q/JtT0+WODg9cdrLtPUNCAiBFeIhajl47
         VIWC90du3t+gcEEaFnnFPp1QDiInIgMmdguKYGINL1R9P3v1ATrBKspH0UYp40hvi3
         1CSxerywr2VzLoRO+osZ15Js0PDuOUsp7aAR2WA37rC38TolC2qSA2Vin4AZ+mjBh3
         PrbldSktLyD/h1+y6BV/JexmxAAovBF8qBoTIAC5phXGp/Wt67nre5Q4dX+xt4gwBU
         eURqQ8VdWwcLg==
Received: by mail-wr1-f72.google.com with SMTP id r11-20020a5d4e4b000000b001575c5ed4b4so1831880wrt.4
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j2CmHETEfQosnB82At+fI6P+jueRuH10iqGIAMLDsaM=;
        b=cneeGGJVFbm5IVCXtpe/i8V3O+CkWSa94DFjFgFuRAffL7XTmpZZ7UfpidLZwSy1Md
         pIrsjqJjumScTGrNJxFZWX6vn131VfRupWd7YyISMqnAgvyzxZ9awUIRV08wt9ClCasM
         JA2Kd+SdbJpeyoAk7h/JX0uORBogo1TQHfpzDKi0OTaTUcKKcJ9jzVaKZqOgfP3jEmp0
         MSQ/SkhkKlRkFjggRiFlnz96qGwLJ7bw6oJIUzRCp9xD+Q4xQAZBUhemHkUsXKgCO5Wv
         AlsQDxFAcGgVoVAhvSgZQuHIobLpTVJwdQBR3XzBxdS/yoWEP548WaN5MRzgcs4xwMl5
         84Jw==
X-Gm-Message-State: AOAM531ebcEU6QOxhv99R6bcKpgigHyjVvScrIehDMplSgl6DRA9Jdsp
        PPObkfZ1JuUK4m9TjCPcQmsPLPLvfJVP91q8piW27xnlHr7ElRDlfudBDn8xEaU0lC4vVu7opjb
        EwbvJenDWWVLO/NXLYl1xtB8gYODUH/CdwPdjN4I=
X-Received: by 2002:adf:ef90:: with SMTP id d16mr24968958wro.75.1629896733411;
        Wed, 25 Aug 2021 06:05:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSrseSsm6RkTsqZky/uo4GWu/U5U79W/FAF0KF5t1wAuV+iuMi36FtNc38uo3ZgcvIxS0KqA==
X-Received: by 2002:adf:ef90:: with SMTP id d16mr24968941wro.75.1629896733265;
        Wed, 25 Aug 2021 06:05:33 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.233])
        by smtp.gmail.com with ESMTPSA id 11sm5338828wmi.15.2021.08.25.06.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:05:32 -0700 (PDT)
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
Subject: [PATCH v2 2/5] riscv: dts: sifive: fix Unleashed board compatible
Date:   Wed, 25 Aug 2021 15:04:49 +0200
Message-Id: <20210825130452.203407-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
References: <20210825130452.203407-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing sifive,fu540 compatible to fix dtbs_check warnings:

  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml: /: compatible: 'oneOf' conditional failed, one must be fixed:
  ['sifive,hifive-unleashed-a00', 'sifive,fu540-c000'] is too short
  'sifive,hifive-unleashed-a00' is not one of ['sifive,hifive-unmatched-a00']
  'sifive,fu740-c000' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. None
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 633b31b6e25c..2b4af7b4cc2f 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -11,7 +11,8 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 	model = "SiFive HiFive Unleashed A00";
-	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000";
+	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000",
+		     "sifive,fu540";
 
 	chosen {
 		stdout-path = "serial0";
-- 
2.30.2

