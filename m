Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2534256691C
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 13:27:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbiGEL1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 07:27:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbiGEL1j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 07:27:39 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65CAE16588
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 04:27:38 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id t24so20040178lfr.4
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 04:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9yfF0YMZuGdIUaeaIcdHJhmNd2KjDyr8ca/ezXZsSiY=;
        b=IWJ8xO11ZpUqp0ARZq9MQI9IBp6jZeCGHc6iWeuxaDolpDMTIjLwIRg5/6Nvfdzs8C
         jRyWegJQ6aXCchLAQqgAYHc4aM8e9XZEqjd9abxb8smVcHB/YD7jxxQJtXVPaVxNsO2x
         JrekMFHwoNGgYA+aOa0IzhUhs0nE9E0z3sdWUyj+ITMijUEEG5iHERv58M3eUmGFYsis
         Fw9WkSHhkJGYkw20Juvf4USguY1afO9EeO+ccdzGlVoaJ8zmvCR7ws0wFnOqSWJAdIel
         nh4zNcK0ljhCJ8ZwHAvA6onMI0gXJjKYTQ3vOwXvHM9YcanEtd07CDT4BKmjpgLqZpW7
         F7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9yfF0YMZuGdIUaeaIcdHJhmNd2KjDyr8ca/ezXZsSiY=;
        b=lD+vb9zDmadMDvomn8mw+5e5NuOlXRZiVxYg0kTV+FA80LOXmg7AHk1umHoCp4EDgZ
         zfopZJ9ZaYmXmlnovHS1B6CGiRkTVt7kXtConwkeX+knrDivZ77iz7kRYqsNqhi7iEuX
         ocR5/JvxGFsX+s7jzHcLxTaiE9n2Hd/CPGFqgfXkG1HnkV8Q3uElL8Aew3gxTrpXZQDp
         OpiQX8Vwt9JM7qre5xF+SLxMNucVSB5s9y/RnYdys8rZ8zizLNNuRQCYg4WArffo8T6h
         GBOptsjaliT6zfGYTyTru3UYiT2ldOtdJ/8l3nl5ze9OAkt39iopOm4SQ4B7h23N7m2m
         jS+g==
X-Gm-Message-State: AJIora9Wt9GnQ+dsERd328bOT1TuyslMVnH0s1F/PQaXJwJzckJnqLMe
        z2ZU95kyBswrVt5JIWc5IN7M/Q==
X-Google-Smtp-Source: AGRyM1uUfcTic8dA6QTz5v+XBTyHmEyOvTUf0MzRKix0Ie613UbOQj7vsSS50wOycHnL9ceBXKG3UQ==
X-Received: by 2002:ac2:5f84:0:b0:483:6dca:bc69 with SMTP id r4-20020ac25f84000000b004836dcabc69mr2050375lfe.301.1657020455426;
        Tue, 05 Jul 2022 04:27:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k26-20020a05651c10ba00b0025a736f5a41sm5525449ljn.9.2022.07.05.04.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 04:27:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] dt-bindings: clock: update qcom,mmcc bindings for MSM8996
Date:   Tue,  5 Jul 2022 14:27:32 +0300
Message-Id: <20220705112734.1323355-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This is a split of binding patches from [1]. When sending the original
series I missed adding DT maintainers to the CC list, so while all the
DTS changes were accepted by Bjorn, the dt-bindings were not reviewed
(and were not taken in).

Changes since v1:
 - Moved the first condition block (clocks/clock-names requirement)
   under the allOf (requested by Krzysztof).

[1] https://lore.kernel.org/linux-arm-msm/20220617122922.769562-1-dmitry.baryshkov@linaro.org/

Dmitry Baryshkov (2):
  dt-bindings: clock: qcom,mmcc: fix clocks/clock-names definitions
  dt-bindings: clock: qcom,mmcc: define clocks/clock-names for MSM8996

 .../devicetree/bindings/clock/qcom,mmcc.yaml  | 178 ++++++++++++++----
 1 file changed, 146 insertions(+), 32 deletions(-)

-- 
2.35.1

