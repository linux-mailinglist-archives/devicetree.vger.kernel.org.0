Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB21655CEB0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:05:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234092AbiF0K2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 06:28:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233839AbiF0K2Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 06:28:24 -0400
Received: from mail-wr1-x449.google.com (mail-wr1-x449.google.com [IPv6:2a00:1450:4864:20::449])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1019614A
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 03:28:23 -0700 (PDT)
Received: by mail-wr1-x449.google.com with SMTP id u9-20020adfa189000000b0021b8b3c8f74so1082096wru.12
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 03:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=s3eRgQeQQvBRcBzSbIvyRJKDsKq3OdYe9Y1yRn0fcpo=;
        b=o6mG6eicSxWD/sxjsoLYHS/sWTPbwX/sUFlawHFsI/YkYx30RZS+bCniGbhmPfUafs
         Jh+noSSwZiQEsQVDt9wYYwYIBfTDMApEfjGbnu0q2E6U/jxwsEMVKx3xYXJHRNizgiAa
         VrwPEh1m8uAIIGOQHxxdh+U6+0kPvNm9+fBmHy3XG13HV6yd9hmRFcGAc23nawUkMBK1
         wWubfDS1vqMBG+l2Tf3XYP5a2yppLXzJYCzkhqRmlcZC73qJVYdt4kAd56HtCdMuvob4
         hk2J60qoknmGH4PryUgyG0roy2T1bGYjahVzh5iGbV11cRFnn3avV+4YpxUtU1KALxYE
         ziIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=s3eRgQeQQvBRcBzSbIvyRJKDsKq3OdYe9Y1yRn0fcpo=;
        b=krX4hC5FtyBp6qtjr/DUc0eR4WuojGUMcNJP1JM+SNXzIYAiDAdzfyz3LEVg8ySd3r
         lhXuuhQFL+Xqu3IYfbxdltENfOBvtXUGPdhjyA1UBSiatPAZ9EC09DF/wgNvclJbs7c8
         YAz3KzZ+Ciz3qlxk6zopMrjAp5h5dqYJA8VmY+DgSlz21WIdY2ZPln1egHFavCtRt6fH
         NNhecKEB5FBPWPvu2RKcyG/vrVVBwp1Kfr1iXiRPevXZTBXjJeEasSRnY1DVsiC6k6E/
         cMol/92podgMPJHCD7sFVz90Ez7rEuJoJbIdUV2gpxbidGe6WEwMVCIBoYWJAWA3M1+j
         R28A==
X-Gm-Message-State: AJIora96WrlNuwweHsp3LBI0Wf1spJNkJnSfhe4tCOVk07afM2xoBMT8
        4JCbdDvGOVHtWrJQNfGb5AaU42hFjYYPvZdJumc=
X-Google-Smtp-Source: AGRyM1uCJPS0drBW8eKmuFsKAQJY862R7KMK2UnlDEAyPmBwd2SP9WKQrOr/7DvaHYht1MK2oVhxFK69nQwE2Ee8nZU=
X-Received: from sene.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:27c4])
 (user=sebastianene job=sendgmr) by 2002:a05:600c:4e0c:b0:39c:519f:9f35 with
 SMTP id b12-20020a05600c4e0c00b0039c519f9f35mr19697228wmq.153.1656325702277;
 Mon, 27 Jun 2022 03:28:22 -0700 (PDT)
Date:   Mon, 27 Jun 2022 10:28:09 +0000
Message-Id: <20220627102810.1811311-1-sebastianene@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
Subject: [PATCH v8 0/2] Detect stalls on guest vCPUS
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
        autolearn=unavailable autolearn_force=no version=3.4.6
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

Changelog v8:
 - fix the yamlint dtschema warning caused by the missing 'reg' property 

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

 .../misc/qemu,vcpu-stall-detector.yaml        |  51 ++++
 drivers/misc/Kconfig                          |  12 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/vcpu_stall_detector.c            | 222 ++++++++++++++++++
 4 files changed, 286 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
 create mode 100644 drivers/misc/vcpu_stall_detector.c

-- 
2.37.0.rc0.161.g10f37bed90-goog

