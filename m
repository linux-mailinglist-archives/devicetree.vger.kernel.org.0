Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3CB15ECB4E
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 19:41:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233369AbiI0RlD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 13:41:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233333AbiI0RkB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 13:40:01 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B0601D624A
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:38:52 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id s6so16770942lfo.7
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 10:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=6olcrfTmSd+7xQ71Ft5xZKlyP6y55gjUvfbuGSNxtY8=;
        b=gHjTu0bMefylyfUSEx8hxfK/9l6e9xWtvZAWCRAb1e8ohGwgpcEJ+To7QDRaNjfq3m
         BoSWnb9KaZbUjHNkB51zeaZz6S8dYiQKJ69xSy4+jd6T3MvaxELACcXWZLz2uVsyy8XC
         Mrt4kP88Pr54UqifpsY0SlZL+IEo3Z9+XSKycdcp2XJW8aFdW9Otv8Kw90m0j055zTCb
         TkK3P7GudOcMmDRJumV/HcnPj8UAq6q9zg5p91dNwxfgPzKkUumRr+6HRbh68WONLuPx
         InaDRrGAPHorFJg6/1CdDUrK2pIYzi2EE8kGwEOyg0I7zlH0HTbl9nvIngz0FAuQ7g9A
         nmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=6olcrfTmSd+7xQ71Ft5xZKlyP6y55gjUvfbuGSNxtY8=;
        b=y9xMvf4RTIceym9m0TG23p0bknMmPQSZ9uJuex+NlRjI/28R3SYyx7CjKaHvH68buL
         5aTqkWWr67FouOChfVSBRmpus8F/GZBxYTy2RAeSvdPleDW7wNXzFMWtetf6Ko1ZookX
         BHpaApuni3q821crDh3wMykUMe5mpXbBo1dRKCFROvtYlUTURRrvZHLLMP4m/q6cBpUS
         Dk+CYW9UqNUa1wycXtWA+rvhO2VZt8hpdwbye3OzXTQBnVmpLhHMMM3K4H2NLvZTgSLG
         NX7nXHZdm1az4ggwJENTULJ48135sR6avxvVjoImrfWFV+2Z+IJHaSR72CS77luDDanr
         5eWA==
X-Gm-Message-State: ACrzQf0u239P8C2AQVN2xPWlUJDHEFKuhYMNdIR3SJuN7g4g9qljNeKy
        CiZHrMBL28DsxtRXuUVL+2BdVw==
X-Google-Smtp-Source: AMsMyM7jvGuOSZVfdjOhOghhQxpmUFZh/O8OsCfUxVORU6CyuLZ14lx4dK7KHnYgxptQlejjPJlTKw==
X-Received: by 2002:a05:6512:11e9:b0:49f:d530:9f25 with SMTP id p9-20020a05651211e900b0049fd5309f25mr12419876lfs.533.1664300332038;
        Tue, 27 Sep 2022 10:38:52 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q12-20020ac246ec000000b00498f570aef2sm218879lfo.209.2022.09.27.10.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 10:38:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 24/34] dt-bindings: pinctrl: qcom,mdm9607: do not require function on non-GPIOs
Date:   Tue, 27 Sep 2022 19:36:52 +0200
Message-Id: <20220927173702.5200-25-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
References: <20220927173702.5200-1-krzysztof.kozlowski@linaro.org>
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

Certain pins, like SDcard related, do not have functions and such should
not be required.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>

---

v1 was reviewed by Rob, but patch was changed since that time, so not
adding Rob's tag.
---
 .../devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
index f7bd4be1739e..57a4fed55de7 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
@@ -115,7 +115,6 @@ patternProperties:
 
     required:
       - pins
-      - function
 
     additionalProperties: false
 
-- 
2.34.1

