Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 334305404D4
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345730AbiFGRTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:19:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345733AbiFGRTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:19:13 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D491E1059CC
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:19:06 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id q1so36577180ejz.9
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Zf9oNDrBn8AgS0HsJI75t84ZHlXciTzhx5M3HotS7pg=;
        b=qO2yi3wo1qcclE8YpBFykeMxGAE7JKaFTrIett9b4yuO2Ls8e8QSELZ7Kd9xoSE71s
         RKSJ+aRE6RzxBxUZZl3X3bnPTzfvBF2d9g5AjJ4MGmZiTMh1lCqZFi+Sxb2wB7wTpf8W
         EhGB8eE0yZLTycH/8UnVq3AJumxnw70mRGs+c1OmiKRK68UVYgPm6PCL+hXzeTkreYrd
         6CDdSPndsWvKy8d3guI1sxt/MlekNBV9GM4QhZEiyRVA8OxoQ17fgeVcx40gX6l+LJfW
         duIlKl8qEVDzxuLcmvwUrL6mgNbthyOe1N3sK2oHmIAFdSeNas3hGJGuVgsWxwdr6nmt
         /CJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Zf9oNDrBn8AgS0HsJI75t84ZHlXciTzhx5M3HotS7pg=;
        b=U9bA+8NL2wFgPgpDU0YSDuhbqKRy+KbW/ATkApZmMJGUOhQfgLX9KHz9bI9m1tTtu3
         GxONb1b5RXXQoymLQAKu9qxX2NRh06jvo4TyCrnWTFHp2kq9QY0gm2ggmbX654Ymhwt5
         u0y8/sO8YoV1fFOaTwaWNZ4QOCJtG5xhUjijKCEQT3SthVqN5BaW/x4n0Ea/rXsQ+DUz
         QKyYNfIZm6vP+QVwydtdFFZ5omdp+WhAE9LJDll090SZIpnptlnnWh+oLpFP2bvnQuk6
         SO1yEnKWO+bo4LqRc2M8mADzsuxWLrfkBjiVpumknxXi1tMrUapd7zIAbDFXc90ekFoh
         244Q==
X-Gm-Message-State: AOAM532GtKsUKg4QGZ7gGI5FTPH0TxKowk/HDQrZ5DIXs14/wiDY89eg
        ZUPEVjv8JiCBpr51UW/S1Uwoig==
X-Google-Smtp-Source: ABdhPJwZ/F+q6oQyPWMSqGsaHGZROmRaaOaUta0JoOC/1LYy1wmN1BOTtGZKdZElA09r4SjlHMaWWg==
X-Received: by 2002:a17:906:c154:b0:711:ce44:a0a0 with SMTP id dp20-20020a170906c15400b00711ce44a0a0mr11804793ejc.420.1654622345428;
        Tue, 07 Jun 2022 10:19:05 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i7-20020a170906444700b0070e238ff66fsm5876540ejp.96.2022.06.07.10.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 10:19:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Masney <masneyb@onstation.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 14/14] arm64: dts: qcom: msm8994: add required ranges to OCMEM
Date:   Tue,  7 Jun 2022 19:18:48 +0200
Message-Id: <20220607171848.535128-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
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

The OCMEM bindings require ranges property.

Fixes: 9d511d0a7926 ("arm64: dts: qcom: msm8994: Add OCMEM node")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW. Testing might be useful.
---
 arch/arm64/boot/dts/qcom/msm8994.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
index 0327c9941ae5..da9c8e05c7b4 100644
--- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
@@ -1074,6 +1074,7 @@ ocmem: sram@fdd00000 {
 			reg = <0xfdd00000 0x2000>,
 			      <0xfec00000 0x200000>;
 			reg-names = "ctrl", "mem";
+			ranges = <0 0xfec00000 0x200000>;
 			clocks = <&rpmcc RPM_SMD_OCMEMGX_CLK>,
 				 <&mmcc OCMEMCX_OCMEMNOC_CLK>;
 			clock-names = "core", "iface";
-- 
2.34.1

