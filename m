Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E595ACBC5
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 09:07:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236769AbiIEHCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 03:02:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236195AbiIEHCx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 03:02:53 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F521D332
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 00:02:51 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id u22so7630311plq.12
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 00:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=juny/qDxxbHj10tAvOIcrujtgWXLCZ306cupBH57+sM=;
        b=bqN8i55+/L2zQF8KoE/BmRlSaKSDrBoTmBpws52H6HyNikxZZBsK7XkxkevBumpqt9
         qC2GqDOIQ93gQ3kTZMEHAEVJToQ1oxn4PxUz+/v+WVlxeGuGgg7/QBzC60JjHmGLxOHe
         NqytJ4fDcyQQqw9cTA0z6RB2lhAdB7MNKnVkGyOUuNE2wlPC6QdNTMPV3qOHGwwJqPQ9
         yEqytibVS+oEXXzatoguJ0siiqWxyTnj//eLJzK9nMbm3CyJIqxnlqNs/kyeaLF26GYK
         Fom9UsHl6mnb8JatiIPVtB1wY6e6lfo4sn04KfEWq6ZRUQqWNUj77WoEzx5LOPtUQAia
         seyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=juny/qDxxbHj10tAvOIcrujtgWXLCZ306cupBH57+sM=;
        b=dqhjToNVZg6ARODLYN2afqNI9h9QcvPYxR8anZ60kYIbDl0Bro8VQrh4czc6uIYWih
         ApEYHy6Ddgb+0mQevAGfQF+O6XQKfMT9WGz/u238jjV1zkYDnfqTmvJazbwVzU7WewM7
         5NHSyXNvsHg3VnTOZyaDZh5JJ4cGH7U/OpdrMSjPdhh9Wr54vRwCKUc1AJ49vg+UzNbn
         gPHQed83lyRAK/XaCE98o9Jg6datly4wJK4kBVwA7o66RXMgyvL0GnT/kIusZLyEIbcZ
         H81GqPSgRXyzdXxjBmnAnDsqYB1vXH+X+tPbeK99GudYLhnAr6D97AX9Q2PLsXGLADvi
         cX8Q==
X-Gm-Message-State: ACgBeo3tG18gOBQajytEmgLsWeWtSXh8kwWeG0P0zBR0hH9M/DJ/nk+h
        t3sHYjDWFMXqaPeMQuHtweacDw==
X-Google-Smtp-Source: AA6agR6/Cw79qS0TTy2V0ep3kJodE9Vq+8pkdci/M9n4QtZ2WVFWqpzGFA3WTgLHdtQMUXSPvQlPZA==
X-Received: by 2002:a17:902:788f:b0:170:8b18:8812 with SMTP id q15-20020a170902788f00b001708b188812mr47050902pll.1.1662361371102;
        Mon, 05 Sep 2022 00:02:51 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:5362:9d7f:2354:1d0a:78e3])
        by smtp.gmail.com with ESMTPSA id lw12-20020a17090b180c00b001fe0ed3cb2asm28673858pjb.3.2022.09.05.00.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Sep 2022 00:02:50 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Subject: [PATCH v2] arm64: dts: qcom: sc8280xp-pmics: Remove reg entry & use correct node name for pmc8280c_lpg node
Date:   Mon,  5 Sep 2022 12:32:40 +0530
Message-Id: <20220905070240.1634997-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
dropped PWM reg declaration for pm8350c pwm(s), but there is a leftover
'reg' entry inside the lpg/pwm node in sc8280xp dts file. Remove the same.

While at it, also remove the unused unit address in the node
label.

Also, since dt-bindings expect LPG/PWM node name to be "pwm",
use correct node name as well, to fix the following
error reported by 'make dtbs_check':

  'lpg' does not match any of the regexes

Fixes: eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
- v1 can be viewed here: https://lore.kernel.org/linux-arm-msm/20220903084440.1509562-1-bhupesh.sharma@linaro.org/
- Fixed the review comments shared by Krzysztof.


 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index ae90b97aecb8..24836b6b9bbc 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -60,9 +60,8 @@ pmc8280c_gpios: gpio@8800 {
 			#interrupt-cells = <2>;
 		};
 
-		pmc8280c_lpg: lpg@e800 {
+		pmc8280c_lpg: pwm {
 			compatible = "qcom,pm8350c-pwm";
-			reg = <0xe800>;
 
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.37.1

