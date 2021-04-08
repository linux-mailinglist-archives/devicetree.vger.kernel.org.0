Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 254533579D5
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 03:47:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbhDHBsA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 21:48:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231325AbhDHBr7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 21:47:59 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D59BC061760
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 18:47:47 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id u20so279709lja.13
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 18:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vYEj4/W26dJIBide2+y3vFIE6MjoFe/WKhSCE+JU0u8=;
        b=G3Hp2ok6Dr/N4Idvq2Fz5eYq7wZ6277EC2WeTiFEVnO90SKS6Qr1Cz6pMyeJz80WmX
         w3iCrpulpccS9I8A0CJonUMKaDlJgRuLleDoRhUaURCKSX3UOR0QZhX457hF+HlDhBTg
         acCTxudpvMNuSFPjgA7Pg4FHlQVdhmbss/FnLatEF5Cg1ZO3dAhBkA7RroOwvconj73s
         WRRCMB7dIbESIAsYiGounkjaf8qJU7dfS5zjG+B5J4YfaTwZR31tnUfk7VJxoSJ2+zKV
         x/DvAGhSejoKwSECeKcSOMM3RX8RiQH2l39qo9mzwooCSHa7D+wPCqqJpB87TnekrYbp
         0RzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vYEj4/W26dJIBide2+y3vFIE6MjoFe/WKhSCE+JU0u8=;
        b=LMQ04iMNl+HUuM7ktyUdHCvaIDbpWmIWLhD1Fgl1RwRJIbkf967zTi893jaASs71JJ
         wUVRwzFUH3yzWq6drCYnHu/L0paZcY+wlr3sKL93hqg9YbJT7Gvm8hEdLfvQvTyosvPk
         pzUeQ6TPYzkAKUCaIF1aMXvkzm3WCrXmifGhXpr2sIe8T9pPpv5CRZixTRfnAf8DdWug
         O9eFogh1qDciq+A58MgxlMljidm7vigPD66VO5tAGK5pqYXXZOZSAiy3ZV1DOCWdAYXf
         2rf4Y1b7O4X9buGXPiAEk0J6F6x8q3HT9y/2vq0Mf0fAxF8sNUc6DWp7YKhM8Zmp+aJv
         ePjw==
X-Gm-Message-State: AOAM532c7rxmgRRLJVy6n91xnlk+4SslrYrlmRxesZFLuFLkeqYhIrY9
        hlSOmkB5bmrqTOZ+ABtzC3GjUg==
X-Google-Smtp-Source: ABdhPJxYFVUEHHotsDBZ48PIKNj249pfFYvdCpKQejQz5mHLhJaldnfjTU40OMGNWyC9Zt53rT7g2w==
X-Received: by 2002:a2e:96cd:: with SMTP id d13mr4005775ljj.213.1617846466045;
        Wed, 07 Apr 2021 18:47:46 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w24sm2686705ljh.19.2021.04.07.18.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 18:47:45 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH v2 0/4] clk: qcom: convert gcc-sdm845 to use parent_data
Date:   Thu,  8 Apr 2021 04:47:34 +0300
Message-Id: <20210408014737.955979-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert sdm845 global clock controller driver to use parent_data and
parent_hws.

Changes since v2:
 - Stop making pcie clocks as optional in qcom,gcc-sdm845.yaml. Make
   them required.
 - Rephrase dt-bindings commit message to directly specify the reason
   for splitting the bindings.

Changes since v1:
 - Use ARRAY_SIZE() for num_parents and parent_hws instead of
   parent_data where applicable as suggested by Marijn Suijten.


The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:

  Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)

are available in the Git repository at:

  https://git.linaro.org/people/dmitry.baryshkov/kernel.git qcom-clk-gcc-sdm845

for you to fetch changes up to 57d95e6bd1eb92ca61587768fc621571a86cc211:

  arm64: dts: qcom: sdm845: add required clocks on the gcc (2021-04-08 04:40:26 +0300)

----------------------------------------------------------------
Dmitry Baryshkov (4):
      dt-bindings: clock: separate SDM845 GCC clock bindings
      clk: qcom: convert SDM845 Global Clock Controller to parent_data
      clk: qcom: gcc-sdm845: get rid of the test clock
      arm64: dts: qcom: sdm845: add required clocks on the gcc

 .../devicetree/bindings/clock/qcom,gcc-sdm845.yaml |  82 +++
 .../devicetree/bindings/clock/qcom,gcc.yaml        |   2 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |  12 +
 drivers/clk/qcom/gcc-sdm845.c                      | 650 ++++++++++-----------
 4 files changed, 417 insertions(+), 329 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml
