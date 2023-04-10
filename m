Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD44E6DCBE4
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 22:00:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbjDJUAU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 16:00:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbjDJUAU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 16:00:20 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 924291FC2
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 13:00:17 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id e20so6108924lji.6
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 13:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681156816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NDUmxVAjrN5Lm56sfIfKZCJ3s39s5f7ghbzYII7MHLU=;
        b=Xwk58mvNOAEThz0tCz/+DvXFoFZThEXonHnTDUVuCl2SOEfphJir0rbYJ25J0Kzr8F
         ok7CndbCSGTngNsYMFoTxUWXRIf4NciNULHL9i4bWgml3sezCiV2QriGMMAjMLwL3n+f
         fXYmE/xSWlxjY2jEzgfgtiLux4f3qpyNcnQkGydeo2Wqhu9n1mtsXkttj+oSGaMpErk/
         nZGFWU20TkCpuvsYwmkwkbY/AobvVW4b90dpjWigh4gk91Bakdat9U6SboVej1W0GnSn
         keTN8QXRB6vnH/qWFWCX0eqfRzhDs4LNpiMxaH/OVmFghZEq6ixTzHwe2600XL+V8Tm2
         32og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681156816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NDUmxVAjrN5Lm56sfIfKZCJ3s39s5f7ghbzYII7MHLU=;
        b=5WBfkS1RS2xzVAb48uTrgVoesl9jPVvhBDllzCXquENQzyVFYzYdPftFF4TH2n2cTT
         kck1FUqEwZTPMWuWT6ljdS+tOzJD5G9VsX59ItEtKvRJ8Th/tff7YHZJwMQZdCAecu8h
         F6q/ug0858uZhdlHmuqV9hgawdGf5dllKXwp7lrEt5zTl4W4qGH689/ZzoAkOJ1tkS00
         SAcdt8dTFESUhW4kdTfhXmgxP5TDbjCng5AFyGdPH3MddjCfe5vhmLxgQJTwhf8OHfDW
         bEDDHtpbP1jMZNQhuNcQrHDQ6y9GauXJqmyYbcNpMbCZeLmJMqa5Fm3TvSo5lpnEEME5
         z3Vw==
X-Gm-Message-State: AAQBX9fLg7FR+PuEk8pmNZe3OpY2LsEOOsfp+xyCZZn0qfosOiGIwEQs
        3794WJqbW8/D7LAJkRPynncZQw==
X-Google-Smtp-Source: AKy350aY8e+m/utQRn0nylzqrQ0eVD9Obve+qoEOy7oznsYS3j1jDYePOZDcdEdNdlEgsYCmt211pA==
X-Received: by 2002:a2e:a268:0:b0:2a0:5a99:65d8 with SMTP id k8-20020a2ea268000000b002a05a9965d8mr3507440ljm.18.1681156815839;
        Mon, 10 Apr 2023 13:00:15 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z2-20020a2e8e82000000b002a7729eea3dsm973482ljk.88.2023.04.10.13.00.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 13:00:15 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v5 0/4] clk: qcom: msm8996: add support for the CBF clock
Date:   Mon, 10 Apr 2023 23:00:10 +0300
Message-Id: <20230410200014.432418-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On MSM8996 two CPU clusters are interconnected using the Core Bus
Fabric (CBF). In order for the CPU clusters to function properly, it
should be clocked following the core's frequencies to provide adequate
bandwidth.

Register CBF as a clock (required for CPU to boot) and add a tiny
interconnect layer on top of it to let cpufreq/opp scale the CBF clock.

Changes since v4:
- Fixed typos in commit messages

Changes since v3:
- Dropped merged patches
- Moved interconnect shim to drivers/interconnect/icc-clk.c

Changes since v2:
- Added interconnect-related bindings
- Switched CPU and CBF clocks to RPM_SMD_XO_A_CLK_SRC

Changes since v1:
- Relicensed schema to GPL-2.0 + BSD-2-Clause (Krzysztof)
- Changed clock driver to use parent_hws (Konrad)
- Fixed indentation in CBF clock driver (Konrad)
- Changed MODULE_LICENSE of CBF clock driver to GPL from GPL-v2
- Switched CBF to use RPM_SMD_XO_CLK_SRC as one of the parents
- Enabled RPM_SMD_XO_CLK_SRC on msm8996 platform and switch to it from
  RPM_SMD_BB_CLK1 clock


Dmitry Baryshkov (4):
  dt-bindings: interconnect/msm8996-cbf: add defines to be used by CBF
  interconnect: add clk-based icc provider support
  clk: qcom: cbf-msm8996: scale CBF clock according to the CPUfreq
  arm64: dts: qcom: msm8996: scale CBF clock according to the CPUfreq

 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  51 ++++++
 drivers/clk/qcom/Kconfig                      |   1 +
 drivers/clk/qcom/clk-cbf-8996.c               |  59 +++++-
 drivers/interconnect/Kconfig                  |   6 +
 drivers/interconnect/Makefile                 |   2 +
 drivers/interconnect/icc-clk.c                | 168 ++++++++++++++++++
 .../interconnect/qcom,msm8996-cbf.h           |  12 ++
 include/linux/interconnect-clk.h              |  22 +++
 8 files changed, 320 insertions(+), 1 deletion(-)
 create mode 100644 drivers/interconnect/icc-clk.c
 create mode 100644 include/dt-bindings/interconnect/qcom,msm8996-cbf.h
 create mode 100644 include/linux/interconnect-clk.h

-- 
2.30.2

