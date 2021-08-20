Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 967923F2856
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232383AbhHTI0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:26:17 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46274
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232426AbhHTI0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:26:16 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B06974075D
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447409;
        bh=CAnM46WD3rUSG/zVXFycLibrCZJUMVr4dm8Wv62opn8=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=dEdGraxGmErx7QPM04n7qwWOzLtRe2m6/jx+jLSpodyGizmj0vfeEMNMneaPGtezo
         j2S0NyMiv2yMAQxB+KBsJe2v1eLNiZhEh2sCG26pgcweMfGfBwyNX0WQoyoI/q4fvU
         Mv7BPeR0g712F7fa2nITX9el+DkIfnwyOdsxok8/RtJ96xrt1HQ7QFOy3RWGc02emT
         U486hHvj4my6Mttn49yT46oZs7VLOveo0SMGWYovAEI1Dj41sZGSqkNogXATH4S8D2
         QeXhYP5l07i/g7gdWpDkjG64slqp4+xjnfFiT4LWQEq0nzZc/rVh9l1N5SiyhmvUNa
         R0eXw4mLE3Kpg==
Received: by mail-ed1-f69.google.com with SMTP id ec47-20020a0564020d6fb02903be5e0a8cd2so4185265edb.0
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:16:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CAnM46WD3rUSG/zVXFycLibrCZJUMVr4dm8Wv62opn8=;
        b=hoEihy84OoYUmVidEbqLUIB0TQ8LHWc5F1J8Gbr4PwHyQpNsDxfvWbIxb40rfM8kBH
         nQNbYm/kD4cdNRxpbB8sNdVsVi90X17Z3p1ijgDP/ZN5S1U4sl4vEEirMW4RerxTdrVc
         UhCh/SyLIS4qbktM52110ZjmnI4gGZMv/CUlGEqPUTQ5BuxUtub+lQNTMifL+jg13aEN
         X4wNRzl1SWAGq76huP8j+gFEZ9ZvRwZg2dEcDFa8XysG+RT2p5smQvFlhFYiqZlvXfEN
         7HufdsLRE117QC2gL78AM1OpHGdYyichxpwsSBV28HHnnaTOAh7doFQufq/yvFpx0HTc
         Rmsw==
X-Gm-Message-State: AOAM530v0GtJJM553ZaKC42jzhFLl7RrvRV73wDQ0sDwniqcyCYVypw8
        +9QP/ve2JVgf0qHfbGV5kV92zciRDhzElVcJzBVJaYlDpjjSsWUQMMrWAo2s+MXnX/9mPRLNIsj
        DRDH8Af2dgfRQCV5BjlYg6wh0GwzKqlnwKSCCJkg=
X-Received: by 2002:a17:906:ad8e:: with SMTP id la14mr11816019ejb.113.1629447409105;
        Fri, 20 Aug 2021 01:16:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvwviqEoH9UbW+nsSARGzJTvy19NqOU+gEpu6eWTsyTkkmX+RW4mWEDT0jMql+QW4qXh1vGg==
X-Received: by 2002:a17:906:ad8e:: with SMTP id la14mr11816006ejb.113.1629447408938;
        Fri, 20 Aug 2021 01:16:48 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id g16sm2457764ejw.74.2021.08.20.01.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:16:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] arm64: dts: allwinner: h5: align operating-points table name with dtschema
Date:   Fri, 20 Aug 2021 10:16:44 +0200
Message-Id: <20210820081645.83796-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of operating-points node to dtschema to fix warnings like:

  arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dt.yaml:
    cpu-opp-table: $nodename:0: 'cpu-opp-table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
index b2657201957e..0b6914a165b0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-cpu-opp.dtsi
@@ -2,7 +2,7 @@
 // Copyright (C) 2020 Chen-Yu Tsai <wens@csie.org>
 
 / {
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2

