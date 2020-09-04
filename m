Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1EFB25CFA5
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 05:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729655AbgIDDKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 23:10:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729643AbgIDDKv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 23:10:51 -0400
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E2CC061246
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 20:10:50 -0700 (PDT)
Received: by mail-qv1-xf2f.google.com with SMTP id f11so2403330qvw.3
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 20:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pdbPNYComdH+ZhVkRW2Xn2aIlzT4gacXxF6vF5yyO+A=;
        b=KFoHbv+1gyGW2v83q1G43ASW42mK4aM0f3q5D6TB16aEONHt4KtH1m4jOil8xAKmlc
         3zFxNMMtsaBLGA2svh+tLqMmVR1kXgDRKbybNO8hI6IOhAlayxXffjHQuMwhI2AeL/d8
         hbgKv6i4llEI230cFvJdI6klvCghKMm+vrmrD9HiRfWZkPlq9Rh5fhzdFMv8JDS4mzxt
         b9cIz4d+V6pFBHhpSno8B0ht5m9fVCp0bGN6lJ+rzdkzk2bJ5kAnyGBpgylK6D2bMtw3
         NER97eeP+V1m1FH9J3IK1PPT/bYC18pNxZTmGuaOR2eFnF4CAbVlgM/PPE0hNPByJg5a
         FMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pdbPNYComdH+ZhVkRW2Xn2aIlzT4gacXxF6vF5yyO+A=;
        b=lNn2dZ3/MJF357P/dMd2CJcWGzOkx9CksNd8s4gWZYmli98epAEzEkDK/4vvlY83Gq
         38mXi0Vy6N86v+0roIv8Ru+mouilz+IADSnGXKu8nF3ms3bwNDQLLqB5RdlQNrU4Jj2f
         KdPw+sdDEcpxdUoTzIVTFZm0NMNxDzAOVmcsunrDHZo2M9euOGcll7rxJoV/qPbHcdza
         XRi/pgA7jphGpGC9gpG52mXJOZKVI/1krn5jUUiT5yxE/Nkhz/YXLEa/1Hcitb1v/jJa
         gKvlZAoms/vA+d6N+wJ1NtYT7iejRA5OlAAwaaOcMo0DB9mKIB1An+q+QLKNvHEwRqAV
         2Ffg==
X-Gm-Message-State: AOAM530olIfrnlqsdHWKKzcK/dFlSSdjxTCjmHHE+tDu4J7VhciosUvi
        kz7p7LGhK0kj0S/fWnDdtxfHkhzK4wDGbT6IfoY=
X-Google-Smtp-Source: ABdhPJwVu9NzfFI4LteHyWtdtBZb0YAEEoNQm2HuZVw2SDjktax73swUrJN1wMB6gC46fCPJgH30lg==
X-Received: by 2002:a0c:e188:: with SMTP id p8mr4914037qvl.8.1599189048707;
        Thu, 03 Sep 2020 20:10:48 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id x59sm3481063qte.14.2020.09.03.20.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 20:10:48 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        linux-kernel@vger.kernel.org (open list),
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Subject: [PATCH v2 0/5] SM8150 and SM8250 videocc drivers
Date:   Thu,  3 Sep 2020 23:09:49 -0400
Message-Id: <20200904030958.13325-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add videocc drivers for SM8150/SM8250 required to boot and use venus.

v2:
 - fixed dt_binding_check/checkpatch warnings in SM8250 bindings
 - added 19.2Mhz in SM8250 freq tbls for consistency with other videocc

Jonathan Marek (5):
  dt-bindings: clock: combine qcom,sdm845-videocc and
    qcom,sc7180-videocc
  dt-bindings: clock: add SM8150 QCOM video clock bindings
  dt-bindings: clock: add SM8250 QCOM video clock bindings
  clk: qcom: add video clock controller driver for SM8150
  clk: qcom: add video clock controller driver for SM8250

 .../bindings/clock/qcom,sc7180-videocc.yaml   |  65 ---
 ...,sdm845-videocc.yaml => qcom,videocc.yaml} |  22 +-
 drivers/clk/qcom/Kconfig                      |  18 +
 drivers/clk/qcom/Makefile                     |   2 +
 drivers/clk/qcom/videocc-sm8150.c             | 276 ++++++++++
 drivers/clk/qcom/videocc-sm8250.c             | 518 ++++++++++++++++++
 .../dt-bindings/clock/qcom,videocc-sm8150.h   |  25 +
 .../dt-bindings/clock/qcom,videocc-sm8250.h   |  42 ++
 8 files changed, 898 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sc7180-videocc.yaml
 rename Documentation/devicetree/bindings/clock/{qcom,sdm845-videocc.yaml => qcom,videocc.yaml} (62%)
 create mode 100644 drivers/clk/qcom/videocc-sm8150.c
 create mode 100644 drivers/clk/qcom/videocc-sm8250.c
 create mode 100644 include/dt-bindings/clock/qcom,videocc-sm8150.h
 create mode 100644 include/dt-bindings/clock/qcom,videocc-sm8250.h

-- 
2.26.1

