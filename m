Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E70656A72F
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 17:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235846AbiGGPnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 11:43:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235680AbiGGPnH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 11:43:07 -0400
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com [IPv6:2a00:1450:4864:20::34a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF3612CDC8
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 08:43:05 -0700 (PDT)
Received: by mail-wm1-x34a.google.com with SMTP id v18-20020a05600c15d200b003a2d4809386so297009wmf.4
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 08:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=6+izafj6otUlanY6LDi6lDonEWohqK4DU4v2BGJaV3o=;
        b=r/irGtNirV7KX6v8sNaxCAye1YdkhEGYXBp6JZOCpOWe3GZGzRelVJ+nugud4Y8XcU
         1UfAnBdslbdGQKQBdgH5b1/1H9AbdMMeYA3+A6YnCamh6qVCFoS08+9C7KE1eOkU2goe
         xM6dFG2V2I67b2J11uhr75XwieyZcrYq3LDsppuXjlbs/od+P6oOWeQKgzpIm1ziZotH
         pX6DtpI97g66REYjn1SRBS9TkwT/mudORdCBw/unfEQ5Elz9QdBe8XF7syBLb4jHXfWj
         /5OiqEPOjZQksCM7GgpZCjKvexOM/r5UoOaeqRJgDbHttN/q7RMqZGVykH1xzuPdr8TG
         A92Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=6+izafj6otUlanY6LDi6lDonEWohqK4DU4v2BGJaV3o=;
        b=1Y4dCMSy7zygq+VbxLjFF7exqR/IZlX2Kh/OK4Yk0iY/N8quB1svhimzjxQs4q71Xh
         eF3iGW/LMf8/JWk+Jps5QW46VPKIQtP4+qULN0If2jlwou+64cmZ6KZ18e8j6PNxYkgk
         66nw5CM8u/ejl2hiBIAisDuknO4ypC/682IdAMfqxNxOx7tMncI5zjIXjd6aA0uhU9vR
         QEIOcLOnCEUSLg3GDUMRK0CzQz78q38Gl+TDYQlOp2heknSpXBjqk8Rugi81D9NzZI+d
         04kadJjN0C1FbGjLjPCpXI9eK/91bTtQZAHh6XIbehSH4vc6DtsHZHvfJEiorUZd4Us7
         Rasw==
X-Gm-Message-State: AJIora/7fKl0QGA6wBhZw2ApwaKy/jF1GC9CAI5E69DL+NB358dYjWv3
        Dih9xRLyr6lYnjO+anyx23PFd3XttBCJdbquXgA=
X-Google-Smtp-Source: AGRyM1shof327Elzhyt8rn85RRo4AKB8ZHaUvJxPl+hEjPJlJSHfA/poA5Jn3J+frt9WFK/zs1O1W/a7LzH8zYH/JJU=
X-Received: from seb.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:31bd])
 (user=sebastianene job=sendgmr) by 2002:a7b:c8d2:0:b0:3a0:2fd0:177 with SMTP
 id f18-20020a7bc8d2000000b003a02fd00177mr5203021wml.23.1657208584555; Thu, 07
 Jul 2022 08:43:04 -0700 (PDT)
Date:   Thu,  7 Jul 2022 15:42:25 +0000
Message-Id: <20220707154226.1478674-1-sebastianene@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
Subject: [PATCH v10 0/2] Detect stalls on guest vCPUS
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

This is a re-work from v9 and addresses the comments received from Will.

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

Changelog v10:
 - keep only the hrtimer and a flag in the per_cpu structure and move
   the other fields in a separate config structure
 - fix a potential race condition as pointed out by Will: the
   driver remove(..) can race with the hotplug cpu notifiers
 - replace alloc_percpu with devm_alloc_percpu and remove the free_percpu
 - unregister the hotplug notifiers
 - improve the Kconfig description and fix the license in the header
   file
 - add the review-by tag from Rob as the DT has not changed since v9
 
Changelog v9:
 - make the driver depend on CONFIG_OF
 - remove the platform_(set|get)_drvdata calls and keep a per-cpu static
   variable `vm_stall_detect` as suggested by Guenter on the (v8) series
 - improve commit description and fix styling

Sebastian Ene (2):
  dt-bindings: vcpu_stall_detector: Add qemu,vcpu-stall-detector
    compatible
  misc: Add a mechanism to detect stalls on guest vCPUs

 .../misc/qemu,vcpu-stall-detector.yaml        |  51 +++++
 drivers/misc/Kconfig                          |  14 ++
 drivers/misc/Makefile                         |   1 +
 drivers/misc/vcpu_stall_detector.c            | 209 ++++++++++++++++++
 4 files changed, 275 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/qemu,vcpu-stall-detector.yaml
 create mode 100644 drivers/misc/vcpu_stall_detector.c

-- 
2.37.0.rc0.161.g10f37bed90-goog

