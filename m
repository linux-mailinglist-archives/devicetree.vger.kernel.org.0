Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3EB8326468
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 15:16:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729003AbfEVNQP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 09:16:15 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:46932 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728808AbfEVNQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 09:16:15 -0400
Received: by mail-pl1-f196.google.com with SMTP id r18so1059114pls.13
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 06:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=CDSHlZ4R9H1PhFEC6NVmtI65PCR+1fnOjrUw3HlFSmY=;
        b=MiALhfMLLB3ZUtSYw73WM0Ok//GbWWrp0nbqOMCtuKJQ27dI+r5EonhedPoCt5M2Cj
         hD52ITjt5Jrq43aNFM3WoDws0AeEvgmljbydK0yKHzwrnrAsOE6GmEaqrFsWrbKkUP8R
         pVi7wVyE5NWJxnBVacA7dUKpF6Hgwq5yuz6z6c5ExDhOSMxqU23ocdiKrdl5fBafoMV/
         Vl0h/fgYjiHBYRwzzusSNkCoggfd+Ih7bAaHgjgZk9NoEWk4wrJjvB+RjtF5sbW0XJrn
         73yDzmzOzsN5EU4uXC/89XTe3sY0Go60tV+f7/eum49OJFXX6Li2kYtrEIklt6rP6jFZ
         ohaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CDSHlZ4R9H1PhFEC6NVmtI65PCR+1fnOjrUw3HlFSmY=;
        b=Ld4dM0N749t00KVTDbr/B0Ja3ACQu9eG7c9yWfVUYaApug4rid6YQXYzWWtw+GHI8a
         vfDpns2nzV+QoHoRc+sqsdpOd5uV99ZpJsjwQmVwexD564HvXSTSm3Gnw/IhD4RVJj69
         gHh+ekIcdneWfB3QSdL1ovP/QyX3XoFJ1u3BrHnmWilUm6IW0U/iA+PmKmC0O7GziQRJ
         U/l0zVmQSXORRsbadMpIauN0StYMe322+DGkoOPMp2cdTsVLu+2HPaFVCl2AsQ0qGwZj
         C6zqd2RHsKJsAX82E4Yc/U7bCoKUe/hq3STW6zBza+1gWqL/BVfkK38oS6Squsb8I3pz
         yMSg==
X-Gm-Message-State: APjAAAWAlXQsZwINvW/VWtHg0zi3+m4lNTZNiXuAwZ7faqd+SohD08mI
        dstym51a7RLF/gEnrxIz+ybD
X-Google-Smtp-Source: APXvYqyK18MyeSBgTUuExrOuAFSNAl/gMnvHsGeTTCkCfMwqa4pggff8/j3VsWwJv9AoLKltHBe3mQ==
X-Received: by 2002:a17:902:e104:: with SMTP id cc4mr89824069plb.254.1558530974800;
        Wed, 22 May 2019 06:16:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:73c4:1ab0:ac45:9c21:7eb3:888a])
        by smtp.gmail.com with ESMTPSA id b7sm22273565pgq.71.2019.05.22.06.16.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 May 2019 06:16:13 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
        festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, pbrobinson@gmail.com,
        yossi@novtech.com, nazik@novtech.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 0/2] Add 96Boards Meerkat96 board support
Date:   Wed, 22 May 2019 18:45:48 +0530
Message-Id: <20190522131550.9034-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds board support for 96Boards Meerkat96 board from
Novtech. This board is one of the Consumer Edition boards of the 96Boards
family based on i.MX7D SoC. Following are the currently supported
features of the board:
 
* uSD
* WiFi/BT
* USB
    
More information about this board can be found in 96Boards product page:
https://www.96boards.org/product/imx7-96/

Thanks,
Mani

Manivannan Sadhasivam (2):
  dt-bindings: arm: Document 96Boards Meerkat96 devicetree binding
  ARM: dts: Add support for 96Boards Meerkat96 board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx7d-meerkat96.dts         | 396 ++++++++++++++++++
 3 files changed, 398 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts

-- 
2.17.1

