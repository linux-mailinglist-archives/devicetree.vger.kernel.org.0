Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4465934AC6
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 16:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727727AbfFDOrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 10:47:18 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42882 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727545AbfFDOrS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 10:47:18 -0400
Received: by mail-wr1-f66.google.com with SMTP id o12so9022859wrj.9
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=yt/EFsCTs+eDRjlI5s+86AEQql4J6OURFSWUEUgIwAY=;
        b=baN6M5vHHdMEdDHA0nFhNKLj1v4lrLz/nftyieuU/YsutbB14+ZqYNEpKCERpyYdyY
         KfEROAB6KrYiQaz93M0J8PVgz13m3NGtdNqWJ1xTE5o2foyUiaCSXV1JL/NRcBmGMvii
         Igmta3mK59BorfpKlfs37UGYDEGK5rp0n81uMXCIiOgan1fD60rzo4kR5YisoxmAWia6
         vzGYjx+CQtuzF1TmS9ujEEMpgUpHBYYjhhhq1ssiw9JXBe4+LuEAHms+mXr6Dm/R/pVW
         vXIpo/MBppn4+0+HVYXy4hCWQl4om89a3HrTgOGakjpMG6DfKaviPoF+h4o3KgzIkCQc
         FgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yt/EFsCTs+eDRjlI5s+86AEQql4J6OURFSWUEUgIwAY=;
        b=qUYbFyXCptmbcMG6FWnwY2/qmID+d630ucMO1EH85lOnSqnnKkNpcrzu9SMlDiP/Tj
         q3HBSHCh7swgcb8gM3H47/6C/AMuZCCopr39cP45oAFPEnYO9nXvrK+Qp/XTbBRW6IjK
         NuQN1ZN+zUApoXJtCq9OQcdTp+rGI8HnMKrlVerhN4kyQ1ub6X47BnHovh7EXebDUc9E
         64r+W7x5o4yHOIQ7UOQExnrRqxHstFXzaZb1b9oQVyneC4QtrkBn0PozyJ+61gYfz6iC
         Nm6d7wIbwg+lWl5D4ASpT35wzr7Mz50Ua7lABfadRBh/bhuiSP3z88K32ZEFdudre9y7
         +ZxQ==
X-Gm-Message-State: APjAAAW7Y3+ibQBPGkVSml5Sy4zDAQPtXOg6kVc+PlIKJ1jJlCOFL9Z7
        Ni8oVAs01aQP+Mb8d91CwXL1EQ==
X-Google-Smtp-Source: APXvYqyK0vyzpLP2eyzKVrPgI3zNMenfqmRUVBELbtN9DV8WNr9ZkE1mQYmA68w6uUDtIpRGyxFb0w==
X-Received: by 2002:adf:8bc5:: with SMTP id w5mr6899078wra.132.1559659636696;
        Tue, 04 Jun 2019 07:47:16 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v184sm3649639wme.10.2019.06.04.07.47.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 07:47:15 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     jic23@kernel.org, khilman@baylibre.com
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3]  Add support of New Amlogic temperature sensor for G12A SoCs
Date:   Tue,  4 Jun 2019 16:47:11 +0200
Message-Id: <20190604144714.2009-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchs series add support of New Amlogic temperature sensor.
This driver is based on IIO frameworks.
formulas and calibration values come from amlogic.

Dependencies :
- patch 2: temperature sensor clock are needed [1]

[1] https://lkml.kernel.org/r/20190412100221.26740-1-glaroque@baylibre.com

Guillaume La Roque (3):
  Documentation: dt-bindings: add the Amlogic Meson Temperature Sensor
  arm64: dts: meson: g12a: add temperature sensor node
  iio: temperature: add a driver for the temperature sensor found in
    Amlogic Meson G12 SoCs

 .../iio/temperature/amlogic,meson-tsensor.txt |  31 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  22 +
 drivers/iio/temperature/Kconfig               |  11 +
 drivers/iio/temperature/Makefile              |   1 +
 drivers/iio/temperature/meson_tsensor.c       | 416 ++++++++++++++++++
 5 files changed, 481 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
 create mode 100644 drivers/iio/temperature/meson_tsensor.c

-- 
2.17.1

