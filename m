Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A63C96226FC
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 10:30:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbiKIJae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 04:30:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230304AbiKIJad (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 04:30:33 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D089F11477
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 01:30:32 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id p16so10388060wmc.3
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 01:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U+oiaRg9ab/55i5+llsM8upTgpALjLL7ge6TbqM64xg=;
        b=RHhGDNRzwjUu9GvsrF38Zt6cOnKGnXOnmW2bPWtOVMfrRFJF09jZRIOIRmCc0QIfz4
         7IyK8Y70iYRAOfz9MqySdyrP1aDkQSfrI5KhD7OhkP4tmOVB14h4zumEscz3hRqqEBnt
         QJ3qVVmlrKvlvWabD6nzjxFq2dn7zwoBFOlmmTKUORVojv4iH71C1yA8QKIdiME71/qn
         t5MP9FZO5lKz5Wqd61R91SkRLRtbQO1IvR++HKJjbiSEEOUKJ4YxlCwNPrXCKxgQFWB+
         upDrvG29rcIGIeRe/4OJ9dQPfGnAfcvkerNLkuco0IsxO+Q71E+C4pazqO/NJjlkzfgC
         ZPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+oiaRg9ab/55i5+llsM8upTgpALjLL7ge6TbqM64xg=;
        b=uafCpBM+1ij+t9+vgrOkdHh+yVzaT0vAjAbGd6hg3gDFOSuqWvFmko+MkGFADmSFRi
         jqULxpS3r1tPHYGW/DQYHJdVE/isM/IUhMtpGtonibQChB+S8mM8OFbET/DwT/icuGW9
         vX6REkS7iF+GLamMY2SZHE+7aMq3cSNiUPE8AYhLRezoELGTd0eigZI+YMQYH2lHK/Zx
         DQLvIgjp9/M8Qb4CAUILCRbtgN+j3q8p+l4orHKIMkUkcEYNsOGSeeEF+XTtwt2Ohkfa
         jbdF9PraxjIQ1Xc+Vd65elWlhxCk4seXsWN5lbwLFVbKah9CzWrn4bnnU7yXtBSpU3rY
         wD/w==
X-Gm-Message-State: ACrzQf25FnisxmGVIX3zy953KNEfvEpWjmVOX0+Vw9DrAFNN0ZMAa5GZ
        D0R0sY1yqn5tDvUgztjpHkj5RA==
X-Google-Smtp-Source: AMsMyM5CZJzOBieKuAmEeCCzQQ10GFMLXs4aPyOGSzVfWZwM2kf9IibD/CZi0VB1hLNqteJmscvGcQ==
X-Received: by 2002:a05:600c:3107:b0:3c6:ff0a:c42 with SMTP id g7-20020a05600c310700b003c6ff0a0c42mr48554390wmo.141.1667986231447;
        Wed, 09 Nov 2022 01:30:31 -0800 (PST)
Received: from baylibre-ThinkPad-T14s-Gen-2i.. (254.31.102.84.rev.sfr.net. [84.102.31.254])
        by smtp.gmail.com with ESMTPSA id g12-20020adffc8c000000b0022cd96b3ba6sm14547919wrr.90.2022.11.09.01.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 01:30:30 -0800 (PST)
From:   Julien Panis <jpanis@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, afd@ti.com, kristo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: ti: k3-am625-sk: mark MCU watchdog as reserved
Date:   Wed,  9 Nov 2022 10:30:26 +0100
Message-Id: <20221109093026.103790-3-jpanis@baylibre.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221109093026.103790-1-jpanis@baylibre.com>
References: <20221109093026.103790-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MCU wdt is typically used by M4F.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am625-sk.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
index 93a5f0817efc..089970b304cf 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
@@ -503,6 +503,11 @@ &main_mcan0 {
 	status = "disabled";
 };
 
+&mcu_rti0 {
+	/* MCU RTI0 is used by M4F firmware */
+	status = "reserved";
+};
+
 &epwm0 {
 	status = "disabled";
 };
-- 
2.37.3

