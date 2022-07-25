Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF7B857FB33
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 10:25:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231322AbiGYIZD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 04:25:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbiGYIZC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 04:25:02 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B7812740
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 01:25:01 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id y141so9750130pfb.7
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 01:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kGQIfBSg21d8MaClj25+YrNibPoLqEzZ9tPdy7y2WU8=;
        b=Z/44oLBpU67FazLoPRhw9EoDB7p9O0DopA+QnAhE/fO+Qa/QflytOcQ2fvgzPbSw5L
         WQVHStfPgywQj4rIX3JM/mPCAdddMBviY8QD+kdCGDjBpNpLFMDse95KCMVWKn4LUS4D
         OH2W9TecbxWviO8rlbZxq8KlL09VWh6Y3OOQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kGQIfBSg21d8MaClj25+YrNibPoLqEzZ9tPdy7y2WU8=;
        b=ekvkpCMZ+7QmynoL4gD4g7MgOhKy8We3hudHBqK0EAOZP1HQFgea3G5QKnZonauCFt
         M2N1cOSrGhHFWqK4Y6p/6Z9ClVbfz3rIkxuYMZb39rporHIf0VHhiHVsRXJFZET7weYW
         3mXtcuN9zXOPCfzebagwqdDbBXKcWeVzo40JlGkn6alm1d95a0741R4EKmuWboIfZF2U
         Ho12F7YYPcd8nY4GxBxaZdC0ivU5HBY5KTK7FoJbumKj+YjznvrJH0zesCQQFFQ91Gao
         dMuB1Gkx0b+r5sH2WGwjqagvJCoHssdbHroFtMWQxJTLEuUSYdOWXi2Ks5n2rHAsDor9
         TQtQ==
X-Gm-Message-State: AJIora+DC67n+SllKHfwvjClx0VF8T9tZnbbPQh7zMNAEuRXJTJBTNUM
        1cdn29u4Lx7FrBZ8xK7wM6oOdg==
X-Google-Smtp-Source: AGRyM1toZNSKvxgwGTAar8bhczeRFzgE/1q6uyg+lK8LTNMCbEYdUJJ8lpGmzEk3tpAOQilyUtm83A==
X-Received: by 2002:a63:9142:0:b0:412:b171:b6ac with SMTP id l63-20020a639142000000b00412b171b6acmr9876579pge.206.1658737501260;
        Mon, 25 Jul 2022 01:25:01 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:7c:3b29:8e9c:93e3])
        by smtp.gmail.com with ESMTPSA id f21-20020a63f755000000b0041ab5647a0dsm4010394pgk.41.2022.07.25.01.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 01:25:00 -0700 (PDT)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Hsin-Yi Wang <hsinyi@chromium.org>,
        Eizan Miyamoto <eizan@chromium.org>,
        Evan Benn <evanbenn@chromium.org>,
        Pin-yen Lin <treapking@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: mt8173-oak: Switch to SMC watchdog
Date:   Mon, 25 Jul 2022 16:24:47 +0800
Message-Id: <20220725082447.2613231-1-treapking@chromium.org>
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch to SMC watchdog because we need direct control of HW watchdog
registers from kernel. The corresponding firmware was uploaded in
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index a2aef5aa67c1..2d1c776740a5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -528,10 +528,8 @@ power-domain@MT8173_POWER_DOMAIN_MFG {
 			};
 		};
 
-		watchdog: watchdog@10007000 {
-			compatible = "mediatek,mt8173-wdt",
-				     "mediatek,mt6589-wdt";
-			reg = <0 0x10007000 0 0x100>;
+		watchdog {
+			compatible = "arm,smc-wdt";
 		};
 
 		timer: timer@10008000 {
-- 
2.37.1.359.gd136c6c3e2-goog

