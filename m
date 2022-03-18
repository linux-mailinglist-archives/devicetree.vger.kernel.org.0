Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B58344DDEDE
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 17:25:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232194AbiCRQZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 12:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239039AbiCRQZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 12:25:25 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB4FA2F24C5
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 09:21:28 -0700 (PDT)
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D804C3F1E8
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 16:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647620486;
        bh=2W0HN5RRkNZ3VABX+Cwv7ixmrYLder+VG35wSKi/d+A=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=nH0HR9aJrCmvmMX5Ho9jW/f4aTPPR+eZiQ1dglYZpsYMpaEThGfjoYpaTN6kGq1fp
         pe7rxJbovYZYqkWNlcdQTCtNBumEklOnhtbbfYZIcZR5aj4uvHlUDxtIHa7TSDvF4L
         Oz7LqoHmYdmJtsHZ7BWWKbGdAhzRuKBnDd+buYLjygMGarfV2VltO4NpfLD9VKbRqa
         nS1ixRVPLs2Z6CNjkFOMQZMT8FClTPjDTE0joOK9RyQCAPoEF8XHKo+jQjfBgm89x8
         q37mYSPaFa/I9kgEfOaxUkXuTvGOKUYFNuNaYRy2go+iLOrVX9eDD+7t62xkUDNn7o
         5Rg9CRFqpNDTA==
Received: by mail-lj1-f197.google.com with SMTP id h21-20020a05651c125500b002464536cf4eso3602555ljh.23
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 09:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2W0HN5RRkNZ3VABX+Cwv7ixmrYLder+VG35wSKi/d+A=;
        b=yLxluf4XLCqQoEwrdC2yDnSCEanTPZ7nAWNwjDEET7/9Q5jjPuWD2K6lhyN88pJ1nT
         HaIn2mnBuQvMvaEFKNXjLEWO6Xe3wOGmyKbL5TL812LOiHXtn7WHk0R9jiV94Np3v15Q
         NaQMCsoXhSbNTwAzBt23/8tN+BEyFUo9iktIXxzJjGyPWPNTQSk9XJNzkL0DVhiENk1o
         SMEyGyqFbn8phm+NXXb2sKXC9R0K/HyqaibKnG7mB4s9h6EmdFsx5Mgk0EkWGWF8/Vd2
         +kYIg3ND/R6Sk5dsecfyc6dAP2gmjxiG/hwh5vWLUU2LvTQePa29ezJ8PQ3w1I2HiJRQ
         34wA==
X-Gm-Message-State: AOAM531SBk7A8ssgs7vvgkVal8QpRul+A5DdPrgrxWNYuUotQid4coq2
        qcO/+7MrgZP1NwqBILWRzOftjMuJ9eWSYgHK5de/qFpr5S0YwDoK8V3gSp+w17Xhu97kWmEslZr
        UX3FQvAroKBS4c1i1oV4qKlyGH82q9726Hiie2IM=
X-Received: by 2002:ac2:44a5:0:b0:448:27fb:f11b with SMTP id c5-20020ac244a5000000b0044827fbf11bmr6761053lfm.72.1647620485592;
        Fri, 18 Mar 2022 09:21:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxYnFRtdU22BR20+/ugHHxzULrSzy0BJHNZ4eqdyKUJs4Bzk00wOL775ew90uRhXAX1YOExQ==
X-Received: by 2002:ac2:44a5:0:b0:448:27fb:f11b with SMTP id c5-20020ac244a5000000b0044827fbf11bmr6761036lfm.72.1647620485407;
        Fri, 18 Mar 2022 09:21:25 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h5-20020a197005000000b00448287d1275sm906913lfc.298.2022.03.18.09.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 09:21:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Green Wan <green.wan@sifive.com>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Alexandre Ghiti <alexandre.ghiti@canonical.com>,
        Palmer Debbelt <palmer@sifive.com>, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] riscv: dts: sifive: fu540-c000: align dma node name with dtschema
Date:   Fri, 18 Mar 2022 17:20:44 +0100
Message-Id: <20220318162044.169350-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220318162044.169350-1-krzysztof.kozlowski@canonical.com>
References: <20220318162044.169350-1-krzysztof.kozlowski@canonical.com>
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

Fixes dtbs_check warnings like:

  dma@3000000: $nodename:0: 'dma@3000000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 3eef52b1a59b..fd93fdadd28c 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -167,7 +167,7 @@ uart0: serial@10010000 {
 			clocks = <&prci PRCI_CLK_TLCLK>;
 			status = "disabled";
 		};
-		dma: dma@3000000 {
+		dma: dma-controller@3000000 {
 			compatible = "sifive,fu540-c000-pdma";
 			reg = <0x0 0x3000000 0x0 0x8000>;
 			interrupt-parent = <&plic0>;
-- 
2.32.0

