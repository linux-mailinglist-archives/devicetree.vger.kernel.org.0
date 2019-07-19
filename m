Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 82D8C6E167
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2019 09:09:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727467AbfGSHJq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jul 2019 03:09:46 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:34455 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725616AbfGSHJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Jul 2019 03:09:46 -0400
Received: by mail-pg1-f196.google.com with SMTP id n9so7819546pgc.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 00:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=0LeeAyTVsmLsUpPz7KDXnnPyr4L05PS3OGLUvnsErUM=;
        b=a86lshRVZo1JvdbvlNOzh2S2zd3nIg//DqFgL+WW7L8MWBICb0TJIBvAUGRdjviCYd
         P3Ah6m1xBLXnE/VLnZg3N0YXLE+kbAjqtj5lrnkpMfi+V1ZCO95IWOmVw0uXR8R0yg80
         Z/+Mf/94dAjeVtVmNJuhK1wRAOfJGdnjkDbQlgOO0bNu4kvIJ4ggnINhXHFSV9h3TP/r
         oqA2EIOv5PyMwZHbc2hxBvkCzB4k/3BC6lr9SgVTixxwUD+H6o+819s+e0Jlk/bL/wxw
         15YyeJwQAtV79qAHZ4k5Ntr/LumYeiJfUVxZ22pv5e9BV/lrkZkO0cESNWAJMBj4Ez7s
         2d1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0LeeAyTVsmLsUpPz7KDXnnPyr4L05PS3OGLUvnsErUM=;
        b=iYeMMIv222sy7peZtAS8P32dt0bxiXVrBfadmSNprPsSOExZgKhFwqvbyGw+Gv7TYx
         wtvKCktMwGfKYjom6vdjAmx/kQNXb/ElBI0A2s1Az8g+OdtmoAWpC6LAlgWomNs2V+Xy
         0G2y5SNjPsjh1PiVQXOGIMGvmP8gElg4fuyTZuWyZ01IyfFSXZ4kl9WhYJpArlV8bSQM
         Fjl1vBH0CTIk0D8+To4PRtEmLJhQSO/nKkzSwVySerFBakunENXDjuvl1TkVeMIMQD6i
         KnWypRN8FdvFhi8hkeAh90ADEPl7EokvLm4ygbmGaThhyVUdvDNDomwcaEeRmXph8Vnc
         +Q9w==
X-Gm-Message-State: APjAAAUBodg3WW4eFcy+RVX0CAQqJHquxi7FQoqIctTskJvSW9bpW654
        nbE+hchSAncpSPLEqXdqe0sy
X-Google-Smtp-Source: APXvYqzrr0Go2Vx0z9CClLEHsJMpXca4xfICOrN1UqAeij1rNOA6ZEyLzOT3xu7pceNkPRgvRU9bEA==
X-Received: by 2002:a17:90a:360c:: with SMTP id s12mr56809775pjb.30.1563520185267;
        Fri, 19 Jul 2019 00:09:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:730b:4a40:d09e:c7ec:fbb:1676])
        by smtp.gmail.com with ESMTPSA id r6sm56259346pjb.22.2019.07.19.00.09.38
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 19 Jul 2019 00:09:44 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com,
        kinjan.patel@einfochips.com, prajose.john@einfochips.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/3] Add support for i.MXQXP AI_ML board
Date:   Fri, 19 Jul 2019 12:39:23 +0530
Message-Id: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds support for i.MXQXP AI_ML board from Einfochips.
This board is one of the Consumer Edition boards of the 96Boards family
based on i.MX8QXP SoC from NXP/Freescale.

The initial support includes following peripherals which are tested and
known to be working:

1. Debug serial via UART2
2. uSD
3. WiFi
4. Ethernet

More information about this board can be found in Arrow website:
https://www.arrow.com/en/products/imx8-ai-ml/arrow-development-tools

Thanks,
Mani

Changes in v2:

* Incorporated review comments from Dong (small cleanups)

Manivannan Sadhasivam (3):
  dt-bindings: Add Vendor prefix for Einfochips
  dt-bindings: arm: Document i.MX8QXP AI_ML board binding
  arm64: dts: freescale: Add support for i.MX8QXP AI_ML board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      | 249 ++++++++++++++++++
 4 files changed, 253 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts

-- 
2.17.1

