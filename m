Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D851E5F68CB
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231375AbiJFOGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:06:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbiJFOGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:06:47 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0EABA7AB1
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:06:45 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id f9so2336611ljk.12
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=fQ27kq4/khNZ2CAemqwtqd/847NwOGk9AklkRWTL2kM=;
        b=iuxl4OevJ8dNqIncrrv/08aN0XNrBsfJsT2ioLWmqLRJp5xbcbghHzDwCvusfqasGz
         GMlZbsii188NJ41sDXg69fUpvGmY2w5OkeBSEo3pJ2Al3UjDJ1BnfAIXrgBRdkp211GP
         ydTFFOnzdKvya3t9IrIL9sotbj3E0oVCrARg8QPEBVXEBt4fwelFnka5R+ugEsGiVn1/
         aovvyTRSuz2e6S6tmRMHmnW8ezD95MFkNM3YJE5LSuCExm3hQRVlmKZsJippVVn2d9ov
         ynOFPcMljzrt363rQKGiEbfIGxqNUIOb0WlOzV3TYaQepPfgrWENaV7q7U3+5Enurfbd
         H3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=fQ27kq4/khNZ2CAemqwtqd/847NwOGk9AklkRWTL2kM=;
        b=g2su4J7eFmOQD4nVa56fBxegkO+QaePhAbCCBBHwYcByJvV/NvCG1M2TICYI44qwjs
         6S1rzWPy5cZq6KF3YlQEkZazbWb+2Gqj5n5XwiXOZNTr5v6qTjqc6tUptxS972VQBkkN
         nCzdyHKyfxrsWMhN8hmGpx+qctseLXu3ENGci81QkVaKcYG+/FHu4RpSLGv+jCSC4PpY
         C6dQl0foVawDDUgWVWo/RDOa2fQ0wWnblKQ74/mJjfkvu/fYn3wydLVmrHs9ZqvHCh9h
         UP53sPBz/vimiag5ufbqYZTbMz+8c7HPiOHkRPB2mJz4LtsjupBjzyMuiGmydYNe9KbN
         RQ/g==
X-Gm-Message-State: ACrzQf3h9FN/0VWlTjbcFqCIdHH6yOnfJmS4ylwBjKqzQitkufZp1Xku
        rCQXIn6M95gDAeTU/YlDlx1G9g==
X-Google-Smtp-Source: AMsMyM573Gzq6QbH4Fk5gwdTGw3NHY4ObREc5I3fpFs2wtSVTQ1GWhZbRZBeb84OY90eDCXunOf85Q==
X-Received: by 2002:a2e:9e50:0:b0:261:bbc4:249e with SMTP id g16-20020a2e9e50000000b00261bbc4249emr1716587ljk.265.1665065203929;
        Thu, 06 Oct 2022 07:06:43 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z3-20020a056512370300b004a2386b8ce8sm1833929lfr.211.2022.10.06.07.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:06:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/34] dt-bindings: pinctrl: qcom,mdm9607: drop ref to pinctrl.yaml
Date:   Thu,  6 Oct 2022 16:06:04 +0200
Message-Id: <20221006140637.246665-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
References: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
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

The binding references common Qualcomm TLMM pin controller schema, which
references pinctrl.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
index a37b358715a3..5a9002a83423 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
@@ -14,7 +14,6 @@ description: |
   MDM9607 platform.
 
 allOf:
-  - $ref: "pinctrl.yaml#"
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
-- 
2.34.1

