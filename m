Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 408AE3D7974
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 17:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236661AbhG0PNO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 11:13:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232633AbhG0PNN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 11:13:13 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 936F2C061760
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 08:13:13 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id b8-20020a0562141148b02902f1474ce8b7so10776090qvt.20
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 08:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=MoBbmwwVoAs+ak0szW1VsZv7qNLKHbGSV3nOAEkfkt8=;
        b=XfJgoOdYamR7F+9PsH6kTPjt3ckIavxZN69iGZvVvSPiedLbxaZ3IxwI/k4Mz2h2vX
         wLLg0vcAcTc9TzTAgLMaBEnBf9L3j6lkndR6b7/aRUnEfdgSGxBCVAtaxpNEiHU2i1tZ
         2DFzPMu5MjNpINrDOZSV3cMlRsQx7bDr6dtwkhZApvo6YZ8/ZSUeOe5abI++8Snumh5A
         lTHEwmu9IsRjywgjrjVlkCzsXQGOfpB8Ctt9wzvdr3o22OxpdDOkhjyHwhLjNGgfXSW4
         +pkV2kJHTCGoMIcVOE/0OcnEv/pFpd6KVkBtEJ2M5RlZsMXJ7FKgoL0UZLxFMkloYMKL
         uiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=MoBbmwwVoAs+ak0szW1VsZv7qNLKHbGSV3nOAEkfkt8=;
        b=XmBp94+XJiafCm+omJ27g09V3A19tmZs4YeSHQUFSDxqSo9Kl7FztifG5bgPs3+haJ
         B68h9kQyGHSAGPjAEdg+i1YTAWdPqN7QYvbf9glQeVenRf7qflugoGqEEzAluQaNJF9J
         CDSr1LuNI+sxdHmQnzPM+qOkEBA6NsdVlvP/9zIkAKcWh6ZL+nj2gm/hVc9lsBWJO1SI
         6KcgKSR3LKhsR+GmN+LcOg10iVR2cD8TQrv/LoRN0nQKwiw/xAm/ksrsmH/eid2Sesc0
         hHVY7iThGJdhOz/kFzPxLpIjmkXflG2Ox2AJZ1xxZkUDgElHKYuuwwD+HADvD4hNZBwZ
         tZhg==
X-Gm-Message-State: AOAM5312+sI4W9D2TdYOFZVJyNrwSvSUFRsrHU/EGblAJR/uywUCm6i3
        V+FZrY8ayxGTNBKGVF5UnEOURvv/slxH
X-Google-Smtp-Source: ABdhPJwzEJKzuBqbCiUxaeAJy4u4O4sXmy2+Tf+qyNw6Ed7YgZiW68Kv/OHapgqflQytAbnlCQY9OybreoVH
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:da7f:a21b:ee74:66a2])
 (user=kyletso job=sendgmr) by 2002:a05:6214:2482:: with SMTP id
 gi2mr20396807qvb.51.1627398792472; Tue, 27 Jul 2021 08:13:12 -0700 (PDT)
Date:   Tue, 27 Jul 2021 23:13:05 +0800
Message-Id: <20210727151307.2178352-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v2 0/2] TCPM non-pd mode
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

The reason for this patch is to let the device/system policy decide
whether PD is going to be supported using devicetree properties.

A new dt property "pd-supported" is introduced and TCPM uses this
property as a flag to decide whether PD is supported. If the flag is
false, the RX functionality of the low-level driver will not be enabled.
The power negotiation related states will be skipped as well. If the
flag is true, everything is as what it was before.

If "pd-supported" is not present, and the port is SRC or DRP, another
existing dt property "typec-power-opmode" needs to be specified to
indicate which Rp value should be used when the port is SRC.

changes since v1:
- revise the patch to use dt properties

Kyle Tso (2):
  dt-bindings: connector: Add pd-supported property
  usb: typec: tcpm: Support non-PD mode

 .../bindings/connector/usb-connector.yaml     |   5 +
 drivers/usb/typec/tcpm/tcpm.c                 | 108 +++++++++++++-----
 2 files changed, 84 insertions(+), 29 deletions(-)

-- 
2.32.0.432.gabb21c7263-goog

