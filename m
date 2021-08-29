Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51CC93FAB08
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 13:18:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235142AbhH2LSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 07:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235110AbhH2LSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 07:18:51 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D5C3C061575
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:17:59 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id e7so10533245pgk.2
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Ue0qq9qF59+MeN9vBBn7cLC76/nrVKM/TaYesUFyEKc=;
        b=jID9T4vtmBUp2SqOMnnejDjWn32RdRDZ2VNu3Wi2+fvvT0g/qcn5vaa2UWJQ4TgraK
         Nwny2y7M55BAhZtE5y80OG+lo5rtDI+58p4LJn/gacG5Z5nz0RobOmCk4dJMp4/3mV6k
         r5NnztGmtH7oduKkcwWlbyp+NlPbQ9ylbPU4dxbtmXLLTZT9xUyC+3PgLxl9kPvFFjRB
         pcRwJdo+VQZ0tfzZXFhii6G8zbeFZgSNRKV7/+cTx0ULpiFTuNlhyX/IXk67r9ZOEvxp
         nwUlSWaFC+f1bJ0h45O14FQw+hR0GptV5ybBlhA6VwkLhmq+6tbZxFl2SIWFD4yMaDCn
         dO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ue0qq9qF59+MeN9vBBn7cLC76/nrVKM/TaYesUFyEKc=;
        b=BVKO1QuJo/fUaLPai5bXb/ETdDz9bNj7i8uLxIb7G4hSppCCCvdf4MChWNKWZtJfYf
         t+4QfkPV3FVbOrq0RLfZEjx/zF4GU7MLaIYGyFhIGTMUxieOMbE0fOhn4JqWiKfFZMD/
         8od/5GD/z7TY7aB9t5kBxD0Q/hKMhqhKr13enV/9etI3YXrXBbGWGFe2dnz8jSeO7fpK
         JSbZ7Zx4pn/eVGJA3vP0Mz8lA+nZwBhFb4KlMyLhc/x3Ki52F7Nc2a9sL3Wy9vHN7cLw
         T7pcR0vynGiFOxbgR0FiFB9RJXFA/pZTy8nFR3+TGt9C4WBuHAQFJpCNaFQoeUZx5+O8
         PwTg==
X-Gm-Message-State: AOAM533UACBKXXME/D94AqCmnCz9OlQ2I13sj3GQUB7C4jdpu1LxhLit
        4OmA5Loz4a9p1QOLLrzShqYo7g==
X-Google-Smtp-Source: ABdhPJwPR0xE8EOUKmssCKsjQqPo72UO6PnvFks3nVpQCicVAxnxt5/z2bUhK8M8g58B0w+MxpXcZw==
X-Received: by 2002:aa7:8b07:0:b029:3c7:c29f:9822 with SMTP id f7-20020aa78b070000b02903c7c29f9822mr17700636pfd.33.1630235878770;
        Sun, 29 Aug 2021 04:17:58 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id gn12sm16857115pjb.26.2021.08.29.04.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 04:17:58 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: Fix qcom,controlled-remotely property
Date:   Sun, 29 Aug 2021 19:16:25 +0800
Message-Id: <20210829111628.5543-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Property qcom,controlled-remotely should be boolean.  The series fixes
all the mistyping in qcom dts files to stop more spreading.

Bjorn, let me know if you prefer to merge 3 patches into one.  I can
resend.

Shawn Guo (3):
  arm64: dts: qcom: ipq6018: Fix qcom,controlled-remotely property
  arm64: dts: qcom: ipq8074: Fix qcom,controlled-remotely property
  arm64: dts: qcom: sdm845: Fix qcom,controlled-remotely property

 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.17.1

