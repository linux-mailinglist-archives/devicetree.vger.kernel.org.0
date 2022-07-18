Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45C35578158
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 13:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234380AbiGRLzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 07:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbiGRLzn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 07:55:43 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F6462C1
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:55:42 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso5504892wma.2
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8J6VHNqgZdSVLVO7nSzDZg8FCu7txJsjajqAB8vutk4=;
        b=ytuDHPhqJSYjGdhNpDnAsAeru6R84mqSnpLyK2jzi3V/piXMMCwSLU9s65upfJ+sLh
         vdIXSS4fIY1jsSL9J1lXespl6Lk+7qYmD1MoH58xrVoPXKNx47SFvJSJofI8UviGUse+
         /t0r9R5byhjJEEx2wXFjn+OEjCRGxyLRg8X8pvrlJSJdl6N1guhfR40Xn/HH+MhwW2ot
         1l8Z9ewSnOYQN2hqcXobmf8XTyDghcHXEFCIdjMlE3UEuQfz+PAWUNDtwUIWKzc7ko+V
         m7Fb2tEUJaXkzDETHl6peXCQSlx/LcLgu5R9sD1LMUPHy+xaFerE7IbTqVrlcH6qRUKL
         t2Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8J6VHNqgZdSVLVO7nSzDZg8FCu7txJsjajqAB8vutk4=;
        b=LK6y63RrPU6jsvtQDSwRMET7kTC5RX3fz5bgai5fhiSvsAexGZGfCJt/EpnHBTxSDN
         sGL9uWRc7abHP19TQRMxjFYHuH0BkN58RlLbAQu1cNey06zELnGfGVb5arFTz+9dUCLl
         VEpTCi8SkPlbO0Lz7nHyGMK6FguYGVb9qoLwIwzSACrFPGR8tlgFwcv33Mmw1CDnEZeU
         b7DDCisUxGs0ognyjj4wR2zfL2vZZGw68+JKUGLfAp0Hwe5fZgW0U4vuLm+PiDx0qiYx
         pV8aGL0jQG1FNE8uGUp7ITytXmcP+jpj9l7B3wF7Y+JYbPTEQ7cd/dpUSbtizqKkbW+z
         keHw==
X-Gm-Message-State: AJIora9YdKOMhN5x1+prHbmDZGQZUeW/t5QJNq3O9pI6duYLWfZYNLyN
        wXFvYSboigW31OkN7gVCt1zj9w==
X-Google-Smtp-Source: AGRyM1u7TruxYg4fOCdzoawk+pZXqtgDvj4Xi/mBNokVLLBVSn5bDn6keVarqjaUGw6fJDeFHkt8oA==
X-Received: by 2002:a05:600c:348d:b0:3a3:1fe6:6b38 with SMTP id a13-20020a05600c348d00b003a31fe66b38mr1214170wmq.144.1658145341063;
        Mon, 18 Jul 2022 04:55:41 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n15-20020a05600c500f00b003a2e655f2e6sm15474947wmr.21.2022.07.18.04.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 04:55:40 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, bryan.odonoghue@linaro.org
Subject: [PATCH v4 0/1] Two apcs-kpss-global.yaml fixes
Date:   Mon, 18 Jul 2022 12:55:37 +0100
Message-Id: <20220718115538.1247615-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
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

V4:
- Drops the second patch entirely.
  The clock-output-names are not required in the DTS - Dmitry

V3:
- Include Rob and Krz Reviewed-by for patch #1
- Defines maxItems 1 for the clock-output-name
  I missed this error in the dtb check for V2.

V2:
- Fixes example which threw an error in v1 - Rob's bot
- Updates the patch prefix - Krzysztof
- Fixes broken non-DT schema syntax clock-output-name - Krzysztof

V1:
Adding in msm8939.dtsi and running the binding checks is throwing up two
errors for me.

In the first instance we use syscon on the 8939 and should declare it in
the compat list. Doing a quick grep it looks like that fix should be
applied to a number of existing declarations too.

In the second instance we just need to document clock-output-names for the
a53 mux PLL.

Bryan O'Donoghue (1):
  dt-bindings: mailbox: qcom,apcs-kpss-global: Add syscon const for
    relevant entries

 .../mailbox/qcom,apcs-kpss-global.yaml        | 46 ++++++++++---------
 1 file changed, 25 insertions(+), 21 deletions(-)

-- 
2.36.1

