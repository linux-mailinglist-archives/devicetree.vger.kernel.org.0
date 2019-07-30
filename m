Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A9427AC3D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 17:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732272AbfG3PY6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 11:24:58 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:44438 "EHLO
        mail-qk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729202AbfG3PYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 11:24:46 -0400
Received: by mail-qk1-f194.google.com with SMTP id d79so46859254qke.11
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 08:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=WRQrRymvzeuce3KKDbksGCaiWLluhsSldgXmnzTmp8s=;
        b=y4t+HM1gzG3E/sK8yoWFX8FDHUW4HdMLmLbt/cIJqBMgLDJ71onmHxZPXuKyUkHaxg
         iriURYdjLTQwVa5uDNBPkJ2ZPyjb3ZWnQIqtpvcQgO4wRj0B/bmhvAWBObA32nhn1xFY
         j5DnUpbNffMqYSsmKeyXaTdP0OBjCRh/xqwWe44VkcUy8YQExEbcxLYLW3MktSFoewjc
         c+Pul3W9Hw/RRpOIMKf6Q+A05UVHAf2tc3EuxAyHrRI5WaToby0adDO665ppycGWkpcu
         KCSdoRgWUd0qCiLlc5Dbcpgddpli/glSpFxlzM+SsjNviSfmJkqlpTEfpi4hgLBk+U6U
         EeyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WRQrRymvzeuce3KKDbksGCaiWLluhsSldgXmnzTmp8s=;
        b=OUywYckZE09yHlAjc9FykDNjg9HkX6lQUMaJo5p2CIx6rRdwjZ0X3Bz12ad299g2xk
         90FbNho/zIrpVDALNkVtMcGREGhKRYaaST/ZhBiIDvTekPyA4t127ga3EOu4FBWmTuRQ
         taK+K5LJRTPKl20EU04AKMO9cMLmqo5P6MSkRd4c+wA22tt2Ly+E1I6XH5koERYyQcZt
         i4YqXEQG9k5onsUGaDodWunpKN2iO/IwKbm+W7dUbDq1wL7xJPDPKwjN5N05syhpdteY
         HOQP3dG+hhVC7TJXPA+FQxVLBwUPjqUhRzv+IdH8cl4jjAAKjsCWmd3GuE9E/cm5+M3i
         IwWQ==
X-Gm-Message-State: APjAAAULrlL+KOwqyKLHRsU08rdkmbfGF+ehs+3DLHGv5BzXR0HYwDNh
        /wc3VnJaonLj29WU/AogepW1/Q==
X-Google-Smtp-Source: APXvYqyg4l1a/B04E8+LgeFlAnxW+Kg5rRx3jm0+QKFBC6Q4BagEPljVLBschqWhEsjHslipIZbtNg==
X-Received: by 2002:a37:97c5:: with SMTP id z188mr81637690qkd.5.1564500285402;
        Tue, 30 Jul 2019 08:24:45 -0700 (PDT)
Received: from Thara-Work-Ubuntu.fios-router.home (pool-71-255-245-97.washdc.fios.verizon.net. [71.255.245.97])
        by smtp.googlemail.com with ESMTPSA id r14sm27251082qkm.100.2019.07.30.08.24.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 30 Jul 2019 08:24:44 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com,
        bjorn.andersson@linaro.org, amit.kucheria@linaro.org,
        vinod.koul@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Patch v2 0/2] Add support for AOSS resources that are used to warm up the SoC
Date:   Tue, 30 Jul 2019 11:24:41 -0400
Message-Id: <1564500283-16038-1-git-send-email-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.1.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Always On Sub System (AOSS) hosts certain resources
that are used to warm up the soc if the temperature falls
below certain threshold. These resources are
added can be considered as thermal warming devices
(opposite of thermal cooling devices).

These resources are controlled via AOSS QMP protocol
In kernel, these devices can be treated the same way as any other
thermal cooling device and hence are registered with the thermal
cooling framework.

To use these resources as warming devices require further tweaks in
the thermal framework which are out of scope of this patch series.

Thara Gopinath (2):
  soc: qcom: Extend AOSS QMP driver to support resources that are used
    to wake up the SoC.
  arm64: dts: qcom: Extend AOSS QMP node

 arch/arm64/boot/dts/qcom/sdm845.dtsi |   8 +++
 drivers/soc/qcom/qcom_aoss.c         | 131 +++++++++++++++++++++++++++++++++++
 2 files changed, 139 insertions(+)

-- 
2.1.4

