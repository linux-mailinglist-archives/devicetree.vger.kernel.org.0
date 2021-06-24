Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A98B43B2E43
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 13:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbhFXMAf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 08:00:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230225AbhFXMAe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 08:00:34 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9D0FC061760
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 04:58:15 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id o6so13741598qkh.4
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 04:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WwLl5u4O61O74++WtE584Gux9OkK2rj8VPrz5kolkEg=;
        b=BuGZElxT9d2bPp2vJ3vm68V2zqLXycPZwaWV34SKRJk62Y/5FLpPjFZ9aZEl4HnxAH
         KUNVELYQjKXq7lelDdrWgZ0+XR2J9ruLsQJkRTm3jIb+4866+W5KZ2zjpxe5A9M8Gf4B
         m869/dhLJ/NDDPSFsT9Bc0r9YksuDMb4BIriuhQIG3hpznS2OQcPv/pdurz1wtHb7RFY
         HcKVXsq8J/eI7wrbbDFYPh6yZ7FwqT/SsjQwO6oVwDtLPyBxu5gC4A/HX9WDqltUhQ1L
         6kSnmdnfW7wt3qUVlVm9Y615+9XmIMvF4S2Drs07odpyes1u3LHptBIPqwK0zTcSdjmX
         rKWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WwLl5u4O61O74++WtE584Gux9OkK2rj8VPrz5kolkEg=;
        b=FQELZQYbgCptw7YhNdEPro3dk/RdgxaoZspTIR2cOAugAZLwAhiNZfKttRho8D2yMC
         9AUt45VQ7/khXQ/7f83Z4h0/2vNSS6JbDlu/5//MiUTGN0X+k0o0JFePsekfrO8JOKGF
         2qKekU+EKIkkncMhL7TqaLCKA4SCFS4U1E73FvOzjdCycw62+jYaGlYB1vmuGKyty0bK
         Jp6g6NMOS9vml411IfEXte7V55ny97nwa0W1Li4iNdVkwPj9ndw5lbMOtsngbQDZoRZH
         yjye0KkyRqDftGHaRomMvLaHKQWcoB/1IIXtJGKDmIMOiwqLAXNHVtweDVIH45/1E+C6
         vIiA==
X-Gm-Message-State: AOAM533uFj1cXfIuMBZF12Fo9ecF9iSd0ptRzt1G00/7C5wM6xSKc5yu
        EoHmKOUI9t3hpKTj+8/zceKyHw==
X-Google-Smtp-Source: ABdhPJxzJNZvSodTuTsQhD7kukuCS2PPrWPZRpe7gIsd2G/g+99wU559bFsZ6kEDWu2Lr8nlexAdyA==
X-Received: by 2002:a37:6244:: with SMTP id w65mr5390624qkb.304.1624535894939;
        Thu, 24 Jun 2021 04:58:14 -0700 (PDT)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id w3sm2287173qkp.55.2021.06.24.04.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 04:58:14 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, rui.zhang@intel.com,
        daniel.lezcano@linaro.org, viresh.kumar@linaro.org,
        rjw@rjwysocki.net, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [Patch v2 0/5] Introduce LMh driver for Qualcomm SoCs
Date:   Thu, 24 Jun 2021 07:58:08 -0400
Message-Id: <20210624115813.3613290-1-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Limits Management Hardware(LMh) is a hardware infrastructure on some
Qualcomm SoCs that can enforce temperature and current limits as programmed
by software for certain IPs like CPU. On many newer SoCs LMh is configured
by firmware/TZ and no programming is needed from the kernel side. But on
certain SoCs like sdm845 the firmware does not do a complete programming of
the h/w block. On such SoCs kernel software has to explicitly set up the
temperature limits and turn on various monitoring and enforcing algorithms
on the hardware.

Introduce support for enabling and programming various limit settings and
monitoring capabilities of Limits Management Hardware(LMh) associated with
cpu clusters. Also introduce support in cpufreq hardware driver to monitor
the interrupt associated with cpu frequency throttling so that this
information can be conveyed to the schdeuler via thermal pressure
interface.

With this patch series following cpu performance improvement(30-70%) is
observed on sdm845. The reasoning here is that without LMh being programmed
properly from the kernel, the default settings were enabling thermal
mitigation for CPUs at too low a temperature (around 70-75 degree C).  This
in turn meant that many a time CPUs were never actually allowed to hit the
maximum possible/required frequencies.

UnixBench whets and dhry (./Run whets dhry)
System Benchmarks Index Score

                Without LMh Support             With LMh Support
1 copy test     1353.7                          1773.2

8 copy tests    4473.6                          7402.3

Sysbench cpu
sysbench cpu --threads=8 --time=60 --cpu-max-prime=100000 run

                Without LMh Support             With LMh Support
Events per
second                  355                             614

Avg Latency(ms)         21.84                           13.02

Thara Gopinath (5):
  firmware: qcom_scm: Introduce SCM calls to access LMh
  thermal: qcom: Add support for LMh driver
  cpufreq: qcom-cpufreq-hw: Add dcvs interrupt support
  arm64: boot: dts: qcom: sdm45: Add support for LMh node
  arm64: boot: dts: qcom: sdm845: Remove passive trip points for thermal
    zones 0-7

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 162 +++--------------
 drivers/cpufreq/qcom-cpufreq-hw.c    | 103 +++++++++++
 drivers/firmware/qcom_scm.c          |  54 ++++++
 drivers/firmware/qcom_scm.h          |   4 +
 drivers/thermal/qcom/Kconfig         |  10 ++
 drivers/thermal/qcom/Makefile        |   1 +
 drivers/thermal/qcom/lmh.c           | 251 +++++++++++++++++++++++++++
 include/linux/qcom_scm.h             |  14 ++
 8 files changed, 463 insertions(+), 136 deletions(-)
 create mode 100644 drivers/thermal/qcom/lmh.c

-- 
2.25.1

