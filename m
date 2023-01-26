Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FD167CD27
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 15:00:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231741AbjAZOAM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 09:00:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbjAZN7u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 08:59:50 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84F892D59
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:59:33 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id q10so1866986wrm.4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RF2YyGY2PogpnFtO0lOlawE2OSglZRNn+XgKRaj3V+o=;
        b=uiBLnAVwS2GyS1HRbMqSi5MUkD9pZgyuG5ld57sC3WW/mTf4dgApP6wJ2EFmq8pET/
         SP9jA0BkIDIZLQXu4hpWFXvU0xHcf52eS8l9tfOB53FdpHg8i4OzcAujAS1dAcJmZhHg
         ncMf7V9MexDLVepUxHRFKUa2lbtIMwPgphkd22V9dI1SczoqsjVFBE4xz4cVqE2rLzqf
         a/mFTTdPlEQbH8vZieb+eFqLVvOhDN6cqsD13UDhI7kZgULVeeOr4vVpeuhhDwFs2APQ
         TpeIkDJ0/tYN2Y6Bfj0sznfA+z42vMfi74FpI88ieIQ1ZkO+kQ4dIVfSRFZ1Ku+8OdTm
         KowQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RF2YyGY2PogpnFtO0lOlawE2OSglZRNn+XgKRaj3V+o=;
        b=ggCda/tw32F6w8Nf6cYD7FZzZFlcZXK1CIxNR0TBVxhnvvF/cw9ICJrgAUZwkV6Ixa
         1/FXIxQ+J8RV1vGJq5WwcqM/7MV4uGVDGtdEbIbA4IsyaPlfgkWgggd9KA4PWVAtDt+H
         RmSgSCTU9rEsXIvC9Uy25IeBF/z50JI8Dh/xxkjPnfZs0GSARIE7Po05bDwwJ6cPxr5o
         NAoDF+yYu3GvcXOk45x1cibbRKobzokxW24h3c/hTwSunfj7nr3zCvflEC1CgoKpE7UB
         FdDN5CbxW5KZTpQfWKsrzDZRs+EbrEWuDxGwGXyscKNGTOj7OpjFbgJB4ftybV5Qrvg8
         nEdw==
X-Gm-Message-State: AFqh2krU0mAD67hv9lZyXw1/WIKNHUj4I/9xQ6XM6cJwsExJcQomWQl0
        3rKKs/Cqj8qn9LWq5xWVt4McVw==
X-Google-Smtp-Source: AMrXdXuCTjk6Okl662FT10hv63OmbQhiMMsNh+o2Utbekk3FmmpF/b+EF+eUGq1xlkBrh4Vkc6YuJg==
X-Received: by 2002:adf:e3cf:0:b0:2bd:c7c6:d1aa with SMTP id k15-20020adfe3cf000000b002bdc7c6d1aamr30375067wrm.35.1674741561720;
        Thu, 26 Jan 2023 05:59:21 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:21 -0800 (PST)
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
        linux-phy@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [RFC v2 6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
Date:   Thu, 26 Jan 2023 15:59:08 +0200
Message-Id: <20230126135909.1624890-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Neil Armstrong <neil.armstrong@linaro.org>

Add nodes for the eUSB2 repeater found on the pm8550b SPMI PMIC.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8550b.dtsi b/arch/arm64/boot/dts/qcom/pm8550b.dtsi
index 16bcfb64d735..72609f31c890 100644
--- a/arch/arm64/boot/dts/qcom/pm8550b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550b.dtsi
@@ -55,5 +55,11 @@ pm8550b_gpios: gpio@8800 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pm8550b_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,pm8550b-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.34.1

