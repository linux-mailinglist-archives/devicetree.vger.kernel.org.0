Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D0E631039E
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 04:35:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbhBEDfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 22:35:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhBEDfD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 22:35:03 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A90DC061786
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 19:34:23 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id l10so5552857ybt.6
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 19:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=OrUeWv6axP6B3bDAlVwgBLZ4U02f8MvfgaV9eohQ9FQ=;
        b=Qiwm5plVh04WeCC3iq8iT23aScDU2aQ05Pp3jII52KGXXxGBafCEcg4O+ozaDQR6iu
         n0ysQbHh0ahgJncd6zcomqYyhFbSOfNfb9CoGbMEePWxk28Bpv1O2COD8SVWs+pE/pXS
         3NN5P+nkd8phHdmb5UuZtMl3c8cj+E8fNcCEM0vZGEzT27wj3mbvbPwSQYvFU8gA0RqS
         THvqbtpl0GKZtLykY++6fTSmF0b3NrD4JUxkUSsuboea/lnOD4ILx6ebYrX/QYugx/5Z
         JyfhiSS6aGE/fuwRDaOMlRJUGbpCifebNaaVu9uR4Q1wPRqWVWTtuynhTvkPvyTa8WPN
         /SlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=OrUeWv6axP6B3bDAlVwgBLZ4U02f8MvfgaV9eohQ9FQ=;
        b=AC1DGaKzhQia/pLgdInzIoQLVF5dIhpzm235HLgZZ+u+QpfDEoGaOPyJ1ijQAGVF6e
         wbDhbHx8fYvAQe5W+ZJpWQfduigxPtz3sAWZcBXcVj5ZR3khCL8+FAOHXQAFaWdqq5tu
         VgbOCXzJ8V0C5djXAHQ/PDlf59qEAmoFLnfDSerPf2F9poKedUxDbW5lPZgawXHEXW/C
         R8rvkBIXLq5Uyhm5maHTZqyEqxa+Ept9MeXl50v4uU8SIv3cz69pi402YJj/wYvsb8Xz
         bBcI5LP/IE1GhX0VsQrn2QYy6U+O/71TNN5FxVPg7m5Mv+1P4D+KWYsdSFQG3yc8slNR
         E8YQ==
X-Gm-Message-State: AOAM5339nrFVwvLJ/Dyibe4Y4GK5Koay3RgpAoWK23aJGvtVjpRenRAZ
        ScxJ+ju2GD0ay1U67CO0yIJpKFtaOPMC
X-Google-Smtp-Source: ABdhPJzYef0pvSKKdaJVJ1Xtoy04P4W0X+TaqeBE/NiPggoRBq5yLm2fXUKPLe0spPO+/+6+NYpErjTMaD+o
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:dd94:c753:a81d:c855])
 (user=kyletso job=sendgmr) by 2002:a25:73d6:: with SMTP id
 o205mr998040ybc.38.1612496062357; Thu, 04 Feb 2021 19:34:22 -0800 (PST)
Date:   Fri,  5 Feb 2021 11:34:08 +0800
Message-Id: <20210205033415.3320439-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v6 0/7] common SVDM version and VDO from dt
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, hdegoede@redhat.com, robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v5 is here:
https://patchwork.kernel.org/project/linux-usb/cover/20210202161733.932215-1-kyletso@google.com/

Changes since v5:
=================
usb: typec: Manage SVDM version
- !! most changes are from Heikki
- location of the negotiated SVDM version is changed. Now the variable
  resides in typec_partner
- The setter and getter functions were modified according to the above
  changes
- the default SVDM version is stored upon calling to
  typec_register_partner

usb: pd: Make SVDM Version configurable in VDM header
- no change

usb: typec: tcpm: Determine common SVDM Version
- follow the changes of "usb: typec: Manage SVDM version"
- remove the "reset to default". Now the default SVDM version will be
  set when calling to typec_register_partner

usb: typec: ucsi: Determine common SVDM Version
- follow the changes of "usb: typec: Manage SVDM version"
- remove the "reset to default". Now the default SVDM version will be
  set when calling to typec_register_partner

usb: typec: displayport: Fill the negotiated SVDM Version in the header
- follow the changes of "usb: typec: Manage SVDM version"

dt-bindings: connector: Add SVDM VDO properties
- no change

usb: typec: tcpm: Get Sink VDO from fwnode
- no change

Kyle Tso (7):
  usb: typec: Manage SVDM version
  usb: pd: Make SVDM Version configurable in VDM header
  usb: typec: tcpm: Determine common SVDM Version
  usb: typec: ucsi: Determine common SVDM Version
  usb: typec: displayport: Fill the negotiated SVDM Version in the header
  dt-bindings: connector: Add SVDM VDO properties
  usb: typec: tcpm: Get Sink VDO from fwnode

 .../bindings/connector/usb-connector.yaml     |  11 +
 drivers/usb/typec/altmodes/displayport.c      |  17 +-
 drivers/usb/typec/class.c                     |  43 +++
 drivers/usb/typec/tcpm/tcpm.c                 |  85 ++++-
 drivers/usb/typec/ucsi/displayport.c          |  32 +-
 drivers/usb/typec/ucsi/ucsi.c                 |   1 +
 include/dt-bindings/usb/pd.h                  | 311 +++++++++++++++++-
 include/linux/usb/pd_vdo.h                    |   7 +-
 include/linux/usb/typec.h                     |  12 +
 include/linux/usb/typec_altmode.h             |  10 +
 10 files changed, 509 insertions(+), 20 deletions(-)

-- 
2.30.0.365.g02bc693789-goog

