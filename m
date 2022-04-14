Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F8EF5015F5
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 17:46:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242129AbiDNOqC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 10:46:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349378AbiDNOUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 10:20:00 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BA6B91569
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 07:11:12 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id c10so7120097wrb.1
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 07:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kng+8ztbXnxP6G565y3M5LfQ0K7D4oV315gP3yS14WY=;
        b=kxKyniYCwh6UwluWUpeMDPmIJle/Mh6Bap+uRqw0Kwx4MEIP4O+7/jh1puzsN8Q1xy
         Hb5BkU8EQva2VMRM+qcdqC1vMZx0yuBkvhv7+WGsVNb0g5bZUjIiPm2UerZYdm7RUwxL
         xSsmN4aigLKiUt97K+O3sc1vsnDUAA4JYxTNB6LVPEDtJahv+FUzax03h8B7pdYjQcSy
         hBUw3Bp32Du6OyM3E8ZTgADykP7dIXZ2f2HOC8LS1irAH77f5ARCg5P7fl5/LuK3o0xd
         0xIV+sEdXGUXSQtOKollnXcogNTyYHLBO3Cl9Et0priorho79SqPXi1hXl1CQ53o5UaS
         XuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kng+8ztbXnxP6G565y3M5LfQ0K7D4oV315gP3yS14WY=;
        b=FwI4Vw1gmNHQZReRQjc0LGFOf+B+ugiYXlPhAE0P0P161/Sf2EQIu4VB14OEdLSSGM
         KJ2vrQ4oFChob9GkvByiGH6pKlq1AtLRY5nFGccl+HFPp0635WWJUEZefK9HVikowfpF
         oXKwixIjKCgNE1RtfMlve3kEyKPTefD6TN/uXitXLNMUnBrGyZ2C4NZifV3GAfnZuG0i
         py8b7yp65Hj66SOyHyWCJ8QxoN+QrOB0QKRSvxYnDf//MeHI7wMSzVIzGl2equKqQodL
         8KpFzGa99kyTanpgh3DlA4dpM99kpfrF3cFam8rwxzBNxyUmZVUM7lGwe+OHJHEcryZT
         XAJA==
X-Gm-Message-State: AOAM533XxH8nGDgI5RLvEyLzXUHfvMDHJ6/svtvCzkP6HWCgVs9h+vJN
        UlSOkcWl3Cz4ixlbgeO1kx0gsw==
X-Google-Smtp-Source: ABdhPJyBU+vVDv88L5xyeCQE8Gtxyb3PssrLARX42TA/VrUDl1f0TcftLY0i2iTtS0m3arPpUZTIBQ==
X-Received: by 2002:a05:6000:1d83:b0:203:ed96:fa4c with SMTP id bk3-20020a0560001d8300b00203ed96fa4cmr2285886wrb.400.1649945470877;
        Thu, 14 Apr 2022 07:11:10 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 61-20020adf8043000000b00205e1d92a41sm1934551wrk.74.2022.04.14.07.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 07:11:10 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v4 0/3] media: i2c: imx412: Add regulator control to imx412
Date:   Thu, 14 Apr 2022 15:11:05 +0100
Message-Id: <20220414141108.1365476-1-bryan.odonoghue@linaro.org>
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

V4:
- Further asks on placing arguments on the same line - Saraki
- Moves regulator_bulk_disable() to common error path - Saraki
- Fixes power_off ordering so that power_off and power_on have the same
  flow - Bryan

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


Bryan O'Donoghue (3):
  media: dt-bindings: imx412: Add regulator descriptions
  media: i2c: imx412: Add bulk regulator support
  media: i2c: imx412: Fix power_off ordering

 .../bindings/media/i2c/sony,imx412.yaml       |  9 ++++++
 drivers/media/i2c/imx412.c                    | 30 ++++++++++++++++++-
 2 files changed, 38 insertions(+), 1 deletion(-)

-- 
2.35.1

