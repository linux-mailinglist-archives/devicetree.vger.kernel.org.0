Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8629260D09
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 10:05:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729911AbgIHH5f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 03:57:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729724AbgIHH5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 03:57:32 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ADD1C061756
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 00:57:31 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id d6so3237135pfn.9
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 00:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ITdkk36tx9oBNoeh+htptP26+GpLBLf3As2BXQ4eM1k=;
        b=CLdfO9RzXJzpfk8lmE2Wst3FdItUkCfAYmuowNuE88a7a1WPiN6S9D5Z3S/rzKmDLM
         haVL+hkxhNc+BfT6GpMVG4VRBJTFkKHn6vsyrMuSKCO241m+QripjjpGjtO8IABKQDI6
         7T/IJbulr09PZ59rrhIa4yASomd9RbTXUD8b1R5Hw8orz8J8Q+Ella/jW9+o+LhszXYf
         fhidD76Q8Tr+DXLcTeCxUj+F2HJJCXx1QmoYQokl+ziA+k0xaUrLEA96WofYQaS+xqG0
         /ESezN1Pf0+wA6FkZrXvYkVYhUqZpzxHymCNtZuaoJiP8PjTI/ZflhvJ/f/AAcWSTz6I
         mchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ITdkk36tx9oBNoeh+htptP26+GpLBLf3As2BXQ4eM1k=;
        b=YUwF0PRNhmotYHJsPzcujpWmmwH+gj4pIWughAdV0AOzPUZ79cjIR8znzo0SFb5MgX
         khdm2A2SxC/zjizJgWtOfaTNVnh/6LtHOlj22B47NM/jMuAUQvwYjD9VucMHWJ1rcj+L
         ktcJZaaR9/06algh0xnclk9xAfMR7cNfAao1sIA0NVTLPfgWy/pbvkZh15wG0ZfbtgfL
         P27Zu26qxQtUoHjrUjU0Ha2IVY7Ig7Cb7s5IzrIA2yTl1DuRnjppdqPuH1+vUdt0rlKV
         yh1hj6nIKIlTQpnR3R77zgfVAwcOoj3wgiMHVGLP1Z6Mc2OWFo4J+QSm4zKozPpQgnPC
         Yj4Q==
X-Gm-Message-State: AOAM5301vaAUbwgvY+xSu/jGmGkJZnz2SNEz5lFzaA75ZRufHvTGD/6l
        Zd10qrnBcPDPPOTJVoVOy0Ts
X-Google-Smtp-Source: ABdhPJxQqQutMxwbopIVDuWQ82nAqur0M9bIpK2rrrtnp1TxBVoi90q3P+vr1rg4AlMOCvDjvycO5Q==
X-Received: by 2002:a17:902:6945:: with SMTP id k5mr2325037plt.131.1599551850609;
        Tue, 08 Sep 2020 00:57:30 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id m21sm7560154pfo.13.2020.09.08.00.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 00:57:29 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     rjw@rjwysocki.net, viresh.kumar@linaro.org, robh+dt@kernel.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     amitk@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dmitry.baryshkov@linaro.org,
        tdas@codeaurora.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/7] Add CPUFreq support for SM8250 SoC
Date:   Tue,  8 Sep 2020 13:27:09 +0530
Message-Id: <20200908075716.30357-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds CPUFreq support for Qualcomm SM8250 SoC. The existing
qcom-hw driver is reworked to support the EPSS block on this SoC which
handles the CPUFreq duties.

The EPSS block supports additional features for which incremental patches
will be submitted on top of this series!

Thanks,
Mani

Bjorn Andersson (1):
  arm64: dts: qcom: sm8250: Add cpufreq hw node

Manivannan Sadhasivam (6):
  dt-bindings: cpufreq: cpufreq-qcom-hw: Document SM8250 compatible
  cpufreq: qcom-hw: Make use of cpufreq driver_data for passing pdev
  cpufreq: qcom-hw: Make use of of_match data for offsets and row size
  cpufreq: qcom-hw: Use regmap for accessing hardware registers
  cpufreq: qcom-hw: Add cpufreq support for SM8250 SoC
  cpufreq: qcom-hw: Use devm_platform_ioremap_resource() to simplify
    code

 .../bindings/cpufreq/cpufreq-qcom-hw.txt      |   2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  22 +++
 drivers/cpufreq/qcom-cpufreq-hw.c             | 160 +++++++++++++-----
 3 files changed, 143 insertions(+), 41 deletions(-)

-- 
2.17.1

