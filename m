Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9710F73B4BC
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 12:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbjFWKKT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 06:10:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232089AbjFWKKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 06:10:01 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1DC72D5E
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 03:08:50 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f90a7325f6so5822125e9.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 03:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687514929; x=1690106929;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fDzo5p1mZFBjmKSvhuFKJUtPJvnlJYcgbu3Ka9Hgxzg=;
        b=LveZnjMCCP6/fpLmRtKGNhRIBVmVK8oK/2H6vqKNdprxDvC+pY1VSdVbkOKJTvvbeh
         HAkpEq2O+8Ih/1+l7K/hMvqY7rl1E+km397snNYReBh684dv2IA+Gg0TxACACoVd0x1U
         K0avKe8Yg2bXKN8LZZPJFbYrRZemip/M1Q+5QFfl2NpRD1KdtE4Mt2XJTceKYZr+DVLI
         BCyUILxBK8ac65/zzcIWnljpVK6Ih3fAnp95R60fB2wPiwh3wY9uFQqN6pjPu76/5dzP
         Iz+P9QuFEVVQz1pZdtdHTIA1crTylPnUmO9ubd8DNDyMv8W+S703s78z05Q/Nyn8RREA
         cLEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687514929; x=1690106929;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fDzo5p1mZFBjmKSvhuFKJUtPJvnlJYcgbu3Ka9Hgxzg=;
        b=RuLSZf39TltkJttAxKsIH4FgXVoGiZs/xP8cWr3Epp7tS9Ogy/y2Apwpii4iRrybbY
         ASEY72NxYj041U35BsIEqTz8vlnCHym6ic27+LXiDGQVk6OvkSVLmtNo5rWlY0TcZ4do
         Dtaq5sgSZSJtPG72S3hqd8A8j+vYg2gFjBC2kiAi5FaG5Es5HVYQs3Pm5+fMRQXYPqQe
         26sCLmXg9BKof4MGpALP57Gp9QIuvvHCHcipX7LjC0ZnE/+94sY7akCCForxvpxgOAWM
         SQ4WqnUm8Z7t4xcITuowzLoBdbaLxu+MH80J+FlmbJ5p5n4cZ0ux15+2OnGzFxQb1Xie
         dGfw==
X-Gm-Message-State: AC+VfDzzbYxq4Itwt069OEGpbjE+JyIkn8JDxUEj0zm6oXmoHaC/mzAl
        YuM6nAiQcD0qk5H+7oRB2RcQsw==
X-Google-Smtp-Source: ACHHUZ68lFgy+5quSvGjq6/o294si3N8IqybkvRXb9VA4ggHvddBsyRaC/PDXNVdHtbL1mYT0kS3XQ==
X-Received: by 2002:a05:600c:22cf:b0:3f9:b358:8197 with SMTP id 15-20020a05600c22cf00b003f9b3588197mr10247113wmg.11.1687514929338;
        Fri, 23 Jun 2023 03:08:49 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:ddc2:ce92:1ed6:27bd])
        by smtp.gmail.com with ESMTPSA id k18-20020adfe8d2000000b0030ae3a6be4asm9278100wrn.72.2023.06.23.03.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 03:08:48 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Andrew Halaney <ahalaney@redhat.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH net-next v2 00/12] net: stmmac: replace boolean fields in plat_stmmacenet_data with flags
Date:   Fri, 23 Jun 2023 12:08:33 +0200
Message-Id: <20230623100845.114085-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

As suggested by Jose Abreu: let's drop all 12 boolean fields in
plat_stmmacenet_data and replace them with a common bitfield.

v1 -> v2:
- fix build on intel platforms

Bartosz Golaszewski (12):
  net: stmmac: replace the has_integrated_pcs field with a flag
  net: stmmac: replace the sph_disable field with a flag
  net: stmmac: replace the use_phy_wol field with a flag
  net: stmmac: replace the has_sun8i field with a flag
  net: stmmac: replace the tso_en field with a flag
  net: stmmac: replace the serdes_up_after_phy_linkup field with a flag
  net: stmmac: replace the vlan_fail_q_en field with a flag
  net: stmmac: replace the multi_msi_en field with a flag
  net: stmmac: replace the ext_snapshot_en field with a flag
  net: stmmac: replace the int_snapshot_en field with a flag
  net: stmmac: replace the rx_clk_runs_in_lpi field with a flag
  net: stmmac: replace the en_tx_lpi_clockgating field with a flag

 .../stmicro/stmmac/dwmac-dwc-qos-eth.c        |  4 +-
 .../net/ethernet/stmicro/stmmac/dwmac-intel.c | 23 +++++------
 .../ethernet/stmicro/stmmac/dwmac-mediatek.c  |  5 ++-
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        |  8 ++--
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c |  2 +-
 .../net/ethernet/stmicro/stmmac/dwmac-tegra.c |  4 +-
 .../ethernet/stmicro/stmmac/stmmac_hwtstamp.c |  4 +-
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 40 +++++++++++--------
 .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  2 +-
 .../ethernet/stmicro/stmmac/stmmac_platform.c | 10 +++--
 .../net/ethernet/stmicro/stmmac/stmmac_ptp.c  |  5 ++-
 include/linux/stmmac.h                        | 26 ++++++------
 12 files changed, 76 insertions(+), 57 deletions(-)

-- 
2.39.2

