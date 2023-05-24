Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 018D971011D
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 00:46:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237173AbjEXWqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 18:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236931AbjEXWql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 18:46:41 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBB699
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:46:40 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6ab0d407a8fso148466a34.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684968399; x=1687560399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8VwIo1y/HVdfGntqm2k6bBWMCT8EUkoWJX0uC7/6eMc=;
        b=i5he8lgqEG8vU8WvaWG12Myd04HRgf3SrmY1mghhP0PjnC2jw8xIDk3egric2Gj4hN
         NwXakKM0UZHOIKm2rykoBxDs4LlbYfVUAer+X2OfzfmQgUCPN4g+XCLiOtwBViW47Nsy
         yw/C+D6sOQEv2Vu+k8JefUrcsMmLRzlTwbXZt4ZEf3F2XsHXkcOgr/FKd92Q3iDCjiwT
         iD7mClxZAPVA7/8sRhY4IbYuzV+540Nv515Pmv8Xw0N3SgIyUVi6bWJweh/Rt4IE5Lvt
         NzISnV22PCWM9IS1lsAhQlMoJPRXYUZA6quZpwidV1xkIGin8KiaNZmOV1CRr4VV6lcG
         vI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684968399; x=1687560399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8VwIo1y/HVdfGntqm2k6bBWMCT8EUkoWJX0uC7/6eMc=;
        b=RJpujjsuucgL2UeHh6hl7bF7y+X5Itp2FRyapZxgCK/7xPyMpSpLNQL11+8LeejxY7
         5ATlMkLmuyEtMuUzvaUtbtOERaAVzV7Fa/IfDNmAZsvqbIPjs6vlvnjJ23MfD+7tq8fk
         IWyEVU1CRTskSLSlM3MmFoFQ+bfBssO6Oc9MYRzVfABvcu1F6vLSqaRQvvziH0oEncgV
         jdFEjW2gWaM9rjDBLYeC2IfzwMEd7xh/LHVQuRK7zNG1AGeqBtjfKQ1pBKa55mg/8Ovs
         pBzZsUEB4V7jT0yQjG4jpCeKVq/ZvVfVbDhIY3XWKVyIGgk3GF4dRaxd6TowQmb+yDr0
         jofg==
X-Gm-Message-State: AC+VfDyz4ea89eV00Kr4nWzkZ1xHvRUlQk+GjwKW7bHWDUeR9axebVNN
        zPfoLmI+2C0DTXggr9Knqf0=
X-Google-Smtp-Source: ACHHUZ6yP0BMB6bfHpYwn4Ac1DHp98u1/TWXag4zAk2kbChJtxDpSVSEQMdwVNTH59/Amq00KVv4xQ==
X-Received: by 2002:a4a:d750:0:b0:547:50b4:9236 with SMTP id h16-20020a4ad750000000b0054750b49236mr6857787oot.0.1684968399660;
        Wed, 24 May 2023 15:46:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:4331:751b:6032:b5d])
        by smtp.gmail.com with ESMTPSA id o201-20020a4a2cd2000000b005526983ebdcsm3549461ooo.4.2023.05.24.15.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 15:46:39 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: vfxxx: Remove invalid wdog property
Date:   Wed, 24 May 2023 19:46:25 -0300
Message-Id: <20230524224625.431182-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230524224625.431182-1-festevam@gmail.com>
References: <20230524224625.431182-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The 'clock-names' property is not a valid property for wdog.

Remove it to fix the following DT check warning:

vf610-zii-ssmb-dtu.dtb: watchdog@4003e000: Unevaluated properties are not allowed ('clock-names' was unexpected)
From schema: /Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/vfxxx.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/vfxxx.dtsi b/arch/arm/boot/dts/vfxxx.dtsi
index ff4479994b60..3f7dc787938e 100644
--- a/arch/arm/boot/dts/vfxxx.dtsi
+++ b/arch/arm/boot/dts/vfxxx.dtsi
@@ -294,7 +294,6 @@ wdoga5: watchdog@4003e000 {
 				reg = <0x4003e000 0x1000>;
 				interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks VF610_CLK_WDT>;
-				clock-names = "wdog";
 				status = "disabled";
 			};
 
-- 
2.34.1

