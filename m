Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF254D8BE0
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 19:41:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240962AbiCNSm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 14:42:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234787AbiCNSm3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 14:42:29 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 438383DDDF
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:41:19 -0700 (PDT)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 18EF941C4C
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647283278;
        bh=twa4BYCzD/GIzllgnltsSCLONxEdjrI922zlGL23Jjc=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=HG30AiV/JsXl2ICAQ8Bv9bw0Vi13R/Pc+K2RaX580M+QO23FGFoCvrM+whEX7ldvX
         c0FWuQquumAYxmcLSqFNs4Z2yFRGrwmYzs2bqqMjgCduamazoYlQVt37IFHQVk9Ei+
         XsYJHOztSdplIv76A3RRDUd90xYCK4DYVj2ii6Eaua4nDM4snfizLnQN+koiUWTbDZ
         0G58HXd57qxTFictw2mKIpOpVq9TQRkHtSpPXEirk9Bp4eqIWWuAmgWLIY2fBi1uRP
         C3gZkoO2uvfN34MgjBWKv4h2P2RXPN9eAFR9w1XENfv2MlQS3LFsWE33Q4aeIdbyHP
         KVzoVuEka2eAQ==
Received: by mail-ed1-f72.google.com with SMTP id i5-20020a056402054500b00415ce7443f4so9302571edx.12
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=twa4BYCzD/GIzllgnltsSCLONxEdjrI922zlGL23Jjc=;
        b=Cyxr3lEM00ieVcG58Wa476AMYt1VYLwHFjVcQQvYYG74TfabU+eyciItfvSvVBqXBj
         +OEUVqxWvLEaZPlSll96D3AeK1F/TRjIj2wzV/jLNrLf0zX7XrRZK9MvAaXgkhtDNQRE
         9e73RdK5TBBp+WmRUqkxCWQ2WyMq2VtRfse3xCWfbOFrypmh415UIrR9Th+Ehv1edR9K
         QumO3+y+UuvFCs4boIrGz+/5v9NQMjg379Pox3PYf0uRI7jHfA6NluPCLaEDAediNpAn
         ZfTyWhsryu+i7QWBl4VCGLbhbt9UdSZBRnfin4XgUYycbKAgQz+cXb1p8U+K/MWYNomq
         vavw==
X-Gm-Message-State: AOAM533Q4HXCbFKZkBDKQKMWvKjvK7eXtqUqQWN1O9hcuuw6IuuOv/uE
        pQdb3sykqOJXTvntEH48qKIFdzcjM2oYWBQPMsdVaDOtuCv7hOHmt5a2NqGfmQgpo7YJlTm8fYg
        xXEHdHW9HoLoflR71fI0/uSlFFR9LWH8BFZ1vQdM=
X-Received: by 2002:a05:6402:440d:b0:412:9e8a:5e51 with SMTP id y13-20020a056402440d00b004129e8a5e51mr22505823eda.362.1647283277573;
        Mon, 14 Mar 2022 11:41:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/rA9hTsxiHAKvu85JqEzovAJIEl0PB2/ZQkQ43N1ZDrKyGcfarG14p+fKLfXO8AtY7sKdXA==
X-Received: by 2002:a05:6402:440d:b0:412:9e8a:5e51 with SMTP id y13-20020a056402440d00b004129e8a5e51mr22505808eda.362.1647283277339;
        Mon, 14 Mar 2022 11:41:17 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id l4-20020a170907914400b006d9e0b46fabsm7076849ejs.193.2022.03.14.11.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 11:41:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] ARM: dts: exynos: drop deprecated SFR region from MIPI phy
Date:   Mon, 14 Mar 2022 19:41:13 +0100
Message-Id: <20220314184113.251013-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit e4b3d38088df ("phy: exynos-video-mipi: Fix regression by adding
support for PMU regmap") deprecated the usage of unit address in MIPI
phy node, in favor of a syscon phandle.  Deprecating was a correct
approach because that unit address was actually coming from Power
Management Unit SFR range so its usage here caused overlapped memory
mapping.

In 2016 commit 26dbadba495f ("phy: exynos-mipi-video: Drop support for
direct access to PMU") fully removed support for parsing that MIPI phy
unit address (SFR range) but the address stayed in Exynos5250 DTSI for
compatibility reasons.

Remove that deprecated unit address from Exynos5250 MIPI phy, because it
has been almost 6 years since it was deprecated and it causes now DT
schema validation warnings:

  video-phy@10040710: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'

Any out-of-tree users of Exynos5250 DTSI, should update their code to
use newer syscon property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index 5baaa7eb71a4..d8d401b5ca48 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -817,15 +817,14 @@ mixer: mixer@14450000 {
 			status = "disabled";
 		};
 
-		dp_phy: video-phy {
+		dp_phy: video-phy-0 {
 			compatible = "samsung,exynos5250-dp-video-phy";
 			samsung,pmu-syscon = <&pmu_system_controller>;
 			#phy-cells = <0>;
 		};
 
-		mipi_phy: video-phy@10040710 {
+		mipi_phy: video-phy-1 {
 			compatible = "samsung,s5pv210-mipi-video-phy";
-			reg = <0x10040710 0x100>;
 			#phy-cells = <1>;
 			syscon = <&pmu_system_controller>;
 		};
-- 
2.32.0

