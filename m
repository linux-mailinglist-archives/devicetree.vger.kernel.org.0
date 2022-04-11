Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BFC24FBE51
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 16:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245058AbiDKOG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 10:06:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346931AbiDKOG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 10:06:57 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5FEF32ED4
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 07:04:40 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id hu11so13275843qvb.7
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 07:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prism19-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cuS4NjENNZyOi0TdSjKIhrtOrxyukLSc/60jZJBAYhg=;
        b=bZaOFiWvWozs6rAmx9Rehdei3ZVcQSOMezzhPtvzQ55BcPqKxNSPPB5eJV4bUudjM/
         XQxs0m4AUpjY/1E9By826HLqhnJDS40xQjGEl/EX88LH8rAmbYefXX6Bd4TtcKf8lj6Q
         llzdtl2SOfpNlnBNDSm//RhjqdWYNITtFKgvfrr0jOJTYq+CmkfEUrWThSR0X5LEue1U
         5RGao015u3iiAiuGmVg2iyJ8h/NDW22U2E/PptBVDg/t4alWZFLhD5/h28at/rkf6tJF
         7eVDcgQMeAv9fr48R+apcGnYdhyQFWATPqPh6VoSqp01c535plie4ZUBZBAPRdnLWYEo
         gWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cuS4NjENNZyOi0TdSjKIhrtOrxyukLSc/60jZJBAYhg=;
        b=d7ig/4JTPyu3pbxoE//dQzftQYxNyThs8JZ7GLwubXBunBy7aQlsnApF18zUVPAAsS
         SJ9/f4OGCEY7aG2TSC4UwdOc3U7gi0Nmg+OrJBXrrRpTagXx5ZbM4Z1sgAVsYz+3UIdQ
         Kd2PpyXr8w/Pm59lLa4OKHRfXkzDzQsyp8hATXNknIgvoHUwaKmVBoxOdUhUoI0yAHWt
         jeLzll9FCkBQRmSirgjylKD26XqwDB/6kJGHqu7qXqpl+kuo+38al+TdVrYa6MhQqomC
         Tr2OXtSyhlO9yjqLgXlM5Rl6o826KL0UtVx6JyBJfyvJR/Fz6eEpRvlAaHYRl69CuQ0c
         0ehg==
X-Gm-Message-State: AOAM532SP8ltMMorUeFBokDiZKwyRQ795+OldLcw/9SVhnEo3mZri4qT
        jUqNRn14GQziqG7cwJ8foyBLvw==
X-Google-Smtp-Source: ABdhPJxcJkfnTI8XP7q8uXyN/Q/OVYCG4hOjfqR773QCchY4BI97Dthg44tw5mELirvjxvO2cnp+ng==
X-Received: by 2002:a05:6214:76d:b0:443:6801:6d0f with SMTP id f13-20020a056214076d00b0044368016d0fmr26549037qvz.60.1649685879766;
        Mon, 11 Apr 2022 07:04:39 -0700 (PDT)
Received: from RADIUM.localdomain (bras-base-mtrlpq2718w-grc-02-76-67-205-66.dsl.bell.ca. [76.67.205.66])
        by smtp.googlemail.com with ESMTPSA id a200-20020a3766d1000000b0069c1125b7bbsm2896549qkc.57.2022.04.11.07.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 07:04:39 -0700 (PDT)
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
Subject: [PATCH RESEND] arm64: dts: meson-sm1-bananapi-m5: fix wrong GPIO pin labeling for CON1
Date:   Mon, 11 Apr 2022 10:04:02 -0400
Message-Id: <20220411140401.450-1-ggiraudon@prism19.com>
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

Fixes: 976e920183e4 ("arm64: dts: meson-sm1: add Banana PI BPI-M5 board dts")

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

