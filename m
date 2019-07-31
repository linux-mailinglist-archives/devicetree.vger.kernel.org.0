Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 006C17BE36
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 12:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728245AbfGaKUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 06:20:25 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:34869 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728213AbfGaKUY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 06:20:24 -0400
Received: by mail-pl1-f196.google.com with SMTP id w24so30283438plp.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 03:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RQGFkwgFaLnGGoQ1NvDOCDLZIEZUzuJI5zevIe71AxU=;
        b=DTXJINGXVoTql1fXQHHPFsg3EipbEhbHQzDr6FeRofUSP/OzviQIKQg+49YLikdEqQ
         YjNM5/uykn2qAyF0kVd/+4V/lByaAjL4OlR1muQrRUKLmQ3xs48e9VAQruzJToarL/XU
         3YIZuGVXB1XvgHJh22L/KCNzYkMI96K7Qz0es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RQGFkwgFaLnGGoQ1NvDOCDLZIEZUzuJI5zevIe71AxU=;
        b=tKMzW8BJsY+RnaJdo7JCqMo3Nxfnz8/ovrggbao2mXLZO2T1soNhjevbiXBEaY0GsT
         j9BWT+pYsjH2V21o0pySfpPYfNdp6QqNcfN7LmdDgPMhclxWvQYUA+ytVrPsTwDCbtYJ
         KnanSHJ1AU2qJpyRqk+AMe2PIgMn4R3R4rU1nbAeEx82MKx5uQEFjxcjsy8bmYgFtSqe
         6fdHoyqzxc36wkFP2oJnn5AmEaH7mMSca9pNaLYEOQsyPxH2VJ+HstXWPGcukpHhvNZf
         A0P1uKodMEDSZlnndOa3YdX/4a6DjpXXMso+c2sez0hRIRW7wrfy83P/FEkFdqXwMC3/
         TTng==
X-Gm-Message-State: APjAAAWKWwqFSaKjHcSaBcMZDSR0MByozdJCbXt1ThVfVlD61n7hHPx2
        VNuPNZaHVFWeTivmfqhasPgj+A==
X-Google-Smtp-Source: APXvYqyQgTrw9DUSsZLKLghRHWUN5/nvwSS94vv8+O0RVIrayMcxuja5bB0RZ59O26Nh4mBQFbfI0w==
X-Received: by 2002:a17:902:2926:: with SMTP id g35mr119247923plb.269.1564568423495;
        Wed, 31 Jul 2019 03:20:23 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
        by smtp.gmail.com with ESMTPSA id 3sm71161776pfg.186.2019.07.31.03.20.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 31 Jul 2019 03:20:22 -0700 (PDT)
From:   Srinath Mannam <srinath.mannam@broadcom.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Srinath Mannam <srinath.mannam@broadcom.com>
Subject: [PATCH v2 3/5] phy: sr-usb: Set phy ports
Date:   Wed, 31 Jul 2019 15:49:53 +0530
Message-Id: <1564568395-9980-4-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564568395-9980-1-git-send-email-srinath.mannam@broadcom.com>
References: <1564568395-9980-1-git-send-email-srinath.mannam@broadcom.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

set phy ports value in xlate handler which is taken from second argument
of PHY phandle.

Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 drivers/phy/broadcom/phy-bcm-sr-usb.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-sr-usb.c b/drivers/phy/broadcom/phy-bcm-sr-usb.c
index fe6c589..5274e45 100644
--- a/drivers/phy/broadcom/phy-bcm-sr-usb.c
+++ b/drivers/phy/broadcom/phy-bcm-sr-usb.c
@@ -278,9 +278,16 @@ static struct phy *bcm_usb_phy_xlate(struct device *dev,
 		if (WARN_ON(phy_idx > 1))
 			return ERR_PTR(-ENODEV);
 
+		if (args->args[1])
+			phy_set_phy_ports(phy_cfg[phy_idx].phy, args->args[1]);
+
 		return phy_cfg[phy_idx].phy;
-	} else
+	} else {
+		if (args->args[0])
+			phy_set_phy_ports(phy_cfg->phy, args->args[0]);
+
 		return phy_cfg->phy;
+	}
 }
 
 static int bcm_usb_phy_create(struct device *dev, struct device_node *node,
-- 
2.7.4

