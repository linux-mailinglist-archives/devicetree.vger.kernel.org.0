Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDE7F4A9B32
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 15:46:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359404AbiBDOqt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 09:46:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359401AbiBDOqt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 09:46:49 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B51BAC061714
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 06:46:48 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id u6so13045334lfm.10
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 06:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fisu5bji3fIoURp+xdhRgDLo3A3O394wYL0x93rjb1Y=;
        b=V81Qg4LZo7sFFp0c7+ChNOSWWObUV7Srz6BJe+flTfKZxwAAjwp1k9daZGhssBIbnV
         /piblH6FMzbzS1d3Aj1uuDboR2CFMPBSBMzh/qPeUlVKC9BcJzqmKl+Gw9q3M/Nq2Bni
         YT0Agw11EcO3WB740DaCBY31f2SxCMLy9qMgP80L0Ikl+VR+7dwwubZNg3vwkMNOGv21
         jGVPckvK/ktT4hElZQt5DKuoU30AFROXotLO/lzuQIUdEOI6RQ/ygLb3piY1IDW7yS2e
         3fbdUs7uCqvs6PX1u3ENMp6WPODFnDoDWQ4DzHXQw3IafuhLV5/J370s7ngMjmjYpFoz
         +vVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fisu5bji3fIoURp+xdhRgDLo3A3O394wYL0x93rjb1Y=;
        b=4zX129xCqeQRDQu7ag4cWR31aIbft0JUdx7b1dVA7xNIH1TK/wOOEK4QsevNxUSiPC
         zg+rvIVnFFO0/17DvE+BzTsa8ChYxAx/xKK//xY+QfO3gGGcsYG8dHnFWGB1EOaQXdEy
         RwStvnDQdIE5w48ENWiPL+pore/ebPoURKneDvpugfSBaauRWoVgDpE9Yu4pyKIvllK1
         emYfjk3qvwBA3UWvIC3IIeGiPGRuQoxCTIBhz97hBhuvUplhbteG40gUPeZkBWruya5p
         aUi+DY7vcxYT3Pn9oDe3oiI+eMcQIgKFWMEKSuLKtwacBD90eWwdnROHMqfVOyItZ6ZO
         gDvA==
X-Gm-Message-State: AOAM530HqHBuzv4sCbzEpB5CBFVw2WMn5mawwdFjRY2XTQKZdpEynzDB
        V+Gy3o09MedNa3do5h9KguwowA==
X-Google-Smtp-Source: ABdhPJyx6f7Bh/NKmbuLYfFxf3wc4oomuHB9rOHPuBTT67ObRu0Y/JHhzd2K9d/286dV0FoNxULshA==
X-Received: by 2002:a05:6512:2620:: with SMTP id bt32mr2430493lfb.311.1643986007105;
        Fri, 04 Feb 2022 06:46:47 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y23sm348222lfb.2.2022.02.04.06.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 06:46:46 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 00/11] PCI: qcom: add support for PCIe on SM8450 platform
Date:   Fri,  4 Feb 2022 17:46:34 +0300
Message-Id: <20220204144645.3016603-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two different PCIe controllers and PHYs on SM8450, one having
one lane and another with two lanes. Add support for both PCIe
controllers.

After comparing upstream and downstream Qualcomm PCIe drivers, change
the way the driver works with the pipe_clk_src multiplexing.

The clock should be switched to using ref_clk (TCXO) as a parent before
turning the PCIE_x_GDSC power domain off and can be switched to using
PHY's pipe_clk after this power domain is turned on.

Downstream driver uses regulators for the GDSC, so current approach also
(incorrectly) ties pipe_clk multiplexing to regulator
enablement/disablement. However upstream driver uses power-domain and
so GDSC is maintained using pm_runtime_foo() calls. Previous iteration
of this patchset changed the order of operations to call
pm_runtime_foo(). This iteration changes apprach and moves pipe clock
source handling to the GDSC instead. This way the drivers are sure that
the clock is fed from the correct source.

Changes since v1:
 - Merge two patchsets
 - Move pipe_clk_src handling into the GDSC driver
 - Drop interconnect patch (subject for futher research)
 - Remove "pipe" clock from qcom,pcie bindings as it's removed from the
   source code.

Dmitry Baryshkov (11):
  dt-bindings: pci: qcom,pcie: drop unused "pipe" clocks
  dt-bindings: pci: qcom: Document PCIe bindings for SM8450
  clk: qcom: gdsc: add support for clocks tied to the GDSC
  clk: qcom: gcc-sc7280: switch PCIe GDSCs to pipe_clk_gdsc
  clk: qcom: gcc-sm8450: switch PCIe GDSCs to pipe_clk_gdsc
  PCI: qcom: Balance pm_runtime_foo() calls
  PCI: qcom: Remove unnecessary pipe_clk handling
  PCI: qcom: Remove pipe_clk_src reparenting
  PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
  PCI: qcom: Add ddrss_sf_tbu flag
  PCI: qcom: Add SM8450 PCIe support

 .../devicetree/bindings/pci/qcom,pcie.txt     |  20 +-
 drivers/clk/qcom/gcc-sc7280.c                 | 114 ++++-------
 drivers/clk/qcom/gcc-sm8450.c                 | 104 ++++------
 drivers/clk/qcom/gdsc.c                       |  41 ++++
 drivers/clk/qcom/gdsc.h                       |  14 ++
 drivers/pci/controller/dwc/pcie-qcom.c        | 188 ++++++------------
 6 files changed, 219 insertions(+), 262 deletions(-)

-- 
2.34.1

