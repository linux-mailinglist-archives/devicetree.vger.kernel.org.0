Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E94BEA0A48
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 21:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726864AbfH1TSC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 15:18:02 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:46089 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726851AbfH1TSB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 15:18:01 -0400
Received: by mail-pf1-f194.google.com with SMTP id q139so384353pfc.13
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 12:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=vHp+AlJWbxwSEhvcybAlK/zvFEbIb+ho63MMWY45s5U=;
        b=OXzfzF8SHK5OVa1FXapO5oDS5zvMZGPSS9RJWui7hSNBkf4ory1gv0WNv6XKxIJ7rP
         0x1eIiwgvL0/ZU9x0ljGPdVoCDiejKmy92yBw/kXT3Gx6hrJK9vGNWCIeWeFs9t6potT
         r1pIx37KVjyTFCkjkSf32IMnD8jHtn28GUXVjqi/Gl1uS7IvguN7uqQS0unKPritvTba
         XTfw91vQOs2MoxPwx9i0LC6p/8rDJFj8YFABW8SLcTbtjAjOexvJdrUHD+oXBc7WiVbt
         SP+Yny2sx/cBesb+y1XpGnT7bOe8NjLz1PT7XVFfeNLryROzcooQ5b4b7wC/JsgoGm5j
         iryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vHp+AlJWbxwSEhvcybAlK/zvFEbIb+ho63MMWY45s5U=;
        b=MwGhz1/RPrEeJK/DodLwAIC0cunjAutJPPslJwjDpjh1uKkgzsDpCIbnH0VuLnpHlv
         siDNSneC2ZVEuSyzXB7WZa1KYJhj4fd6tlB8O+bxNz3DDYw1i3Ef1K8BdkRSTvX4udoE
         z3RAWXm1c7Tgrd/UvnWedoGZRUu6sIgvLt9bcFxtv69/Kc0VY+ENR8hwsX+owDzOwx5C
         6nbBaRMlVuGXCf2G2Gelo9qVpwFIhMnGJukX4T6ouANTUvJBZ/29pcKRyFDXm5Jp5vhY
         xRs5bjseHZQWV11m9grLHO13vVQsfLYHAHjzI0fW0orlV5hM/ono23ahlgspM++Ltyk2
         qUjw==
X-Gm-Message-State: APjAAAVms0ziOm+rBWr/ZopAGwPfbtvJVI3PeyQGRJ9zlSIEvUpvI/q7
        /Km2cw1/czyNS1kM8R445rfgbg==
X-Google-Smtp-Source: APXvYqx067TVuFdfipJijenpJw8x/0zHsb2O7KTSR5Ivwe9Nw0BicO9ZvzvDmQ1alVdoCVidC06fWw==
X-Received: by 2002:a63:4e60:: with SMTP id o32mr4933655pgl.68.1567019880871;
        Wed, 28 Aug 2019 12:18:00 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id n128sm122717pfn.46.2019.08.28.12.17.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 12:18:00 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andy Gross <agross@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Pedro Sousa <pedrom.sousa@synopsys.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Cc:     Bean Huo <beanhuo@micron.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v4 0/3] Qualcomm UFS device reset support
Date:   Wed, 28 Aug 2019 12:17:53 -0700
Message-Id: <20190828191756.24312-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a new ufs vops to allow platform specific methods for
resetting an attached UFS device, then implements this for the Qualcomm driver.
This reset seems to be necessary for the majority of Dragonboard845c devices.

Bean requested in v3 that a software fallback mechanism, using
UIC_CMD_DME_END_PT_RST. I have not been successful in validating that this
works for me, so I'm postponing this effort and hoping we can add it
incrementally at a later time.

Bjorn Andersson (3):
  scsi: ufs: Introduce vops for resetting device
  scsi: ufs-qcom: Implement device_reset vops
  arm64: dts: qcom: sdm845: Specify UFS device-reset GPIO

 .../devicetree/bindings/ufs/ufshcd-pltfrm.txt |  2 ++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts    |  2 ++
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts       |  2 ++
 drivers/scsi/ufs/ufs-qcom.c                   | 36 +++++++++++++++++++
 drivers/scsi/ufs/ufs-qcom.h                   |  4 +++
 drivers/scsi/ufs/ufshcd.c                     |  6 ++++
 drivers/scsi/ufs/ufshcd.h                     |  8 +++++
 7 files changed, 60 insertions(+)

-- 
2.18.0

