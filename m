Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B031B6BCECA
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 12:57:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229960AbjCPL5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 07:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbjCPL5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 07:57:16 -0400
Received: from egress-ip4a.ess.de.barracuda.com (egress-ip4a.ess.de.barracuda.com [18.184.203.227])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C81B8BCB9B
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:57:15 -0700 (PDT)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199]) by mx-outbound40-126.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 16 Mar 2023 11:57:13 +0000
Received: by mail-yb1-f199.google.com with SMTP id m13-20020a25800d000000b00b3dfeba6814so1571141ybk.11
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1678967832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IqVmEyOrJQJn3pfCA5li10O2ni8RXk5d8AsC0ChXTIA=;
        b=XzY2ql5PLSJl6ZK8/4y4ur8opoPaXHmYoInVaCJu2oHnuxa5WxdMhDX19PKejDOn/+
         yxe/NVdHg2EudnNXMwQamWb1nWjF6zQH6YFmt4FvSKxAbObm90ypo7QL2Pl4/homBeMg
         fQNIqCR+7ILT9pRA784XErK1lFtnak1Duk/Vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678967832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IqVmEyOrJQJn3pfCA5li10O2ni8RXk5d8AsC0ChXTIA=;
        b=KCiPC/lE58f5uvbc3ZE0gClb3b2fqgGaBm0Tu9sScbbbkZd4BN9SHdR+gsoBHFb/3y
         CcNVDMFhgbqQKXRK/5W907BNfrWTjtNvYCztspfY3SDtjMvV2StizjQVR6LqANgPGVMI
         HSPHFPryuDXuhpAx2i70CZstZaLirBbvsp7qVkfhORb3VyYhDBvszFnyv343I41+Lsec
         9u6ECyNjTkknmVpuJMLoPXmOb1nMAAW+QFF1Kg1inoUApv/2/PVbChPY+sLZo03XmJnb
         Uo+g4LL7/ancKBP5gbCrabKuO30esC0JJ38lYKaWTNjiJ/ccF36TwoiVrvqX2GOX2QGW
         7i8g==
X-Gm-Message-State: AO0yUKWz3utLuLYOOZKHyAt3QLc/WDdvtUZgFwtEhGz07/caFkB91Zyb
        LaLgxr8dC9qwiGPyjrPXZnrQbINTFtI3TrS68OpnBfqyChywnmCTwLJMXid3LzfxhwDbiPOt6id
        7ImiHCtjWGJsiurN2aZD9IYgsrKTk22f5uISB/za+Zc8uKUWI6azPf/pNGw==
X-Received: by 2002:aa7:9413:0:b0:625:e1b9:3cdf with SMTP id x19-20020aa79413000000b00625e1b93cdfmr2620442pfo.8.1678963679397;
        Thu, 16 Mar 2023 03:47:59 -0700 (PDT)
X-Google-Smtp-Source: AK7set/WjlblZ9Q81pgj+1uSx+QauOrpihkzi0fcL0bwzVV92S6AK9583K//KSL7MQIv/ro/zTD6dg==
X-Received: by 2002:aa7:9413:0:b0:625:e1b9:3cdf with SMTP id x19-20020aa79413000000b00625e1b93cdfmr2620426pfo.8.1678963679117;
        Thu, 16 Mar 2023 03:47:59 -0700 (PDT)
Received: from localhost.localdomain ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id f26-20020aa78b1a000000b005a8c92f7c27sm5108744pfd.212.2023.03.16.03.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 03:47:58 -0700 (PDT)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sabiya.d@mistralsolutions.com,
        Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-j784s4-mcu-wakeup: Fix IO PADCONFIG size for wakeup domain
Date:   Thu, 16 Mar 2023 16:17:42 +0530
Message-Id: <20230316104743.482972-2-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230316104743.482972-1-sabiya.d@ti.com>
References: <20230316104743.482972-1-sabiya.d@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1678967833-310366-5549-17066-1
X-BESS-VER: 2019.1_20230310.1716
X-BESS-Apparent-Source-IP: 209.85.219.199
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyNDA2BrIygIKGSYYmqWZGho
        kppqkmxklplonJRompJmapZslmBmlJSUq1sQDHxzw1QQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.246833 [from 
        cloudscan15-95.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dasnavis Sabiya <sabiya.d@ti.com>

The size of IO PADCONFIG register set of the wakeup domain is incorrect for
J784S4. Update the PADCONFIG offset size to the correct value for
J784S4 SoC.

Fixes: 4664ebd8346a ("arm64: dts: ti: Add initial support for J784S4 SoC")
Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
index 64bd3dee14aa..c0103513c64c 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
@@ -50,7 +50,7 @@ mcu_ram: sram@41c00000 {
 	wkup_pmx0: pinctrl@4301c000 {
 		compatible = "pinctrl-single";
 		/* Proxy 0 addressing */
-		reg = <0x00 0x4301c000 0x00 0x178>;
+		reg = <0x00 0x4301c000 0x00 0x194>;
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
 		pinctrl-single,function-mask = <0xffffffff>;
-- 
2.25.1

