Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 856365FDDB8
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 17:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbiJMP42 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 11:56:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229920AbiJMP40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 11:56:26 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C82DAC44
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 08:56:25 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id z18so1536101qvn.6
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 08:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=peBZ+o0SLeYqd+DX9yqHCLT12xT6rkAjixZ0RNiZfhk=;
        b=gDCuiFor8HhpbWp9fp3uVoGYcrxvCuN30wL3ycpmtQUhgOfaKOHfQAfWRFQQvOjXRD
         s2HaYMgTL9/mXuok+k2EVgRwDTohpx5U4qSC/4ZtacdmJf4x8/wcprMXcH8I6e1N19A3
         yuchYZfusaAiKjfw400t9C1NEm25tcpaZfI+YAijRONZBFq1u7CfuJXonKHmO5Qg3P4S
         7LG4LUL0ew63UGj9EfwOeKKuAKKx4GFvImk/ZzGw8NtfPYiFm5tiBq0H/talcKb1ESD1
         alKCkoDemzduw+Y90xJRgzNqAzY2mGl1sk8fK2cFnA4jYjuyPrkhAyQQw2j7dCSlDATs
         0X4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=peBZ+o0SLeYqd+DX9yqHCLT12xT6rkAjixZ0RNiZfhk=;
        b=0sSRaYhs1D+hhANni6dshqqZ4G+ZfyqOx4bDgkRRYIBfnGXpFExHZ9EtaIK3JccS/8
         p6NEK67DYtitv4KMqH2f3HbZMELAlHukeEqiNuDmpmYu7v9rTrcYwF1CVKlMnKHT1jZe
         Gf6VI9H/ZkKPw0g5MIsn2KZA80jHyTlNUHPC1a+vgsI3NGNRI96L+2AyA1LMgX4fYReO
         m3Ioa4uT1vEnZ9VwR/p8F+XN0MI4JMfAPDwxTX+3Myc9/1PTZkPETB+Tmc2hMUPbn341
         ocdehyAYfct2OMo3/5YpLEUxHwQhaNFtTu42uoWKY3uzGqHpkfB7KkUy53lAe0gAjByE
         9Vfw==
X-Gm-Message-State: ACrzQf3o8VxxX39gGuxZM1rN6cpLnm3CDLIJn6jMRdhp3hZyEqch9jA1
        L3K0dqkr7jqm4FRqK3hUYr012g==
X-Google-Smtp-Source: AMsMyM4XRJrleKDViEuaZRBXI1jBxAocsRDssr0ijqLzj3jQlNSUTePImEmO8W2wY2lZWQg2nXW4cw==
X-Received: by 2002:a0c:e552:0:b0:4b1:86f0:89d5 with SMTP id n18-20020a0ce552000000b004b186f089d5mr456508qvm.97.1665676584224;
        Thu, 13 Oct 2022 08:56:24 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id u6-20020a05620a0c4600b006cec8001bf4sm65280qki.26.2022.10.13.08.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 08:56:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ARM: dts: qcom: ipq4018-ap120c-ac: Add SoC compatible
Date:   Thu, 13 Oct 2022 11:54:17 -0400
Message-Id: <20221013155418.47577-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221013155418.47577-1-krzysztof.kozlowski@linaro.org>
References: <20221013155418.47577-1-krzysztof.kozlowski@linaro.org>
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

Add qcom,ipq4018 compatible fallback for the SoC.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
index af9a26fb5d4a..a5a6f3ebb274 100644
--- a/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
@@ -6,7 +6,7 @@
 
 / {
 	model = "ALFA Network AP120C-AC";
-	compatible = "alfa-network,ap120c-ac";
+	compatible = "alfa-network,ap120c-ac", "qcom,ipq4018";
 
 	keys {
 		compatible = "gpio-keys";
-- 
2.34.1

