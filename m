Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3332692169
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232568AbjBJPCg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:02:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232241AbjBJPC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:02:28 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F060728A4
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:02:17 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id o36so4041530wms.1
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9U2D9EDkvJZyv6OFtH0AGD6bGrMQE+PtTBOi8PInK40=;
        b=GHDCMfc1M/qMvYD0ftcdIbt52JWKOd8nlJCXb0as8G4tUOp5KBuYqA4u6L5MQ2mWwK
         ZO6qA5z5rSYm3uvR5LiqWSnhpVOf60VHspdEEphcIySgdIbX+wjlgzd3PyLPvKJtgqF4
         fIFpndEuFfZE4whGaJPiyxTiRAJ+n9rKBvt+CNq2tfWh0+Vu4LjP1H+ewZDMHD5ceGyc
         lN06l8D9WhNKyht/HrhEW6jylyw86tUm2mRCIXVcgzoDizcGUKKlAt9Xv4KFdilO8Oun
         EYhkmKsArUWlX04lTxCiZ/SJntpsXVVZvjeEBLfX1L9u5K/y1tCCvOO+UBTcV7COe2w6
         +hWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9U2D9EDkvJZyv6OFtH0AGD6bGrMQE+PtTBOi8PInK40=;
        b=xo7QonaMbfM5kszBJmtLRcysxcRVQRbDboGkdLTA8ssDN+kyHgIGtWG/rLbp37xoD8
         FbirbYdBkNG2bJnW9n9BsLWfoLI655QjQ6ebAjOfuhW07Tqo3Rhaos2aa2qyYNRC2MDX
         z/LqGsQ6qGkYzlF5TbByqFNCFSPhMPhMz6iSaPg/s9uoXOp9HXvy/De476gI1HjqOVXy
         tYJiz7NZmOdxxVhrOo+nuB+xPQXau8kqbv1tTeSj7PdaGQBDUAXv044dYpDskYI7mAz0
         mOnmskP/sboyoIE/aNdJBlLf2L3OEkMA7FDqdZNPDDSsJ9/Jsw23V9Mm+9ipSMgAo0du
         hmFQ==
X-Gm-Message-State: AO0yUKVKEXysz5WL5oeNVx9pV0dAm5LgxvsL3RfKJVf0dUw5wvnoSj6K
        5lXhF/A22KjuLqN/wShoneo8YA==
X-Google-Smtp-Source: AK7set9vbPmCSTR3H4sd+goP+vdmQAhD//ht1ldcku986aYVPYuvPaNUHv5lW9Y7A3yPJQie1DSvmQ==
X-Received: by 2002:a05:600c:491c:b0:3dc:1687:9ba2 with SMTP id f28-20020a05600c491c00b003dc16879ba2mr12896562wmp.35.1676041336171;
        Fri, 10 Feb 2023 07:02:16 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id w23-20020a1cf617000000b003db1d9553e7sm8282482wmc.32.2023.02.10.07.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 07:02:15 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 10 Feb 2023 16:02:09 +0100
Subject: [PATCH v2 06/11] arm64: dts: qcom: sm8450: add port subnodes in
 dwc3 node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230130-topic-sm8450-upstream-pmic-glink-v2-6-71fea256474f@linaro.org>
References: <20230130-topic-sm8450-upstream-pmic-glink-v2-0-71fea256474f@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v2-0-71fea256474f@linaro.org>
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ports subnodes in dwc3 node to avoid repeating the
same description in each board DT.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 1a744a33bcf4..ccda73426ee2 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4155,6 +4155,25 @@ usb_1_dwc3: usb@a600000 {
 				snps,dis_enblslpm_quirk;
 				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
 				phy-names = "usb2-phy", "usb3-phy";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+						};
+					};
+				};
 			};
 		};
 

-- 
2.34.1

