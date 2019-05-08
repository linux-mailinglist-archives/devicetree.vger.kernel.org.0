Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72B8B17E8A
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 18:53:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728605AbfEHQxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 12:53:31 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:34299 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728592AbfEHQxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 12:53:31 -0400
Received: by mail-pl1-f193.google.com with SMTP id w7so1182082plz.1
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 09:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=1VcQ/lfM08SXvOgnrylDwHXID+O2QS5SQTEiTY7pKR4=;
        b=jN1XFAMDjh462U6OA3bEn3+sOAOeu2mFwIEJudjbEPRy8O94uCF1olVHEjD2qH7zIX
         TTPJ1TZoT/s3boPM44QZ+tENF2k8vNVHzQ1lE1iTIuCdWyKtdwXQM8OYvqJc11Kp/56s
         KNaB4KfPG1zkYr8T2yV/Zmrb1T1j9wYdKbmRcKh8DIq53a6IiEUgJkuGwMpo/aB+25Lb
         A8uRkgjVxmypEqaeUtKKNknQIYHBICCRWbR0ccMpMvWp+eNFHw3oXLF2aA02UD91EzGH
         aKD8+5WPacr6QLCkOQNebiM1WIHTLMOaj4JzjoavAdZRHcXw5U+mWzBUMhr+1Cf+aWWq
         NRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1VcQ/lfM08SXvOgnrylDwHXID+O2QS5SQTEiTY7pKR4=;
        b=H5/wzwUbwuYm5sPKnHqZMZLdf+VJruNepiLFkB8HvBBO2kT32/8QrTHuWjWLraYBnB
         /SpL7wOJ+Mo6prkJ8ntR8ktHLgB6gB6WNbTRPDCjFUnLp735Nrh80tHIg5hU395zmAtT
         xMJeWqqKtrGCrChsANJ/rfXa3c3ITb5ls9yJgNaJDbqGJqIAQ6lJexjnMDJ4aCP3mQYU
         MqiGhbK7ZrJpLv5fas1ESppdT4d5eAabXueZActJ7yGbUllFsrcy8ZWaj4KzIyu1aj2l
         sZq0dGMmmOTqNxCdPZpy79JL1eV+GycjzjuK0KbIguN6MYgKQ40yvNTrP5phY1vSvla7
         P8nA==
X-Gm-Message-State: APjAAAWkfmcNWkpBd4Fr5knanpWou03BiexQKZtmfLwvc0RmaLxEP88C
        OSMF8Oc7a1nF/WJQwYQUJvYW
X-Google-Smtp-Source: APXvYqw5M4RV8ZNy/CF3V1SZqj526bLnkLBNlYsA5DALAlbnfTvqNGI5VFJpDWDlA4dyk1hBsISLsA==
X-Received: by 2002:a17:902:e407:: with SMTP id ci7mr48331151plb.219.1557334410313;
        Wed, 08 May 2019 09:53:30 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6000:7ab1:cd79:1ccc:df38:79c0])
        by smtp.gmail.com with ESMTPSA id m2sm25180676pfi.24.2019.05.08.09.53.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 May 2019 09:53:29 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/4] Add reset controller support for BM1880 SoC
Date:   Wed,  8 May 2019 22:23:15 +0530
Message-Id: <20190508165319.19822-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds reset controller support for Bitmain BM1880 SoC.
BM1880 SoC has two reset controllers each controlling reset lines of
different peripherals. And the reset-simple driver has been reused here.

This patchset has been tested on 96Boards Sophon Edge board.

Thanks,
Mani

Changes in v2:

As per review from Philipp:

* Reused reset_simple_active_low struct instead of a new one for bm1880
* Splitted the SPDX license change to a separate commit
* Added Reviewed-by tags from Rob and Philipp

Manivannan Sadhasivam (4):
  dt-bindings: reset: Add devicetree binding for BM1880 reset controller
  arm64: dts: bitmain: Add reset controller support for BM1880 SoC
  reset: Add reset controller support for BM1880 SoC
  reset: Switch to SPDX license identifier for reset-simple

 .../bindings/reset/bitmain,bm1880-reset.txt   |  18 +++
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  17 +++
 drivers/reset/Kconfig                         |   3 +-
 drivers/reset/reset-simple.c                  |   8 +-
 .../dt-bindings/reset/bitmain,bm1880-reset.h  | 106 ++++++++++++++++++
 5 files changed, 146 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
 create mode 100644 include/dt-bindings/reset/bitmain,bm1880-reset.h

-- 
2.17.1

