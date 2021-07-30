Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 383B03DB8CE
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 14:45:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238863AbhG3MpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 08:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238878AbhG3Moq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 08:44:46 -0400
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com [IPv6:2607:f8b0:4864:20::84a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08E18C061798
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:43:54 -0700 (PDT)
Received: by mail-qt1-x84a.google.com with SMTP id e16-20020ac867100000b0290257b7db4a28so4286054qtp.9
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=BUiqVnmCC5LvHUiB8iYWIOWbO4jO0OfShvOq4rUC/U0=;
        b=uot/DzFgmwjObSu3zktrMgJ2umnJ8lum8uAOrI27vCbViA92GIbqlHdxxDRPAtckTu
         pERv9asVh4OIsUjb+BUVGdepbl1ymy3BdWTldI52oht4Djvx8c1uLSPY415R6wMYVqfP
         gh2tWn1w+GJx/x5pJ64MIl5CVdTQ5d4MVpxZcq/C15WiF5kTACB9QcDW/Ru8dv3bKYO7
         1XCRNDQ1GfUcykDekKhqhlqii7cp89YBceib99SKdTvjEb4dOjmjNd2B7LZRDb5dXKUx
         a5PQTb0tC4XQwd4a3cymf2cMRcb8AR13tAzMA+varqD7Skn/iPnkXY10kLohLcJB0CWT
         oSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=BUiqVnmCC5LvHUiB8iYWIOWbO4jO0OfShvOq4rUC/U0=;
        b=hr4LVGAwpZoAEVsdl3yQdGy0D6DZq8JNQQVRgzCuqs88dd/0Wow9OS7UZUHoo1Wvzc
         myVx3Oub8zU5SpS2tB6lradQYIaGew+rc1Od6D4Httfsfm/SZVTxbJbFasDsEqan+eUa
         0oZUUYuzi0uGCuu9B4OaHjXhvNGdUH4Ceh7Zk2lTDamIbp8ohgLV4fUSzSWwc6LU6I/s
         4tXGUpc/ctgODH/Toh/7JajipMhvutUQ6UPrm2EtZAlCUqiDNxfwAIWOJs8ViUNtQIFx
         rT1S8MNN6B1/6UhuC4VluNwZUCNKOJEftUGb7rf1yc+h7+AswEQnznfKbGasvSQw39G6
         Xwpg==
X-Gm-Message-State: AOAM531FXGfCYyh2LIUZHiA6vtgL9dytZ9XpeUbtkGtvNXoZH+1r/RYr
        Zzp94TSZLhW7uXPDKx8xAim1FpLURUYt
X-Google-Smtp-Source: ABdhPJxzxMzASRvkFgqW+ytumwovki124B/n372u7N1TvgSmlRct/5OVggH9RDgimalWc+KEFLXb7Jn2Ascy
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:6892:a74:4970:a062])
 (user=kyletso job=sendgmr) by 2002:ad4:522c:: with SMTP id
 r12mr2460956qvq.17.1627649032859; Fri, 30 Jul 2021 05:43:52 -0700 (PDT)
Date:   Fri, 30 Jul 2021 20:43:46 +0800
Message-Id: <20210730124348.1986638-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v5 0/2] TCPM non-PD mode
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

cover-letter is the same as that in v4

The reason for this patch is to let the device/system policy decide
whether PD is going to be supported using devicetree properties.

A new dt property "pd-unsupported" is introduced and TCPM uses this
property as a flag to decide whether PD is supported. If the flag is
false (the dt property is not present), the RX functionality of the
low-level driver will not be enabled. The power negotiation related
states will be skipped as well. If the flag is true, everything is a
what it was before.

If "pd-unsupported" is present, and the port is SRC or DRP, another
existing dt property "typec-power-opmode" needs to be specified to
indicate which Rp value should be used when the port is SRC.

changes since v4:
dt-bindings: connector: Add pd-unsupported property
- Corrected the subject

usb: typec: tcpm: Support non-PD mode
- Added Reviewed-by

Kyle Tso (2):
  dt-bindings: connector: Add pd-unsupported property
  usb: typec: tcpm: Support non-PD mode

 .../bindings/connector/usb-connector.yaml     |  4 +
 drivers/usb/typec/tcpm/tcpm.c                 | 87 +++++++++++++++----
 2 files changed, 72 insertions(+), 19 deletions(-)

-- 
2.32.0.554.ge1b32706d8-goog

