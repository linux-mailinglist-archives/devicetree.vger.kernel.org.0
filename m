Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92B144A8901
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 17:47:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiBCQqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 11:46:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240972AbiBCQqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 11:46:37 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91615C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 08:46:37 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id i34so7287310lfv.2
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 08:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ie1OHE8dynoeStzKHWtxsQXqjLNlKsrhQFt6sTADfMA=;
        b=M7p2IigGIIkJiS1rj/2sNK1ODqHrIF5SlWms7dSmhOACxEDQV2jqqiF77MyXoWjfLe
         G2FVtRW/SSwZvA/NPvbxjmkJI7CzIneHelEpx84rgdj4dQRkeBr7m+nKxRQFAENiz5Tu
         v/bObx6aY6C2x4ke4oesFrbpi6W5OH1EtrIdk/C9F5q6MnXn0xxyO/IMYI3rjARQUCeR
         GsPXS4wts77pJbeLNx4xkxsR91sJ74YOCkTC0TPSlammkONInMBIqgU68PLS7Q7kpfrT
         yq/E9+IkXS0mf8w3qeepus7LeK/tnbEYRlO4JYY7VyeSwCGjcNKAR+M0C8LLVJWBK46q
         NWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ie1OHE8dynoeStzKHWtxsQXqjLNlKsrhQFt6sTADfMA=;
        b=OORRTfeYtUAew7V2+J0K0b0+e7v1YXM4xGgNNm9mvzFWjNeU0dDYU6OWpPdfqCNKgo
         Nnk5ghCOoSS/KAUApj1QhJUkpukZOEe/wBtul+RftbqUrIiysITsSkef7N6k0AJiT3SN
         egO2tbIaPKWcCHBVPhqy3jdXnJFexpR5kcgVMnwdlRSE3m9y2uP76tqSTs0YDkoGeAIH
         J3LoevKEBAFUoJnlx3I9RH7UYF4xjx3T8xxvPN5W09ixwtsXmfoRwELTuSH1Pw3UuPJ6
         xV15lq1LmdSzNh/zCW/3l4pQAss7X2gexLluoE6V5AZS+O6eQkF4SlB2AgLvgAZ2ldum
         oh/A==
X-Gm-Message-State: AOAM533+KF4E9hUPZ7qBfgtSSO+YjNOPjOtRadFmN3i5VnZgxDQMzq5R
        l938jYalWlmMmLfJmVycnkW2RCV2h9xMwFfT
X-Google-Smtp-Source: ABdhPJz4iO8ubgZ56ej9rjRRI92NoRvioTzKBRhVXGP3nBxWdRughDp5LXUfUf8Gd0HmY3Wubghf4w==
X-Received: by 2002:a19:5219:: with SMTP id m25mr28305305lfb.502.1643906795816;
        Thu, 03 Feb 2022 08:46:35 -0800 (PST)
Received: from localhost.localdomain (88-113-46-102.elisa-laajakaista.fi. [88.113.46.102])
        by smtp.gmail.com with ESMTPSA id h6sm269999lfm.237.2022.02.03.08.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Feb 2022 08:46:35 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Loic Poulain <loic.poulain@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/9] i2c: qcom-cci: fixes and updates
Date:   Thu,  3 Feb 2022 18:46:27 +0200
Message-Id: <20220203164629.1711958-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The main intention of the patch series is to add support of vbus
regulators, which are commonly connected to CCI I2C busses.

The new bus adapter specific bus_regulator from commit 5a7b95fb993e
("i2c: core: support bus regulator controlling in adapter") is reused,
however its control is connected to runtime pm of the I2C master
controller rather than runtime pm of slaves.

In addition the series adds new compatible value for CCI found on QCOM
SM8450 SoC.

Vladimir Zapolskiy (9):
  dt-bindings: i2c: qcom-cci: add QCOM SM8450 compatible
  dt-bindings: i2c: qcom-cci: add description of a vbus-supply property
  i2c: qcom-cci: don't delete an unregistered adapter
  i2c: qcom-cci: don't put a device tree node before i2c_add_adapter()
  i2c: qcom-cci: initialize CCI controller after registration of adapters
  i2c: qcom-cci: simplify probe by removing one loop over busses
  i2c: qcom-cci: simplify access to bus data structure
  i2c: qcom-cci: add support of optional vbus-supply regulators
  i2c: qcom-cci: add sm8450 compatible

 .../devicetree/bindings/i2c/i2c-qcom-cci.txt  |   9 +-
 drivers/i2c/busses/i2c-qcom-cci.c             | 159 ++++++++++++------
 2 files changed, 114 insertions(+), 54 deletions(-)

-- 
2.33.0

