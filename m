Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9EF829DBAA
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 01:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725878AbgJ2ALX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 20:11:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731056AbgJ2AK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 20:10:59 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E668BC0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 17:10:58 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id z1so428247plo.12
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 17:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=1cCqny57s3f93vJkXlXrI6jXbuQga0hhJVQYxyE9mog=;
        b=oIZULHwKgR1XDW6gME++yXig/fs+yxZPCGDJHLE0sx/Xc94qpR92M3xRn+le8juoE/
         ehFIo4duMMkU+j8Dzo5wKYN8MwZSlHu4Q9QuTV4hLKbF+U8rDMMgo84JCimiHfvSGqMX
         hAs6PHDlgzikBb39mfP0MNCfmq5DfogEXZbVMsd6r+Na9BPp7uPdcMRmlclJTP1FUsqT
         Kx3UA8lp2NMP9admLmGm+j3deyhVV9bBpBRmWHkiNbYt32eiYDNDmyBmySiz6aFUZ+KG
         CSJxQ1qdjgTyqiPGzFhw5Hn0fW4qFsWgZszgWjLkdChDWOg4FK/dwYTG6aZlhlmdY19G
         D2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1cCqny57s3f93vJkXlXrI6jXbuQga0hhJVQYxyE9mog=;
        b=PC3yf/YFkHeR9h+xlByibZsZo5nJH/ddnpfv17fB0akNY0DuzRBNg0ObXOHy1m5/FT
         uv9zYu6ku5e8i7ibMGJ/XJk+9qL6jb7fu+a1v3PHJ2ozk5SxdWMCGdKB2515TPhURhT8
         Y3zt/A0S6IXKbhDsHTPTvT9/5cF5h16w2yxXpCwlqWjA9wTAPm28h/Afd+bSn9DvkLxF
         ws1F2EKhonctr34qk1IGdOq1S/ev18q1FpqIL6yLIPPFGh3++HhQhDeF9D5br9uOdgwe
         oEhREBD+wf2PjDXXIkZhqsxpZYaY8uY837bxxpPOZOea+LV93QL0TAe03omw0wcqV38A
         3tEg==
X-Gm-Message-State: AOAM532sruA48589Z08cqbQTx4L01ni8ppUOr6x+cHjlCnwZJCRBGWDW
        47DaoCS6V4N9l2emcR+BE05xAfpNVuVQ
X-Google-Smtp-Source: ABdhPJzwejI/PToC7YMFJls/q/D8BvKPzZxPmDPmwzFU4HKL5WyWUbbZhu9y08/z13Zg8EtqIR+3VQ==
X-Received: by 2002:a17:902:8205:b029:d5:dc92:a1d4 with SMTP id x5-20020a1709028205b02900d5dc92a1d4mr6021721pln.41.1603870980754;
        Wed, 28 Oct 2020 00:43:00 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id e7sm4289579pgj.19.2020.10.28.00.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 00:43:00 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/4] Add GCC and RPMh clock support for SDX55
Date:   Wed, 28 Oct 2020 13:12:28 +0530
Message-Id: <20201028074232.22922-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds Global Clock Controller (GCC) and RPMh clock support
for SDX55 SoC from Qualcomm with relevant DT bindings.

This series has been tested on SDX55 MTP board. The dts patches for this
SoC/board will be posted later.

Thanks,
Mani

Manivannan Sadhasivam (1):
  clk: qcom: Add support for SDX55 RPMh clocks

Naveen Yadav (1):
  clk: qcom: Add SDX55 GCC support

Vinod Koul (2):
  dt-bindings: clock: Add SDX55 GCC clock bindings
  dt-bindings: clock: Introduce RPMHCC bindings for SDX55

 .../bindings/clock/qcom,gcc-sdx55.yaml        |   71 +
 .../bindings/clock/qcom,rpmhcc.yaml           |    1 +
 drivers/clk/qcom/Kconfig                      |    8 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/clk-rpmh.c                   |   20 +
 drivers/clk/qcom/gcc-sdx55.c                  | 1667 +++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sdx55.h    |  112 ++
 include/dt-bindings/clock/qcom,rpmh.h         |    1 +
 8 files changed, 1881 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdx55.yaml
 create mode 100644 drivers/clk/qcom/gcc-sdx55.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-sdx55.h

-- 
2.17.1

