Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38A2B6E8A7D
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 08:36:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233947AbjDTGgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 02:36:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbjDTGgX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 02:36:23 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460BF49DF
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 23:36:22 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id vc20so3883174ejc.10
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 23:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681972581; x=1684564581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vhesal7Xmunfb2JxAbpfsxS+0IOG45T7CweKQZDf9Qw=;
        b=Ed0IvETZigsujuOAN+CNPm6GvH/2hCA8cZKw4UKAYgIKUkkDmBaJNDmhVfqymSU1+y
         HBiY9wHnj2m9z3pJJ2ii1ejzo7tSX3ADD+D/okFPYoW3+pLXgXF5wbpZ9/zBDYyZURl9
         7CXWDrmhgOna9yWZ+QNeSJRjZukXQgbdildUDlIqmQ/qOgpmYzUVLiYUijErUjB1Wa4f
         ciS2L23vbQu67Dyh/OtsovKn1/AyK5FBFr6kzHhd4q/ZYPob5OkHyzVS9fkG+5cmmWUm
         GVglQWjQ4xKKJC6oFgABpplmisa4AZS+vLzJbyJZGmmMsuCFpaRDEOgPceoMxNwrdH4B
         Og2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681972581; x=1684564581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vhesal7Xmunfb2JxAbpfsxS+0IOG45T7CweKQZDf9Qw=;
        b=dDuf1SlX56qP2HuF6qVjHrTHNaKF72XFvYLxYhqHZvU69OXns7EdO3UYY7XZIt/VNl
         kVwVcXxGHjkYAI890pdsrgPdmH3twLTRQMlpgd/bVJuSGx4iYzHZC2j/DqbP+5KXHzdC
         gOB/24HpW3aPv+h6Py4+w931q77xjUjHVUgtwLVZSgwU2rpOAdsVCID+rVxBWcu/27h9
         +p6GdNH03HPNiHbRXcyanvdfgWeJoljcLnAlYyGq/PDu4C1LsIZsTi4vU6YYakGJ0JS5
         V5ucfm8sOtiPP1T/LC+c8/BlbLV58CaZM7fLFv7X2t42Adc5kNc2Qz2etmfhA9S0xnbk
         tQMg==
X-Gm-Message-State: AAQBX9d1wYe+8xkmaCRNpqnAwPD9rwpa1kJUTmJbjtHWNRn3Q8cYk5aQ
        8ZBP0wCmMZDb/HLNx4er7DIusQ==
X-Google-Smtp-Source: AKy350ZnjJzKgynmUhmeRWrhxT1CQea4/1M5XbymZJhJjenpMOJMI9VYrzvC7qDFJTsAqYojelQghw==
X-Received: by 2002:a17:906:17ce:b0:94f:1:8468 with SMTP id u14-20020a17090617ce00b0094f00018468mr511086eje.17.1681972580770;
        Wed, 19 Apr 2023 23:36:20 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id f7-20020a05640214c700b004fa380a14e7sm395342edx.77.2023.04.19.23.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 23:36:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 7/7] arm64: dts: qcom: sm6125: add unit address to soc node
Date:   Thu, 20 Apr 2023 08:36:10 +0200
Message-Id: <20230420063610.11068-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420063610.11068-1-krzysztof.kozlowski@linaro.org>
References: <20230420063610.11068-1-krzysztof.kozlowski@linaro.org>
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

"soc" node is supposed to have unit address:

Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 9484752fb850..745874a82a49 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -364,7 +364,7 @@ smem: smem {
 		hwlocks = <&tcsr_mutex 3>;
 	};
 
-	soc {
+	soc@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x00 0xffffffff>;
-- 
2.34.1

