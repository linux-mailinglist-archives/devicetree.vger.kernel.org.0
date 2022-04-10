Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2B354FB03F
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235275AbiDJU6v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 16:58:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231134AbiDJU6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 16:58:51 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0414B1088
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:56:39 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id kl29so11815297qvb.2
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prism19-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v4Dm0zZiVNz+3KjhnBsylTDpY1b0Arid63IH2fuAnik=;
        b=XrE9JJrRaF5iLY2JPFzzhhBr+NmyNaXlURO7Am8sXuwB5LTKcNq7cbc57ZCESWKJVA
         ViMCAynxoDmUwjI3l1MH/DclLSskI/r/ezCnkW2hNwIg9LL6WvqwNgFjxvNYO2gs7TZO
         v9I9kihxoJBmmWlji9Jg6CjthaNKMaL3SaeKWU4Cc4/bk6sdhCfBHfx8kQxq/CyEcKOM
         SQYmaRjaJw25yY2fjA4rh+L8UAr/TBEJ5onCKlHA7+Is6ftwEPo7OapWRPU5ElVav7jQ
         JGUDps5Y6qtMvtJaDEJUAEBadoEeIy4Xiok33I4BWXH+WkEkTffro2AgOmLm1NcX1elX
         fr8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v4Dm0zZiVNz+3KjhnBsylTDpY1b0Arid63IH2fuAnik=;
        b=Vevc9rOOL5q6yIEZjQNa6CVBBpIKOzBEmbOBBobUNkw3fmdfpsKN1T9eIg0jcfrl9q
         my1VUvWZz8S6UW2ZYm0+s0sOQyLnH1c9ojhbB6d5OrK+RejchVH2/siBPDgl84SkvWKw
         ZkhqVgqWfUreuOt5My5l5aZQljGPtXFZnhmcb0rTOdrgivn99OikPSs60GLORHoW5ML6
         ZEd687k/tD/08o1mjw80oixcqGBEgWyb3Jgron1EjjXHMQYnMRXnWE4Nd+3/ejKCZOF8
         2UtOfJrCRSTBOAw/2vSR/6DIokS6GYTwELG0Go9htEqrZXzOr3wETdcPx4g2Em+X05ag
         daig==
X-Gm-Message-State: AOAM533noluZhrk74/YQLviQINiAZhrYTqvmq3b8Hwu9tv1ydWmrND3U
        S3RtDVqjyndnum0/BbQwFJD6QQ==
X-Google-Smtp-Source: ABdhPJzKr+05g1w/9S4kzn27/Px/j9DsPrGWiXdcX3y2gI1UMnWoBRqzRfgcxanrSdHR+07WQSThEA==
X-Received: by 2002:a05:6214:1d2b:b0:441:6a41:f726 with SMTP id f11-20020a0562141d2b00b004416a41f726mr24547900qvd.102.1649624198180;
        Sun, 10 Apr 2022 13:56:38 -0700 (PDT)
Received: from RADIUM.localdomain (bras-base-mtrlpq2718w-grc-02-76-67-205-66.dsl.bell.ca. [76.67.205.66])
        by smtp.googlemail.com with ESMTPSA id bl22-20020a05620a1a9600b00680da570a5dsm19073102qkb.61.2022.04.10.13.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 13:56:37 -0700 (PDT)
From:   Guillaume Giraudon <ggiraudon@prism19.com>
To:     kernel-dev@prism19.com
Cc:     ggiraudon@prism19.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-sm1-bananapi-m5: fix wrong GPIO pin labeling for CON1
Date:   Sun, 10 Apr 2022 16:56:24 -0400
Message-Id: <20220410205624.14295-1-ggiraudon@prism19.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The labels for lines 61 through 84 on the periphs-banks were offset by 2.
Realigned them to match the Banana Pi M5 schematics.

Signed-off-by: Guillaume Giraudon <ggiraudon@prism19.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
index 5751c48620ed..754c3d43ef0b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
@@ -448,7 +448,7 @@
 		"",
 		/* GPIOA */
 		"", "", "", "", "", "", "", "",
-		"", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
 		"CON1-P27", /* GPIOA_14 */
 		"CON1-P28", /* GPIOA_15 */
 		/* GPIOX */
-- 
2.20.1

