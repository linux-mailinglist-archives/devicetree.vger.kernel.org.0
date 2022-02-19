Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DE774BCA30
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 19:47:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242978AbiBSSqV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 13:46:21 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbiBSSqT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 13:46:19 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B3B517896F
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 10:46:00 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D4A854025B
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 18:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645296358;
        bh=eJ6HQrRnH7eCjaR+k7F77ct8AqISDRTidseB01nTcCM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=oQXUBVzDFSmNnuSIOkQM4BOooRj99xTLYvL/F7bGnmJafNIN3oW1V178eq5g6jJBY
         iQn0LE7x5LFbJieE1w601waIu4HbbbIW0Y3HIBAkq3/9RdI83lLvFHqeDvOZj4ELVk
         Akrod3LjeuKhortbsC2Bwk5avG7nSPm3dehJoVMqlGFGTJTZ8eVcal2yAPzUKaU5Rt
         X/+pJTVy5vZ24JEpP6PKBH7YXIsoGD4d6ivC6pP+OJBEdbLuLIak4iUdv0/eOxo2y3
         4BEBBx4vzwCNIK+aJ0rTHjKvPw58msb5mSUmAHxaBcceFH1qH2nAMrqw6/wiBTKOpM
         dIOxJeLEUISZQ==
Received: by mail-ej1-f69.google.com with SMTP id k21-20020a1709063e1500b006d0777c06d6so2942858eji.1
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 10:45:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eJ6HQrRnH7eCjaR+k7F77ct8AqISDRTidseB01nTcCM=;
        b=sC6ev6FlXN5sVCr4mNqxvrRAEmzp1LRTJHZPnuWkhSC03lbGlARDyYmXrTj7BIUwso
         6FsLNKwpQia+E7TfwkLVyNnLlxxE7gsKEu6L3HMS4503EQx7KP5U8UE6ezaC08C8t4Ag
         HdyjVx8NghVo/cxGRlThqUf0x7aJ9mpn2QTlKcV4JAq4byYA9pU05r7qRG8flp05sAu/
         FtmrZCc2XOc3YWg1mbmpz+b4bxv4JSvc18H6SHcPse5y3fl7sKpe5UkL6kyS3xjtWayZ
         33Ie2HKz13LA2h8T2Fiom3h16mQwQJWr7VX/otE8HT8vNDhDpWyjAPBhF+zTr2o4yUII
         iY9A==
X-Gm-Message-State: AOAM533E71b8zAZ8+P0P5qL+i/o4wI8ArzLJWgZXyg2ZWpok9MT3foKN
        ncjJe+lMDjiNWG8lDH4WRl7+woNG0wIirs+kPxYKnN5/VTbPuHptIwP38jbp+LcoSCyNvSpJEJf
        sKyD6yTYqGR62oU/AFQDkammbszz36/4y0Mcmmw0=
X-Received: by 2002:aa7:c612:0:b0:40f:2a41:bddb with SMTP id h18-20020aa7c612000000b0040f2a41bddbmr13789835edq.291.1645296358467;
        Sat, 19 Feb 2022 10:45:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwCUQahoUlw1/KaqiAKlfUzjGeKC0o8en5bVZWTPpKsIDqk+8vzgYr9LfT4H6VG0K4MxnLXbw==
X-Received: by 2002:aa7:c612:0:b0:40f:2a41:bddb with SMTP id h18-20020aa7c612000000b0040f2a41bddbmr13789828edq.291.1645296358336;
        Sat, 19 Feb 2022 10:45:58 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id j11sm4847509eda.106.2022.02.19.10.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Feb 2022 10:45:57 -0800 (PST)
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
Subject: [RFC PATCH 8/8] arm64: dts: ti: use 'freq-table' in UFS node
Date:   Sat, 19 Feb 2022 19:45:54 +0100
Message-Id: <20220219184554.44887-1-krzysztof.kozlowski@canonical.com>
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
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 599861259a30..c3afef0321ae 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1257,7 +1257,9 @@ ufs@4e84000 {
 			compatible = "cdns,ufshc-m31-16nm", "jedec,ufs-2.0";
 			reg = <0x0 0x4e84000 0x0 0x10000>;
 			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-			freq-table-hz = <250000000 250000000>, <19200000 19200000>, <19200000 19200000>;
+			freq-table = <250000000 250000000
+				      19200000 19200000
+				      19200000 19200000>;
 			clocks = <&k3_clks 277 0>, <&k3_clks 277 1>, <&k3_clks 277 1>;
 			clock-names = "core_clk", "phy_clk", "ref_clk";
 			dma-coherent;
-- 
2.32.0

