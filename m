Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14E1D25D17D
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 08:36:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbgIDGgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 02:36:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728066AbgIDGgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 02:36:50 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE5DC061245
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 23:36:50 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id n3so4777338pjq.1
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 23:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=4yiHUblFAYV93CvP9TCqNN/f4GGkDG7hfCsIMIHesuc=;
        b=p5JO+kvkSTjVbTMWKBPkg9HykrjsaWRYc58QNIUTjCx8kpmaiectCCjel03OqpNcwt
         HNL2p3ToDviWW+w0BL0qhvQr9+CIeVHxe4Cn8XEtZknHz7/pJ2fwQTI20Z8hC4Z8dJCL
         pwvWbQr76LblbhEaT9bbP4q4ifi8Z7otr7FKq0yKbPK39YWfSVaVxNRDAhkFi2Mo+6zn
         1Jhiu+tl4wlC+o39bKRqRDy638iLpoZVBHeoBWhPBevQJEVwEJWm9OmbuqiwrZjL0hBr
         WScJRhfoBvI59J4R7u1b3HRmd4gyLN/s1tDDiDYS2hlGKm2yufFOAUn/5hB4CLmF+NtJ
         vOig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4yiHUblFAYV93CvP9TCqNN/f4GGkDG7hfCsIMIHesuc=;
        b=lFbKI0ygeihIEkX5fbv3SKvoW6TlSA5qCz85T3q8Z5M4biLfx70jkxS6u8AWDhYSlB
         fkcdPsa5dcggiDB+beWIPP6xwQ3xW9tvZ/9+nk67DN2qdC47W6Xbv8w2erAKjuLWzoou
         KLhQJzP8jr/M24tgt6qN8wKaiT5fHv8HRsDYqCB56Fw5+V6rh0Ydv/Rt/8ZejikFZpKi
         eY8gqQydFx6dz90rY2CN5ztkxyJ53Gbill1jn21uLwKjVzRikw/zyv1b3gB9nkSWbyPa
         XT2fgyCRCeXeGSLZnP0REGrtuGpOrJWXNhszg39RbU0gUZE3Gp84tXY6ZQvD5xFyIgJB
         jwrA==
X-Gm-Message-State: AOAM533KgUCqBPwCymc6seJTVoxtLW4701/8pZrz3ipxd6B+XBu5CEgK
        mmTHYTHWmwEkWRJ4tF3prhbn
X-Google-Smtp-Source: ABdhPJxwOUbjrSmhdjljqAK9JS6spFNyLSSqyellwHKkG/3SNMmXjPz4BrrffWwBh/blwdxEQXUaMw==
X-Received: by 2002:a17:90b:164a:: with SMTP id il10mr6929868pjb.2.1599201409322;
        Thu, 03 Sep 2020 23:36:49 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 143sm5315040pfc.66.2020.09.03.23.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 23:36:48 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/6] Add initial support for Qualcomm RB5 platform
Date:   Fri,  4 Sep 2020 12:06:31 +0530
Message-Id: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds initial support for Qualcomm Robotics RB5 Platform
based on QRB5165 SoC which is a derivative of SM8250 SoC customized
for robotics applications.

This board is one of the Consumer Edition boards of the 96Boards family
manufactured by Thundercomm. This initial support includes regulators,
UFS, debug UART, I2C, SPI, GPIO and LED peripherals.

More information about this board can be found in Qualcomm website:
https://www.qualcomm.com/products/qualcomm-robotics-rb5-platform

This series functionally depends on following patches for proper working:

irqchip: Fix probing deferal when using IRQCHIP_PLATFORM_DRIVER helpers
arm64: dts: qcom: sm8250: add apps_smmu node

Thanks,
Mani

Manivannan Sadhasivam (6):
  dt-bindings: arm: qcom: Document SM8250 SoC and boards
  arm64: dts: qcom: sm8250: Rename UART2 node to UART12
  arm64: dts: qcom: Add basic devicetree support for QRB5165 RB5
  arm64: dts: qcom: qrb5165-rb5: Add onboard LED support
  arm64: dts: qcom: qrb5165-rb5: Add gpio-line-names for TLMM block
  arm64: dts: qcom: qrb5165-rb5: Add gpio-line-names for PM8150(B&L)

 .../devicetree/bindings/arm/qcom.yaml         |   7 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts      | 686 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts       |   4 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  11 +-
 5 files changed, 706 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts

-- 
2.17.1

