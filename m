Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2AF55B0195
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230495AbiIGKR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:17:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230033AbiIGKRH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:17:07 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A5FEB95A9
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:16:16 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z25so21698725lfr.2
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rD7nUjrvSdRKK26SnCtib57c+ip99Bt4hzrz7aSHTO4=;
        b=Sf1qMEHpMyvMOM726UPwmd4tFRVkWl14QmuLSPwXcWWckFo9iNstALB59POadIE3u/
         F4z6QMTShCXZaeHZaFD4RKl2hlR7sNGnoBa5+8K7+ZFhEBx9neK7x13pTAbYvQeS232w
         7R+ZoQUBb2u+2ZUQpdjN2u7ejl8F4+rI0uxB6f6Z4ev9OJLKIzSw8UPB/4KAR99ad/o6
         EZtlx09RAjYbxIODMUR9TrydowX1NenVtzRJZ2fA7I9z9xOzOToR4+92ckfskb5xIy9E
         pC5ayOZDuvvQ9LhpNihN4Bknw/MZVX5C3ayd1eMT+JS3+zKXteUg61uhzMrlufgMWLvf
         xU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rD7nUjrvSdRKK26SnCtib57c+ip99Bt4hzrz7aSHTO4=;
        b=akwkx25h+JhmCnPP78gTGiOAOCFC3bCdBBWngqXHZFWiz4Vd05be/p7JGpKbgYPGJ3
         nqpfBlr8A1BIukB2GrOrVs1gbXaWzZJ0GZZm7pDKAOTUSh8p3kkJgx3n32Nz/lhjA2sg
         gAXyX9lZRvRyoxzw6Q2HdK+KnNBMOvsu2qLOhwTSnVFRhtw37tEyuDdZEd5wodb86FS1
         giY/feM/hucHHRNXFTxOOz5FVtWa4CIqRJjjVUHySOU5lWv/ljxMBORHWjoiesdokHHl
         cWpDsqPXpj2EQSqus9R5A1Kv1VyW9rpfC08vzBa99IfvHTCoh9alcdRK6HwDFY6/nYJI
         8sQQ==
X-Gm-Message-State: ACgBeo0IXWyLmU0Dv5g7fMHOWWVqhe/c4VCc0U0s7nDDhFI5WCNeTMh/
        pwgS0VoPAm/OK019xIxcg9xZ+Q==
X-Google-Smtp-Source: AA6agR6tnZ/eDnpRKASnvAO3rT5c8S19KCAhnPnR8bkNHZdmAwUtPsbo7BPBgbJoF2jBYLWQZCUFYQ==
X-Received: by 2002:a05:6512:ad0:b0:497:a620:157d with SMTP id n16-20020a0565120ad000b00497a620157dmr941660lfu.643.1662545775597;
        Wed, 07 Sep 2022 03:16:15 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a2ea169000000b0026ab0e480bcsm960734ljl.39.2022.09.07.03.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:16:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 08/14] arm64: dts: qcom: sm8250: use generic name for LPASS clock controller
Date:   Wed,  7 Sep 2022 12:15:50 +0200
Message-Id: <20220907101556.37394-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907101556.37394-1-krzysztof.kozlowski@linaro.org>
References: <20220907101556.37394-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic according to Devicetree specification,
so use "clock-controller" instead of "cc".  The bindings so far did not
define this name (as child of APR service).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 84b4b8e40e7f..6ee8b3b4082c 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4799,7 +4799,7 @@ q6afedai: dais {
 							#sound-dai-cells = <1>;
 						};
 
-						q6afecc: cc {
+						q6afecc: clock-controller {
 							compatible = "qcom,q6afe-clocks";
 							#clock-cells = <2>;
 						};
-- 
2.34.1

