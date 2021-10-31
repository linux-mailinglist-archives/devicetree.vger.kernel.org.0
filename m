Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6088C440E2E
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 13:21:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbhJaMYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 08:24:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbhJaMYG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 08:24:06 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2145AC061714
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:21:34 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 5so53955066edw.7
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n4WzQadX+RqazB/22Gcyj8+qG3ieppJrK8iuTkJY04o=;
        b=ohtuIdd4vh9qNNrqP0VjTTJDPBrzB0ztQ0p8vC1WTfmdgdOsQ7a4fhhKuvoTknKvJ2
         pBUe4pjmDRWlQtGyGIN7BMT4m5E43rWeUEhE13R+jk5eRo+INCNMvLU1NKUhsFyWy+Kz
         yStHRoKMXIsuwCLobZixKYneIVHRvP4Hlx36ILnoGDfIcvNIj686xa02xepgHPcseiky
         /Vve3f6VPZOTA1nphyBFJxKQYIJ1Dc2ccgCx80v6rIMo1TY4mW+dU+Yz43kY805au2OO
         X+zSiZaIW1qfmCZVyOAHo+N31bcfHhq2Cjtjm1VV2bvR0Lhaxf9Eu7V9lweTYmoIiKpL
         37Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n4WzQadX+RqazB/22Gcyj8+qG3ieppJrK8iuTkJY04o=;
        b=V4T3Kr8IqCh6ME77AzzZWEaPS02CVrh5h8cruiG4jm3nn3NVPNH1b+EYYV3O+y+V81
         +GZYdNpPOrbtbeMLnF2ErAfxmUZKA26O6HlcEcH+ofCIyFugTStQrBCSMJsRCDIzV9F6
         qx9RLKi7osJHxQN31pFCBrjOVS9OmqdQTrRZoO4mnyV3dNlcLnwUCWFJwgDFe8D8OKv/
         c1k7WS9a6L40rgdFV63nIiLehGxUCTNTO3k1i/WidYv/XKMY6ptVt13zBAYdGEFBPU5I
         eu8e1wm4XdyiNFvkyGffF9PooR9ShVV9Da3kfbdQGtFGaCsJ6koCbpHJuTDqkvzKHTch
         bzuw==
X-Gm-Message-State: AOAM531iQmwzT7bvKUc1HjExJHNalA+ptst2NI9iIgvzhsSwLk8B6w4A
        650g7XuFPVQ7Gll3B57i/VaNqg==
X-Google-Smtp-Source: ABdhPJw0qzYV1pHGqTvipYoNRo19NlreHlylwDp56Zx9kLdJoDn/xaNBjZzq0ojs9jwRzRB9mYLyKg==
X-Received: by 2002:a17:906:3947:: with SMTP id g7mr28787664eje.407.1635682892627;
        Sun, 31 Oct 2021 05:21:32 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id s16sm7398690edd.32.2021.10.31.05.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 05:21:32 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/7] watchdog: s3c2410: Add Exynos850 support
Date:   Sun, 31 Oct 2021 14:21:24 +0200
Message-Id: <20211031122131.30097-1-semen.protsenko@linaro.org>
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

Sam Protsenko (7):
  dt-bindings: watchdog: Require samsung,syscon-phandle for Exynos7
  dt-bindings: watchdog: Document Exynos850 watchdog bindings
  watchdog: s3c2410: Make reset disable optional
  watchdog: s3c2410: Add support for WDT counter enable
  watchdog: s3c2410: Introduce separate source clock
  watchdog: s3c2410: Add Exynos850 support
  watchdog: s3c2410: Let kernel kick watchdog

 .../bindings/watchdog/samsung-wdt.yaml        |  17 +-
 drivers/watchdog/s3c2410_wdt.c                | 215 ++++++++++++++----
 2 files changed, 190 insertions(+), 42 deletions(-)

-- 
2.30.2

