Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E50222ED8
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 10:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730410AbfETIbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 04:31:17 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:42004 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727682AbfETIbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 04:31:17 -0400
Received: by mail-pl1-f193.google.com with SMTP id x15so6369982pln.9
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 01:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=UJd3aYj19uYd+bvQxGj2ZoTWySbhWZmBbaD2NukqC98=;
        b=OMVgSSrwkQ4y+7FwaFNra9hilH7+KLXY7vHN9TvqkA+Hj59CDtvP+vwyjZSxZNEhya
         2+DE9kiv5jc4fpm4CCyH71sPa6FdbcBC187ySKhMQ2XCKYc6RPVZbB2jFFZjRJx1DAyI
         nUakJ/HcnS4z3QYUI1/3b3Sfll6SLUqWna7EdQlrVD4whH3oA3frXTeVBN3eB1MGDNqO
         yxjfbKhcrcI5Hyva8OdHZkY8sARXRARuV2gkTHKNHL17ejCENp+7VmmlZgiAfs39yJ4p
         uB6hRHud3jXUnYEGD72zKZ+s6vBM1zEvJcFMxz5YHhn18e4eNa16bjS7HKZpLs1FlMD1
         f/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UJd3aYj19uYd+bvQxGj2ZoTWySbhWZmBbaD2NukqC98=;
        b=FB/KOPDmlsD4N8Wkj9xHOonvb70vzNXv8u5kp6Cqe+IED6ZJkPD9Sb2jAHa+xHd5UK
         fCNYbZcNcUkradJlpmm+7RbJx76hYZNssJTMPHsoXTP8WlitfLK3XNvFR8V7SpPeM+jv
         DeyZabCtEPhYcFBAb3i8daGRkX0KFF22mdEPpNsG7oXsr6lHwIrqmi39KiiDUfl7Qvp8
         fi35TNpB0IFqDeV6zAXxxEEHIJssAxNX8iz7MzrnbgJ8WgG/p68JEVQ83jWmTeAoOQ9r
         GdyC00XMexI7ahEtIRBBxIdxWHNTebeQGMV8TLPn6V+2M8/8mvwcqiZZRD3Mu8wj9vuE
         z/LA==
X-Gm-Message-State: APjAAAXPj6SM5gj7CJW+oglFjEFO5AE/cZ7pLCH2J9J0kXLMKodvzRyN
        5Qhc4dCBvYzOAIDz0P+HFNX8
X-Google-Smtp-Source: APXvYqyTgZHILNy1PLcCWx2ODhpGmvVDTGy4AbyWraYPzP8vTQGy+4POnmJhPDpsF6VvmZ59/segGw==
X-Received: by 2002:a17:902:b18c:: with SMTP id s12mr55664438plr.181.1558341076646;
        Mon, 20 May 2019 01:31:16 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7203:2717:7d22:7fdb:b76e:242c])
        by smtp.gmail.com with ESMTPSA id s72sm24068220pgc.65.2019.05.20.01.31.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 01:31:15 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     linus.walleij@linaro.org, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        linux-gpio@vger.kernel.org, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/5] Add pinconf support for BM1880 SoC
Date:   Mon, 20 May 2019 14:00:56 +0530
Message-Id: <20190520083101.10229-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

This patchset adds pinconf support for Bitmain BM1880 SoC. In the previous
patchset adding pinctrl support, I declared that the SoC doesn't support
pinconf settings but further interaction with Bitmain engineers revealed
that the SoC does support it and hence this patchset.

Currently, there is no drive strength support added but it will come later.
Also, the current driver has some code to set pinmux in dedicated PWM
registers separately which is not needed, so I removed those and simplified
the driver.

Thanks,
Mani

Manivannan Sadhasivam (5):
  dt-bindings: pinctrl: Modify pinctrl memory map
  arm64: dts: bitmain: Modify pin controller memory map
  pinctrl: Rework the pinmux handling for BM1880 SoC
  dt-bindings: pinctrl: Document pinconf bindings for BM1880 SoC
  pinctrl: Add pinconf support for BM1880 SoC

 .../pinctrl/bitmain,bm1880-pinctrl.txt        |  23 +-
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       |   4 +-
 drivers/pinctrl/pinctrl-bm1880.c              | 455 +++++++++++-------
 3 files changed, 304 insertions(+), 178 deletions(-)

-- 
2.17.1

