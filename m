Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E84882A71BB
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 00:26:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728784AbgKDX0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 18:26:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732671AbgKDXYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 18:24:00 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01E41C0613D4
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 15:23:59 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id p63so405173ybc.7
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 15:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=qxSdT/htjPt1rfcdgR0CtyWt92pD/X+GQuarVc5W22A=;
        b=Z6PCXnSTts8YmxctL8R7Frehiq4pIXSlJeDUZCZbNmy0fl+H77QjQaXxf2VR2mIxnL
         jAqBDRGKE+3Iy5VcYSEgbEPJ53NSzGi9GhD7mEZfiHKo8ONvwKFTWoTqk6/Dv+sPPDVQ
         rws4CbXu+gdD6Vj0wD1rLzChL1MQTuxyBHZg0L8zdpDu88R9GFGimNhbs/5zyBUyXHo0
         23Ss2J6oz4ToQMDTudjsvy7GivTsWgSxT4ZmXT/ChbWPbtj3oqE+RW5zp69WtVhD8X0n
         ndDLkiNB9YGG+1OkGhhS3zgN2V9p1xUWAD1Z8OJ24ZYLCktbG/nSFh8XX7Y480qa8JXX
         vQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=qxSdT/htjPt1rfcdgR0CtyWt92pD/X+GQuarVc5W22A=;
        b=LLcEksJLhG3bQ5qkxg/vMqy6pv4SalS99tZRNel8WWBnnWGU17n6/bD9zN1AA7soSF
         7woUHSqoX4IJh2nK3i3zeUZkLUygfwndFE1/r9y9+RJsgxmCPY7prnEPUt+PB9A9lmPD
         4lq3Y4LBzPzptBLOR8oxuKfJGZoVvuGuuJx5Rj1A6FDX0pJAoxEZNKfjUroYSD5RqNDO
         17N36O+QLn+XsftKYiWiyww8/TGkp2U/IQdjy4UNNQvmE70ackRIbeYPFLkdHPHiR4WA
         waGkh3nM5XK1ks4bGdRSf04XASu1X6eHO2NGzA4ddXm6YsFw1KAZdnrhmeTNVvk8sypo
         2lrg==
X-Gm-Message-State: AOAM530S0UfbmZXY2hOjCKZUlRW1ETZJAdoyIGxqnsnBnNtXNiX1fZFi
        5/YKoa2Hl5Shtg7FDhm9YGDPwZWNnsmpWI0=
X-Google-Smtp-Source: ABdhPJzf64PWD8NlgoAvp7yefgz83qDvAlatxAksLGDndOY3DpA93FJ1sU1LtLNL4PYFhovQS+WVfPQ1uwtMhXM=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a25:da92:: with SMTP id
 n140mr254441ybf.275.1604532239153; Wed, 04 Nov 2020 15:23:59 -0800 (PST)
Date:   Wed,  4 Nov 2020 15:23:37 -0800
Message-Id: <20201104232356.4038506-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v1 00/18] Refactor fw_devlink to significantly improve boot time
From:   Saravana Kannan <saravanak@google.com>
To:     "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Saravana Kannan <saravanak@google.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        kernel-team@android.com, linux-acpi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current implementation of fw_devlink is very inefficient because it
tries to get away without creating fwnode links in the name of saving
memory usage. Past attempts to optimize runtime at the cost of memory
usage were blocked with request for data showing that the optimization
made significant improvement for real world scenarios.

We have those scenarios now. There have been several reports of boot
time increase in the order of seconds in this thread [1]. Several OEMs
and SoC manufacturers have also privately reported significant
(350-400ms) increase in boot time due to all the parsing done by
fw_devlink.

So this patch series refactors fw_devlink to be more efficient. The key
difference now is the addition of support for fwnode links -- just a few
simple APIs. This also allows most of the code to be moved out of
firmware specific (DT mostly) code into driver core.

This brings the following benefits:
- Instead of parsing the device tree multiple times (complexity was
  close to O(N^3) where N in the number of properties) during bootup,
  fw_devlink parses each fwnode node/property only once and creates
  fwnode links. The rest of the fw_devlink code then just looks at these
  fwnode links to do rest of the work.

- Makes it much easier to debug probe issue due to fw_devlink in the
  future. fw_devlink=on blocks the probing of devices if they depend on
  a device that hasn't been added yet. With this refactor, it'll be very
  easy to tell what that device is because we now have a reference to
  the fwnode of the device.

- Much easier to add fw_devlink support to ACPI and other firmware
  types. A refactor to move the common bits from DT specific code to
  driver core was in my TODO list as a prerequisite to adding ACPI
  support to fw_devlink. This series gets that done.

Tomi/Laurent/Grygorii,

If you can test this series, that'd be great!

Thanks,
Saravana

[1] - https://lore.kernel.org/linux-pm/CAGETcx-aiW251dhEXT1GNb9bi6YcX8W=jLBrro5CnPuEjGL09g@mail.gmail.com/

Saravana Kannan (18):
  Revert "driver core: Avoid deferred probe due to fw_devlink_pause/resume()"
  Revert "driver core: Rename dev_links_info.defer_sync to defer_hook"
  Revert "driver core: Don't do deferred probe in parallel with kernel_init thread"
  Revert "driver core: Remove check in driver_deferred_probe_force_trigger()"
  Revert "of: platform: Batch fwnode parsing when adding all top level devices"
  Revert "driver core: fw_devlink: Add support for batching fwnode parsing"
  driver core: Add fwnode_init()
  driver core: Add fwnode link support
  driver core: Allow only unprobed consumers for SYNC_STATE_ONLY device links
  device property: Add fwnode_is_ancestor_of()
  driver core: Redefine the meaning of fwnode_operations.add_links()
  driver core: Add fw_devlink_parse_fwtree()
  driver core: Add fwnode_get_next_parent_dev() helper function
  driver core: Use device's fwnode to check if it is waiting for suppliers
  of: property: Update implementation of add_links() to create fwnode links
  efi: Update implementation of add_links() to create fwnode links
  driver core: Add helper functions to convert fwnode links to device links
  driver core: Refactor fw_devlink feature

 drivers/acpi/property.c         |   2 +-
 drivers/acpi/scan.c             |   2 +-
 drivers/base/core.c             | 584 +++++++++++++++++++++-----------
 drivers/base/property.c         |  27 ++
 drivers/base/swnode.c           |   2 +-
 drivers/firmware/efi/efi-init.c |  31 +-
 drivers/of/dynamic.c            |   1 +
 drivers/of/platform.c           |   2 -
 drivers/of/property.c           | 150 +++-----
 include/linux/device.h          |  10 +-
 include/linux/fwnode.h          |  66 ++--
 include/linux/of.h              |   2 +-
 include/linux/property.h        |   2 +
 kernel/irq/irqdomain.c          |   2 +-
 14 files changed, 490 insertions(+), 393 deletions(-)

-- 
2.29.1.341.ge80a0c044ae-goog

