Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E751A69C7D7
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 10:43:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbjBTJnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 04:43:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbjBTJnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 04:43:52 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37DA4BDD7
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 01:43:51 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id f13so1622849edz.6
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 01:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vEraJFOkiEGJPLBJkOQj/cMWUDEIwe2prS5AlZkeQe8=;
        b=LY6eJtyEwOc/eQ/HgsxjJcxEyyZ67VvZ0eC58vOWNi4kwPkVNQEjuBsBf1UGJq+Ekh
         jnAA4rcs0JIjQd5J7rlXZyJIQ2eCKVg2CHnUi4O9vsK67FSnM0wvMyJCduI29h+vfuNc
         fViLpDtKTHJmnPS9F5Ygouxu7pfZumeGkrGybrD2Ima0iScrzK+yh8T5Qx4JHpRAH7vx
         oH5+kJVPn8R3XMTpBCxAGtPlr/5pqTVt4WUuIWbAzBmG8apRHVBW7z/oUXR2IJCM8eRx
         TF5sLumOpRGmOamU1wy6M9B6fkevaaPRv+kSKSx0fq9PFntmIG79a9FYaWRdaEl+yzPZ
         LE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vEraJFOkiEGJPLBJkOQj/cMWUDEIwe2prS5AlZkeQe8=;
        b=u+SpTaFZ4ZTtUS9n+lW1m2XOtGyeTwJhuabKEnxSsVePBMWxk2vj4JYZiBDvmtKqoh
         4KR+hwrF6L5oJjQf9isMcHWJy8dXNkDK59AoUtuZgFz0xPSwKczvV9Dcza9M7Zq5cKAF
         k3NQEq+hOc2fPB0d8eWSH1YwXe/O6eBjoeq5D7/BQwmdcXEPrHSlquC1IHOcjGJxaYHu
         5VcJeEoCMTgo4NKIls8NhhnQGU+JS7Q8K569CBWOTqa0UevqfRaHzjVjVKdQY98t9Ysi
         t0Xh1VcTH37+rDI+tBVQHahzI+fd0J0nMR49A6M3F+4VlxcyyhCDFy1fly2/7/Kv4jXt
         iKaQ==
X-Gm-Message-State: AO0yUKXS8G02tU4EAFIKji6aCim/RJaQhS4Xu9Z9bYIoiZeVDUnWVUiy
        y6YcTnmdt6GtRISmsq/CQVXvyQ==
X-Google-Smtp-Source: AK7set8XWwJEnqzoWn70CIKQF4YspfORAwRtN+QfjYi/mURoJub4rkTkRIi0zJs53MSsYxYchEp1Iw==
X-Received: by 2002:aa7:c302:0:b0:4ac:b950:a11 with SMTP id l2-20020aa7c302000000b004acb9500a11mr754880edq.33.1676886229705;
        Mon, 20 Feb 2023 01:43:49 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b2-20020a50b402000000b004aef4f32edesm1557645edh.88.2023.02.20.01.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 01:43:49 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: apq8096-db820c: fix indentation
Date:   Mon, 20 Feb 2023 10:43:39 +0100
Message-Id: <20230220094339.47370-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230220094339.47370-1-krzysztof.kozlowski@linaro.org>
References: <20230220094339.47370-1-krzysztof.kozlowski@linaro.org>
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

Correct indentation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index ce189dea2760..eb18811b2676 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -1070,7 +1070,7 @@ cpu {
 
 		platform {
 			sound-dai = <&q6routing>;
-	};
+		};
 
 		codec {
 			sound-dai = <&wcd9335 AIF4_PB>;
-- 
2.34.1

