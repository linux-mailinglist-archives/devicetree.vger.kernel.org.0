Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F12722AFF2
	for <lists+devicetree@lfdr.de>; Thu, 23 Jul 2020 15:09:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728820AbgGWNJo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 09:09:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726521AbgGWNJn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jul 2020 09:09:43 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A521AC0619DC
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 06:09:43 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id q5so5107370wru.6
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 06:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oHNOabgTTNbh6uri8W4VPeDNkD37Z9qVynqApQA8NN4=;
        b=jLHhwfMgxxeLyGX9Vu5obKFeM6cJuGW5m219rJLASk42B8yCuiSrbsYu9g4Om3CrQO
         u8+PhnKSL74Rqrmjsn7QSzvAuZWPYtNlJ5c4JvYRPf9ug+ThVMEr6OQiOaSvx39H6D6K
         +dAXBolNwP9SldzHVxjetuVWbdFFkOk3DerVI9CYHiOh8s8cAhVMlWL2jpEZW3SwmNbl
         VWdbomN2X2NbtU7jNJeyYRxauMv+gmJWqdsbiEUHdhc5maNRJGqc8ce7NbyXNT1EarIT
         CCkawWMZ5O6qDOcq2Mmr8jZa4RGPQ28pS7aAM/1nsoEHccPsCL8DblVhkak/i6PPUViD
         z94A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oHNOabgTTNbh6uri8W4VPeDNkD37Z9qVynqApQA8NN4=;
        b=PY4vHyhpCHZ1RTpBT6R2e7KQPYs5dzpsB5nz1oT6Vu1dnjz76ndkxoFk8mY6twGPeW
         icXHlgCu7LMeXw/GS9gWbHHFj4cx7Nq56tuF8EpLthMX0p2IMh5O5KPqyywJiQARsllg
         Zx0ySLAkY7A4LFhDDSRKKJSIUssho5H6bhc64ei5SWejjBkn7KMSR6wQ4FOOV7bmJIdO
         4cyAX7ZuovGO9qfU8XCKIm7hldBmIw0KNfZVlCeaHBvuidnjW8nS2QERh8dxLkBvOISl
         DT1MP4NjV9wWmEXythFSDEUGLQcbRVSKsS6VatcVFDxIM3yFXjN4hydi2YqjXwilRD5o
         PLeA==
X-Gm-Message-State: AOAM531zhyYdfKLzipfQMFRsF0VGl4hwLK0ZGSuqX/yafpHRpSgjc7uf
        LHNe2oL/TD0eEXdnipmtTwX95A==
X-Google-Smtp-Source: ABdhPJyn9q77KWRk28k9ReYpgP1tzCRLEjDCCty8oAulmC1LG1zHc+TAu26s0hrwLaOIgaDbxOXoaQ==
X-Received: by 2002:adf:ee06:: with SMTP id y6mr4020677wrn.225.1595509782303;
        Thu, 23 Jul 2020 06:09:42 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id w7sm3594632wmc.32.2020.07.23.06.09.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 06:09:41 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bjorn.andersson@linaro.org, robh+dt@kernel.org,
        sibis@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        georgi.djakov@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] interconnect: Introduce xlate_extended()
Date:   Thu, 23 Jul 2020 16:09:36 +0300
Message-Id: <20200723130942.28491-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the interconnect framework provides the xlate() callback for
mapping the endpoints from phandle arguments in DT. This is implemented
by the provider drivers. But the endpoints (or the path between the
endpoints) might have an additional attributes, which should be parsed
and populated. During previous discussions [1], it was suggested that
adding more and more DT properties will not scale very well. So instead
of adding DT properties, such data should be put into the 'interconnects'
arguments.

This patchset is introducing a new xlate_extended() callback, which
would allow the interconnect provider drivers to parse additional data
(such as path tags) and allow the framework to make use of them.

Thanks to Sibi for the preliminary feedback and testing this patchset
on the sc7180 platform.

The patchset is based on linux-next (next-20200723).

[1]. https://lore.kernel.org/linux-devicetree/20200519185836.GA469006@bogus/

Georgi Djakov (4):
  interconnect: Introduce xlate_extended() callback
  interconnect: qcom: Implement xlate_extended() to parse tags
  interconnect: qcom: sdm845: Replace xlate with xlate_extended
  arm64: dts: qcom: sdm845: Increase the number of interconnect cells

Sibi Sankar (2):
  interconnect: qcom: sc7180: Replace xlate with xlate_extended
  arm64: dts: qcom: sc7180: Increase the number of interconnect cells

 arch/arm64/boot/dts/qcom/sc7180.dtsi  | 216 +++++++++++++-------------
 arch/arm64/boot/dts/qcom/sdm845.dtsi  |  44 +++---
 drivers/interconnect/core.c           |  73 ++++++---
 drivers/interconnect/qcom/icc-rpmh.c  |  27 ++++
 drivers/interconnect/qcom/icc-rpmh.h  |   1 +
 drivers/interconnect/qcom/sc7180.c    |   2 +-
 drivers/interconnect/qcom/sdm845.c    |   2 +-
 include/linux/interconnect-provider.h |  17 +-
 8 files changed, 225 insertions(+), 157 deletions(-)

