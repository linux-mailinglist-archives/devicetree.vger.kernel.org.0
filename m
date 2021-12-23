Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44AFD47E00E
	for <lists+devicetree@lfdr.de>; Thu, 23 Dec 2021 08:56:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239468AbhLWH4x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Dec 2021 02:56:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241794AbhLWH4w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Dec 2021 02:56:52 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A92B9C061756
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 23:56:51 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 207so7719369ljf.10
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 23:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j3BDYvh6G6Kwwfj8Ljh6Lxu3/k0dPkOL4LYyEvjC7J0=;
        b=rVF6Tc3/MFHIEUwvtVahS5P3e+/awptOHz3RZwyIk70cgvCtfwkillFGnFcntnCChH
         PpBhj8E+RESx6fdn5Zq2PYmACwNGR4xY2WCB7kC1iHMJAj6YKdtJWU6rmkH+bjrCeIwo
         diwvwrZSvLY5pmnsliODr5gw5w1xcKMPJ9424QsqNaKoTdLfveqSLLYlxUGKbrh56tpZ
         Vd7HEX8oo+tBqiAeDlns8ICxNTNxKko5Bhc7uI7fIcgBZOFT53zSCswEb/d8itW3LqGx
         EWPp4naSasCCDkMHTrNhAj1Ff0Dn3peut4XhAM7YIpS+cbtbQVxGoSuGzQ8byCdSGNP4
         QZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=j3BDYvh6G6Kwwfj8Ljh6Lxu3/k0dPkOL4LYyEvjC7J0=;
        b=yIOtKvSuvGqcznj5n6pY/dmjPriicPLanewcgpg/SFXNydaL5hUxzZ43OJ0xaAgtdC
         Xj0uwxklk9utlL6LBSjq7krczgT0EoUXCvy8FESmR5wJsy3UtcsGSE7goOrfO4/knKdH
         Bn902ElUv9bBbuQ3cUHg3BuvXsPMUlqx0U5468wFCs0I5PMkPY7J9LcLujo3y/M/jFyv
         da9sLcd1zEfBTaNl7nKZyPY04AYebbvTGfQhD1gCu1A8S9kdUj9LOOsFcEnFVqeQNWuc
         9TlHtoqoHcAJa8nq69GctExDSJm9QrLrhiTN+MWO68BRmjWfM50hVP0pKjiM4yoK9dL+
         r46A==
X-Gm-Message-State: AOAM530bxhUfrHhK71Rirxl0AUwFS2RaWlgawDxkQlfIFuoal3NQv6Bx
        hxIBjzRScsjOKYO1MvJk2+Qs4Q==
X-Google-Smtp-Source: ABdhPJzlbWVgk9B9QJKs/ie+tgQLXVUI3ooCQ6uDo8ydIQyDaZAdM4hWLN94s1P2QoN98Wxyse8e5g==
X-Received: by 2002:a05:651c:198e:: with SMTP id bx14mr935157ljb.370.1640246209901;
        Wed, 22 Dec 2021 23:56:49 -0800 (PST)
Received: from localhost.localdomain (88-113-46-102.elisa-laajakaista.fi. [88.113.46.102])
        by smtp.gmail.com with ESMTPSA id v24sm433140lfr.30.2021.12.22.23.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 23:56:49 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Thara Gopinath <thara.gopinath@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8250: add description of dcvsh interrupts
Date:   Thu, 23 Dec 2021 09:56:40 +0200
Message-Id: <20211223075640.2924569-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The change adds SM8250 cpufreq-epss controller interrupts for each
CPU core cluster.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Thara Gopinath <thara.gopinath@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 5617a46e5ccd..e7d20c55a743 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4571,7 +4571,10 @@ cpufreq_hw: cpufreq@18591000 {
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
 			clock-names = "xo", "alternate";
-
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dcvsh-irq-0", "dcvsh-irq-1", "dcvsh-irq-2";
 			#freq-domain-cells = <1>;
 		};
 	};
-- 
2.33.0

