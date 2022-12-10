Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DEC5648E6F
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 12:34:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbiLJLd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 06:33:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229715AbiLJLdx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 06:33:53 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 573971FFA5
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:33:52 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id q6so928637lfm.10
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=URRro+4XX09lfePnlfX+cuftntixCoSXWYcsOGncqAo=;
        b=aq8CKviacqI/QZfGiKvuEjpgfc+qwXOLLCXUflmXpjAA1FBBcOaoS7d9lCyIKc9wVb
         GpPBMmDzQCnhD6mtmnNyJvFlLLBUjdGTXOqt/Jv5VtJPJDzqA7PwL8SGCF9Qbwp6yxOQ
         n7kUs7lpiV9gFvTfMY7NvT/xjgNPEzldV5COFiUUFWM8354yW9LiwBsI+6kOb9LsJIz/
         esxcPAjLuwfBoaagdpXg/n2eE3v5zInmuh0Fzs01tGdj0XT2n9XWICC+3WSjq0WhHHMF
         ukpWz5cxwwzOTx8CnQxRZ/Zah7fRHu4U9jYS5zgYSRiQXCNPx2YKKYv32b5V5rRQ6MUg
         etHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=URRro+4XX09lfePnlfX+cuftntixCoSXWYcsOGncqAo=;
        b=PGYo0vFOK7vIoObTHrnujASz7Nhb360d95CoAm5jOTT5CfsyXL83SkeFQp2M73aLXU
         DyBNbsLkWbAIBWqRVXjhioayHLXeTLI/BgREHzsdrd1l3bSZcK5VnwTLYoKmZfZSrIh7
         H3ONhL7u+GirREDOyRcg6cL7/EQX9NmKb77Y+ffWggxDUdjzdenwxNZBuNZHXi9S8XP3
         cM30OjXbTECCXwPA+xogYukxR/b9y14NopavSltStZBznUpYzzFu5yr4H0/0UpXjAlxX
         Tig7HE+9QqxTrsstDI4CGPP8MWKfHS9PzaaFjS/g25mkjxGVZh8Tm8tine9GagIu4U1Q
         suHw==
X-Gm-Message-State: ANoB5pnvedW2b8SyRvr+aRDIGTVm9d61artG0W6jyEJ28FWUzaBTs0uO
        bXALgJP7EaD3PpgFKCQJB3e66Q==
X-Google-Smtp-Source: AA0mqf7tJCLnKxMsYTZ5QXjiJ3vKVFvFIsyxfOf4rKOGbqw84xRl0BnHjassHTS0/A1uZcwXy1tBYQ==
X-Received: by 2002:a05:6512:3084:b0:4af:acbf:1506 with SMTP id z4-20020a056512308400b004afacbf1506mr3541558lfd.1.1670672030698;
        Sat, 10 Dec 2022 03:33:50 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f5-20020a056512360500b004b55a1c4649sm687787lfs.38.2022.12.10.03.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Dec 2022 03:33:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: socfpga: drop 0x from unit address
Date:   Sat, 10 Dec 2022 12:33:49 +0100
Message-Id: <20221210113349.63971-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

By coding style, unit address should not start with 0x.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/socfpga.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 6eda6fdc101b..3fee80bbae21 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -749,7 +749,7 @@ L2: cache-controller@fffef000 {
 			arm,prefetch-offset = <7>;
 		};
 
-		l3regs@0xff800000 {
+		l3regs@ff800000 {
 			compatible = "altr,l3regs", "syscon";
 			reg = <0xff800000 0x1000>;
 		};
-- 
2.34.1

