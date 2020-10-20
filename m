Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21FFC29381F
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 11:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391857AbgJTJge (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 05:36:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391783AbgJTJgd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 05:36:33 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88994C061755
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 02:36:33 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id h64so1520868ybc.1
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 02:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=PtAKH6DNREdiEN9Qe266UtcfxzWmhFfBqOATLMy+hRI=;
        b=BGBLxfUai4HKny40hSGBeizN8/5UzZyJWwenaL5wQzUmUBQ6BPBY8fbeuhQ8XvS5ZN
         6yMwJ/VxRAaMMFD2DPT0VZTeeI/2XWwSQNbSyEGcvPuHkfHaZE/R1+wt9mayeCp+DeE6
         V7CvietRp6bVwpX/EYZUiAWSv/s6XyTDiPIDQgCIcJnhA/HwlPsRBemssWioNWC6LROD
         Y9IjBhmKBwqMLHY1rYJbAH//eXRfLVskG1NOnHDkbd808Wyr9SWLXnVc8i/un4050csn
         bF3hSajpk9pRbLv2C/CPgRwdL2Mx/UH6f8VoEMAt0UoPMOyTi1+49ZNnS+iJrQylntPr
         IfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=PtAKH6DNREdiEN9Qe266UtcfxzWmhFfBqOATLMy+hRI=;
        b=Wpbv64rwaktbMjNmYgzN0vQZEdAmrQeFNsCjexqdKum9PoRUxiucVSc6GzWsWh1ZGM
         uHVjbtItz8Wvz6lF1P1mkRCdX6tZtBi6eT9z5yNvT5q60lVrfAcG/wx1XvdnUkEYfw/3
         XxNhRIklwV031D1hXswVuvlNVFNJ7H5rtsTx6bDqlSWHiMDVaZCDVDkU9ilJC0+PniIf
         ZtPY28Qheb/4ijQwCFe3L3bUW2RX27day4zv6ziksfnp1KOmKF9IE2SOzJFrHwCaEYw2
         fYIJVf7sgNo33ml+Qu0vF5kFtFaJjfBAZMpghpErVO4v8LXryRulvqWjlySfYWDX0iIc
         TnxQ==
X-Gm-Message-State: AOAM530sOK2tfRIXHdDNefpDDhP6lxvu4d61IjCUvxgDN2qJSKBEu4Ci
        vAtKbSPxjIHxEhb/XmpxVfSkRJD7MAY=
X-Google-Smtp-Source: ABdhPJx5O45MNjK8kPomJpEZBTPeGhK+/Y7uUwZN2nYkT+G2j1powMl/QYaa5dZoBYn4Vx7tOlKOb6ngx5o=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a25:610a:: with SMTP id v10mr2991061ybb.352.1603186592762;
 Tue, 20 Oct 2020 02:36:32 -0700 (PDT)
Date:   Tue, 20 Oct 2020 02:36:17 -0700
Message-Id: <20201020093627.256885-1-badhri@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
Subject: [PATCH v11 00/10] *** TCPM support for FRS and AutoDischarge
 Disconnect ***
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        Badhri Jagan Sridharan <badhri@google.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Addressed comments from Rob Herring for dt-bindings patches:
- Added part number for the maxim chip to dt-binding and renamed the
  file. Fixed it on the driver side as well with
  usb: typec: tcpci_maxim: Fix the compatible string
- new-source-frs-typec-current now uses u32.

Added Reviewed by tags from Heikki.

Thanks,
Badhri

Badhri Jagan Sridharan (10):
  dt-bindings: connector: Add property to set initial current cap for
    FRS
  dt-bindings: usb: Maxim type-c controller device tree binding document
  usb: typec: tcpci_maxim: Fix the compatible string
  usb: typec: tcpm: Refactor logic for new-source-frs-typec-current
  usb: typec: tcpm: frs sourcing vbus callback
  usb: typec: tcpci: frs sourcing vbus callback
  usb: typec: tcpci_maxim: Fix vbus stuck on upon diconnecting sink
  usb: typec: tcpm: Implement enabling Auto Discharge disconnect support
  usb: typec: tcpci: Implement Auto discharge disconnect callbacks
  usb: typec: tcpci_maxim: Enable auto discharge disconnect

 .../bindings/connector/usb-connector.yaml     | 19 ++++
 .../devicetree/bindings/usb/maxim,33359.yaml  | 75 ++++++++++++++++
 drivers/usb/typec/tcpm/tcpci.c                | 72 ++++++++++++++-
 drivers/usb/typec/tcpm/tcpci.h                | 18 +++-
 drivers/usb/typec/tcpm/tcpci_maxim.c          | 31 +++----
 drivers/usb/typec/tcpm/tcpm.c                 | 87 ++++++++++++++++---
 include/dt-bindings/usb/pd.h                  |  8 ++
 include/linux/usb/tcpm.h                      | 19 ++++
 8 files changed, 299 insertions(+), 30 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/maxim,33359.yaml


base-commit: 270315b8235e3d10c2e360cff56c2f9e0915a252
-- 
2.29.0.rc1.297.gfa9743e501-goog

