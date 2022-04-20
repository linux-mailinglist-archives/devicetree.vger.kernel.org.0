Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 220EA508464
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 11:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234186AbiDTJFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 05:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351228AbiDTJFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 05:05:39 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8113E1F638
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:02:53 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id y10so2111389ejw.8
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5WxltkBNqRgSg5ye1K7x2uJPIQgi4UQShbR0vdy+3Z0=;
        b=Jxt7haB5BZYbyKrTM9PzjIFPnnfD1o3+JrF/Z9+WXc4I0E7mXPkkxn97/nHTHVhj85
         RCE43dGGQ9rKtFktXOzEjLcOKsxcKBf4nvLL3U44F7MljUQrZsDlESY8Kb8qEuDK6Mnt
         SXOgeWhwyOv1x+Bykp7vDC8yXxCWh4Q1Nbbwu0RZb/2a38C3lxeO69G9Xuy2KSz84OCb
         wNL33DliWhUBgP7NwqCOVDU4hFJ3WfGwOKOaGS+cKYAy6WGlls7KkOxJ0W/dQizaq12v
         ls/QYtt52nEZQ0iJRMqkAu/3rZx6W/jqpaplYmj+ZKycf5fFqdwg6/hyuwW4UaTZMveH
         yV2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5WxltkBNqRgSg5ye1K7x2uJPIQgi4UQShbR0vdy+3Z0=;
        b=Q5y8icmiG3XF4IdDpsGu5Qx9BJqmMSXk5cekibHtLuigLe3GdVUVUprCnmBzXCeaRn
         MmYTS5YONF8tenbfNRQtxRXx3p8VwqtuvHPlq277oQZes2lKwpkAKHvpgz8uAd8+ualX
         lj/Iy1UiBhyFY4uA0qILgqKQYF4l2LCf6hZ2t6+8nF0UPFrnczywgyOteamSWOL2XezF
         RpRFRWhVLqhbdtJmJm9Pd8jEa/RG7YN23EST/jU8CyI1bssVBFwZj0i+eBCChDUd/vYW
         8F+B4okbzX+N/x57bIMaM75MvG9NBz8ZFhorJI8HHTBS3doK3XYi8FduCay4m4lI/O6K
         pMaQ==
X-Gm-Message-State: AOAM532O9/YakCtmfzAA8/hdTjp5L0S8MZPqg5AWwRBo0td9SY9ZOH8A
        HaeJBQ5AWLHW0Gcu7rCrRfW9dQ==
X-Google-Smtp-Source: ABdhPJyPL0ilSgEuVbbu2a2nh9esM0At2WOAJrRLg+mCjLpw/AbP/TtwkPiaHRJ23Sd9a35P9tYZlg==
X-Received: by 2002:a17:906:66c8:b0:6e8:8b06:1b32 with SMTP id k8-20020a17090666c800b006e88b061b32mr17230306ejp.236.1650445372114;
        Wed, 20 Apr 2022 02:02:52 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709062a5700b006ccd8fdc300sm6413477eje.180.2022.04.20.02.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 02:02:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] ARM: dts: keystone: fix missing fallback and case in SPI NOR node compatible
Date:   Wed, 20 Apr 2022 11:02:47 +0200
Message-Id: <20220420090247.73410-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220420090247.73410-1-krzysztof.kozlowski@linaro.org>
References: <20220420090247.73410-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Vendor prefix in compatible should be lower-case and the jedec,spi-nor
should be used as fallback, according to the bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Add fallback (Nishanth).
2. Got review from Grygorii but due to changes not including it here.
---
 arch/arm/boot/dts/keystone-k2e-evm.dts  | 2 +-
 arch/arm/boot/dts/keystone-k2hk-evm.dts | 2 +-
 arch/arm/boot/dts/keystone-k2l-evm.dts  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2e-evm.dts b/arch/arm/boot/dts/keystone-k2e-evm.dts
index 8f49883a675e..5d6d074011df 100644
--- a/arch/arm/boot/dts/keystone-k2e-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2e-evm.dts
@@ -140,7 +140,7 @@ &spi0 {
 	nor_flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "Micron,n25q128a11";
+		compatible = "micron,n25q128a11", "jedec,spi-nor";
 		spi-max-frequency = <54000000>;
 		m25p,fast-read;
 		reg = <0>;
diff --git a/arch/arm/boot/dts/keystone-k2hk-evm.dts b/arch/arm/boot/dts/keystone-k2hk-evm.dts
index f968af0bfad3..4a91f5ded402 100644
--- a/arch/arm/boot/dts/keystone-k2hk-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2hk-evm.dts
@@ -164,7 +164,7 @@ &spi0 {
 	nor_flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "Micron,n25q128a11";
+		compatible = "micron,n25q128a11", "jedec,spi-nor";
 		spi-max-frequency = <54000000>;
 		m25p,fast-read;
 		reg = <0>;
diff --git a/arch/arm/boot/dts/keystone-k2l-evm.dts b/arch/arm/boot/dts/keystone-k2l-evm.dts
index 32619b3c5804..1c880cf8fa91 100644
--- a/arch/arm/boot/dts/keystone-k2l-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2l-evm.dts
@@ -113,7 +113,7 @@ &spi0 {
 	nor_flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "Micron,n25q128a11";
+		compatible = "micron,n25q128a11", "jedec,spi-nor";
 		spi-max-frequency = <54000000>;
 		m25p,fast-read;
 		reg = <0>;
-- 
2.32.0

