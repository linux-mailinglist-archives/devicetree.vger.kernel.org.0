Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E34944CD43C
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 13:25:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239554AbiCDM0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 07:26:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239079AbiCDMZ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 07:25:59 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CEAE1B2AF9
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 04:25:07 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5851E3F60F
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646396706;
        bh=sMfVOQVh3QDv09HKuf77ip6IaDuNbDVh/tnxPccjD3M=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=OSiNLVksYhv5BFZYyWz7Z0kz/NKn/mboV6ONJF/avttnv/LglB34ywPTh/xlOuCA1
         zXQNGtB6dlkV7ovP8rmL+8ono9GJ4sQTfrbtGZne7WpZEGYcsjcGNMn2+TxXi4JlHK
         8rA61suFkKRiZkgewlCQ+8ORtdatiVZ0TLdxBfsRNSOVz73kOSPSqqlr+gd+mpwcVh
         IhaEXsgJ34l5Ms5YxxZkdzw4YY47w/rHqLwpN7+OsYZVO0NzDql0ZZzwLm6YzfhVCE
         en3IY63jKPoGsr8U3JkycQmDWNMWW5KrYmQ0PvtULLHt57ibEwKxFmfrKcvrGZw+x2
         q+j83C6TgpSYQ==
Received: by mail-ed1-f71.google.com with SMTP id da28-20020a056402177c00b00415ce4b20baso3579570edb.17
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 04:25:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sMfVOQVh3QDv09HKuf77ip6IaDuNbDVh/tnxPccjD3M=;
        b=Ks6SVLHbts/vQ3jzvXKy5UuXCerlCDbMv7I8MxtpErCs8fS9TzAzzWPSxSIt907kS0
         U5co3B81e4ue9oDieO21iDxlA8dEIKtqRq6dr1/e8vs8g3b/vsUXeF3XCOW5FXKo4A2i
         /wBkkLAEvkSxD+/1DibBE6LtRIipuLWPTyv8umdCCOreG5lddmGo30riQLC8pLrr2ApH
         eMVabFNH2twYkfM/7smplfe5kCF6iQ1ELOn7hQl+d3bRy/WLUe17LejEJie6M9SPyLUu
         fPRdAePQ8lisNmWx1tzB2KcrZO13kSaEFB/Ml94FkKWTzHpB9pxhXwe6xQC0pN09zTkM
         ZjXg==
X-Gm-Message-State: AOAM533C32fQIxgULb3m2fCHWIYn6knUnneOpNDX6/jHeQDcKf3BZVQn
        1z9op8+oecPbsrCxa5UQPrdw7UVPsdEmuj6meDGlICHeJM7as70NGOD+sKlNFSJDXAn8rtBkgdR
        vxQbyMuXqvNiCQD09APPnN4vZAWq283tJGITzLYY=
X-Received: by 2002:aa7:d14f:0:b0:415:cf37:324b with SMTP id r15-20020aa7d14f000000b00415cf37324bmr9098545edo.263.1646396705938;
        Fri, 04 Mar 2022 04:25:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzKMSVDmEk/neqIWD4dYZYTA7KTOdHcqfRP178ukkaNKBBjSxa1rHQ9JAwE06E9Efaict8Eiw==
X-Received: by 2002:aa7:d14f:0:b0:415:cf37:324b with SMTP id r15-20020aa7d14f000000b00415cf37324bmr9098533edo.263.1646396705766;
        Fri, 04 Mar 2022 04:25:05 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id r23-20020aa7da17000000b00415a1431488sm2047368eds.4.2022.03.04.04.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 04:25:05 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: tesla: add a specific compatible to MCT on FSD
Date:   Fri,  4 Mar 2022 13:24:24 +0100
Message-Id: <20220304122424.307885-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
References: <20220304122424.307885-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

One compatible is used for the Multi-Core Timer on Tesla FSD SoC, which
is correct but not specific enough.  The MCT blocks have different
number of interrupts, so add a second specific compatible to Tesla FSD.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/tesla/fsd.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
index 9a652abcbcac..10c217a57a7d 100644
--- a/arch/arm64/boot/dts/tesla/fsd.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
@@ -727,7 +727,7 @@ spi_2: spi@14160000 {
 		};
 
 		timer@10040000 {
-			compatible = "samsung,exynos4210-mct";
+			compatible = "tesla,fsd-mct", "samsung,exynos4210-mct";
 			reg = <0x0 0x10040000 0x0 0x800>;
 			interrupts = <GIC_SPI 455 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 456 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.32.0

