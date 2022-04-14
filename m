Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 664FF500DED
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 14:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234563AbiDNMsC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 08:48:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243570AbiDNMrf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 08:47:35 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AA4A90270
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 05:45:10 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id k22so6752843wrd.2
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 05:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YHuURNfArVE1qL0OVTKyUBB1SFqYsOoJmwZLN5Pq5jw=;
        b=NdvQp/ZVftW3gmOR4el6g00oNNHGizpzpAF/tXzSWZld5vwA2fKOUjpc4S1r6wOwF6
         DZfwik0bQ2ydmqR8XLOtsyLCO6PlrXEH2tE1bF9tPk/tBIgZ3B7g7eRV6CgqyGKeaadb
         t5JTDPYRatHvw27Aj2UNalwPHF344jOn1qHGho6yqnrcZwp1O1S+Abzz1q2eIiyXjBaw
         pXs7HA/bcIt5FKq9Yt4izYUb118aZ7ydieClEqQt6PUB6a9ijyy1tJY1J58p/NlX449c
         y7tPdhZOaDaJMFt96Sxq/FwE7eR7LJnJCzPCmK749pT0zasmeBh2+/+wp2hzmBU5eoB6
         Weiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YHuURNfArVE1qL0OVTKyUBB1SFqYsOoJmwZLN5Pq5jw=;
        b=lqF0/4WtpYkQrXEiMWPSJYRc+fSjXY/sSpDuWG2+MHDr9NLWH/18jmO+VlPo63hUzF
         j1VwDlyQR358imEKOSO+e6+tEZUKHEv9PfYJFLa4WiiQdyL+2qThSfEwUMaCAMfil3S/
         FBPzIq3cIE18lwl/CDZBlk1aBXMYrDrcZ8jx78UCtFPpO8E31sx+3YMIELvzMwG2Ueor
         R5CktsEi0IfpJYy4OjgokQETqrMwk6IKjOH942+23Fl9XtwlE+waYkj33OYk4iwUPGkU
         ULNNbsxGKE5jkuR3p1+/b7xnX/kekAefFc1+WN9IjczUkKd8517SIaVrOpSzBCK0CP5F
         6amA==
X-Gm-Message-State: AOAM533FjfT/xDvsCr9YVOEpDYwzQRMKRmaLhBw3S+VE34fYJgwu0keO
        k3PqTDfU4eqSxgh/V35g8SSLmA==
X-Google-Smtp-Source: ABdhPJyThoveOIBWL2vXgzuS3XBrE8MKtmLdqHmzlpsRWK9hp/KaZltsChk+mzuxpatNt8zlheio/g==
X-Received: by 2002:adf:fb01:0:b0:205:c3e1:7980 with SMTP id c1-20020adffb01000000b00205c3e17980mr1952811wrr.639.1649940308707;
        Thu, 14 Apr 2022 05:45:08 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id d20-20020a05600c34d400b0038caf684679sm6350086wmq.0.2022.04.14.05.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 05:45:07 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v3 0/2] media: i2c: imx412: Add regulator control to imx412
Date:   Thu, 14 Apr 2022 13:45:03 +0100
Message-Id: <20220414124505.1329295-1-bryan.odonoghue@linaro.org>
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

V3:
- int num_supplies -> unsigned int num_supplied - Saraki
- Move imx412->num_supplies to same line as devm_regulator_bulk_get - Saraki
- Return ret on regulator_bulk_enable() - Saraki
- Remember to regulator_bulk_disable() on !clk_prepare_enable() - Saraki

V2:
- Drops redundant verbage "Definition of the" from each of the newly defined
  regulators - Krzysztof Kozlowski
- Adds Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
- "description: thing described" to the same line in new additions
  following the established way of doing it in this file - bod

V1:
The imx412 has three regulators which depending on platform may need to be
individually enabled.

- dovdd
- avdd
- dvdd

Existing code for an Intel platform doesn't appear to need to enable these
rails directly. On my reference hardware, a Qualcomm Thundercomm RB5 some
of these rails do need to be enabled individually.

Add in the above named rails as optional in the YAML in the first patch
along with code to switch them on in the second patch.

Existing imx412 users should get dummy regulators populated which the
regulator_bulk_enable()/regulator_bulk_disable() code can safely ignore.

Bryan O'Donoghue (2):
  media: dt-bindings: imx412: Add regulator descriptions
  media: i2c: imx412: Add bulk regulator support

 .../bindings/media/i2c/sony,imx412.yaml       |  9 ++++++
 drivers/media/i2c/imx412.c                    | 31 +++++++++++++++++++
 2 files changed, 40 insertions(+)

-- 
2.35.1

