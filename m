Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11CF74E710C
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 11:19:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356746AbiCYKUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 06:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358789AbiCYKUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 06:20:41 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07F86972F5
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 03:19:06 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id dr20so14385441ejc.6
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 03:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N3M5+W9DcdgmrBKDbJ8aNEq3s5AYa8mqWvuLTG/ixbM=;
        b=mlOaQtqOgRmjRRGO6ru4cXrlGZhVBnvRi9eLSJaKk/kwzbDYqI3CVcPQQaJaUaL0gW
         sJdtJFluugcdLK68KP1tu/L3OyqigjCvpCv+1/tT4lM5xyYHcwpP6qBWr9PTBvNnfyk8
         ObS3P7CBWsERMCKSlh6qziPCqTAhiy6wr1ZAWYZStMjm6LTu7jnMbFhuyr44/awFRvhW
         RIWeGTRiLbr4jj1PS3f4TdpkD6PQgBfyrOZBUhUbzlty2vYewIkkHirar+mAGhbhUFMM
         aunLqMpcTU6fojBYLjEitSUIkevAlDgLBQTNJPL1C1mw44wwveqyGvpqqlbnhxpQ3WEA
         dj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N3M5+W9DcdgmrBKDbJ8aNEq3s5AYa8mqWvuLTG/ixbM=;
        b=W5UoqiMZF/I6cL1VuGte5mCm2xNf6EEnHWdoVJNecbvmd7nPM2Vx4Vi9P65OfB0f35
         TlqZn/T13IuHWDh34ftDk6DJ2pvYnZownQ5NZ5JMPIPAfGd1g9ubvwL+Hyy7xcItHOGX
         NM+KBpFI241zZIqbDr8GdAf7dd8PK8h00HW3cEbTO9OQlgxwmOlzMKEGmrbNdkLQYnM3
         APiap6guSQLGtyNFhteiVMJyvZahECU9f1tyHVofyi2adXQ8Ficrlnpmtuggu8b4fWKJ
         ZeFKrXSr1GzBVzB9Y2JH3tiKFZ847v+cCCSndw14D5dXrAigLXCT6zCFUun+PbUumspL
         1AXA==
X-Gm-Message-State: AOAM530J+Lr+4B9ljPWbs3bigEJk188mMNQykZFJFQo4eeMUPi6vue0M
        cgsQfWwwhNQKoZ29m0G8Qr36Ds6R22sLpw==
X-Google-Smtp-Source: ABdhPJzgWy3eAWlPSntRajmZX9Q2zPVQlb7AWXXrMuh1LqWYrdIyn9OR31F+kMW/7kfxfGQ5HtqRRA==
X-Received: by 2002:a17:907:869f:b0:6da:888b:4258 with SMTP id qa31-20020a170907869f00b006da888b4258mr10872450ejc.720.1648203544495;
        Fri, 25 Mar 2022 03:19:04 -0700 (PDT)
Received: from localhost.localdomain (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id hr13-20020a1709073f8d00b006dff3a69572sm2122695ejc.5.2022.03.25.03.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 03:19:03 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm7225-fairphone-fp4: Enable wifi
Date:   Fri, 25 Mar 2022 11:18:41 +0100
Message-Id: <20220325101841.172304-2-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220325101841.172304-1-luca.weiss@fairphone.com>
References: <20220325101841.172304-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Configure regulators used by the wifi hardware and enable it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index 1bb719ef6a02..ea7f2a31399b 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -404,3 +404,13 @@ &usb_1_qmpphy {
 	vdda-phy-supply = <&vreg_l22a>;
 	vdda-pll-supply = <&vreg_l16a>;
 };
+
+&wifi {
+	status = "okay";
+
+	vdd-0.8-cx-mx-supply = <&vreg_l4a>;
+	vdd-1.8-xo-supply = <&vreg_l7a>;
+	vdd-1.3-rfa-supply = <&vreg_l2e>;
+	vdd-3.3-ch0-supply = <&vreg_l10e>;
+	vdd-3.3-ch1-supply = <&vreg_l11e>;
+};
-- 
2.35.1

