Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB1E63DB367
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 08:18:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237232AbhG3GSm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 02:18:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237204AbhG3GSm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 02:18:42 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B62EC0613CF
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 23:18:38 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id a6-20020a25ae060000b0290551bbd99700so9317655ybj.6
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 23:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=vthqjBQ/Q4udWXq8hxDLv4OMPT7q1106HFB0bgOZZVg=;
        b=hfCLLYg9u/HJ0MTxdrOhdfbc67sC4AG4T9SVaLsYna6Zon0m/LOAbckakXn6IYtYZS
         rPBFPG0Wc9XdhjWOun0Ga5Em2tuPzWT9lumyBIFLk7iCmThv/wdBF9HOlkRnToNiSHsn
         NQg1gLOqzn4x+mMiOr0UC5f0lxnd9guWLR4RJ8VaLm0y1GeV801sr2Vxp2QJAYelEkDF
         IYxOiwpsjrypgfXOf5+fGNsNXGxBwk7wZEiMJhah2bug+xrMXKH2AaaC5rfto9Qv7uPo
         N7EDaerkIZPS1HiROxcnSHJkyHJSIwwI8VbNvN1c2vyuQfYcJwLCcJiNiG8DDdRhydVW
         4HKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=vthqjBQ/Q4udWXq8hxDLv4OMPT7q1106HFB0bgOZZVg=;
        b=aHBdRtMgqJnBaTTzT5PQBYXUtxbofvrZ6dL0/I1SsEND679M5f+iSte+NjmrhoTmLC
         BF3/VjH262agBWShdj6odll1e6YtNDqDRvoIlY8aKwTEj0BZSt2hRc4koqACo53gUg/V
         J7P1AtQ3LuBGj2PnqwNk+xyKqYN6OelnpTh6fknzpEFEikUVWirIXyRNsZOKI0/lGzPW
         qtYBV+9hwRZ8tsBd+yv8KDmfTww6GHU6JOitDR5zEv2IEaXUdxi46zx9DtpowCkRtb63
         zUKBWwiGCT/7PId34UuSeHyupehFkClok0xy7It7SgR0jV6PEdjr/igPOtheW6sWVGVr
         B8Eg==
X-Gm-Message-State: AOAM531/tr4v5xonmMD0yeKn1gNwcn/TF5AKsr2a+Lo7eN+2fqeF+ug9
        KyZBK0x8sIao7Kj6ZtIK1v2GJyLbPd8k
X-Google-Smtp-Source: ABdhPJwR59fBTTX9DCJKCQAWYXxa1dLyE5ol9vId57clmeAeKgqe/apxSgl2aaxNmbB2TsygddRPdY6DyOeJ
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:6892:a74:4970:a062])
 (user=kyletso job=sendgmr) by 2002:a25:54:: with SMTP id 81mr1165845yba.53.1627625917145;
 Thu, 29 Jul 2021 23:18:37 -0700 (PDT)
Date:   Fri, 30 Jul 2021 14:18:30 +0800
Message-Id: <20210730061832.1927936-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v4 0/2] TCPM non-PD mode
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

cover-letter is the same as that in v3

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

changes since v3:

usb: typec: tcpm: Support non-PD mode
- commit msg updated
- removed unnecessary empty lines
- re-factored the code of reading device tree properties and the error
  handling
- removed unnecessay variable initialization
- modified the comments

Kyle Tso (2):
  dt-bindings: connector: Add pd-supported property
  usb: typec: tcpm: Support non-PD mode

 .../bindings/connector/usb-connector.yaml     |  4 +
 drivers/usb/typec/tcpm/tcpm.c                 | 87 +++++++++++++++----
 2 files changed, 72 insertions(+), 19 deletions(-)

-- 
2.32.0.554.ge1b32706d8-goog

