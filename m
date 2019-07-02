Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B46615C669
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 02:48:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727048AbfGBAsQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 20:48:16 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:49277 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726966AbfGBAsQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 20:48:16 -0400
Received: by mail-pf1-f201.google.com with SMTP id 145so3391600pfw.16
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 17:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=/L9yAmVa7v9LMvtv+jujjv9ExiEtRxHsz82k3fzUKOE=;
        b=AaDJvTICePD3127X1ht7+YMl+jIB9dmcuUzK1SiD1m4bq62JYz8/F6oT2Dc9gy+ER1
         n80/fXYAv0d6xsLLUg4h7qPFt6qBDkjDUZV8gZ2N7SkEIe16NlXyyi1yI2J2iPhOQHDO
         SRyFZc2YXA/btiR4vLqLyKo+8aa6ooABEI83AchXC6y78xEDL5fxHLD/5q4Tt/f5h49A
         E+NsEnSGGfWMuC31EDTkwlQC7s64BHw7YPF4xzBIITQhrrdQMAUsDgxTNwVopBgkMEgx
         PmrXl99XGCW+7C9SOXC0fyPUsVOGKNhDY09mhM7ux0JcwzZRrOPqcvkqKuP1/U+K2J+I
         BmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=/L9yAmVa7v9LMvtv+jujjv9ExiEtRxHsz82k3fzUKOE=;
        b=TIWxjlkenzf8sTmjxbIxdTy60nbLZMVowTBmP7vnVlhHi2uWoxMpFe3WdGXb9WR6Rj
         5ciZ2wqMr1cH0qX4XFcTMiVUAbMl2Or1P435x6+4yCos0GF9SQdBk6rvQQ4mQrUSGZCY
         r/LAk0/NEHGurQ7iyLUIv5GoRTvrR2ugGT3bJngphMcFCDzxahjo4Mgu72rCXBruBbhb
         x71IEyzwLFpFn/JXlrBL8KE/DXMFNWJcJZCg3iEB02AArISEt42MUOeSMMIT2NlVdviO
         +nJ6M6ukObn5TpWwh+2v85nA83+GkpPlPwVFEpoPNw2bq94ooxZYJqcSWyS7wa4tJZ5k
         ezTA==
X-Gm-Message-State: APjAAAU0Jtav3hw1cEL6M30QjE6A0t1q2NTjUHEhjYV987FglxxkhBK0
        Vk8SgWyElkn58zH7reG1++5Ft8/gNxzMm1A=
X-Google-Smtp-Source: APXvYqx35BfgKLie7cFomiI1nBBZDuthXNW/hqLPKSY8tkGt8fHjdK6kysLtDz5MFkaKtWqzlcYITFs0g0QR2RM=
X-Received: by 2002:a63:4e5f:: with SMTP id o31mr28121808pgl.49.1562028495379;
 Mon, 01 Jul 2019 17:48:15 -0700 (PDT)
Date:   Mon,  1 Jul 2019 17:48:07 -0700
Message-Id: <20190702004811.136450-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v3 0/4] Solve postboot supplier cleanup and optimize probe ordering
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

TODO:
- For the case of consumer child sub-nodes being added by a parent
  device after late_initcall_sync we might be able to address that by
  recursively parsing all child nodes and adding all their suppliers as
  suppliers of the parent node too. The parent probe will add the
  children before its probe is completed and that will prevent the
  supplier's sync_state from being executed before the children are
  probed.

But I'll write that part once I see how this series is received.

-Saravana

Saravana Kannan (4):
  driver core: Add support for linking devices during device addition
  of/platform: Add functional dependency link from DT bindings
  driver core: Add sync_state driver/bus callback
  driver core: Add edit_links() callback for drivers

 drivers/base/core.c    | 142 +++++++++++++++++++++++++++++++++++++++++
 drivers/base/dd.c      |  29 +++++++++
 drivers/of/Kconfig     |   9 +++
 drivers/of/platform.c  |  61 ++++++++++++++++++
 include/linux/device.h |  45 +++++++++++++
 5 files changed, 286 insertions(+)

-- 
2.22.0.410.gd8fdbe21b5-goog

