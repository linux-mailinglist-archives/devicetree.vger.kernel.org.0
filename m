Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8F9E752553
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbjGMOkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:40:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbjGMOkD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:40:03 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21A5A270B
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:40:02 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-66767d628e2so524585b3a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259201; x=1691851201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0608aQZ2HvApP79qrdqZ0Ss7hF0O6yLKjS9tzV8PstE=;
        b=al6RGEnf3A+MKz1SAsviIufGTBuXTDfmLe2a7xdRYDaeS1VT6TtwG94xd32G9O4VXE
         Szdc+N30Bg+P2QY0n+TnsTHhQjyZ3G1KqjE2eFhf8y+rUip3q8v8dhzwNXWQC2X1gGTi
         c/537zBegypsLkmq96Gly3nHtxx5hzQ2AmMtwzrFDpEd3K2L7Bu7yoRuwYq0VdSvroUL
         NqTe7D3E0C2zZ5vCtSz/iYsHg7/wyT+8eU0BL1/SyiNh6lWxYl0MRny4fIFrAEr3wPhd
         GBJ89d/fUarGzZNErta55llwRx3P+NdBaKe/fP2RUGucN1+UxkU7tjhaU0YeDkpx2m08
         Oeww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259201; x=1691851201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0608aQZ2HvApP79qrdqZ0Ss7hF0O6yLKjS9tzV8PstE=;
        b=dzIJy8XYPkLFd4Ar/zetJeXa6Bgp3fuJ+Kp1B+J0pux3KHiqG1NaSp5Hw4dA9+vU0S
         n/Oqq2N8wX8vTRFEkXpx6hRRJBimgM5G1KJWBZi79AUYlu8I5Q78tFc1aV30JGqO8YwG
         gAq0JOtmj/eEWv+jvvsnAtNyUpShpy2U4mnlIuvfJSI1houML1Ud+ThCDtBWi4ZVrluC
         73pJG/0KEfhK0yyOYhcXSCRngJPBpf7fx91hHENw1n+Ynu5Jr+7tUd/e23Q37jubmjr6
         zFitTz6EejS74yVWR1qprurbMPo/y3Cjpelu41ADC2NVwZQu5sMrLzyt7iM//LA3/Rml
         svDg==
X-Gm-Message-State: ABy/qLZl0J+HlGzB+pX1kY8o5okAkXn1QryZa5sBFtRtl67dtu5mXUJA
        gLVP+0txOlSsqcHd5gMJOj/UgA==
X-Google-Smtp-Source: APBJJlEdBAb5H+qipDdXPCl2HPctT6sc0210Fshtlh4TkkCNZ++Cp4jSjCmmQvACL33UejYd3wYbzg==
X-Received: by 2002:a05:6a21:7890:b0:132:ef90:1f64 with SMTP id bf16-20020a056a21789000b00132ef901f64mr1306671pzc.46.1689259201569;
        Thu, 13 Jul 2023 07:40:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:40:01 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 6/8] arm64: dts: rockchip: Enable PWM FAN for edgeble-neu6b
Date:   Thu, 13 Jul 2023 20:09:39 +0530
Message-Id: <20230713143941.1756849-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PWM FAN support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 4a9f85d7542a..7ce87366c16c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -49,6 +49,13 @@ hym8563_int: hym8563-int {
 	};
 };
 
+/* FAN */
+&pwm2 {
+	pinctrl-0 = <&pwm2m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &sata0 {
 	status = "okay";
 };
-- 
2.25.1

