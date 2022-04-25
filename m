Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D7A850E226
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242117AbiDYNpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:45:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242121AbiDYNpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:45:19 -0400
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com [IPv6:2a00:1450:4864:20::34a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE728496A5
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:42:12 -0700 (PDT)
Received: by mail-wm1-x34a.google.com with SMTP id d6-20020a05600c34c600b0039296a2ac7cso7172132wmq.1
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=vFIWlLIseN4WX4pfaeRN3WcX3IXEI83md2Kst1oG3Kw=;
        b=GNi1ZTeAVtDL2Nf4dNjDSzCOWzxTM7w/PeYPPbwf+GDUN/OBnB6J3fPBx4TS8JcgT7
         4bjzCXedONeMuwC9eS38JFMuZV6sl9jCO9bRHDLgpSEUpTXRP2me14iDzkZkM524srHX
         PSabzmWBBHJK1TDd+FD69L4j+qi0zOd4aQRXNPB3kNqmW2+WAFrMETkrQ0trGEtgbCtx
         S8Lu5gKzFwhIaCVmXWD9CFAW+ZAY/ITAQuB0VcSkPIdiQ9bq3xeZ+MNDe7jaGTldNRse
         lMjDaIpLrWj7n+d+bxrT92FuG1EeXHLt4dSZkJmihz5+9WFo/xQXinIVHax2/WckDQyj
         M1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=vFIWlLIseN4WX4pfaeRN3WcX3IXEI83md2Kst1oG3Kw=;
        b=UahNlLtawiQ2ef9DXDyDyLNdbqQyHdeu+V6A6qSwNXJbAzQzculNCwNVMVT+x5ABBH
         pOVvblg4g+LksXFASvC6Sx9y/y/h0+ApL9sJaEndqmrnEzNSVtJbH9F70xqhU1cSLVEk
         /IRZ5THG8fpU/+AsE6S4WThyXo+xjcpfBDolst9k+3f8BFSsSWJKxbyCeSJF7mfq7Q6o
         kcmoPMmJLb64FWh5xkCY7rDwvu34PNKO3GrjsL1fwCcGMrdAmu7Su9Z/87yYa+SFyH71
         OiEaFFFtCV1823/K9tCeGcHdcjbsPzJPGgRBULRD4yVi9RjqmY5CVRLV1fcvSYRuqaFc
         U64Q==
X-Gm-Message-State: AOAM533y8Ayudp1v6rtJbFq6Ij7pto/WM88kWgF2N+tQPoXNIqznC69c
        9B/tQ+gRCpY871dQmcPAlkrVdBM1o/vEVEZq9mU=
X-Google-Smtp-Source: ABdhPJzRf1QmXs6JiEEQQmeSt0DcAaq98LBBMtFauP5L8yLwbHEvPmQm6OgXZr3obxeYnqUTklOHL2dNYzpAocezudc=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:35c9:b0:393:f039:d10a with
 SMTP id r9-20020a05600c35c900b00393f039d10amr1075397wmq.95.1650894131056;
 Mon, 25 Apr 2022 06:42:11 -0700 (PDT)
Date:   Mon, 25 Apr 2022 13:42:03 +0000
Message-Id: <20220425134204.149042-1-sebastianene@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
Subject: [PATCH v3 0/2] Detect stalls on guest vCPUS
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, qperret@google.com,
        Sebastian Ene <sebastianene@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a mechanism to detect stalls on the guest vCPUS by creating a
per CPU hrtimer which periodically 'pets' the host backend driver.
On a conventional watchdog-core driver, the userspace is responsible for
delivering the 'pet' events by writing to the particular /dev/watchdogN node.
In this case we require a strong thread affinity to be able to
account for lost time on a per vCPU basis.

This device driver acts as a soft lockup detector by relying on the host
backend driver to measure the elapesed time between subsequent 'pet' events.
If the elapsed time doesn't match an expected value, the backend driver
decides that the guest vCPU is locked and resets the guest. The host
backend driver takes into account the time that the guest is not
running. The communication with the backend driver is done through MMIO
and the register layout of the virtual watchdog is described as part of
the backend driver changes.

The host backend driver is implemented as part of:
https://chromium-review.googlesource.com/c/chromiumos/platform/crosvm/+/3548817

Changelog v3:
 - cosmetic fixes, remove pr_info and version information
 - improve description in the commit messag
 - improve description in the Kconfig help section

Sebastian Ene (2):
  dt-bindings: vm-wdt: Add qemu,vm-watchdog compatible
  misc: Add a mechanism to detect stalls on guest vCPUs

 .../devicetree/bindings/misc/vm-wdt.yaml      |  44 ++++
 drivers/misc/Kconfig                          |  12 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/vm-wdt.c                         | 207 ++++++++++++++++++
 4 files changed, 264 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/vm-wdt.yaml
 create mode 100644 drivers/misc/vm-wdt.c

-- 
2.36.0.rc2.479.g8af0fa9b8e-goog

