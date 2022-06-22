Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E09A1554888
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:15:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357912AbiFVLtL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 07:49:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357914AbiFVLtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 07:49:06 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD503CA78
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:49:04 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id o16so23038475wra.4
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLunSCvbgB4SAHfxR0BX8sJAyCnu/q208+BMCNpQwXs=;
        b=o7eyXYocetRpm9cnaFSEDmG6CMxNgHbv5nFF/j4QGTWCAyXpbs1NAj0VHx4W/HS26U
         Zw25Jr2tv2TKAsHnucevae2KsWd2KkNmuNhJuW5YTDMhvVTwJaUtD7hz6aKCmt4QWC1J
         jH+eLe61nf+h1Faqo3Z4Bsws573FRuYq4QtbGtywvOz9RTXfPN4QTKWVOXK6fQoY2+2p
         4Y3wK5IXljjPDsEG4TRYJNIzUAQ4HpIOioKl/PwV7Gj+EhYanm4M2dQuIupq6NS+U5vM
         vVfChdoRvkQIctr4yg0CJafsmqly+Bzf3I+zp4lZpRbfT0RFI6wvr5Q+mQ1F+CL53e8T
         9F4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RLunSCvbgB4SAHfxR0BX8sJAyCnu/q208+BMCNpQwXs=;
        b=0vELw9v+aNDcVFD1yGkxXxvS+XogZaTABHQQck4tl/F3QiKGFbKQPVeGA1oEv8HrN/
         brTDsQW2LaHJFUfudz3CbirkGkAJJ32AjIva3hNhCB3fcCmF0cnpjSz2OqY8lKQM+7HO
         R/Dq5heNNcFnHZPvfF56peut626AUkTmbByrKNbKpFx1XteLeKp74XJBy3dnRqSJeecI
         s6jM1/TtGnVXM1HD5NwlM7hU8ypYev2bIqWc+tgoTdLcUirclx7oZxu1gJezZSGIrR8x
         r5BRdnT3LdM0NO0NMdt6D66qmtd+M3wWYdxvd/CLrpvIXzEUFwDGHm+ebhidc0MhZlBx
         zUuQ==
X-Gm-Message-State: AJIora+POK9N+K9WpsqWdEFlmN0rhTMJtJ+z2ja+n83nxETBAJO0omSj
        GIUxGE1Y6eQeOcZNvG7BIGeA0Q==
X-Google-Smtp-Source: AGRyM1up7MA4UMxZrT2FyQ4hZGnocAxpexb1X2+M59DoIb0NGqftX/NE2jVTGDMEy1W8mpBFx33Mtg==
X-Received: by 2002:a5d:6e03:0:b0:20f:ca43:badc with SMTP id h3-20020a5d6e03000000b0020fca43badcmr2956303wrz.547.1655898543383;
        Wed, 22 Jun 2022 04:49:03 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c359300b0039c54bb28f2sm22448760wmq.36.2022.06.22.04.49.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 04:49:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Rob Clark <robdclark@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 0/2] dt-bindings: arm: qcom: qcom,board-id and qcom,msm-id
Date:   Wed, 22 Jun 2022 13:48:54 +0200
Message-Id: <20220622114856.6243-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Hi,

Changes since v2
================
1. Adjust description of new fields after review (Dmitry).
2. Change name of msm8996 define (Dmitry).
3. Add Rb tags.

Changes since v1
================
1. Make the qcom,board-id and qcom,msm-id properties deprecated and limited to
   certain SoCs (Rob).
2. Extend the qcom,board-id schema to match OnePlus variant - four elements -
   and drop DTS patches splitting four into two touples (Stephan).

Description
===========
The discussion [1] brought several arguments for keeping the qcom,board-id and
qcom,msm-id properties.  Keeping means we should document them, so the DT
schema checks pass.

I revived old patch [2] with several changes and improvements.  The commit msg
hopefully collects feedback from the discussion.

Best regards,
Krzysztof

[1] https://lore.kernel.org/r/a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org/
[2] https://lore.kernel.org/all/1425503602-24916-1-git-send-email-galak@codeaurora.org/

Krzysztof Kozlowski (2):
  dt-bindings: arm: qcom: document qcom,msm-id and qcom,board-id
  arm64: dts: qcom: msm8992-xiaomi-libra: split qcom,msm-id into tuples

 .../devicetree/bindings/arm/qcom.yaml         | 121 ++++++++++++++++++
 .../boot/dts/qcom/msm8992-xiaomi-libra.dts    |   2 +-
 include/dt-bindings/arm/qcom,ids.h            |  30 +++++
 3 files changed, 152 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/arm/qcom,ids.h

-- 
2.34.1

