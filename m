Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD55D2C64F6
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 13:11:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728177AbgK0MLn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 07:11:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727455AbgK0MLm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 07:11:42 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FE69C0617A7
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 04:11:41 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id s63so4199661pgc.8
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 04:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L6K3HGsB5fYzmi80uscAmDSfDfhb1G9q5OZZtTycPRU=;
        b=bZgTR4hbGBVByoNEoH+3NJBwGNqP/NoZtyTRJex65tXBta2OaScbN70Llcbgb3MIl7
         yLk1jsNyDo/iCSzB00/9ePBC9GowZ74seWdGDVtMDuuWa0Bp7zJ9aAx0ESen79UR/0dI
         IzO4QuUMd+m07aeaBk9Iy5lbR/+Tmofajr4jRmeszgpZXhshfbb4PIWOoKa6WDLkpmUr
         FdAnG/cL8mr/1p+BudvSoOfpg5HhbZlqTrPvsiJ2qojVtn9OFXWKTtijLEHD/5b0fhRu
         54OvYUCYwXioOjMf+OeUb/PgzZiwoNyUSybrJfwRAXD8dfDx5nAQqF6oatxOIV4HN6yh
         LXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L6K3HGsB5fYzmi80uscAmDSfDfhb1G9q5OZZtTycPRU=;
        b=s1fKTbMmAcLCrDHrgLo16AxdZGjZGRW3OTBhUUHzENLqBUv+lvwPJm3GNcXCTCl+3y
         Yk18OBtrTSLSF4NcfxpY/76ZA1qmdEg+cYwBv4LFJMPowh/tpVvgT1gq5r6a2tfzuPy3
         pitcR5C4A+jGuy9coYCPOxM+uFrbxAcuan4Fq3KmVXMF/VWjra5pXYSiHpiu7kFBxFEu
         nilWOfVPOjAi75CvG98h7xYL8q/93PTSaQNCNhIXzWKkGfwdH94GDEOdIhy+Lj4Tb98D
         +V3p+i+TENXN1HWTys+6PDOGtZjJw1dAu575g96Cn5gkhwUaMr/MUkC9NqOpX9TrvCVO
         OXxA==
X-Gm-Message-State: AOAM531gO/ZIIq+qdvhsmtnBe4guNDnlMdxZ8Ipf/GEcASN3kPHOKm2e
        py0/9/EzNhU0JnkDOHta3lMU
X-Google-Smtp-Source: ABdhPJycR732doYvrrRMGxKiyOaTTH2GJ9GSvAuBFPRqUp1dQoABDMGVOatJaNGV+Z8GShWGZp8WGQ==
X-Received: by 2002:a17:90a:8b8b:: with SMTP id z11mr5515814pjn.117.1606479100679;
        Fri, 27 Nov 2020 04:11:40 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:480:e2cd:2509:49c2:a270:1438])
        by smtp.gmail.com with ESMTPSA id g8sm7318790pgn.47.2020.11.27.04.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 04:11:39 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/3] Add LLCC support for SM8250 SoC
Date:   Fri, 27 Nov 2020 17:41:24 +0530
Message-Id: <20201127121127.158082-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds Last Level Cache Controller (LLCC) support for SM8250
SoC from Qualcomm.

All 3 patches in this series are expected to go through arm-soc tree.

Thanks,
Mani

Manivannan Sadhasivam (3):
  dt-bindings: msm: Add LLCC for SM8250
  arm64: dts: qcom: sm8250: Add support for LLCC block
  soc: qcom: llcc-qcom: Add support for SM8250 SoC

 .../bindings/arm/msm/qcom,llcc.yaml           |  1 +
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  6 +++
 drivers/soc/qcom/llcc-qcom.c                  | 40 +++++++++++++++++++
 include/linux/soc/qcom/llcc-qcom.h            |  1 +
 4 files changed, 48 insertions(+)

-- 
2.25.1

