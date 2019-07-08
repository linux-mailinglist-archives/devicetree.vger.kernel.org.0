Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E773B62C31
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 00:56:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725889AbfGHW43 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 18:56:29 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:32826 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725877AbfGHW43 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 18:56:29 -0400
Received: by mail-pl1-f201.google.com with SMTP id f2so9545982plr.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 15:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=1V/JuzLla7Nz4Ncf2LiSFn+cWuMl+n0hT2LSSfkV2+I=;
        b=W0tPpBXC9sMdBOuC3aoGgNaxFXz7whzQL5RcGjJtC49v4MZtgHWHbYCQYmm4C3Q0Kc
         5ztQ6ZQ2Mc6biD/HtF9VXPUYv67Vcfn2Q1LXjfTmyfzVO76rXMI3whq1BzhtKlCKvugO
         o+CKhHkCyxDBwC1hiqRoDjjwMlcovS7eYHeDsR9Xd0wboqQ1VHqHfF25F9OxIQtFTv5D
         cvSQu7y9MeJZ4T2EyAm6mDElJ1LITXwwkmWSz0O9hbEz/VPzJvsnckKax0m9UVhG3RxG
         qHPEjk86gHr66yFBa6gIL35Usqly+gruiXEe/tTUhaWNUh61bur1NOxIcu5X17VnFbka
         kClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=1V/JuzLla7Nz4Ncf2LiSFn+cWuMl+n0hT2LSSfkV2+I=;
        b=V1xFdyu5w4tO7N3xtOfRmHmeq0FGcS9aGEwv6ydbR9+LEfE6jKdtnox5ddFf+2C2rf
         PFo1gx8lW183SRdBF/yu2fqbFbYjDgBP7fxX+6/iMaxp646cgSm05D4DGpqzoCi6DGNQ
         seA72lKp5F0E9R6BFEZa4PQFhM76wEAAc0nzSk8me3b4VBCopzsK+ZK8+toYsDw5Mit9
         5s54Ah/CRiKsL+/PvuexC5WsdWXqwekyRMjck5yQ0cPG8W514/zS+rOWvTKd6q3e4f4x
         sDtzHTGRwkVTF+jWjlfGp0JoUwrtpq9ZTM6wxJZ71i2UpMYXltK83mZT4YIIYOwNC2u+
         ++gw==
X-Gm-Message-State: APjAAAUhxjC1FtAkMX2EcIcgJjrtReHGbSk8y7i1C5nIiFZivEd+JfXZ
        O9mRZKOn94l0ZUgz4rfO5wJEdAvKKDbz3P8=
X-Google-Smtp-Source: APXvYqy8i2UQnsmcucB5t7GCXYSF65dBa0HuwmA3UGkIo2J8whOSpqFjT+7uzDPdxGDxrnQNhNcRUVP3Y2zgBMc=
X-Received: by 2002:a65:5304:: with SMTP id m4mr26465510pgq.126.1562626588027;
 Mon, 08 Jul 2019 15:56:28 -0700 (PDT)
Date:   Mon,  8 Jul 2019 15:56:16 -0700
Message-Id: <20190708225624.119973-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v4 0/8] Solve postboot supplier cleanup and optimize probe ordering
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        David Collins <collinsd@codeaurora.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device-links to track functional dependencies between devices
after they are created (but before they are probed) by looking at
their common DT bindings like clocks, interconnects, etc.

Having functional dependencies automatically added before the devices
are probed, provides the following benefits:

- Optimizes device probe order and avoids the useless work of
  attempting probes of devices that will not probe successfully
  (because their suppliers aren't present or haven't probed yet).

  For example, in a commonly available mobile SoC, registering just
  one consumer device's driver at an initcall level earlier than the
  supplier device's driver causes 11 failed probe attempts before the
  consumer device probes successfully. This was with a kernel with all
  the drivers statically compiled in. This problem gets a lot worse if
  all the drivers are loaded as modules without direct symbol
  dependencies.

- Supplier devices like clock providers, interconnect providers, etc
  need to keep the resources they provide active and at a particular
  state(s) during boot up even if their current set of consumers don't
  request the resource to be active. This is because the rest of the
  consumers might not have probed yet and turning off the resource
  before all the consumers have probed could lead to a hang or
  undesired user experience.

  Some frameworks (Eg: regulator) handle this today by turning off
  "unused" resources at late_initcall_sync and hoping all the devices
  have probed by then. This is not a valid assumption for systems with
  loadable modules. Other frameworks (Eg: clock) just don't handle
  this due to the lack of a clear signal for when they can turn off
  resources. This leads to downstream hacks to handle cases like this
  that can easily be solved in the upstream kernel.

  By linking devices before they are probed, we give suppliers a clear
  count of the number of dependent consumers. Once all of the
  consumers are active, the suppliers can turn off the unused
  resources without making assumptions about the number of consumers.

By default we just add device-links to track "driver presence" (probe
succeeded) of the supplier device. If any other functionality provided
by device-links are needed, it is left to the consumer/supplier
devices to change the link when they probe.

v1 -> v2:
- Drop patch to speed up of_find_device_by_node()
- Drop depends-on property and use existing bindings
v2 -> v3:
- Refactor the code to have driver core initiate the linking of devs
- Have driver core link consumers to supplier before it's probed
- Add support for drivers to edit the device links before probing
v3 -> v4
- Tested edit_links() on system with cyclic dependency. Works.
- Added some checks to make sure device link isn't attempted from
  parent device node to child device node.
- Added way to pause/resume sync_state callbacks across
  of_platform_populate().
- Recursively parse DT node to create device links from parent to
  suppliers of parent and all child nodes.

-Saravana

Saravana Kannan (8):
  driver core: Add support for linking devices during device addition
  of/platform: Add functional dependency link from DT bindings
  driver core: Add sync_state driver/bus callback
  driver core: Add edit_links() callback for drivers
  driver core: Add APIs to pause/resume sync state callbacks
  of/platform: Pause/resume sync state in of_platform_populate()
  of/platform: Sanity check DT bindings before creating device links
  of/platform: Create device links for all child-supplier depencencies

 .../admin-guide/kernel-parameters.txt         |   5 +
 drivers/base/core.c                           | 162 ++++++++++++++++++
 drivers/base/dd.c                             |  29 ++++
 drivers/of/platform.c                         | 101 +++++++++++
 include/linux/device.h                        |  47 +++++
 5 files changed, 344 insertions(+)

-- 
2.22.0.410.gd8fdbe21b5-goog

