Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A194F2323
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 01:16:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727673AbfKGAQr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 19:16:47 -0500
Received: from mail-pg1-f194.google.com ([209.85.215.194]:40224 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727296AbfKGAQr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 19:16:47 -0500
Received: by mail-pg1-f194.google.com with SMTP id 15so385863pgt.7
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2019 16:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FCMNty7oDA9/2upx9KzHHcUHDuDdSYC8CouQyEOuw2U=;
        b=hkuy5kk5U+g2TgAyVP3fApfR+AdGzexBr1356eA7KJHXouxnPe4rsgQjnetphDxIl1
         9NxWhJQbC2Q3NmMGlagFa9gIw7Eixs7J/DUxKGD73TAqwS4UCjX7aZ6soEDsDwMoVaPQ
         39VgNt1HA3cTN+hUl93WJkLrXH9kzUY6xICTPf4KvoWiPbcdD1AWqdu5MTG0xKUrrp6A
         3lxPO2/HxI59dqj7QVc11F77EzJCqSTadJZrBShClx8YsTpqRJmAD2ryRkLt6DXyEW+u
         E6QFYW3HZnYXOnVWZzCC7caKEDTC1tsKpConJExQVMdosLFJOS+r2Y2XVTUwj7a18Xq1
         pSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FCMNty7oDA9/2upx9KzHHcUHDuDdSYC8CouQyEOuw2U=;
        b=l36OXZ8RI1AGdwcMH+TIpj8nJ3+Ct1t9AOiVBW6Txa/kLIwHoxMOKXr6zFWVc4wnZL
         tDaigC9CgEZyaQQA5Ov+F0mQmXUcv1alVuWjau4ij2FU+dXMx01warXM8N3NvLFaOA2L
         GI+6TX8pEmMSAf8FFol9agvEcNT/r6FBz3L5vSa+HIkG99btG2QA913NgP30y9BYyRHx
         h3jTk+RBhII4erM/nvY1fmpCIkCwR2xYD3eiZ85ezBVeAsEBx/wkVjwHxZipybguY4GU
         L8VzaumPpS4KP+aka6kQCjAS2atO90kOIqPXe3Chx+CUSX9bn+TgCOTcm8YmtqXKduOZ
         g8lg==
X-Gm-Message-State: APjAAAUd9AdQ5C2AKWO03DpgJ5UTVWzBGjWe/fdg2r53GgFki8kMlE7m
        IG+6b2Bma9xukN7zauL5ISqPcQ==
X-Google-Smtp-Source: APXvYqzTII1yOFz1jRvfEcyQCRGCRqp3dNhGhZANAQuWZ+wD+Yok0q99yIqWyXwsOAlX4QJn0jBPKw==
X-Received: by 2002:a17:90a:24ac:: with SMTP id i41mr926884pje.11.1573085806538;
        Wed, 06 Nov 2019 16:16:46 -0800 (PST)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 90sm81044pjz.29.2019.11.06.16.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 16:16:45 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] PCI: qcom: Add support for SDM845 PCIe
Date:   Wed,  6 Nov 2019 16:16:40 -0800
Message-Id: <20191107001642.1127561-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support necessary for the two PCIe controllers found in Qualcomm
SDM845.

Bjorn Andersson (2):
  dt-bindings: PCI: qcom: Add support for SDM845 PCIe
  PCI: qcom: Add support for SDM845 PCIe controller

 .../devicetree/bindings/pci/qcom,pcie.txt     |  19 +++
 drivers/pci/controller/dwc/pcie-qcom.c        | 150 ++++++++++++++++++
 2 files changed, 169 insertions(+)

-- 
2.23.0

