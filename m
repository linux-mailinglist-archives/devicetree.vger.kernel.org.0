Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1404F6FD967
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 10:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236662AbjEJIcS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 04:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236615AbjEJIb5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 04:31:57 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 898E21FC1
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 01:31:48 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f4271185daso29909245e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 01:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683707507; x=1686299507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SIEI+OJV/pu/oU8YECAxIKRhFHhxaot9dE0P0bQjVOQ=;
        b=e16GeAjrKa/OV663aTvum+5tjQwwBSdQRgjlgj19KJ12NkPFJ33aTV1ab5xBywPAjW
         QOMtfbmgSRvs1smw/QMyEGkKshzohUe9TdR16lommalkkeAyKSqMEzhrmSUpHsa4D7lb
         K75y0mULT2/bpbqspJ338w3nDZQMTPR/cPSgR9zhtGaMVs+74uRPpPcevJjso+cXSFdO
         l22AlxHLooOamol7oC5csv1gFQ0083ZKxvHg1NM8QFdRzsFu7W1LDPub8IhaIK0VPN9r
         Ie/qoFAsRizWZ3607zGCzTiCjO2OKzwHe5XHLBfLR3As7qmMp/YzNM6uAWuWP6F+knEA
         f2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683707507; x=1686299507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SIEI+OJV/pu/oU8YECAxIKRhFHhxaot9dE0P0bQjVOQ=;
        b=jD7dt9fbgtVj1euw+SPdFSCoMQGGgWLsyX7HDiDW+zZbVxG2zvMKnekkcCg/hqFARv
         kMDBxHcfW97GLyh9GjUI0PHKtSnkCrsdsRmC1BcglUhRQNe3JvWMPe621ipozhBE8Nns
         wyA+P6LIyPM7cnoEIKsjz2YA5khqmNeahb3l07b1j0g0xirCfDNBBT24NBGM1xKmGo6L
         +t1q99lR5QLNEQ8ttAmxkoMK458saKY5lN8BcvP5itvUnjEbpyT8iOyDLGGbZ0cz80qd
         q3ai464wb3nQwbV6H8hV1tC3RHAKbiKu8RUG5nqdzxn/XfWTwhVgGroJfs6b9j06Jn+w
         f0eQ==
X-Gm-Message-State: AC+VfDwP7qrY6jgm/7TzXHnMD0h/xD+bfkww7Hg0lqUyImVmZSi6uS30
        CLoz6aoSIeXhczlRLh6wbfG2MA==
X-Google-Smtp-Source: ACHHUZ5Ym9XFkziAWrgXYLw1Hptu0XE5Bl9Q1zhPl3b+ATieD3g5sDpvDSEO4JK8Vi2Gljb5RrauHQ==
X-Received: by 2002:a7b:c84c:0:b0:3f4:2506:3d58 with SMTP id c12-20020a7bc84c000000b003f425063d58mr6066224wml.23.1683707507068;
        Wed, 10 May 2023 01:31:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n23-20020a7bc5d7000000b003ee74c25f12sm22108737wmk.35.2023.05.10.01.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 May 2023 01:31:46 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 10 May 2023 10:31:39 +0200
Subject: [PATCH v2 1/6] arm64: dts: qcom: sm8350: add ports subnodes in
 usb1 qmpphy node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230503-topic-sm8450-graphics-dp-next-v2-1-8acbbe1e9d14@linaro.org>
References: <20230503-topic-sm8450-graphics-dp-next-v2-0-8acbbe1e9d14@linaro.org>
In-Reply-To: <20230503-topic-sm8450-graphics-dp-next-v2-0-8acbbe1e9d14@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1039;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Dok+/geHaBnd3dghE6qdwH7xdq41lmoCyqBrK0Xxo/o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkW1ZusIHIP7hhu6KC61S49tk5Kg1J65LTdGM5Yz29
 BW5P7UaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZFtWbgAKCRB33NvayMhJ0biHD/
 4ufJNQm0MNJ8m+0KTP8Z1+5WJUkpjS+1BgThKuKtLKlvD4Jl//S9jzRCeFMfvQtH0BeGYGmf7F3G3A
 ZOdQ+zOYJTwVzgR37xS60KNkmcwLEWG8c7POxqvsn73clXpIVU0H4Tvfp9kw86QMDrCZVhwT39WAIg
 ONLbsfdmOrZhrNNnhU1PaomdIUn5vOFeOMPJOwVKM9+sjS1p5T3JIQShN1l6+I/PJwh0loWIx6wTWX
 EPDvwQ+DLNdAw2QlrfvemODP1Wqzhq/kMw8IwCMK0x3wF6Zj75kzvADXc9LP1gdhia/Xt7Qqvzk793
 6OVuO67pCSK2zeSeskCyiLuD2hhvvAxaLlHdSKsJKbStvbpwQO53n4fvmQUAiLD4NdLOZ7tWWgGQZf
 LzXUAsxot0KcilHn7lNOYrxbFJA+uFIbOorMiXyfnSTF3OjFbqoGcgGaZuOTAXoz3raeIStdan3d0R
 8Abyo9DEyw4BvkVdpiEaQruzhxcSxkhka96Uol284rSYPCIvUz3MqR9a5RLSLrfq0ZJrXF+K56E7/H
 QVStdGmICiTakPYEFsp0GzBCi/AODE8Z5xdFPoT3pY+syR2cmOk5pIAuCJuefYwxUfZlZCaeIhYXsG
 KhSPVstSrbrCQDbD6oHECF4rCjLLpH0qCzQ2alR21SY/HD5iMREf/6WmPD7A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the USB3+DP Combo QMP PHY port subnodes in the SM8350 SoC DTSI
to avoid duplication in the devices DTs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index ebcb481571c2..c057e320c1d0 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2149,6 +2149,32 @@ usb_1_qmpphy: phy@88e9000 {
 			#phy-cells = <1>;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_2_qmpphy: phy-wrapper@88eb000 {

-- 
2.34.1

