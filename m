Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20CC6615DE9
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 09:38:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbiKBIiK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 04:38:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiKBIiJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 04:38:09 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0165624BF8
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 01:38:07 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id k7so6185934pll.6
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 01:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hJGPayayBC+qiXWCRJ9hCea3jMLnq0xughVCq6oneVg=;
        b=gN4V9bRPfg+ByaCH9eEFI9fo3j+dMH85dRfTdT6af1MPxrg+tYKB9STPS4aU1807of
         qBopKXYNWkvAR8hU4d67qrvd1VB2Tn8vTPmusnvsB9cKmUJHlFXwlx9fsQlSZlpOdlDF
         ueUxbN6NkPAdKzC3uC0fyk8l00j0Qcq9Rex9deakVsgCAunyOEvobYr2oKG0NOmCcZfG
         lQxbP2MVAxgtKZvDe5XhTMP8IQKsavFu+nX8tEktwoTq29h4WCjy/9GSwXbNDY/Ik7g8
         /u+hcRLb40tbJ73yU6RCGut6lLAzmgRuGcuWpnsgUljwnctLRaJrldE21VieEdmnx0cR
         tokw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hJGPayayBC+qiXWCRJ9hCea3jMLnq0xughVCq6oneVg=;
        b=zdOelNLx61rGX6+THCBZ8AJgya0XL6c7yrvnvM54aB3IJP747PgPzdsU8EZ9uZ0QDL
         oSmQeOvU7Ca/k7kYd/Kiyiosvj61zMZEdrVjYS+TFKf4ASGmnzzFiQqElTmIOKvrYfYP
         N61TWpCCunLfhYMxdrmvAV/ajpRDoX1USDzEgUObuas3sOcQR/GftakJMb+XTurJOXvd
         FMs2G5catPm8cA09CygrPVwF+AdT+hWO02uHFBF+9ibckF7O8h7m9LepQsImwk86q+Y/
         Gmywdzu5FzNKY4Uvt7sErADkECI+XfDScMPVm8SxjRAa5SrLv88B8vN9GxPqeYlfV7V7
         5pwg==
X-Gm-Message-State: ACrzQf3A1MXAlFE22+DIx6pwcgK64tc9xldvY9uYA5sW1HxIyC9dP16O
        AMpZNXMvOAwomjv0vRjWCJOg
X-Google-Smtp-Source: AMsMyM4WLiSemzP8HxeHMzFWxYd6s821xdZtEiVTp/bjtw30qjIodM/m3P4WoBtLWihcH023PIE+WA==
X-Received: by 2002:a17:90a:b792:b0:214:2a4a:4bbc with SMTP id m18-20020a17090ab79200b002142a4a4bbcmr2887944pjr.81.1667378287222;
        Wed, 02 Nov 2022 01:38:07 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.178])
        by smtp.gmail.com with ESMTPSA id x19-20020aa79573000000b0056bcb102e7bsm7887770pfq.68.2022.11.02.01.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 01:38:06 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, viresh.kumar@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, rafael@kernel.org,
        robh+dt@kernel.org
Cc:     johan@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/3] qcom-cpufreq-hw: Add CPU clock provider support
Date:   Wed,  2 Nov 2022 14:07:48 +0530
Message-Id: <20221102083751.56330-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds clock provider support to the Qcom CPUFreq driver for
supplying the clocks to the CPU cores in Qcom SoCs.

The Qualcomm platforms making use of CPUFreq HW Engine (EPSS/OSM) supply
clocks to the CPU cores. But this is not represented clearly in devicetree.
There is no clock coming out of the CPUFreq HW node to the CPU. This created
an issue [1] with the OPP core when a recent enhancement series was submitted.
Eventhough the issue got fixed in the OPP framework in the meantime, that's
not a proper solution and this series aims to fix it properly.

There was also an attempt made by Viresh [2] to fix the issue by moving the
clocks supplied to the CPUFreq HW node to the CPU. But that was not accepted
since those clocks belong to the CPUFreq HW node only.

The proposal here is to add clock provider support to the Qcom CPUFreq HW
driver to supply clocks to the CPUs that comes out of the EPSS/OSM block.
This correctly reflects the hardware implementation.

The clock provider is a simple one that just provides the frequency of the
clocks supplied to each frequency domain in the SoC using .recalc_rate()
callback. The frequency supplied by the driver will be the actual frequency
that comes out of the EPSS/OSM block after the DCVS operation. This frequency
is not same as what the CPUFreq framework has set but it is the one that gets
supplied to the CPUs after throttling by LMh.

This series has been tested on SM8450 based dev board with the OPP hack removed
and hence there is a DTS change only for that platform. Once this series gets
accepted, rest of the platform DTS can also be modified and finally the hack on
the OPP core can be dropped.

Thanks,
Mani

[1] https://lore.kernel.org/lkml/YsxSkswzsqgMOc0l@hovoldconsulting.com/
[2] https://lore.kernel.org/lkml/20220801054255.GA12039@thinkpad/t/

Changes in v3:

* Submitted the cpufreq driver cleanup patches as a separate series as
  suggested by Viresh
* Removed static keyword from clk_init_data declaration

Changes in v2:

* Moved the qcom_cpufreq_data allocation to probe
* Added single clock provider with multiple clks for each freq domain
* Moved soc_data to qcom_cpufreq struct
* Added Rob's review for binding

Manivannan Sadhasivam (3):
  dt-bindings: cpufreq: cpufreq-qcom-hw: Add cpufreq clock provider
  arm64: dts: qcom: sm8450: Supply clock from cpufreq node to CPUs
  cpufreq: qcom-hw: Add CPU clock provider support

 .../bindings/cpufreq/cpufreq-qcom-hw.yaml     | 12 ++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  9 ++++
 drivers/cpufreq/qcom-cpufreq-hw.c             | 43 +++++++++++++++++++
 3 files changed, 64 insertions(+)

-- 
2.25.1

