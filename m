Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC18641A2F
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 01:52:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbiLDAv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 19:51:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDAv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 19:51:59 -0500
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1ECBC91
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 16:51:57 -0800 (PST)
Received: by mail-pj1-x102d.google.com with SMTP id o12so8137436pjo.4
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 16:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kkp6H4X+fpDMPFBsB8sOoDo9ZeS/k8d6GtMAjtbvGiY=;
        b=mVAcfpH3dVqP7p/ORvMYN5pgMRXcaLiqslxX34EuUqBNNhn+QFxZB2qK7OesAPRlHa
         XNmgh+sDi1ydPwQV9oXILG49j4VmSmgNhHnBTyEsHk//o4EbjJkZrY8lKQUE3u3bX0wc
         vBEQsDthL3NmbTrAIAgz5tE08tBHGGkYMa+2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kkp6H4X+fpDMPFBsB8sOoDo9ZeS/k8d6GtMAjtbvGiY=;
        b=Taxh3gn20C9DI8z8xZBW2TmRhttFNdTnwq1xUnLFqDMNs5fTQgf55OoUdTF3wi/yOl
         6NykE962J0tb48dO/MA90OjcP8MyUXSVILU1+Ty5FA+b1IkzNyRaN/h4hwA0Mgpsax4g
         0x+ClCrPCIbJYzS4bKu2DSYgaTb3TxCHLkAL0heTYgvrlXrXpwZtYgOY60qkNkm6Rozo
         vn7ss1JDHRzXcoOJpJlrA328Kiet9VwZPmys9/2Sa/b5kQw42FjOhwldli3WY6bDKd90
         zpH8mnWXcYeHRS1RQW+HbPsPYZ0b4JLugLXYWqBJf0C/m+CScTNJs87jDDWqsV4Jp174
         ADVA==
X-Gm-Message-State: ANoB5pkpeCgY21XikmHtG79AnEBFOv4fBgx4pdtKeh02QfucOPKv7Ikc
        R9ukFGLzMkIIZ01s7f4OgHf045o7nDd36CZrdE2l5w==
X-Google-Smtp-Source: AA0mqf5J72lgZlsrjE7EnY6shxwoidkz0ut9aVO2Zn7wbp/iIrqhDchnHtRBsf/3ccPViaK9XoheMA==
X-Received: by 2002:a17:90a:9a85:b0:219:1353:f66 with SMTP id e5-20020a17090a9a8500b0021913530f66mr43397648pjp.190.1670115117209;
        Sat, 03 Dec 2022 16:51:57 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id 24-20020a631358000000b004393f60db36sm6058977pgt.32.2022.12.03.16.51.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 16:51:56 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Russell King <linux@armlinux.org.uk>,
        Lubomir Rintel <lkundrak@v3.sk>
Cc:     soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 1/2] ARM: dts: pxa168: add timer reset and clock
Date:   Sat,  3 Dec 2022 16:51:16 -0800
Message-Id: <20221204005117.53452-2-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204005117.53452-1-doug@schmorgal.com>
References: <20221204005117.53452-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer was missing the clock and reset like the other peripherals.
Add them to allow the timer to continue working after boot completes.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 arch/arm/boot/dts/pxa168.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/pxa168.dtsi b/arch/arm/boot/dts/pxa168.dtsi
index 4fe7735c7c58..16212b912b94 100644
--- a/arch/arm/boot/dts/pxa168.dtsi
+++ b/arch/arm/boot/dts/pxa168.dtsi
@@ -53,6 +53,8 @@ timer0: timer@d4014000 {
 				compatible = "mrvl,mmp-timer";
 				reg = <0xd4014000 0x100>;
 				interrupts = <13>;
+				clocks = <&soc_clocks PXA168_CLK_TIMER>;
+				resets = <&soc_clocks PXA168_CLK_TIMER>;
 			};
 
 			uart1: serial@d4017000 {
-- 
2.34.1

