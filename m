Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 148924D8BA0
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 19:20:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243733AbiCNSVY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 14:21:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243727AbiCNSVY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 14:21:24 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BD853525C
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:14 -0700 (PDT)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3DF53405BC
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647282010;
        bh=U8OU69oA8CY5cA8ZS5yQs0dGgRqDiUpqozJ7NxlASIk=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=b2NvLmlZ0LfX8sNcJUapJJWj1z7h6pw3iLWcqKk7ARfy4/ZovpR79m4prxfvvyB77
         HlM7o5Vo4EcvfSBL7dIwEl58fXMAGoo68VejJGUmv0gQbbwhJxOvqhPYFKk4SKtGPW
         JEEWZvf+ten4Ns6uTbK9+mdx10bUsmAMU5wQP42UWhswuE8OsUXoxpyIQTQuRlhhC+
         zqXIEYZ/bXIpykw4WgOP+xryIaadwFvrxNDSNbxaGdvItlnuzCaOO/QTtN/qowOU03
         cJwnkF5YQN7tu8sD1oos21C5bil6IQsyZycp/Ys+aIh0btBBnfEfjnbq0BeERYfRKw
         iQlsOQ6qW1ewA==
Received: by mail-ej1-f71.google.com with SMTP id hr26-20020a1709073f9a00b006d6d1ee8cf8so8278021ejc.19
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U8OU69oA8CY5cA8ZS5yQs0dGgRqDiUpqozJ7NxlASIk=;
        b=YHjXT6NFG1WwcA4tkv356cqMsbfUY6dk4/gfyo5RePPhhg7ChDEX4tnULZnwMl/QnV
         9iVdjrueBQpDT9pyESxOV4VUdVNdBiwfuMtvvf+lBaS+DyvDggAnzHF76A2WHrfWJQhD
         iDg3CpB/OYUmhIX7Xt0JwdLNCXbMDYy1cSz80XQIFGzYscLNnttQWadBzj8/UJB8KwyA
         PNgYxuqdfhjNx7EPTuE+AKQkiB2IPc1lvapvQOQGQOEN8U5VtccRdOXOxWiIE2puDnoW
         qBd0FtygGWe1CoScPKRP65Mbo+9UaL1HuN4/OWPcLxis1U1STZw0gr7VCdEk9MyW/1zd
         ApjA==
X-Gm-Message-State: AOAM533PVsQimLu7VVdqIhaiwIOYJxhYlP0vWLzLQdKic2EnFdYgntfV
        cYa3UHBWpnhh8MRydPn9S3bS1pGE+0wo1fDGDSl4uMMsfnmx9ZFoiurlO+z/wq+Qf67lZvClPaL
        nOYyGSalz2JL6NR/4TzYEaJ6ANREKhf0+ZsnW1iY=
X-Received: by 2002:a17:906:4cc7:b0:6d0:7efb:49f with SMTP id q7-20020a1709064cc700b006d07efb049fmr19162187ejt.639.1647282009784;
        Mon, 14 Mar 2022 11:20:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJykfuiix6CGfcuVN3LbtcoNjfp49yxsV/G1SXPbVJxr5AUlGKmZWMubD6N2B5kngeBfouUT/A==
X-Received: by 2002:a17:906:4cc7:b0:6d0:7efb:49f with SMTP id q7-20020a1709064cc700b006d07efb049fmr19162170ejt.639.1647282009622;
        Mon, 14 Mar 2022 11:20:09 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id i25-20020a50fd19000000b0041614eca4d1sm8566449eds.12.2022.03.14.11.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 11:20:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/5] ARM: dts: exynos: align EHCI/OHCI nodes with dtschema on Exynos4
Date:   Mon, 14 Mar 2022 19:19:44 +0100
Message-Id: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
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

The node names should be generic and USB DT schema expects "usb" names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4.dtsi b/arch/arm/boot/dts/exynos4.dtsi
index e81b3ee4e0f7..5fd17bc52321 100644
--- a/arch/arm/boot/dts/exynos4.dtsi
+++ b/arch/arm/boot/dts/exynos4.dtsi
@@ -373,7 +373,7 @@ hsotg: hsotg@12480000 {
 			status = "disabled";
 		};
 
-		ehci: ehci@12580000 {
+		ehci: usb@12580000 {
 			compatible = "samsung,exynos4210-ehci";
 			reg = <0x12580000 0x100>;
 			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
@@ -384,7 +384,7 @@ ehci: ehci@12580000 {
 			phy-names = "host", "hsic0", "hsic1";
 		};
 
-		ohci: ohci@12590000 {
+		ohci: usb@12590000 {
 			compatible = "samsung,exynos4210-ohci";
 			reg = <0x12590000 0x100>;
 			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.32.0

