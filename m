Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD022B8C10
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:14:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725850AbgKSHN1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:13:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725783AbgKSHN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:13:27 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D40FC0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:13:27 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id 62so3388364pgg.12
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=bGNcqxYnOHhOZtfJNAtDrw2wBE2QoPyR5Zl7cAGRdMw=;
        b=xfq0w1k7b6vO2HarqCo8bcfEVI5yGEoHqURu3OKVPUFab3LDSkTCKNPp8xYdKbp+Ae
         jEoCbdbVqUEmUc21swwNu+YuH4zSQCO1V28koNZrdrGy/y3NlNu1c6I88E5AiDw8/m+D
         nub3EmI05n3oL7At9KMrnDIjuxwdnVO6N8hrB3JQI2+5UrcPDFmI7qlyacnodV1pmikb
         ARD+bJI5Agf2Kvxz4cEDU+SSxCGu1S6MBL3+MKAkPlXOMUo5J/Cjxjk7pGr+nEN8wwIb
         9UPtfixfKQeSXfKEHbLyGRYoCbVa0Ibiu5WboDlPZjsU2n8AJdVAGStXrBX5p6BVfbFz
         HPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bGNcqxYnOHhOZtfJNAtDrw2wBE2QoPyR5Zl7cAGRdMw=;
        b=CieTN/GNedQj37bTzUAHM+fG81Lu5ACmu/1PPws1rdQ7NcSMUStwUKag0+ORZc5g2f
         Clpw1huxZQU9OiRo5YJ8/J+BVV/zd9MDmKdzwBkcxUWy/oq/HXXFo+ErdYtwogOKMVdL
         Drq8h830epmKhDVf3k+VmmUE8RMogHHZlrARudK+vjXCOZNvb+pAzvGZke/kutMFqz64
         941y7Urh7+Ue9SDO/2bDItf1WK5bGWgGuZQzcdUICg9vRAE6aQRUjeS8k5xr68UBT8Z5
         vq5/bPvSHY0qz6k/dxbcwNbEQqN+u7k2mi+0VMvDcRjSBAo/HRpyKNI/G7wIIPoChw+E
         8TpQ==
X-Gm-Message-State: AOAM5303U6VoXwFVeSGWyZdq7psxDwnAFpLV5FIS3SAkTqoFF3TwoESY
        QlCdNLWoFkOTkzE64wMEhBwI
X-Google-Smtp-Source: ABdhPJw0FPdnVet/uHusHx7i2K23oB/4LC4hMHKMN0jNYd9V2zMFlhkeix3cTV/aSJnfjUSAsdiqOg==
X-Received: by 2002:a63:d549:: with SMTP id v9mr3790785pgi.242.1605770006649;
        Wed, 18 Nov 2020 23:13:26 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 12sm5491577pjt.25.2020.11.18.23.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:13:25 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/4] Add support for Qcom SMEM based NAND parser
Date:   Thu, 19 Nov 2020 12:43:04 +0530
Message-Id: <20201119071308.9292-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds support for parsing the partitions defined in Shared
Memory (SMEM) of the Qualcomm platforms supporting NAND interface.
Current parser only supports V3 and V4 of the partition tables.

This series has been tested on SDX55 MTP board which has an onboard NAND
device.

Thanks,
Mani

Changes in v3:

* Handled le32 parameters in parser, collected review from Linus W.

Changes in v2:

* Added additionalProperties: false and removed unit address in binding

Manivannan Sadhasivam (4):
  dt-bindings: mtd: partitions: Add binding for Qcom SMEM parser
  mtd: parsers: Add Qcom SMEM parser
  mtd: rawnand: qcom: Add support for Qcom SMEM parser
  mtd: parsers: afs: Fix freeing the part name memory in failure

 .../mtd/partitions/qcom,smem-part.yaml        |  33 ++++
 drivers/mtd/nand/raw/qcom_nandc.c             |   4 +-
 drivers/mtd/parsers/Kconfig                   |   8 +
 drivers/mtd/parsers/Makefile                  |   1 +
 drivers/mtd/parsers/afs.c                     |   4 +-
 drivers/mtd/parsers/qcomsmempart.c            | 170 ++++++++++++++++++
 6 files changed, 216 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/qcom,smem-part.yaml
 create mode 100644 drivers/mtd/parsers/qcomsmempart.c

-- 
2.17.1

