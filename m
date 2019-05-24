Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B67B528E6F
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 03:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731637AbfEXBBb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 21:01:31 -0400
Received: from mail-oi1-f201.google.com ([209.85.167.201]:54233 "EHLO
        mail-oi1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731632AbfEXBBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 21:01:31 -0400
Received: by mail-oi1-f201.google.com with SMTP id k66so3039605oib.20
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 18:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=DkFNL0Lxas2CTOjiDN2hgVYuR42qb65M2nUWhRx2AoU=;
        b=naestgbM/OBAVNz1Xr0RTA3sfhmM/mtWyEzsKef0nniKmd4+t3sffScnviOf+ToOj6
         tOIX9Jge830iP/Qx3nWIBsT8gyLyq4siWX5dSrDzdKj7S0sovydIwoRpms5YDKIf0pfy
         Gfw6wg0xhvM5vCghXWxI3jyAGUQjQNf8Ntyyl+EpioqdjVPKohz9Oq7Sk2BdKxtAatvj
         ZNfUn9e16UZMg6/VenRWfxWqJQpFpfVP18gBAZbTlH0PjloOC7QPwAKxqfbnpg7zL8Li
         uf77Up71hdyzInQEJZGuBaGhLPHn294TJ4vkoyLWorucJzEFC5rlxbYimg8mt6U0Gily
         eqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=DkFNL0Lxas2CTOjiDN2hgVYuR42qb65M2nUWhRx2AoU=;
        b=TUNrdYcCrMDHzbtuR5fggcLN24A4LxbblXoA1QNM9ojwquwFOvUhjZsiKwEAo3Zlxv
         ImbltDXkOQbKFotrmCGpJKe5JiBFGgPr2retphdMwxNx9N5M9MduJikBWxrSidoLKlkG
         at9u2Bj1FyQASsVqkqhd5H0rLUCxi89jLJY/n8TqcNF/7OXP2fXy4HRQ0qGGHhHVhuBS
         oTGsYZbp9ftmz+hE/VR0BqtgHRGKNNPV3tyv3Rcp2JiO8tFZWRGi+Ai6dJqMNmu/FJDG
         wSm55394qNphz+cf6Qar5tJy+kdm00rttl02gdCrU6vUY/dJCkIHFVyMroyBu3lNfDTq
         lqjA==
X-Gm-Message-State: APjAAAUasXUfjtFqVnZ9EjSl9qwfVxVxFueIny7bSWetnhyyepDIymkF
        RlKKXRmKfm5r04k8Ev2Z6rXdDrXg7ztsxX8=
X-Google-Smtp-Source: APXvYqyyUsxe0pTs83AlvyQk++6cV7rA90W86NXVfY7I+5cJbG44NrjLHC9M9WVuTGQO48znvQvvCcBGRwOGSPc=
X-Received: by 2002:a9d:7acd:: with SMTP id m13mr12297317otn.336.1558659690736;
 Thu, 23 May 2019 18:01:30 -0700 (PDT)
Date:   Thu, 23 May 2019 18:01:11 -0700
Message-Id: <20190524010117.225219-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH v1 0/5] Solve postboot supplier cleanup and optimize probe ordering
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a generic "depends-on" property that allows specifying mandatory
functional dependencies between devices. Add device-links after the
devices are created (but before they are probed) by looking at this
"depends-on" property.

This property is used instead of existing DT properties that specify
phandles of other devices (Eg: clocks, pinctrl, regulators, etc). This
is because not all resources referred to by existing DT properties are
mandatory functional dependencies. Some devices/drivers might be able
to operate with reduced functionality when some of the resources
aren't available. For example, a device could operate in polling mode
if no IRQ is available, a device could skip doing power management if
clock or voltage control isn't available and they are left on, etc.

So, adding mandatory functional dependency links between devices by
looking at referred phandles in DT properties won't work as it would
prevent probing devices that could be probed. By having an explicit
depends-on property, we can handle these cases correctly.

Having functional dependencies explicitly called out in DT and
automatically added before the devices are probed, provides the
following benefits:

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

- Supplier devices like clock providers, regulators providers, etc
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
 

Saravana Kannan (5):
  of/platform: Speed up of_find_device_by_node()
  driver core: Add device links support for pending links to suppliers
  dt-bindings: Add depends-on property
  of/platform: Add functional dependency link from "depends-on" property
  driver core: Add sync_state driver/bus callback

 .../devicetree/bindings/depends-on.txt        |  26 +++++
 drivers/base/core.c                           | 106 ++++++++++++++++++
 drivers/of/platform.c                         |  75 ++++++++++++-
 include/linux/device.h                        |  24 ++++
 include/linux/of.h                            |   3 +
 5 files changed, 233 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/depends-on.txt

-- 
2.22.0.rc1.257.g3120a18244-goog

