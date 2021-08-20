Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD8C3F2859
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232810AbhHTI0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:26:19 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46284
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232492AbhHTI0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:26:17 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A85BD40770
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447461;
        bh=uL2b34fb4mR31Q+H29bjRYsDCLvbqA4faR8YCZqFpKo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=E96/o2hV0C0Obj5P4HDTsFt9mNM4H2gcUNQUhLraRdBhHMRLenen0pI5xVPZP91Ss
         KO5XJcIDhSHKtzthMOjDXOcQkIwUvJL7vFaQgT0Ki206pGPjFHGt4rY7XP+mcwj3u+
         r0eEcORK1wPlNRx2bbFM8cjDKYptuNrIcPvc0rDTBOjsDH2R675hHNm+luKwIcNwga
         NGtOJ5sAdYHY91nQoyNyC9TFwIout1BDcAfzTdEBOiBiyf/tPqyg80E11fkBwp7K96
         RHH6FtLAgot+2kVGL7lnVRE2RHBWqc+5MxL31Z1KARIr4Q6fsVYw+WSzFzPIEnsaWr
         IjiUjU93w//Fw==
Received: by mail-ej1-f70.google.com with SMTP id r21-20020a1709067055b02904be5f536463so3405993ejj.0
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:17:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uL2b34fb4mR31Q+H29bjRYsDCLvbqA4faR8YCZqFpKo=;
        b=C40v54FA1d4UWs31K5wOJJtrnVvLfryR2Jr0nooMlo+zyguq5khkaCjj8X7m5yyvbZ
         HCzTBy/xAyPUxoNGnMJhoPDSDtHROiBjMffJPTN3H60nJXk62mN9TB9dFdYkuwzHIerJ
         owZ5blPgNIUZ0YVHySbbn4+eKQvGPXI0aWjyz0tmSlSYhsqTHr4lk4SJLkZKTB+TYdIt
         cgWNxFm6VZylD7X0dvjPahsSKPrsdfyw1oNu5DOnwr6rlQzAyYSApIjTA52hkDqxsbmN
         sWg2RDXh/DoRJcYp1ClRFv9hyTQuvaaXkZX7TscRl9Dthq/HAHV7fIRL7VobVuDFW3x+
         NsEA==
X-Gm-Message-State: AOAM5333eqcUonSpIWYSnaYYkZS+jUtfLsVpdB2+kP9x0jBB1pNIbs8a
        pwF1OJAnucip+jYEqo3sUpPmUiy5RoAn8STW3Isz+X+YcDejRGocEq6YkdhogXwrrGnKhAApER4
        dWM0q+sK73t0hGiHG2RTrdn3XBhFH4EdiKN9M1+w=
X-Received: by 2002:aa7:d787:: with SMTP id s7mr21130835edq.336.1629447461485;
        Fri, 20 Aug 2021 01:17:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBxfCR35X39RHE3yqRRLWn03RefoOBmdkIZc7zBhsu7mUJCwhaiyE5PCxCjrAHUOLUZasgwA==
X-Received: by 2002:aa7:d787:: with SMTP id s7mr21130827edq.336.1629447461384;
        Fri, 20 Aug 2021 01:17:41 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id d22sm2488041ejk.5.2021.08.20.01.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:17:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 3/3] arm64: dts: arm: drop unused interrupt-names in MHU
Date:   Fri, 20 Aug 2021 10:17:33 +0200
Message-Id: <20210820081733.83976-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210820081733.83976-1-krzysztof.kozlowski@canonical.com>
References: <20210820081733.83976-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The arm,mhu bindings and driver do not define interrupt-names, so drop
the property to fix warnings:

  arch/arm64/boot/dts/arm/juno-r2.dt.yaml: mhu@2b1f0000: 'interrupt-names' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 8e7a66943b01..e4fea639731e 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -27,8 +27,6 @@ mailbox: mhu@2b1f0000 {
 		reg = <0x0 0x2b1f0000 0x0 0x1000>;
 		interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "mhu_lpri_rx",
-				  "mhu_hpri_rx";
 		#mbox-cells = <1>;
 		clocks = <&soc_refclk100mhz>;
 		clock-names = "apb_pclk";
-- 
2.30.2

