Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F014C2A7C21
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 11:48:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729555AbgKEKsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 05:48:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729484AbgKEKsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 05:48:31 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CCA3C0613D3
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 02:48:31 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id 62so1135495pgg.12
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 02:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=6UTxDIKXxyRwcmDvCCD7p0lN1/IZKHgNHQd2xiazqvs=;
        b=z41gi7THOrUs3aQ3BdEIIfV8WUwK5jngqY+PX6LUzKAq3813/qURswMUsO0TtQvugP
         XHw/Jjn3a8MA9qo674YP8AaeqT6JV6zuMvxj+pQVZrlge8r4cypSKryORqVRb0m2Csae
         m6Q0PREA1co9BMbr6E6lUPD4ULAYvVqxmbtQ/WXWqITmoog5cAM1nUx6IQYPZkBrjd8m
         xHb5rb0xpfmIvRchTJQzpL+1yctGy1BwPZkSHdEMnZnkikvdW0DCq/CtxvB/2lEYkEkM
         Ho2XHtBaRZ25xn/6EC/510aMTgFlJz7ovi/5wj0fNrfwpEbe9SVVVsIIiwsT7Ok1CRtv
         fgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6UTxDIKXxyRwcmDvCCD7p0lN1/IZKHgNHQd2xiazqvs=;
        b=e5/NFN+uERIKT5VWRLFglCxSqEEs1rjbsyGTBs4T8pyI01VOIWg4MPN4YyiMzfa+rA
         oyaXFYoJKsKJMcGf3WXzvU7bHZbYzf8rCKk/oFxuIt3jrC9HVpIiMczKVgrR1SQ01Oil
         sgK+Y0+M0SBN47BPSdTlVtrcAPE16atVTY/x57TU0hGCS9n1G5bL0GhzCKprOSUDQYfm
         lxmjSisu3TAUamnbR+jPJJwqUb6sxLci3ROXvqDjE3s9VfA2U3opc0CgKqb1hpJUdvq5
         f2Ii1y6DhkXlqNovj+p5FJd0SmX61R4yVEPgSnhc/S546J6Xa5iMZ0wV9JecB8cgkTae
         JQew==
X-Gm-Message-State: AOAM530GbIkoyYOeVZkO3TicLsZYjOH3sQ3sykj4XXRz/PBywK9UJFtz
        bjnoJa4vWjDpKkmFbyvwfQmr
X-Google-Smtp-Source: ABdhPJxg1ieI0h8HHygGrJMeO83B+M9Uo6vJlJsBy0DBqxuLWhCMXtaRCRVT+6irvthNcL2Ajk2fWA==
X-Received: by 2002:a63:34c:: with SMTP id 73mr1830048pgd.172.1604573310690;
        Thu, 05 Nov 2020 02:48:30 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id a84sm2131234pfa.53.2020.11.05.02.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 02:48:29 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/4] Add GCC and RPMh clock support for SDX55
Date:   Thu,  5 Nov 2020 16:18:13 +0530
Message-Id: <20201105104817.15715-1-manivannan.sadhasivam@linaro.org>
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

Changes in v2:

* Modified the GCC Kconfig symbol from GCC_SDX55 to SDX_GCC_55
* Added S-o-b tag to bindings patch
* Incorporated review comments from Stephen on the gcc driver
* Added review tag from Bjorn on RPMh patch

Manivannan Sadhasivam (1):
  clk: qcom: Add support for SDX55 RPMh clocks

Naveen Yadav (1):
  clk: qcom: Add SDX55 GCC support

Vinod Koul (2):
  dt-bindings: clock: Add SDX55 GCC clock bindings
  dt-bindings: clock: Introduce RPMHCC bindings for SDX55

 .../bindings/clock/qcom,gcc-sdx55.yaml        |   71 +
 .../bindings/clock/qcom,rpmhcc.yaml           |    1 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/clk-rpmh.c                   |   20 +
 drivers/clk/qcom/gcc-sdx55.c                  | 1626 +++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sdx55.h    |  112 ++
 include/dt-bindings/clock/qcom,rpmh.h         |    1 +
 8 files changed, 1839 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdx55.yaml
 create mode 100644 drivers/clk/qcom/gcc-sdx55.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-sdx55.h

-- 
2.17.1

