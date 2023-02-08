Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B79E568F7AC
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 20:02:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231536AbjBHTCX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 14:02:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231533AbjBHTCR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 14:02:17 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3F056480
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 11:02:14 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so2248816wmb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 11:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4G/wlddfo49w1qoYsyEWEkm1Kvgf7xvemEjWX1SlQp4=;
        b=ACAKkzGBnY952eyIVyaPlAUvJ1XgfUrZpEhl+2k0nJWb80MZwHanxGGi9JhsoxAPX2
         hEtKJXxjKHYLoX5vtcpvLqk3IM3RaGykZWL5d3yClxPT+swxwA1l6mtvukld20zpWDBX
         GaL3HaIA7zY1YHwVukmQxpMzz3xaabDj5QaNmedqN7DWBBrVYU9BdUOtmWSws9TGvC5L
         C9shoCMaGSdEjizKCBQU8R0TIddCBSDgBogsam4RRcxv8z97FrX7xG/r+rTmyMMKvPpq
         mEiT0TCbQfrNGGdvilSw0onXPzdujXTk9Zdbh25eE3+52ywMN+NgAi9jec9Jt/x5wLxD
         6Vuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4G/wlddfo49w1qoYsyEWEkm1Kvgf7xvemEjWX1SlQp4=;
        b=y7lkt8d21uLrPDTsoOvFXKXOVoLWGaRtgz8lzvK2LnRfbB57ywPPjMJEhPLmCYSnMI
         qoMm4VlpckuhYQ2nmqXea0LTlw/4ZzuGkw/hDLOEWuGuKCgtrWEt1p7Wmc/k7RdgRRZT
         EjaqnWxKNW1HwMLnPMdDoY4vu6sg2bfZXSOXJVNQDwRhhDASNG6VsDjT4+Si8zaFSKOy
         1qNJjyrPJ4b6oZCXEHqypgfuT29Rb27trEhIOhrdCuLwxmqoptCc0lrpeRExIy0BGGCx
         CwSH0WDw41RLb4vMkPskWGqrI0vBxEa16m6HJsznfepOfq+Qr7WwqjMh7egM3j4YyBCO
         62og==
X-Gm-Message-State: AO0yUKXBvLafnm7MYIy8cKstQruSeTA8ISiJj+QpMQDn3K345TvGgEdf
        VdqmmE8dKtYH3gj9BJvi2veqBQ==
X-Google-Smtp-Source: AK7set9CAfTQ/iAY0GW2hBmL9YVhav9IXoT39Ym9IacqPIIbGDz5X4E9ygIFCQBOcJLLRl2mNUncwA==
X-Received: by 2002:a05:600c:3d94:b0:3df:e1e9:201d with SMTP id bi20-20020a05600c3d9400b003dfe1e9201dmr7663529wmb.40.1675882933184;
        Wed, 08 Feb 2023 11:02:13 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2650327wmc.10.2023.02.08.11.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 11:02:12 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
Date:   Wed,  8 Feb 2023 21:01:59 +0200
Message-Id: <20230208190200.2966723-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
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

The v4 is here:
https://lore.kernel.org/all/20230207135551.1418637-7-abel.vesa@linaro.org/

Changes since v4:
 * none

Changes since v3:
 * none

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

