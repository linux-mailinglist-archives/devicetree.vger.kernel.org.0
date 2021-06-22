Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C15EB3AFA36
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 02:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhFVAmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 20:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbhFVAmB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 20:42:01 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 980F1C06175F
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 17:39:45 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id p13so15085209pfw.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 17:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=pqUpRkhcnAMty1ieLynY9A7gMQczSuaUqnjg9ANrosY=;
        b=KBCXSvGfi/tgiLovusaSZA0BT226Xc8G4C8/2U7x09bcN6CzNi2eg1HoHu5KBlz9aa
         6mE0Vn7SfJJKuYrVvairbVErpDxbGxr7WAy2dIqsNUCreBfaVHZV2/FrA4j103YbBfay
         TGlnHL1LbQ7L+Z9uHPVQmSDF9suIDri8tPvGogQJVaz6f9p5Lclr9XMQpPdcFQ6+BMwt
         lYvACo3/0YfnYHJDju7AvPDx4TLoYx3Hax7hCa3QwxpFSVpnnatnCOK2d22s3dxcXLf8
         iTAUHhfpxUCfS5pqVkLCO94wvmvZYz0EzZCTKnGUzftV4EXVDknPBLTTPdC8DL+AhiPQ
         Auuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pqUpRkhcnAMty1ieLynY9A7gMQczSuaUqnjg9ANrosY=;
        b=b5WdVAKP+zTyJNUGH8V29JXa0YedCTBlfSoHU27ZnIp69POozRs4MIcILmDF0YAn9F
         xynesir7tsluRznL6xaRIocA6UHVqJBtfgq27fgBmRb0rkrOkum2xtR4+48KJAA8TTc+
         dguzIcf4c2HNMTwY7G3A1Ix3OcUCFr3Exvwv3gdW3FHuPT5WZdk/aVkhk29noIC7Yj6z
         4J7lUXi2tzfwIaUG0/4H4oLUm/RJQu/8xoF3m3gXz5w8cplGo5yzmeuSPspYj9Q5EtW5
         VMGFVm7pEghtO+Ix1vm/iMvfb38RMNDWdj6WHXsqcijn4L5xcAiA02rpgbjVN1hn+0kP
         U+wQ==
X-Gm-Message-State: AOAM533vF5QReHXf828IQeTpQ6CB9hI2XR/dsRlBgDOUU+k+OCTzbpvf
        o+MbBeS19Mn4yR2Rmku/nmYBEw==
X-Google-Smtp-Source: ABdhPJwS1Om4eMmDHOw6g2bM/rwS8s2wGA5OmRs4kA6Os6DjgkA/4JXLJpLWzzX67KtcnWtsWwlmUA==
X-Received: by 2002:a63:e14:: with SMTP id d20mr1132215pgl.35.1624322384963;
        Mon, 21 Jun 2021 17:39:44 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id h11sm17722762pgq.68.2021.06.21.17.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 17:39:44 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Benjamin Li <benl@squareup.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v3 0/3] Add MSM8939 APCS support
Date:   Tue, 22 Jun 2021 08:39:16 +0800
Message-Id: <20210622003919.10442-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It's a series to add MSM8939 APCS support into qcom mailbox driver.

Changes for v3:
- Separate PLATFORM_DEVID_AUTO change from MSM8939 enablement.

Changes for v2:
- Add MSM8939 APCS compatible.
- Reword commit log.
- Add Bjorn's Reviewed-by tag.

Shawn Guo (3):
  dt-bindings: mailbox: qcom: Add MSM8939 APCS compatible
  mailbox: qcom: Use PLATFORM_DEVID_AUTO to register platform device
  mailbox: qcom: Add MSM8939 APCS support

 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml     | 1 +
 drivers/mailbox/qcom-apcs-ipc-mailbox.c                        | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

-- 
2.17.1

