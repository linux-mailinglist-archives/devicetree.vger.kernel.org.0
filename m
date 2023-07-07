Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7C3874B0E1
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 14:32:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232671AbjGGMao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 08:30:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232391AbjGGMal (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 08:30:41 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5845268C
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 05:30:34 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b6f0508f54so27816291fa.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 05:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688733033; x=1691325033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoTvC+FrPkguSl4Zm3LJi2fZKp9GwIiJLIM/2x+q44k=;
        b=XMQLVDUgOs2zAp/mtYLxOzGQrGh+Aw5UJI2Q3sUibZPDbcZ5xYw3nqyw9GVJb/wOpz
         MTzitgX8FVLTQb9+BetAsjf4btXJOGj2caP/ID0WDhc2oxsiqLTHeZjOEnhaVYoZCBKM
         OrERRlbCJPOHEjl2k88eqwvuv3y22+zqrWiYcl2es8tndVFUz0Vj5k0+vBZPUEYWfMy8
         4DHFDoRSZO72UN8twAneGiG+y7yLb6McBRIJd6DKF9RA+kvEEcG+ERQARlpT3yaQRa6Q
         UftP1af1HQnHnulKiJoU0fU8G1XIvTBj4wanSD3Q3KbopKW5MNvMmwW9GF4amNFYYe76
         st8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688733033; x=1691325033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoTvC+FrPkguSl4Zm3LJi2fZKp9GwIiJLIM/2x+q44k=;
        b=kFaLMlGr+tn5EC4IJRdkYqRY7244l7uc1PS4rpiSlQSao/g7qbDpsfFP5RLAVUoDc5
         X6fBywJNzn2WjDA16IHT6WnWzBNXLSMlEucshUdwT+SYqZax7OXyDNtBzbvbIll/uYHU
         63W+x2VFeyycQhdDI9xKG5D5EzsxoEkohVfPWYIBfIKNQnbwu6efM4/4oFmsLkH9VvJk
         rrrsTbMoHI3mtszCVipttqxevaZFmIsVSIJOepqrJ/26lyGHSpdWFPah/nrHaclDDk5E
         NqBd31KFjbhWJ/edVOmGTkdGMd4ZSAQm7SMtpuwSVa3DGpNfCoqyRHJofO/XAYmft8Rs
         ipjA==
X-Gm-Message-State: ABy/qLaHSsGY5SX+9zYUB1ojUcksw2i9Iw6UI0/YOo7wXh/Dqc1SLJWT
        7yH/BkHVxmwaIwCz0ocfGTbgYA==
X-Google-Smtp-Source: APBJJlGVBuGbHNDcfEk7nBuPYPp7akBZvaYr3NoC9XntND/cnztquHhDIBi80w3XbOqF1UgzrQ6k1g==
X-Received: by 2002:a2e:8611:0:b0:2b6:9c1d:dea3 with SMTP id a17-20020a2e8611000000b002b69c1ddea3mr3760036lji.2.1688733033256;
        Fri, 07 Jul 2023 05:30:33 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id l5-20020a2e8685000000b002b6ee99fff2sm756803lji.34.2023.07.07.05.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 05:30:32 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 6/8] arm64: dts: qcom: sm8450-hdk: remove pmr735b PMIC inclusion
Date:   Fri,  7 Jul 2023 15:30:25 +0300
Message-Id: <20230707123027.1510723-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
References: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 8450-HDK doesn't use PMR735B PMIC. Drop its inclusion to remove the
warning during the HDK bootup.

Fixes: 30464456a1ea ("arm64: dts: qcom: sm8450-hdk: add pmic files")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index bc4c125d1832..dabb7e872f38 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -14,7 +14,6 @@
 #include "pm8450.dtsi"
 #include "pmk8350.dtsi"
 #include "pmr735a.dtsi"
-#include "pmr735b.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. SM8450 HDK";
-- 
2.40.1

