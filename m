Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B5E05B1B59
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:26:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231238AbiIHL0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230479AbiIHL0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:26:18 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF97EC6CCA
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:26:00 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id e16so6262191wrx.7
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=BltwYbntlLYN/FN8uiEra+3WKSK9lYLxa1C0HrhOCnE=;
        b=agPG0wRVkNSPsr2ijP1u+dYhk7m1CU+FBiYasegVAw9GOlYop/ogCNcJCsxDLd0HRK
         cnhY6yACzHv1akU3dOae5SxKC0WELIOW73KMkhmPao6UoVt5E6VQy9h7qcxWW09pmjzU
         AaadtLOSdWeyRcP00yZtxSdRjuv2AnDBbCnafvgQeXDRrXh/+jqah4DyCXVa1Z4lK2qO
         ct3iR2nEbxEBScwoAwponC6Uaz8WpLeUN9pcjo4EfygwHTm1xTUXcDNB6FqhWfuiRqcU
         2rBQgboBfFdNk41bp886Jr9503moikmQ5Q+SD2cwEjGC08TElcBF9vGjvs52EGNm6nzy
         9Jgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=BltwYbntlLYN/FN8uiEra+3WKSK9lYLxa1C0HrhOCnE=;
        b=YOMTTyNHNCz1gzq/J/Vwk/kJOSMrukq7/1NgmQboFlLNw1B86Y641SRMSfA9VodWdM
         7S9Jb61nfzjbVVg/nbwmgwclodVBjzMlkWl7D2epRsBytJ3SvFEFM8WZLR7RjUJBt8IP
         TAyZz5gw3PQPR43MKcq8CYtJ25hteTyK/ThLrBQ28NDykO+c9aWS/MFwsm8Zq8qykbl5
         CwJpRoSNeMvSExkfqzbt/AqbbmRC9qmXriP38eoyOpPLyxQOfJc7hap6ozIgDjNjCgXK
         yadJZJbOGYHaJs4w34zoaTv5MgNvHguZ5k7TTjXKbTLReMVxeLa0RNs/HG3le2jBGl7y
         wajQ==
X-Gm-Message-State: ACgBeo258EdPtI5UYHyhlTwxuzeXps1yV85himHVjIPsqWvr0KWfmueG
        oZ4mspmJH4lXRvXmP4ggPovYmA==
X-Google-Smtp-Source: AA6agR4TRCqTC4FL1qQJeEVF54IaH6Me+t2QigoeEiXrJddugj0k1s/DbSrcLbvlPx8JMO918HgT5g==
X-Received: by 2002:a5d:6088:0:b0:228:e0c5:da5f with SMTP id w8-20020a5d6088000000b00228e0c5da5fmr4577252wrt.221.1662636359065;
        Thu, 08 Sep 2022 04:25:59 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id w10-20020a05600c474a00b003a608d69a64sm2582382wmo.21.2022.09.08.04.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 04:25:58 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, myungjoo.ham@samsung.com,
        cw00.choi@samsung.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gurus@codeaurora.org,
        marijn.suijten@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v4 0/2 RESEND] Fix pm8941-misc extcon interrupt dependency assumptions
Date:   Thu,  8 Sep 2022 12:25:54 +0100
Message-Id: <20220908112556.860343-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
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

V4:
- Added suggested extra log text from Marjin to extcon patch

V3:
- Adds a cover-letter since we are now doing two patches a dt-bindings fix and
  platform_get_irq_byname_optional fix.
- Add Review-by -> Rob Herring, Marijn Suijten
- Add additional patch to negate warning when one of usb_id or usb_vbus
  is not declared in the platform DTS.

Bryan O'Donoghue (2):
  dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
  extcon: qcom-spmi: Switch to platform_get_irq_byname_optional

 .../devicetree/bindings/extcon/qcom,pm8941-misc.yaml | 12 ++++++++----
 drivers/extcon/extcon-qcom-spmi-misc.c               |  4 ++--
 2 files changed, 10 insertions(+), 6 deletions(-)

-- 
2.36.1

