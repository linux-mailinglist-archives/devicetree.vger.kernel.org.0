Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85C014475AB
	for <lists+devicetree@lfdr.de>; Sun,  7 Nov 2021 21:29:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235504AbhKGUcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Nov 2021 15:32:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235614AbhKGUca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Nov 2021 15:32:30 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA240C061746
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 12:29:46 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id d11so4286022ljg.8
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 12:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jGY7RfOaQrR143tFTXp9AmdaelagLkghITmdcAU5ck8=;
        b=W4SKTjFA/TwvdtydJ3O3SLGlMUvD3lJKRcCtlae+ZoWNf3xoQjJ2Q4l8YD741gn2TX
         2CPO9+YqCVeFaZpY8swk55G2XMtzaWwZGB1RVvF3/73DQOSp4BHB0F/KN6W7d+kgA10+
         GdxqOJWAEw8FHovVwTFY55UexKesLc72omZ3J/EwbtfFILCDV1OIJne/Cd+Y+HFLTLLX
         KXbnOJ02/Lr0DlGkk/WAkL9fuYu4fb+UguBhy5eIwesuWNcE/adt/0hvUwy7l/Z3tX36
         jsyrI87Mm8G/zj/WPxNeLfOk2Hur8wFcMPzXocB1A9wyH9ryhR2jnqHmm0ybwW8e9eOj
         gssQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jGY7RfOaQrR143tFTXp9AmdaelagLkghITmdcAU5ck8=;
        b=HCKW8rVlyGgLnMl3HKluggKytN8+lK/UqlWsa0olapxVjRXJSUFiZExR+XbCXb4fjT
         DVYybtz5r+O4pjG/SI6a8fKHSbfUs3BdQ9nTC1URVApTjt+/m2qWgNCVeYWv15xjPFDS
         C0j3vsoQdilEHhB3oxiBSblGvGqbPuhQAXD7CGRHPZyUdZGyPU3Nte+uu/xWSipQojWq
         czoEKpJKjVe3uUacwLR5DKvRpK0cyKKlPP6bjYtdxpWDFMv7HD0PSCDhDmlDjkma3t60
         i1Lmj5tC3yt5yace2aVCZbHAEU7b6mOaLu4oH6On6AN52muhCwDp7TZoMbXM/Y1ZGC+J
         9dXA==
X-Gm-Message-State: AOAM530g501QgXbCSBSHoVNTyhRvSs0aFlyFHlP5dRcIoCYoRkMNFq5a
        TYNJc66uwHH7+EJHGOTK+nZHOg==
X-Google-Smtp-Source: ABdhPJwrjrSG/hCZUVzVADJdX6jnHk5AqH06vyV+y+aUeCYlO/afKuy3y5L6/Q1l5o0DZSSHdlTX/Q==
X-Received: by 2002:a2e:3902:: with SMTP id g2mr77151116lja.321.1636316985146;
        Sun, 07 Nov 2021 12:29:45 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id e29sm4437lfb.111.2021.11.07.12.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 12:29:44 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 00/12] watchdog: s3c2410: Add Exynos850 support
Date:   Sun,  7 Nov 2021 22:29:31 +0200
Message-Id: <20211107202943.8859-1-semen.protsenko@linaro.org>
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

Changes in v3:
  - Renamed "samsung,index" property to more descriptive
    "samsung,cluster-index"
  - bindings: Disabled "samsung,cluster-index" property for SoCs other
    than Exynos850
  - Added quirks documentation
  - Removed has_src_clk field: clk framework can handle NULL clk; added
    s3c2410wdt_get_freq() function instead, to figure out which clock to
    use for getting the rate
  - Used pre-defined and completely set driver data for cluster0 and
    cluster1
  - Coding style changes
  - Added R-b tags

Changes in v2:
  - Added patch to fail probe if no valid timeout was found, as
    suggested by Guenter Roeck (03/12)
  - Extracted code for separating disable/mask functions into separate
    patch (06/12)
  - Added patch for inverting mask register value (07/12)
  - Extracted PMU cleanup code to separate patch, to ease the review and
    porting (09/12)
  - Added patch for removing not needed 'err' label in probe function
    (11/12)
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

 .../bindings/watchdog/samsung-wdt.yaml        |  48 ++-
 drivers/watchdog/s3c2410_wdt.c                | 322 +++++++++++++-----
 2 files changed, 287 insertions(+), 83 deletions(-)

-- 
2.30.2

