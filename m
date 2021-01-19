Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA6D2FB7DA
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 15:28:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389623AbhASLbv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 06:31:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732056AbhASKMM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 05:12:12 -0500
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com [IPv6:2607:f8b0:4864:20::74a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B36F2C061575
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 02:11:25 -0800 (PST)
Received: by mail-qk1-x74a.google.com with SMTP id u17so19665628qku.17
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 02:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=YXlxgq14VnReTcxjg/LBvkVDEl6P7FQiD3lR26uEf+M=;
        b=n9ztNgQi+mAAwySt5egAqA2o/ifrV1Ii75qwTpMnEdAI6pDb2Y00BJnlNj/sjetxXx
         Ll7e97CHvHAtxUJw/J/WqINf2uhNbd2yuV7DrZ0msvCCEISoJYa4JNByBhQOCR/PDxN3
         Lst0+9QZSaZGGyUDraseAAUs9OoZJ9HAuTdC6/e2Z+MFxIpR0KRxafFvZj0WO5t/U3ft
         3Y7+xONXH2uMoxUps/1p0cQpo710Hl1JbvfVH7KVX/z+2Uq0u44xjbqBrpMEJmyMAYgF
         oCKD/THQVrS7SRC2po374lxrQvASw/JvNyV+3TTqfcN+SlYk4BfHPg3sub+39nME48Ma
         xwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=YXlxgq14VnReTcxjg/LBvkVDEl6P7FQiD3lR26uEf+M=;
        b=c2imwBs+8rkJURo5oi7FfXNXl8+NJiMCWIUvIs9tRygJAKO0pQq2ummsZljVxLMlvV
         nkrG9DmZRiBKvzpuOWCLUaqmWQ2ZBdP6kx/8JBfShr2iBfQCOjKUGSIjB38CN0SN/vus
         YqJmAIDP8EosXVf8lZ1fpzdEfHaHGLvFQ25ol5eAoMoDrT3LFWacLxyQEhkg7ngFxfBk
         HdWSEZLtfl2V/ADC3LwS5AZ5FuYn7WnICb33w4KmlIYDFw6r/JDmdOC03Hv1H8D9bA5z
         zaeUdc+nVDSIySVLAthctnK+v23IWKaizH+T4hV/4UC/Wr3UlO+gLyQfG6PruBSGb1kr
         PMTg==
X-Gm-Message-State: AOAM531aNYQoxsGZdjbo0osfkiIiSLM/4zgbBqkxTaYFwrJlXbfqDRRc
        nM5nEL6xYPr3S9O1iSHUWyCY/WmdjZjgsG4=
X-Google-Smtp-Source: ABdhPJy/H8P5Ssvj6Q6sdyThV3lNfl0AFUG9nrdcbvbYDh85EnMukbtmyHIen93Tj7+5uHOXvtlWg3vvMuY3SRE=
Sender: "howardyen via sendgmr" <howardyen@howardyen.ntc.corp.google.com>
X-Received: from howardyen.ntc.corp.google.com ([2401:fa00:fc:202:5d06:ba6f:6a89:a201])
 (user=howardyen job=sendgmr) by 2002:ad4:476c:: with SMTP id
 d12mr3421233qvx.20.1611051084664; Tue, 19 Jan 2021 02:11:24 -0800 (PST)
Date:   Tue, 19 Jan 2021 18:10:40 +0800
Message-Id: <20210119101044.1637023-1-howardyen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 0/4] add xhci hooks for USB offload
From:   Howard Yen <howardyen@google.com>
To:     gregkh@linuxfoundation.org, robh+dt@kernel.org,
        mathias.nyman@intel.com
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Howard Yen <howardyen@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To let the xhci driver support USB offload, add hooks for vendor to have
customized behavior for the initialization, memory allocation, irq work, and 
device context synchronization. Detail is in each patch commit message.

Howard Yen (4):
  usb: host: add xhci hooks for USB offload
  usb: host: export symbols for xhci hooks usage
  usb: xhci-plat: add xhci_plat_priv_overwrite
  dt-bindings: usb: usb-xhci: add USB offload support

 .../devicetree/bindings/usb/usb-xhci.txt      |  1 +
 drivers/usb/host/xhci-hub.c                   |  5 +
 drivers/usb/host/xhci-mem.c                   | 99 ++++++++++++++++---
 drivers/usb/host/xhci-plat.c                  | 45 ++++++++-
 drivers/usb/host/xhci-plat.h                  |  9 ++
 drivers/usb/host/xhci-ring.c                  | 19 +++-
 drivers/usb/host/xhci.c                       | 89 +++++++++++++++++
 drivers/usb/host/xhci.h                       | 38 +++++++
 8 files changed, 289 insertions(+), 16 deletions(-)

-- 
2.30.0.284.gd98b1dd5eaa7-goog

