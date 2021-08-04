Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 113B23DFCA4
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 10:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236182AbhHDITi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 04:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232023AbhHDITh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 04:19:37 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFED0C061798
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 01:19:23 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id m2-20020ac807c20000b0290269bd8044e1so709105qth.10
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 01:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=JaeVOCD1xjiNZOo9WK4DguArWkRWfpfwXcJD2bxAZ2E=;
        b=RUoMD6rTY3IJ5/5+6xzAN02NV3WPmsnxPG+M6fxPeTNjvM/X4YQhwIGP2Rup96mqcI
         BhViJzXZSQHeOTbN/UGP3oFMatd7QM8PuTjGcMQb6P+BUarMrSAj517wqzBc6UXudTGK
         k3bubRgnXNyS+LnPV+vAuaWqRXr4bELD8I4x98i4v27VZYNpbblHw6B61CBOQnVXwQ10
         CDP/9NmBDASfZkv6UeCrimgSd1Zoji+aEytv2Cu6cxJf1s4k/kG/r/5p0vPrCqPP/BG8
         iWS0q32Muevk+q1Z2hFn+AfPpvNH/D/XyaN/8Hh6JMPPkwdclpQaDQRl2Zg6SNW+dFwG
         CouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=JaeVOCD1xjiNZOo9WK4DguArWkRWfpfwXcJD2bxAZ2E=;
        b=EiZFLexJcoy+xLK/1mZXkbJA0x7PmqcJi/2Bh5aYEVRrsjLJnZz9CRNj5zeZBfeqEE
         w5vWN0G9hPUqfcRFKj/EWhQ6d+HvZtruMFp7FaMV3I2z/9tcNns2NVnS5oPdC5ay4sxp
         F8GJ8lTmEXkLlomLB1jSHnUgvayYKtzbicMlMD/aC3wMuL+UZ5E0/wvGUFN/us9q95bB
         A0Vx2L32Ivb6n8xb5m6mkl229PXiz8q1FJFU+RKGhzb6gyM/Zr+O1yy6DXI7UZfLGwgb
         gBpYfaMXreglxE5c0hkuMzyy9it6p7/hx3BE/3R6AJB7jQc7dd3REktntgTnyxNOMlGM
         bH4g==
X-Gm-Message-State: AOAM532I0KnJJ3YHCsDcJjGWoB3Bst8UovorzhcPYVnwyof9mKJP/RvV
        koii12wI3BOZqBQaqjH+JQJY1N/w0M0s
X-Google-Smtp-Source: ABdhPJz/Ubuo6nOoq/2uOV+UPUW4YrwJ1FpKt6WTzRBYNSlxeSoAHZr/LPGvs7Jk8Fk/VC6Wf5zixktUKiHw
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:7eb8:c2f5:2e08:d4bc])
 (user=kyletso job=sendgmr) by 2002:a05:6214:1021:: with SMTP id
 k1mr25874996qvr.4.1628065162885; Wed, 04 Aug 2021 01:19:22 -0700 (PDT)
Date:   Wed,  4 Aug 2021 16:19:15 +0800
Message-Id: <20210804081917.3390341-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v6 0/2] TCPM non-PD mode
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

(changed the property name only)

The reason for this patch is to let the device/system policy decide
whether PD is going to be supported using devicetree properties.

A new dt property "pd-disable" is introduced and TCPM uses this
property as a flag to decide whether PD is supported. If the flag is
false (the dt property is not present), the RX functionality of the
low-level driver will not be enabled. The power negotiation related
states will be skipped as well. If the flag is true, everything is a
what it was before.

If "pd-disable" is present, and the port is SRC or DRP, another
existing dt property "typec-power-opmode" needs to be specified to
indicate which Rp value should be used when the port is SRC.

changes since v5:
dt-bindings: connector: Add pd-disable property
- Changed the property name to "pd-disable"

usb: typec: tcpm: Support non-PD mode
- Changed the property name to "pd-disable"
- Added Acked-by tag

Kyle Tso (2):
  dt-bindings: connector: Add pd-disable property
  usb: typec: tcpm: Support non-PD mode

 .../bindings/connector/usb-connector.yaml     |  4 +
 drivers/usb/typec/tcpm/tcpm.c                 | 87 +++++++++++++++----
 2 files changed, 72 insertions(+), 19 deletions(-)

-- 
2.32.0.554.ge1b32706d8-goog

