Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED7413F1E84
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 18:59:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbhHSQ75 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 12:59:57 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:56982
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230312AbhHSQ74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Aug 2021 12:59:56 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 11D1D411CD
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 16:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629392359;
        bh=eulTWffz2zcY1QHzF3VctUTdQdyWBbuhcOokJb1Arrg=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=rhtOTdmthNu2ThG+hY3/LzKIqTR9Droed/Mx6QU+buHVClI6aO8E1z/DNARz7IaN2
         jVfYLBpBMy3r69LYb2H2O/n06OrkCLcnR9O3eVho/70XSv94RNGDA8ahrQrLCzOsPX
         5/W3xF8adtdheZeSDKMdlMrYGdmSKjxuOpsdfi6XFTjI0kRpjd9O75ZEIwNj2ceaTC
         WJdzp6wfpCoeGsp/hXs1PsKcsTixkSQMSdhy/TorPrd9wO8QaJAgD2aBHJD3U3tSdF
         gzTis6ckblOOf8X/Ux1GyYrbTgE6X8u2hZ6XOH3gxP5lUFWvOK/V0kZR9OWHeCAtob
         gE2zoJYQL+bYg==
Received: by mail-ej1-f70.google.com with SMTP id k12-20020a170906680cb02905aeccdbd1efso2495772ejr.9
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 09:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eulTWffz2zcY1QHzF3VctUTdQdyWBbuhcOokJb1Arrg=;
        b=jvQOd3jtMZNpuUp9laabiNSUBRoI5/NfCDLbjlolKKbiVFMA/wjRI4b+XFqOWtSz9K
         A5NWgaALznWMTgvC1zkRNShw7jfWMTMJjMzJthWrMAglkQAG2T98PL80FLvk3rJUX/rQ
         5IHifSsncXem2VLCHB4p27CWWjYivHlRbLNrKuT8s+az5gCRmFYeST7bgliRe820EZv6
         hIiNahrsVygDY6GqK8V/0V8vCQnk692SHLMAnT+ftzUR/sXJHEyRP9SgOx/cfrSlhdbL
         hQMnsy5ig7Gvwih6D4iEPOneDYCQRrUW9jeB13tqJtsNYGD6ppFmptKxQDsBBEbv50lf
         98mg==
X-Gm-Message-State: AOAM5304acRsGAIe2gVxfqMCFS+EO+CU/2FVAc054/5IOlb7wtURO3A2
        wZ96fant+CV9GrOMxSzFSiQIKBEEg+/NOOzBNs7uvtE0NQLbiLcveUvjuqqFZSrsc6/a5vU9kAh
        vww6eQMeLEBybl56whgcRCvAYV6rquVwF4hpUqYQ=
X-Received: by 2002:a05:6402:781:: with SMTP id d1mr17839055edy.32.1629392358804;
        Thu, 19 Aug 2021 09:59:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJww4UtUY6h9OU4l9uS3kIuoYiIOm0VucV6SoXDn0iXyU7Cxho1WRMomPQZIfagqOlV+lXh0nw==
X-Received: by 2002:a05:6402:781:: with SMTP id d1mr17839040edy.32.1629392358686;
        Thu, 19 Aug 2021 09:59:18 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id h8sm2023418edv.30.2021.08.19.09.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 09:59:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atish.patra@wdc.com>,
        Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/5] riscv: dts: sifive: fix Unleashed board compatible
Date:   Thu, 19 Aug 2021 18:59:05 +0200
Message-Id: <20210819165908.135591-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819165908.135591-1-krzysztof.kozlowski@canonical.com>
References: <20210819165908.135591-1-krzysztof.kozlowski@canonical.com>
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
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 60846e88ae4b..c960e19cfa70 100644
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

