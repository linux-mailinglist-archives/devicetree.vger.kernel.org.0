Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88316440E33
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 13:22:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229839AbhJaMYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 08:24:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229974AbhJaMYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 08:24:51 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79CE0C061570
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:22:19 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id h7so55556888ede.8
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wCmuBtdBHEOsF4gMc9HIeyrI+8g66ej5vxCdfA3fO7I=;
        b=SP5RJKf+OMQg4uGJtSXphTfNDMepoNwYUOG3r/bEF0u5atygscCLUNs+J70VsxspkH
         Q/o0ubkY4r4f8SuThvU0MnyXpFkT0FR1A/AKdoH+/8ptu+8xRRr+Fyrj5l3oO/9N7Y9x
         JoY8Y+1XZ9rC6S+vnn331MAKi8nDjwFHmviLPtmM+oGQN1ZCEm/2uwlPHeMzcufS7Typ
         Ldveds0RMPisAtFqyqTX+G71F8dJewuYqhLddiLFZ3wPjkZnm8YH79D89vhksdtalcuR
         0PB381toCzWxK9wUtdWLbizlX64TW3u5vdGLBmrS86rQ1Ri0TjZ9FJnGOwPtNP8WVCG4
         AX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wCmuBtdBHEOsF4gMc9HIeyrI+8g66ej5vxCdfA3fO7I=;
        b=CER/V5JfLEydBJvjwTctoC1LPo+X7gcW0D+yIGffY4/5eXMrLLym0LrIC/QAql0Hdn
         qhERC1M1oN7z2Q9rQVT/oJAr38G55IhDzmj/pBpZYrk247oDamUAryJcvqCycL7fQaa5
         XGuA2Piao3/09ablXfaMDqpavABWB96iGmJxAVfQ8ZU3p3roboCX6nsWUsCSp64TYdPh
         DeLNzuFJaQOws12pCy648XzyR1nb+yeaUIrvC/v91mhmiIuv7Ta57y4jd+Pth8BhEf38
         S+U/uaZWp0X4c+H/V37hnZJ/wWoDQdGPFckvRyrTuhr9U4gLMcFZboetp2UC2HtN+hea
         JLbg==
X-Gm-Message-State: AOAM531aV1XB/b2eRgXE1kFoistsl8j+JnGoLR/p8YLJr4c4yj9sZR1v
        uN6cgHMe9kBuCQJn9BgtQ1R48g==
X-Google-Smtp-Source: ABdhPJxIJ7qWwwsgZnePYZJnYXfAxwtfW8yYNdwxodBhtQlyhoR+3Lacghw3eTs3YnHc09xF1yOVmg==
X-Received: by 2002:a05:6402:485:: with SMTP id k5mr11320794edv.218.1635682938095;
        Sun, 31 Oct 2021 05:22:18 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id cr18sm5596186ejc.25.2021.10.31.05.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 05:22:17 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 00/12] watchdog: s3c2410: Add Exynos850 support
Date:   Sun, 31 Oct 2021 14:22:04 +0200
Message-Id: <20211031122216.30212-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Exynos850 WDT IP-core differs a bit from existing platforms:
  - Another set of PMU registers
  - Separate WDT instance for each CPU cluster, having different PMU
    registers/bits
  - Source clock is different from PCLK

Implement all missing features above and enable Exynos850 WDT support.
While at it, do a bit of cleaning up.

Changes in v2:
  - Added patch to fail probe if no valid timeout was found, as
    suggested by Guenter Roeck (03/12)
  - Extracted code for separating disable/mask functions into separate
    patch (06/12)
  - Added patch for inverting mask register value (07/12)
  - Extracted PMU cleanup code to separate patch, to ease the review and
    porting (09/12)
  - Added patch for removing not needed 'err' label in probe function (11/12)
  - Addressed all outstanding review comments on mailing list

Sam Protsenko (12):
  dt-bindings: watchdog: Require samsung,syscon-phandle for Exynos7
  dt-bindings: watchdog: Document Exynos850 watchdog bindings
  watchdog: s3c2410: Fail probe if can't find valid timeout
  watchdog: s3c2410: Let kernel kick watchdog
  watchdog: s3c2410: Make reset disable register optional
  watchdog: s3c2410: Extract disable and mask code into separate
    functions
  watchdog: s3c2410: Implement a way to invert mask reg value
  watchdog: s3c2410: Add support for WDT counter enable register
  watchdog: s3c2410: Cleanup PMU related code
  watchdog: s3c2410: Support separate source clock
  watchdog: s3c2410: Remove superfluous err label
  watchdog: s3c2410: Add Exynos850 support

 .../bindings/watchdog/samsung-wdt.yaml        |  47 ++-
 drivers/watchdog/s3c2410_wdt.c                | 289 +++++++++++++-----
 2 files changed, 254 insertions(+), 82 deletions(-)

-- 
2.30.2

