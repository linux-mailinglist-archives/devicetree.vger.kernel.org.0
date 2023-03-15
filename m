Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8CE6BA7F8
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 07:43:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbjCOGnW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 02:43:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbjCOGnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 02:43:08 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A8A62A6F9
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:43:06 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so865882pjz.1
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678862586;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ePMarXA0Qnj4AUFPeQC0NsqTebmNVn+MNbHKHb6EStE=;
        b=y5gFqot/Jz2xmbtAFJf0ulO3HWY7kChWFFdLZTOwDhiL76t9vTIevVQhPLIs6BbAQS
         9KSMexRg97l7x0TZQQmafab/3UGwK71TkTxJUtl6VhSrIbPlBbBx/4D63n1LvI/Cwumy
         UdvemG2z2NCp9oCV36JvJzBzhsYEQ/xj5SK+xy8+rBtoPNERT3mgvwBSVYUDvsuwwfAi
         kCZeiIhl9p3EFeSrg5K56zWaJnHmEV4371ryYJu6lEQy+vQcrH3ulEfdcTuo1wn+fbHY
         njLcjEJ5NHl72cGCDUQ9uMgbz8sWvuC0bGg1IHiZJvYaEVZiBhBggNWsFtj6xy7WvCAq
         yWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678862586;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePMarXA0Qnj4AUFPeQC0NsqTebmNVn+MNbHKHb6EStE=;
        b=3Yq2S6IxpxJ//kmL+afcGN4/eOlxjrNkwtimYW81hpjhaYh7S8LgRXAET/1UGPp2fK
         z1IYLDVntuTvQHpGdt+azciA/w95qmgOTjVo/ADOlNxyFbEr0w73nipghi7zlGxxCZL4
         ER13zdhrsjOGVzkYhAoVyI38HrDhTJXQfhhcl83yHIOJKi0KMewx54+3hGCe9RrmkkAj
         2CC+CefnGeFzd2F+TNZBnrg5RjK3fjiddsRLd6LfxwfE58+fVP5L0daxtObfh/ogBUwa
         T9K2ub4M/+KjX31+fRQHujVYfyN+iVvU/47QupFMU1K4/+Nvm7bkHwmAhDG0W2FQKbVe
         dtmw==
X-Gm-Message-State: AO0yUKVMMjDQvfeKZlawlJLZuG2s+qzPMAlsBoViTAs0022T87gLMxGQ
        K8XAyJ5ThRbwMX8fLAXel0tZp+c/CrRHoiB/fw==
X-Google-Smtp-Source: AK7set9u3RRV2BuRSwVAuTUgOwFiytzZqZW6zZjqgy2tR7MjySkTCvMm6m206Nb9CQ+YJO9MY1R/XA==
X-Received: by 2002:a17:90a:8a05:b0:23d:3bc5:a0b6 with SMTP id w5-20020a17090a8a0500b0023d3bc5a0b6mr3906146pjn.23.1678862585775;
        Tue, 14 Mar 2023 23:43:05 -0700 (PDT)
Received: from localhost.localdomain ([117.217.182.35])
        by smtp.gmail.com with ESMTPSA id u4-20020a17090a6a8400b002367325203fsm550747pjj.50.2023.03.14.23.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 23:43:04 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org
Cc:     konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_srichara@quicinc.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 00/18] Qcom PCIe cleanups and improvements
Date:   Wed, 15 Mar 2023 12:12:37 +0530
Message-Id: <20230315064255.15591-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series brings in several code cleanups and improvements to the
Qualcomm PCIe controller drivers (RC and EP). The cleanup part mostly
cleans up the bitfield definitions and transitions to bulk APIs for clocks,
and resets. The improvement part adds the debugfs entries to track link
transition counts in RC driver.

Testing
-------

This series has been tested on SDM845, SM8250, SC8280XP, IPQ4019 based
platforms.

Merging Strategy
----------------

Binding and driver patches through PCI tree and DTS patches through Qcom
tree.

NOTE: For the sake of maintaining dependency, I've clubbed both cleanup and
improvement patches in the same series. If any of the maintainers prefer to
have them splitted, please let me know.

Thanks,
Mani

Changes in v4:

* Dropped the debugfs patch for v2.4.0 as the registers only expose the status
  and not the transition count which is not useful
* Modified the existing debugfs patch to be applicable for all SoCs that define
  "mhi" region

Changes in v3:

* Introduced init_debugfs callback for defining the debugfs interface specific
  to IP versions
* Added a debugfs patch for v2.4.0
* Added a patch to rename qcom_pcie_config_sid_sm8250() function
* Added tested-by for patch 11/19

Changes in v2:

* Moved the "mhi" region to last in the binding and dtsi's
* Dropped the patches renaming the "mmio" region

Manivannan Sadhasivam (18):
  PCI: qcom: Remove PCIE20_ prefix from register definitions
  PCI: qcom: Sort and group registers and bitfield definitions
  PCI: qcom: Use bitfield definitions for register fields
  PCI: qcom: Add missing macros for register fields
  PCI: qcom: Use lower case for hex
  PCI: qcom: Use bulk reset APIs for handling resets for IP rev 2.1.0
  PCI: qcom: Use bulk clock APIs for handling clocks for IP rev 1.0.0
  PCI: qcom: Use bulk clock APIs for handling clocks for IP rev 2.3.2
  PCI: qcom: Use bulk clock APIs for handling clocks for IP rev 2.3.3
  PCI: qcom: Use bulk reset APIs for handling resets for IP rev 2.3.3
  PCI: qcom: Use bulk reset APIs for handling resets for IP rev 2.4.0
  PCI: qcom: Use macros for defining total no. of clocks & supplies
  PCI: qcom: Rename qcom_pcie_config_sid_sm8250() to reflect IP version
  dt-bindings: PCI: qcom: Add "mhi" register region to supported SoCs
  arm64: dts: qcom: sdm845: Add "mhi" region to the PCIe nodes
  arm64: dts: qcom: sm8250: Add "mhi" region to the PCIe nodes
  arm64: dts: qcom: sc8280xp: Add "mhi" region to the PCIe nodes
  PCI: qcom: Expose link transition counts via debugfs

 .../devicetree/bindings/pci/qcom,pcie.yaml    |   12 +-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |   25 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |   10 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |   15 +-
 drivers/pci/controller/dwc/pcie-qcom.c        | 1156 +++++++----------
 5 files changed, 476 insertions(+), 742 deletions(-)

-- 
2.25.1

