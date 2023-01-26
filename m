Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9249167CD24
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 15:00:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231697AbjAZOAL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 09:00:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231856AbjAZN7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 08:59:50 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6D385924A
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:59:34 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id z5so1859830wrt.6
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8JLqJWePTj56J9GBoMOuJUgVePsSS0WQ6fKq9gZxJI=;
        b=lZ8+rnpTI72eKgw6zYPfDaSYABGPdLtaeuiACZJhEvkcXqEBw0RxPatS0qNecApU43
         ErVhdHs9IeTzrSWCSeKzBDGfWORos/TfXeJMk9V1OWVz6wXuCIT8pAExtVxA1kVXzWuo
         cHt7Vnc6OnM/O5cZcHS2n39ZXskZt4ypVMeGG58cm5p+3B7ZV1SpgV/NS4PIw5AUO3Zq
         autFe1BmYGm7/QCJu0y2JxdwymmfxLiO7I9pH87S6V93ZboDVOhO6oSmzpzFXghBVIoF
         MG3w+AK6B3WrduZ5vWSDNAwzBhYw1QqurayDmcq9PqXp+Jp3RIXUOyJTU6pd2GUFUqCG
         FJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D8JLqJWePTj56J9GBoMOuJUgVePsSS0WQ6fKq9gZxJI=;
        b=6kbYE/Z+m17e5k/v/TmjYFaib9bnwzZZ+65Iln5N10O2ApVU89A3OW2NlTAz/vADD7
         86ekWq8JxiGLoLFRU2Ni9rv12xfMnUB1gPcJbJcDqXO8SzyGheRrUxClQXBGu/qOshmf
         Ps7Zk30zhiQqF2LnFUlJk+5sz1wf0x7eqMsmcsKyKQL6gQYN0u6N6++2Mu30UG/KCFGi
         NQ7UQS/GuGXhL8WXRqHXGCno0MxfQLeO+cuLbvBvTvFQtIg+GlMEM5O2fDiMD6AD1PUZ
         0dPlzxTmm177p0OMf7YCCLAwepggUFv6dav3A7A6q3nyLt3H9nnDVfSV/VlkvsUZxQva
         HX3g==
X-Gm-Message-State: AO0yUKXxVdu9O1bMKGe5UEg8p3UKhmLk090Zrw5xMs0+hQb6kGzvLOau
        ZxHEaWhZWnwtgHYpol8pctd5Xg==
X-Google-Smtp-Source: AK7set9/aHfckFT1Ne+Cj5GmP32NIq0qTwHLwG93Q/NV9Y8G5nr1Vnt5wc4s17z/va+hpQXg4voujA==
X-Received: by 2002:adf:ee47:0:b0:2bf:bd69:234a with SMTP id w7-20020adfee47000000b002bfbd69234amr4896896wro.1.1674741562996;
        Thu, 26 Jan 2023 05:59:22 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:22 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-phy@lists.infradead.org
Subject: [RFC v2 7/7] arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node
Date:   Thu, 26 Jan 2023 15:59:09 +0200
Message-Id: <20230126135909.1624890-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the PMIC eUSB2 repeater node and add the usb-repeater
property to the eUSB2 PHY to allow it to be controlled by the
PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index cea1f12ce294..bdfed6da1b00 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -407,6 +407,11 @@ sdc2_card_det_n: sdc2-card-det-state {
 	};
 };
 
+&pm8550b_eusb2_repeater {
+	vdd18-supply = <&vreg_l15b_1p8>;
+	vdd3-supply = <&vreg_l5b_3p1>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -467,6 +472,9 @@ &usb_1_hsphy {
 	vdd-supply = <&vreg_l1e_0p88>;
 	vdda12-supply = <&vreg_l3e_1p2>;
 
+	phys = <&pm8550b_eusb2_repeater>;
+	phy-names = "eusb2-repeater";
+
 	status = "okay";
 };
 
-- 
2.34.1

