Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 997B862976A
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 12:31:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232220AbiKOLb2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 06:31:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230375AbiKOLb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 06:31:26 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B62417E16
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:31:25 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id w14so23723349wru.8
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UddS6z+HZ5YVbRh2ru9NrfNaV2JxWhP7gmUffyLBQnQ=;
        b=l8EZnFK7Henaqr9gMLielppZAarrfSFm/9FuMii4B0WDnShzG3XT8QiLbKz3BZ2scB
         o9iZkEcvXEGji+8GqnYbfi5Pombeb2e90HcRXDawAJvBXSd3NOWk521J3w5FqFlMuVf+
         /iH4luipNlK+/dQQNXWtEciXjpQya4W2/xNR2aHkT9KrHsXVkzDThCPk9SR+8VbAwwhl
         7/4xmYDuNNfSiu8pMHx8Zg4gEYsygpzNbZNCTvhEJO+hymU0EgN5tyeVDZoT0Abf+iE+
         FD8AG3PiKpFT4EpQxeAhFjeUBKxS9xsL8gc0Fxgk7uw7sf0OGVRNEvHdbOHfrkeb9J6q
         Pk0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UddS6z+HZ5YVbRh2ru9NrfNaV2JxWhP7gmUffyLBQnQ=;
        b=fKSh8Z+axNCPiTqe07UB96xhOIFMwgdbjWIIpGuK1msJroNA7aE5HEHO1KvICZnNiE
         RX8lll0ha5x0RJUZfCt70Wn4gVcdNCGVIwmWbcvCDEfv19oHifctRgTR+6Hnhs2r0dzB
         Lidr7HZL8quDuj55Uwic0nyG7B2DjkiEZFsfK3QKvSXZkqbuHitcjBV13NNkwO6+aiS5
         PnjKpTMgR/V9Lm2dRiHybh9q+AMqmkW9s7jlqidtwHNJ2+w/vxZAb8+tc583A7h2CXAO
         7qL7ymb0XbRxE8qc7hhSLP34Cnz8e6yKu4z7XB9x9iPrE2m+mnkEVUwfTdq4tKUzo7BN
         Vl7g==
X-Gm-Message-State: ANoB5pmO5rTLhrixNr6d/ywENlL0uK4WUFb4O/eFH1OcsqOI/+YICwcw
        /i5eMUNvQXX+R3R4f+q3sPJucQ==
X-Google-Smtp-Source: AA0mqf7e8OfdxOKRfTIFGfYs2rOT+Ob6Xy7QeTxJe/DCYWFZIgWCHvvWJKR4Si+l/C4cddXA588gig==
X-Received: by 2002:adf:ec10:0:b0:22e:48ee:dc64 with SMTP id x16-20020adfec10000000b0022e48eedc64mr10210424wrn.319.1668511883718;
        Tue, 15 Nov 2022 03:31:23 -0800 (PST)
Received: from zoltan.localdomain ([81.128.185.34])
        by smtp.gmail.com with ESMTPSA id r18-20020adfe692000000b00238df11940fsm12273091wrm.16.2022.11.15.03.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 03:31:22 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     andersson@kernel.org, konrad.dybcio@linaro.org, agross@kernel.org,
        elder@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net-next v2 0/5] net: ipa: change GSI firmware load specification
Date:   Tue, 15 Nov 2022 05:31:14 -0600
Message-Id: <20221115113119.249893-1-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Version 2 of this series modifies the first patch only.  One section
in the description is reworded, and the example now consistenly
describes the SC7180 SoC, both as suggested by Krzysztof.

Currently, GSI firmware must be loaded for IPA before it can be
used--either by the modem, or by the AP.  New hardware supports a
third option, with the bootloader taking responsibility for loading
GSI firmware.  In that case, neither the AP nor the modem needs to
do that.

The first patch in this series deprecates the "modem-init" Device
Tree property in the IPA binding, using a new "qcom,gsi-loader"
property instead.  The second and third implement logic in the code
to support either the "old" or the "new" way of specifying how GSI
firmware is loaded.

The last two patches implement a new value for the "qcom,gsi-loader"
property.  If the value is "skip", neither the AP nor modem needs to
load the GSI firmware.  The first of these patches implements the
change in the IPA binding; the second implements it in the code.

					-Alex

Alex Elder (5):
  dt-bindings: net: qcom,ipa: deprecate modem-init
  net: ipa: encapsulate decision about firmware load
  net: ipa: introduce "qcom,gsi-loader" property
  dt-bindings: net: qcom,ipa: support skipping GSI firmware load
  net: ipa: permit GSI firmware loading to be skipped

 .../devicetree/bindings/net/qcom,ipa.yaml     | 78 +++++++++++----
 drivers/net/ipa/ipa_main.c                    | 95 +++++++++++++++----
 2 files changed, 135 insertions(+), 38 deletions(-)

-- 
2.34.1

