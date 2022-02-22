Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B854F4BFB93
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 16:02:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233172AbiBVPBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 10:01:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233108AbiBVPAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 10:00:41 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E1D10E556
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 06:59:59 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 06CBE40253
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 14:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645541998;
        bh=AXkZYdVX5Zodn+3WZgtIGj/ZSa6Qs/Xzl3ZJQ9geNsQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=ENcy3AYPdFcEFGtoER2h5QD3vZwZM6W1hH+bG1Hfkvrl8YAgoLoQZeDu/1HfyKAqM
         iIpWEyV4woCcTKPT9Jj6gzfW8kWpCZhGQyFUM82owgN5jFG7zJDoYPYv2KE69Zy8bV
         9iDMfGXnCTHczEOTaB0fv7pMJTdLW+27uxLFxhABckSZBXlHvB8+ko3phuDbrD3D9L
         pyMTLcthx2y2ImjAxpBEsWBMa8APk+Ys3mWeA/HO3W7r26EEL9S/jaAC4k/JYbXToA
         bOd90q9E3dQF4ZpHkSmHD81r9GCWyg2NCr8khrb64AkY3kk1RbcMQPyEcbz69XBK72
         e8NSrgfrj+54w==
Received: by mail-ed1-f70.google.com with SMTP id eq13-20020a056402298d00b00412cfa4bb0eso7279401edb.7
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 06:59:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AXkZYdVX5Zodn+3WZgtIGj/ZSa6Qs/Xzl3ZJQ9geNsQ=;
        b=dXKYbd1i+ETWVIaLHE2b/dozaQ5USWXJHzXZvwIaifSlmxVL/WuHDNi/66cNdZZxd1
         80RTWz9xgmSHhZAe7ePUx7PLBWaucEoM6beYdtdRfbds+xlwuJAFVljY/7pS7goYRW6d
         WrZ75RPmFjaOq5LEES27bos7oNXUFIaqHfgRiHSlkhOJk3V/IAUMePMg2yJfIac1OYzW
         4gCNAUzEWCY7AaVeRfKZcRrYq1enRcssNN3ARbS1Q1HIYi0RjzBqYr9LiZ0rl2vXmUt4
         eVQ1V04O8nexZiM4twNunzlq0SACqznf56n9sJNoLLlOy9P3R9L3lah5Gaj4UsEuDLC3
         0ChA==
X-Gm-Message-State: AOAM531nMaKJE1qz3qFqaUWXh2DKDWw1sT0m/rUUWMwFAvblAvTLQ7DL
        73N6iPXpr0j98a0emFgAQ5JYXkGoM9e+3IWUH5+TNS8keY/KeiBAEaKo8Mt6PwKRvw5tLrUvVXv
        sBnV7X1CRsjprxaBaaUK/I16dU1VDOAw7NbyJrg8=
X-Received: by 2002:aa7:c703:0:b0:410:b96a:6bf with SMTP id i3-20020aa7c703000000b00410b96a06bfmr26705745edq.439.1645541997725;
        Tue, 22 Feb 2022 06:59:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwfSFtNX/a3KL4lHPEAhSPb3vHh30FiudcrzDoMBrPmGyj5vo81xOj/2DV7Q8M391vFSdj/vQ==
X-Received: by 2002:aa7:c703:0:b0:410:b96a:6bf with SMTP id i3-20020aa7c703000000b00410b96a06bfmr26705712edq.439.1645541997526;
        Tue, 22 Feb 2022 06:59:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id m2sm2467960ejb.20.2022.02.22.06.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 06:59:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Jan Kotas <jank@cadence.com>, Li Wei <liwei213@huawei.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Yaniv Gardi <ygardi@codeaurora.org>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 11/15] arm64: dts: ti: use 'freq-table' in UFS node
Date:   Tue, 22 Feb 2022 15:58:50 +0100
Message-Id: <20220222145854.358646-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
References: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
index 599861259a30..34aff40c6b8e 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1257,7 +1257,9 @@ ufs@4e84000 {
 			compatible = "cdns,ufshc-m31-16nm", "jedec,ufs-2.0";
 			reg = <0x0 0x4e84000 0x0 0x10000>;
 			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-			freq-table-hz = <250000000 250000000>, <19200000 19200000>, <19200000 19200000>;
+			freq-table = <250000000 250000000>,
+				     <19200000 19200000>,
+				     <19200000 19200000>;
 			clocks = <&k3_clks 277 0>, <&k3_clks 277 1>, <&k3_clks 277 1>;
 			clock-names = "core_clk", "phy_clk", "ref_clk";
 			dma-coherent;
-- 
2.32.0

