Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 544FED47ED
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 20:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728945AbfJKStF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 14:49:05 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:32879 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728603AbfJKStF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 14:49:05 -0400
Received: by mail-pg1-f193.google.com with SMTP id i76so6296396pgc.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 11:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=3hh4TNXeWC2abuzUA3dw2QguzTS8GrKE46mE5KRqr2A=;
        b=YAVjU4WBuFGNK4F38f6RI358mzpqqVlbvkTNULkaE7tTcQ0/6vTYJtMYdTLojfXP8R
         t762Azd2ip6Kfx/3uiO91biwKIV2KnzUryzQfitLyK/WwWiBy7LCzFrOdZ99LeJJFXov
         j+rpsa14OrgmMqhLmcn6VXKgc2xDgkA2+BnaqapTcZrwKXQZS7K2qsZfOkdGaby3Qubg
         kkm5o+RuBMKI58xWsXHZgzhb36O1IIzHTKQvuLX6PKg59WKQ0w+31v2OkTo46mKQyrfB
         kAGYNKpVHa/oTIofk/o6kqs+tduuIaAHCUDuNCjjUUXXDkVve1PcXGSfGbdRxfYAd0I1
         uofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3hh4TNXeWC2abuzUA3dw2QguzTS8GrKE46mE5KRqr2A=;
        b=NQdAXGB/ELrHmEU/4pArUO/eGh6qhuTl7jTuoagG8bTj65qYagQQRo0u82RHcJCx0o
         HfvEjTYnmGJ/EGspZwqBzJD4u4NYmgb3cdUruSrLhJsyyI+E7Zx/o8ItG1T3SwDVFcVD
         UAKV07ujDMkGnpGOuO4/6CfPhOsiOP8ns+h4CCO+yZdh7R7OfrkZxL3mL1AxbRbI8UKN
         I3D6OUqss1/wo8ICfAKKc7uaqkKKu+qbFpELF2VL/4GnH6nTo6nZgRh6Rh9tEawQziV9
         3t8y01gJqS9WaFNQf5YhZPVzqdoZUBGUqEVwJGgIWZqjcyXHD7GVMbMk31pSrD8VRTV9
         t59g==
X-Gm-Message-State: APjAAAVtXPZDEbqC/V5PqtAQwk5+E1eJl9UfXOosfzmZDvDNRwjMXrRj
        TmtkE+1nDUS9n2TqUeUbhEfV
X-Google-Smtp-Source: APXvYqwbU1T1lDyiLexli5AHsFB8JJxIeao+xaaGAaJCT6SgjtII8kFWdRUAOXPbiGX+WZzsGNkUkA==
X-Received: by 2002:aa7:870f:: with SMTP id b15mr18293731pfo.123.1570819744225;
        Fri, 11 Oct 2019 11:49:04 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6407:a090:18a3:ff6e:e66c:65b0])
        by smtp.gmail.com with ESMTPSA id 68sm10031497pgb.39.2019.10.11.11.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 11:49:03 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
        knaack.h@gmx.de, pmeerw@pmeerw.net, robh+dt@kernel.org
Cc:     alexandru.Ardelean@analog.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/2] Add support for ADUX1020 sensor
Date:   Sat, 12 Oct 2019 00:18:50 +0530
Message-Id: <20191011184852.12202-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds initial IIO driver support for ADUX1020 Photometric
sensor from Analog Devices. This sensor is usable for multiple optical
measurement applications, including gesture control and proximity sensing.

This initial driver includes support for only proximity mode with event
based interrupt. The driver validation has been performed using Shiratech
LTE mezzanine [1] connected to 96Boards Dragonboard410c [2].

Thanks,
Mani

[1] https://www.96boards.org/product/shiratech-lte/
[2] https://www.96boards.org/product/dragonboard410c/

Changes in v3:

Based on the review by Ardelean and Jonathan:

* Added error checks for regmap calls
* Added mutex locks where applicable
* Switched to devm_iio API
* Misc changes to the driver
* Added Reivewed-by tag from Rob for the bindings patch

Changes in v2:

* Converted the devicetree binding to YAML

Manivannan Sadhasivam (2):
  dt-bindings: iio: light: Add binding for ADUX1020
  iio: light: Add support for ADUX1020 sensor

 .../bindings/iio/light/adux1020.yaml          |  47 +
 drivers/iio/light/Kconfig                     |  11 +
 drivers/iio/light/Makefile                    |   1 +
 drivers/iio/light/adux1020.c                  | 849 ++++++++++++++++++
 4 files changed, 908 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/light/adux1020.yaml
 create mode 100644 drivers/iio/light/adux1020.c

-- 
2.17.1

