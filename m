Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92C6B290C3B
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 21:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2410954AbgJPT1J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 15:27:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410864AbgJPT1I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 15:27:08 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B56B1C061755
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 12:27:06 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id x13so2046221pfa.9
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 12:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLxLynHYHoTvtEsSkRhZWkU/RgiHRhxUNICAiNl6VK4=;
        b=irfZ5JkjKsBUKudbsG1HSGVeI+AjsBoVJz9447HeLFE2hDXWFZ446feBb1fehgtFdv
         d/Jr6EbGgddUSS7VnQwvl9Nle/91zB5fCGGpaMQBM/Z6R6i26XYEqga9ZwEEOifAajzt
         92M9KPZQ3Ogi82kIxezcWxvfD4lsEZPNHXk4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLxLynHYHoTvtEsSkRhZWkU/RgiHRhxUNICAiNl6VK4=;
        b=QOq2lV/8S4nniyLyT6rwPWQUmmoxf6+7j92KWFbpagZHACiBVfLDKXe6F0RGShnDHJ
         MApaSDgnwa08tsge1ehgksWoOSI7wje2IbOqxQNLPyqruNos5MFmzMO5VpuDa6xNqHpd
         oxCY/Y791m/uRwbZhbzA9gsq/TcDBm8gOGDG1H7bxPs7eRjR0Ou6S67epdw+xO7qcPyw
         5s42RLmh9lvtn9I4n/e2Bu3YYA9WkjWNWXB8Y7dfaiD5Og6vaPn4EU6WIck+9rWz3rNg
         mhoQq1rs/kKHSmhkE72WQL6MfIzVh9Afhkh71BFO6xwTxxcpGCYVIMbQ/v5/FY626qEZ
         MifQ==
X-Gm-Message-State: AOAM5328oFFqlww4PzOtXsemtJ+RQb3X2Ko6zhPsiLB9XbDnjkMXv9AS
        x2R3VwNJszGYAjwRw9pKNsslTg==
X-Google-Smtp-Source: ABdhPJzfkwOqpdP1bmZhf0gv3Kh9aMomS1AQoXErUNl+L6qp+XK7HYll5vrZeiKQmJjCtJXNbqpeLg==
X-Received: by 2002:a63:5c42:: with SMTP id n2mr4499956pgm.14.1602876426279;
        Fri, 16 Oct 2020 12:27:06 -0700 (PDT)
Received: from evgreen-glaptop.cheshire.ch ([2601:646:c780:1404:a2ce:c8ff:fec4:54a3])
        by smtp.gmail.com with ESMTPSA id lb13sm3566622pjb.5.2020.10.16.12.27.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2020 12:27:05 -0700 (PDT)
From:   Evan Green <evgreen@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Evan Green <evgreen@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] nvmem: qfprom: Avoid untouchable regions
Date:   Fri, 16 Oct 2020 12:26:50 -0700
Message-Id: <20201016192654.32610-1-evgreen@chromium.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Certain fuses are protected by the XPU such that the AP cannot
access them. Attempting to do so causes an SError. Introduce an
SoC-specific compatible string, and introduce support into the
nvmem core to avoid accessing specified regions. Then use those
new elements in the qfprom driver to avoid SErrors when usermode
accesses certain registers.

Changes in v2:
 - Add other soc compatible strings (Doug)
 - Fix compatible string definition (Doug)
 - Introduced keepout regions into the core (Srini)
 - Use new core support in qfprom (Srini)

Evan Green (4):
  dt-bindings: nvmem: Add soc qfprom compatible strings
  arm64: dts: qcom: sc7180: Add soc-specific qfprom compat string
  nvmem: core: Add support for keepout regions
  nvmem: qfprom: Don't touch certain fuses

 .../bindings/nvmem/qcom,qfprom.yaml           | 13 ++-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  2 +-
 drivers/nvmem/core.c                          | 95 ++++++++++++++++++-
 drivers/nvmem/qfprom.c                        | 30 ++++++
 include/linux/nvmem-provider.h                | 17 ++++
 5 files changed, 151 insertions(+), 6 deletions(-)

-- 
2.26.2

