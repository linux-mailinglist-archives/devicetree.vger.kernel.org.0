Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C70035E42A
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 18:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232324AbhDMQjy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 12:39:54 -0400
Received: from mail-il1-f180.google.com ([209.85.166.180]:36395 "EHLO
        mail-il1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346949AbhDMQjv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 12:39:51 -0400
Received: by mail-il1-f180.google.com with SMTP id p15so3706659iln.3
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 09:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p9TLPGiG44FLRguy3/72SdSHHvfc2sbRvM703S/4k3M=;
        b=g1gCk4xIxINhQEdUcde+783eaBm/+VXp7kCcfF5PrqkP12lJVV3uk+m6uvXNZWJ6fU
         +K91VzOFqKCvH0kYLhpZGmFRrc3lRV/lqUXez8E5BXQGiy4CiOde+bCo3xZqgZqKIB/b
         p3XWoaqV5/Lxx1MB7xWk8oOSnDpGWT6VwpZ4hqEATqpau7uYNeEKnmS9zj0C8w2s6D6s
         R2tONjLmFrJbMiyYLS9DaoUmiAH+FiwQu97qionpuIShbyoqKIjAa39Hn8sXb4qBBBk6
         uJDsdV89k203YkHvZuO8AHAs5F5bGRaWNkXdsezx/IwP4qT1P0QRGdbIZmbs7WrJjFlh
         F+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p9TLPGiG44FLRguy3/72SdSHHvfc2sbRvM703S/4k3M=;
        b=IHLwdP6PXoZVEQ23scpuPgqGDAvhA3ZBCxj0ip7xJGqVaUdPpHd+JHSDuRrUcOdFzu
         54mD7PluR/0tXQDlnXh/dZK996lmTQxowo0PfSELpbBDiwFTeut8v0OF6TEe/6edCvo/
         wWu3ifL9QGawtcHrDqHmV9aK7TZx2wDdlCY0BbSNPBnqzuaMzvjOflbdEcjLkIfBCEUh
         XhLHWdWXC4AT5j6J6SnTvmqxgLlkzqSkO9QRh01cuhh8rXJWZYWyr3XLwmiqgxhloyCV
         TEEFMufNSfXBPw0tDmWJ3AY+PtcWmubGcI01SbR8VmT4Fg5BRGZXDacVCweyfWx2bir3
         T/xA==
X-Gm-Message-State: AOAM532VpdYx6o0e3iSgsaRwNVNGxgZRrH4bkuU2ndrjOfJjlvXQ6Gbb
        5AVchpyeJ4VqGV4SnIfo6MpttA==
X-Google-Smtp-Source: ABdhPJwo2lT5gN3qJgX6S6LjTPkLj1Nc/QVWaF4Ey4UH8oeP1j4oxiFmLRh/eT0hu44/SzMDyUPn+g==
X-Received: by 2002:a92:d48c:: with SMTP id p12mr28971906ilg.136.1618331909840;
        Tue, 13 Apr 2021 09:38:29 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id 11sm7054469iln.74.2021.04.13.09.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 09:38:29 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, davem@davemloft.net, kuba@kernel.org
Cc:     bjorn.andersson@linaro.org, evgreen@chromium.org,
        cpratapa@codeaurora.org, subashab@codeaurora.org, elder@kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH net-next 0/2] net: ipa: add support for the SM8350 SoC
Date:   Tue, 13 Apr 2021 11:38:24 -0500
Message-Id: <20210413163826.1770386-1-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This small series adds IPA driver support for the Qualcomm SM8350
SoC, which implements IPA v4.9.

The first patch updates the DT binding, and depends on a previous
patch that has already been accepted into net-next.

The second just defines the IPA v4.9 configuration data file.

(Device Tree files to support this SoC will be sent separately and
will go through the Qualcomm tree.)

					-Alex

Alex Elder (2):
  dt-bindings: net: qcom,ipa: add support for SM8350
  net: ipa: add IPA v4.9 configuration data

 .../devicetree/bindings/net/qcom,ipa.yaml     |  11 +-
 drivers/net/ipa/Makefile                      |   3 +-
 drivers/net/ipa/ipa_data-v4.9.c               | 430 ++++++++++++++++++
 drivers/net/ipa/ipa_data.h                    |   1 +
 drivers/net/ipa/ipa_main.c                    |   4 +
 5 files changed, 443 insertions(+), 6 deletions(-)
 create mode 100644 drivers/net/ipa/ipa_data-v4.9.c

-- 
2.27.0
