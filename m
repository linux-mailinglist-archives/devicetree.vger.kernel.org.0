Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 660DA47FD96
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:36:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236956AbhL0Ng3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:36:29 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54804
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237010AbhL0NgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:36:20 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1D99E402E0
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640612179;
        bh=qeUVo4OnQnEXa4nRM+7z4OtDYprQ+PGgnySdBFiipc4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=CYea4KZ31hAkjDgt0+PlIfGNFqxFTdF7u3go8iGnUwcceFR/9cLVAdqY0iwkzrlXe
         YkwYi6Rf3GGalqXNy+semRP9yRErp3vGhsrOikBCH3Az54Q4A70qhBtzqQ4LED5cNj
         CrchDmOXmVIoqupF6HMINJIdaRngqNEwltBzZi1uK7tVBRiZThszS5UGNvV7+U7hBE
         8oAIlI4NaBFcGtHDYfMBqMA+3fTeOyX7BaSt3Yznmg7i1lxwXyG8ukB9LPcMbrbS7p
         0NafaxFlhnHCqWNFUqZzQfksiwHAqapSLTQfwstbU5lMSZvieBvl4C/1/LgVjtmYk4
         bZXsBN4ccMzXA==
Received: by mail-lj1-f197.google.com with SMTP id y4-20020a2e95c4000000b0022dbab5f69eso2202694ljh.14
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:36:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qeUVo4OnQnEXa4nRM+7z4OtDYprQ+PGgnySdBFiipc4=;
        b=ks4d5VhrwCdqhK0XlCs2CnrEz9X6aIli8KgWJoCe7A9792fXGI/plwLtfyqaY0+8LJ
         macwCwBlcsBOzblZkbbM2UfqBwtuB0qnVobG68DVZ+RULCZRydcv2XmP03zy/mJYQMHa
         0PYLCkol/JoJQUXv8MNTqRpKuvIEcc5283Xs98Mv5hWmxBrtJw4i1iQxfHO1915vQiED
         kmCS66pf0NP4vyZsrVZ8620PgZHgzogckGW2Om/ub30pCUmhTyWZLe3CEfR9ysnKnrO1
         zt5l4hPl8jbS9ikrN0ku4UxvQx7ZeHOtxSwr9HvV6aC1krOu8EpCtaRQezOK0fAmSRfu
         XmlA==
X-Gm-Message-State: AOAM5339HzGpwW5330vFVQ9LN2ZCODGLsphy3KKNuFcBlhbp8lZKlN4M
        +9rXvxlIfY11R6BTO5GeGlBgUHguD8drEePyIo53zoB8Nv2DkVOLnkkIdNi6FxYanvMu0UPU+Mr
        UP0Ts4I1WYGlxVNEghRL06uCBo8+rDwIc1/j7q9U=
X-Received: by 2002:a2e:96c2:: with SMTP id d2mr8014830ljj.440.1640612177475;
        Mon, 27 Dec 2021 05:36:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxowczEi1Ufuu3a5uE9n7r+scZ4hrAOHPBdBSBWoRBxEBxNhEbBQq3slkbnAQ2d3v3tOxf9Og==
X-Received: by 2002:a2e:96c2:: with SMTP id d2mr8014815ljj.440.1640612177153;
        Mon, 27 Dec 2021 05:36:17 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id g18sm800107ljj.124.2021.12.27.05.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:36:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 19/19] arm64: dts: agilex: align mmc node names with dtschema
Date:   Mon, 27 Dec 2021 14:35:58 +0100
Message-Id: <20211227133558.135185-13-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Synopsys DW MSHC bindings require node name to be 'mmc':

  dwmmc0@ff808000: $nodename:0: 'dwmmc0@ff808000' does not match '^mmc(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 163f33b46e4f..0a37821af9aa 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -300,7 +300,7 @@ i2c4: i2c@ffc02c00 {
 			status = "disabled";
 		};
 
-		mmc: dwmmc0@ff808000 {
+		mmc: mmc@ff808000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "altr,socfpga-dw-mshc";
-- 
2.32.0

