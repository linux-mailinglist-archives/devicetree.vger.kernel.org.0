Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC6A8552C8F
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 10:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345745AbiFUIEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 04:04:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346896AbiFUIEU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 04:04:20 -0400
Received: from mail-wm1-x349.google.com (mail-wm1-x349.google.com [IPv6:2a00:1450:4864:20::349])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC835248FC
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 01:04:18 -0700 (PDT)
Received: by mail-wm1-x349.google.com with SMTP id be12-20020a05600c1e8c00b0039c506b52a4so6443392wmb.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 01:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=Eeewp3+idthWDzP0cBxgfX0lzlyD1daDuRGMu+W66YM=;
        b=f9ySLsJ6xbP5U+jfb+0Qp727l4/BrPPf7j8N30uqORbt5gDVMsd3u2e5WlAe/gznw0
         eH1XLzSqx8VlFRvTy+wuss4fz8WQ96mbfilRVwv+dofp9/R+YFalqtD932jmaaqsWLQ7
         3n+mUoG1/htMPS09Ckl1gYqNN6sN+CxhuopvSwprNtoZX3qH7JnYeCRsIF8Z4FKbmsr0
         MNjJ+gTe+Lx/2aS7pLtXj3KxTDtWvdSq/Vcjmt58oogqcUA7j0IbJF2BPjzp3A2MQ6q1
         NRV29TFlGnc7up2Aa6ay6lyZQDW3BWeCqVRJF2mstUyfbkGUJWQZGvObXwBAIok+sHHo
         CUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=Eeewp3+idthWDzP0cBxgfX0lzlyD1daDuRGMu+W66YM=;
        b=fsZy4R2Eo8RSryh2ks5s0ovhtxz7gv3crFgXGy+T8aqGg/O84AzXTwhxmmEQ5elFaH
         duE8P8TxCP1HwfstL6rtr/pkXFJS1T2Wx2kdvDvr0XEG1AmidIGzBqoXcu7QH0nKDhMx
         cb+N+S8ubov5/6vYxXRXXd43buAzh8uppiig8MqJgW1H9CVKJp5j9hkFLPzRnsjQqwNr
         2DdbiothUMBjKn9Nrs6N4YFIdjq9rHRidrJtu4/MBmHvWXEWuklff3dBF+04+C3DV33/
         +sF2NdTgknk6JgRP/m7J4GjtqCtkK0PL5iFHTnjj2g3yB2pH8P/NuLop4iX/Z7oNd/li
         xBAQ==
X-Gm-Message-State: AOAM533y5uE3ELIJBLRGlhpAeTUgERszlyXRkqJXal1C07Om/KwuFYQI
        LYpSGtQQzzX6tJj1jfOSCLoW1ORkhxCz2IP9JFw=
X-Google-Smtp-Source: ABdhPJxW+ElcpEjaHECu91qT9sNAnOpyYsYcoxyVS2cxK0gYVSGrIqOQeY/4oUChMxWGMiaXzZ5DG9zHQ1Bxy3XY93g=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:1990:b0:39c:81f0:a882 with
 SMTP id t16-20020a05600c199000b0039c81f0a882mr38488706wmq.72.1655798657132;
 Tue, 21 Jun 2022 01:04:17 -0700 (PDT)
Date:   Tue, 21 Jun 2022 08:03:07 +0000
Message-Id: <20220621080308.3952915-1-sebastianene@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.0.rc0.104.g0611611a94-goog
Subject: [PATCH v7 0/2] Detect stalls on guest vCPUS
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, vdonnefort@google.com,
        Guenter Roeck <linux@roeck-us.net>,
        Sebastian Ene <sebastianene@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
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

Changelog v7:
 - fix the dtschema warnings for 'timeout-sec' property
 - rename vcpu_stall_detector.yaml to qemu,vcpu_stall_detector.yaml and
   place the file under misc
 - improve the Kconfig description for the driver by making it KVM
   specific

Changelog v6:
 - fix issues reported by lkp@intel robot:
     building for ARCH=h8300 incorrect type in assignment
     (different address spaces)

Sebastian Ene (2):
  dt-bindings: vcpu_stall_detector: Add qemu,vcpu-stall-detector
    compatible
  misc: Add a mechanism to detect stalls on guest vCPUs

 .../misc/qemu,vcpu-stall-detector.yaml        |  50 ++++
 drivers/misc/Kconfig                          |  12 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/vcpu_stall_detector.c            | 222 ++++++++++++++++++
 4 files changed, 285 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
 create mode 100644 drivers/misc/vcpu_stall_detector.c

-- 
2.36.1.476.g0c4daa206d-goog

