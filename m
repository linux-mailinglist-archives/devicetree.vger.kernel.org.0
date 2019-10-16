Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C50E1D89C0
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 09:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390725AbfJPHfM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 03:35:12 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:45097 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390650AbfJPHfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 03:35:11 -0400
Received: by mail-pf1-f195.google.com with SMTP id y72so14138814pfb.12
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 00:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=03jpeb+1aJx4bxpcdPiavfJJhVJ5WBvL1EOxBoz3J+I=;
        b=X4D5Ac/vX8qbhhnG/SRIM90B0+FmV6AycTSj/JtrullgPcisRI70iJjTkjiIMfyi/H
         QhssR6y42idqaSNfRGO5AVREd9915qBuIXFx5EV+4gIzMHAQr/p1a8REtGA9cfSZKsmI
         PWp5a2RaRyTOA8Ki2AoHQ3/WAxaO3Rg2RGtb1Z1GvMXas458/hA1SSPuRzfojyFyWFL7
         td8pqUQrvLIhjkogvgzcfK4BGdZzYFhJsEFJxSn26/snm4bs1h1urgmrwhLPPNyIxmWz
         ONpJaLJ3eApPbWqGwuOBFv5BOLamb9huJXIkx7cabTmnkVM7sFciLLaBHM7zV6jpwMvN
         g+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=03jpeb+1aJx4bxpcdPiavfJJhVJ5WBvL1EOxBoz3J+I=;
        b=EdJYn1nlgniQgUAURaxw9zi1Yb42P17KYRWAXuc7LO28FV3KzQRQ/BXZwlZYcuYLNe
         UWJnGYv5ntgX4at/QOmj1j0279pqr5Uq8/bZyrBes7I6pwNeXBbxZbFqEc4WiLN3QDBd
         YZ+rpj8WN0LXpMs0wShv6kD00nV7AY2MjOkUl7Hs9DqFQHZrVLzNllW9E7tIe5JpYMcb
         wG/4LLgAHIcc6n7VZGnCJ23Cu75Goc3tQTocwXabmj5w5jW//7wDr2xOCjP+iV84wbUn
         y/Syz3gbNqFj0mJG0pkgeK+38blNHEK3m1q3Ka3xB4TkoYYeFcOz6nvhvk8gqUBgK7x6
         5ErQ==
X-Gm-Message-State: APjAAAWb7tFbPAFg/qjonpMgJCnsMQ1wEEc8Y7aEposvzPObp+rJeBnk
        JTXA/rt0P9587autLX2Y7kK+1A==
X-Google-Smtp-Source: APXvYqxLAdFUelj0nGlA72+kn0HnBJlREcJf6ke7gmZg2QchUPKPdi3nc8YGKl4qzUSdSd5kYYWf0Q==
X-Received: by 2002:a63:c748:: with SMTP id v8mr43605412pgg.348.1571211310066;
        Wed, 16 Oct 2019 00:35:10 -0700 (PDT)
Received: from localhost ([49.248.175.127])
        by smtp.gmail.com with ESMTPSA id z4sm27413149pfn.45.2019.10.16.00.35.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 00:35:09 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 13/15] arm64: dts: msm8916: thermal: Add interrupt support
Date:   Wed, 16 Oct 2019 13:04:12 +0530
Message-Id: <88eff964b708c8aff57b24370d2e14389ace09e9.1571210269.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupt for the tsens controller.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 8686e101905c..807f86a4535e 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -816,6 +816,8 @@
 			nvmem-cells = <&tsens_caldata>, <&tsens_calsel>;
 			nvmem-cell-names = "calib", "calib_sel";
 			#qcom,sensors = <5>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

