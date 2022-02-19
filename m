Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E502F4BCA08
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 19:42:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242881AbiBSSnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 13:43:01 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242892AbiBSSm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 13:42:59 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 035FE26AEC
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 10:42:41 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1A7FC3F1A4
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 18:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645296159;
        bh=eds4hwJvnu4NA5qKYzbOl5rJlIyGJooNPDbjWhSXxPA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=CifCQskEAmfUzGnpcV0IoQ99frmIQ64Fl57rkMfUAaPjVV2dOE/oJYAXSjs3vgyhw
         /GXTtua+cPU85CtTkuLITqDv4XuIlNvmU5h21hzY2gq7Yq+SHrz+v341kl4LN32PVd
         qAEYgXF4qCezIIWsBwVUpzm74EISmahMDhay/bXWXBWq+euDtxaFpvRQiDo1e3FFq/
         lwew3IdEQqEm9lNNsQ6nLc0MAntwZlRBBxPP/O2zL7cwM8uAIOj2B5BQWx0IRy0vQ3
         KOjPDb6hv6LcWV4/7XhrYa7OWVH6eV9FVN4SlfIOLDBfn7JJdyg5Iy/AJOLUByjR0c
         JNWKYU7OD/k0Q==
Received: by mail-ed1-f69.google.com with SMTP id e10-20020a056402190a00b00410f20467abso7573182edz.14
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 10:42:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eds4hwJvnu4NA5qKYzbOl5rJlIyGJooNPDbjWhSXxPA=;
        b=BY3ZzXe+VrnWQWUR/y4VjjJm1IOAtezC6kthpUK/8KE/rx5MLtCX0V0Iau13Kg1eXe
         jS2vkCkIUzMmDKSjrDTm05ow37jkApxDqUG2Q1QOXQgSDReLto6apX77fqQS2cHDUwlU
         kzAWmGGxXhNvk29nb+DvPxfYir6kl07fA0V6LrHYRSnUctWSszE02h/cf9lMM2ex3EYx
         dWz+lKk1E4xUBKku5XopjH9Jdx2eTg3TPxgLcSN/45FqE9uhxQJjBvl0qyoS1K8RqOfE
         lvAtFjkjE3FHOCzpe+kvUJzcg5/nc9hcyfEPZjCjDVX5rKhla4MV/UDl8mRm2mfXUzm6
         HkNg==
X-Gm-Message-State: AOAM5331a1BW3PdVAldU7U06Fwfi3gxYNjfLP8aEj2OQq1oG57NJMcVh
        3afclidIBg55R7u7rF+b/zSJAe1X0HPqxWRcyZYcwU1tq1GfzmNWMbrJb3WvgxzFqlo0+Ncf+UR
        iHZTSgKr4HgX6V9zVY5jjVeAldbAtQNM8eMH2cw0=
X-Received: by 2002:a17:906:8557:b0:6cf:2730:b5cf with SMTP id h23-20020a170906855700b006cf2730b5cfmr10757171ejy.368.1645296156513;
        Sat, 19 Feb 2022 10:42:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyiBlObuIE4yboQDPgcUgD7fnjCG8ClJXJKKeDYvCOmZcNc7+X05uMuAKMAKm2NUzCGxOVM8g==
X-Received: by 2002:a17:906:8557:b0:6cf:2730:b5cf with SMTP id h23-20020a170906855700b006cf2730b5cfmr10757162ejy.368.1645296156345;
        Sat, 19 Feb 2022 10:42:36 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id j8sm6680745edw.40.2022.02.19.10.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Feb 2022 10:42:35 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Jan Kotas <jank@cadence.com>, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [RFC PATCH 6/8] arm64: dts: exynos: use 'freq-table' in UFS node
Date:   Sat, 19 Feb 2022 19:42:22 +0100
Message-Id: <20220219184224.44339-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220219184224.44339-1-krzysztof.kozlowski@canonical.com>
References: <20220219184224.44339-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'freq-table-hz' property is deprecated by UFS bindings.
The uint32-array requires also element to be passed within one <> block.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos7.dtsi      | 3 ++-
 arch/arm64/boot/dts/exynos/exynosautov9.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index e38bb02a2152..beeca27a7415 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -656,7 +656,8 @@ ufs: ufs@15570000 {
 			clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
 				<&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
 			clock-names = "core_clk", "sclk_unipro_main";
-			freq-table-hz = <0 0>, <0 0>;
+			freq-table = <0 0
+				      0 0>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
 			phys = <&ufs_phy>;
diff --git a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
index 807d500d6022..0d00543952c6 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov9.dtsi
@@ -311,7 +311,8 @@ ufs_0: ufs0@17e00000 {
 			clocks = <&ufs_core_clock>,
 				<&ufs_core_clock>;
 			clock-names = "core_clk", "sclk_unipro_main";
-			freq-table-hz = <0 0>, <0 0>;
+			freq-table = <0 0
+				      0 0>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
 			phys = <&ufs_0_phy>;
-- 
2.32.0

