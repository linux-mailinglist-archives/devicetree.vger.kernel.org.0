Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90D4143992
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:14:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732723AbfFMPOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:14:44 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:36382 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732247AbfFMN1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 09:27:19 -0400
Received: by mail-pl1-f193.google.com with SMTP id d21so8155215plr.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 06:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=DBRBCInmQIIrq3PA/7j6razRSFLaq/I+7XxbaFaBLnQ=;
        b=OWRs0MOvTQ94JcwvOdnbboi+qx64+ffJgswSAsQUEEOS+zc6bCDDCTgvd9pBEJYwF4
         L9vOlhYIGA5Q35OK3q5Yh69ylWmSrNMSduyPeBdgT+EcBOo8ZuiofsU4OyoSInbTMq98
         c89La+XDApUi1xILQVzFR78tZqQfgtzp9JnfmMBhiGN5p5gvzjK9UI8vPzUqS7n6ow/W
         hM9YuZ5+RQFFSWQGsav+Yb5iVQpFg4A1YFjyTMQ2ggQNXu3CJB5mIhXHXwlyeDu3k1Yk
         4OVhNfBhQcFaDSmw8cJwskcSt8R4Qj+XK2HAcJMOXS/6C2e3r06b+sMxEXEicsMyhF79
         Lf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DBRBCInmQIIrq3PA/7j6razRSFLaq/I+7XxbaFaBLnQ=;
        b=KRmSU9mIoKtI6ssJkD57ANXsQ+fAA6UTjzjnGBI39ert67y1dYONKjozawhr0MUFOF
         moXhOSoOeTBqQ94wJqQxRiuUqvLNJbJq0q8497AqHUdayHVG/dlBIKYYLRWSnKWrPkn2
         UAnpiVIIrRePvOmbs5veeNnG3vDfsCQPaNbsyMnKRkkTB4mJ8wWDiax2miOeVRjqzzti
         NrljobFD/nnzG5x8lzzwddoUQxZD8HfgmEiTnTSVhMAzNQEHwwnGRNrDtzaWiyvvS6Gs
         VqFk8QRT7aJNk5IGR8FJaaKpdIpC7WSS3XGJm00HWmQSGL+ust1B37mb0gM4CdnErUXk
         Nz0A==
X-Gm-Message-State: APjAAAXHDGTBLuCKtiHPJZwBOjqQYjr/cFyeF+fH2oUZEkKwMCoP0pry
        SbxTsmgu3Y6LFypqVSzd4fqR
X-Google-Smtp-Source: APXvYqyd2679N/PfxZ85sAdFYaSA5u2C4jSlTrIU9KwIfjTJrcqzpCjPqiE5WmFoLe+yIqqlKeqbfg==
X-Received: by 2002:a17:902:868b:: with SMTP id g11mr85197609plo.183.1560432438394;
        Thu, 13 Jun 2019 06:27:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7141:4858:bdd9:1134:3bdd:7ab4])
        by smtp.gmail.com with ESMTPSA id y14sm1837pjr.13.2019.06.13.06.27.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 06:27:17 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
        festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, pbrobinson@gmail.com,
        yossi@novtech.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 0/2] Add 96Boards Meerkat96 board support
Date:   Thu, 13 Jun 2019 18:57:03 +0530
Message-Id: <20190613132705.5150-1-manivannan.sadhasivam@linaro.org>
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

Changes in v2:

* Addressed the comments from Shawn on board dts.

Manivannan Sadhasivam (2):
  dt-bindings: arm: Document 96Boards Meerkat96 devicetree binding
  ARM: dts: Add support for 96Boards Meerkat96 board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx7d-meerkat96.dts         | 389 ++++++++++++++++++
 3 files changed, 391 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7d-meerkat96.dts

-- 
2.17.1

