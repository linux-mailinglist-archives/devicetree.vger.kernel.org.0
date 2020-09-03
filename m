Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7E325C424
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 17:04:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728897AbgICPEf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 11:04:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729022AbgICN6S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 09:58:18 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7878C0619D3
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 06:31:38 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id t10so3296349wrv.1
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 06:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1ZdEfEgmL9xMVW+zYcpKfDQO7HkBHnE+KMZRuI8Lf9k=;
        b=d72daTpVXoFFKFMcoZerr4SN73VKG7KBahyo81SxAWwlnUIXnP4Hiu0wEqMahwIn2o
         LGa/L5PaDhSKkW6A2aKmCvXUc1Y7CQlo1vIRokt4mjGZ/E8C0NkC8DFHdRcyR6zzGStq
         jD2svGqpzvApSdfm4Yd9u3HDuCaTuayg11hPq4rk7boRhViVFGOwYD1DCSGWHHEQPuyv
         Umy4g1qdPh5N+ALxnFjOayg/Yw5EsjlS2OOxZcPUTLLLIom3LVSgdN+akv4yZOHb/LFw
         B4/tzmmeCZek/9PDbgTIoQnidxfXI7T4MJGG1/VXEKZXqpOHHbbuMB+oiIF9CfadmXbU
         KNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1ZdEfEgmL9xMVW+zYcpKfDQO7HkBHnE+KMZRuI8Lf9k=;
        b=GaEGG4aji/W+tNNyzKcKNZyx/qYEhyYHHJgtC82EPe4BnSoyUFHJot8XjKJ91mHfJD
         KAFfwPMnMxcavCYlJbyzKA+N5b4K6q1PAV+c2KtRz9Q30/Wj1li7F1IzWHZb038Yj18v
         zVFP/f7QMfZW/adzBodQqJi2LlXNXQwLHC75xko3NDXQKPVTHL9iIW7t3Zwz9CJr9Xpo
         xqX3pu/MRpkuBGg/SNb2o9eYgNekXzAoBVYmDCCKeIWUaqXNg7BI02zNcjkR9nFzrUR4
         0Z3VwtNabhtbEgZBP5AbFvOM1exy+3qJ3jToZZYRQWAl8JDZ3pXan2x546pnjnZrhqoz
         Cvgw==
X-Gm-Message-State: AOAM533V0KbM+cF7aSGSsc5WryQrzpAMYBODrj5T8wSggTPfTXZu3onH
        WSk3JSHLim+ZjRT5jn+IbjjGNQ==
X-Google-Smtp-Source: ABdhPJwhjR2MLxPCogbMWCND1xPIuqqI6Vt+eUGTlk9kaW1cSI5oFWJ5vZON7txdbDjoS+wkK1t6og==
X-Received: by 2002:a5d:5602:: with SMTP id l2mr2677121wrv.410.1599139896777;
        Thu, 03 Sep 2020 06:31:36 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id b2sm4310768wmh.47.2020.09.03.06.31.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 06:31:36 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     linux-pm@vger.kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        sibis@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        georgi.djakov@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/7] interconnect: Introduce xlate_extended()
Date:   Thu,  3 Sep 2020 16:31:27 +0300
Message-Id: <20200903133134.17201-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.27.0
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

The patchset is based on linux-next (next-20200903).

Changelog:
v3:
* Rebase and update both dts patches as Doug reported that i missed to
  update the cells for the GPU and also other stuff changed in DT recently.
* Pick Rob's Reviewed-by

v2: http://lore.kernel.org/r/20200806163126.22667-1-georgi.djakov@linaro.org
* Add a patch to update the DT documentation, which i missed initially.
* Minor changes in commit text of patch 1/7. (Sibi)
* Remove a useless null check in patch 4/7. (Sibi)
* Print a warning if the number of DT args is higher than what we expect
  in patch 3/7. (Matthias)
* Pick Reviewed-by/Tested-by tags.
* TODO: Replace tag IDs with macros in patches 5/7 and 7/7 when [2] lands.

v1: http://lore.kernel.org/r/20200723130942.28491-1-georgi.djakov@linaro.org

[1] https://lore.kernel.org/linux-devicetree/20200519185836.GA469006@bogus/
[2] https://lore.kernel.org/r/20200801033215.1440-2-mdtipton@codeaurora.org

Georgi Djakov (5):
  interconnect: Introduce xlate_extended() callback
  dt-bindings: interconnect: Document the support of optional path tag
  interconnect: qcom: Implement xlate_extended() to parse tags
  interconnect: qcom: sdm845: Replace xlate with xlate_extended
  arm64: dts: qcom: sdm845: Increase the number of interconnect cells

Sibi Sankar (2):
  interconnect: qcom: sc7180: Replace xlate with xlate_extended
  arm64: dts: qcom: sc7180: Increase the number of interconnect cells

 .../bindings/interconnect/interconnect.txt    |  24 +-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          | 218 +++++++++---------
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  48 ++--
 drivers/interconnect/core.c                   |  73 ++++--
 drivers/interconnect/qcom/icc-rpmh.c          |  27 +++
 drivers/interconnect/qcom/icc-rpmh.h          |   1 +
 drivers/interconnect/qcom/sc7180.c            |   2 +-
 drivers/interconnect/qcom/sdm845.c            |   2 +-
 include/linux/interconnect-provider.h         |  17 +-
 9 files changed, 251 insertions(+), 161 deletions(-)

