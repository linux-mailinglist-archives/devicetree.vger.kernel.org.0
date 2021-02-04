Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3D031002C
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 23:41:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbhBDWkH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 17:40:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbhBDWkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 17:40:06 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35486C061794
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 14:39:26 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id l10so4839819ybt.6
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 14:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=n4xG2k8Z7Qa5I/R1daYE+Xc9OOT630XhdJjQM94uVRU=;
        b=TW+ADkJYN6duYByYEbYDYbLh5kzQDTNFu8hGvrpk08m2vX29f2XeQqEeJ//+es/3+3
         Ew6+AoTyTl3//bjEvEnFsJ4AjnOL11nGNiKvCetepQyNwVyUuzZI4+S4ACTEFacMgj2x
         i1YdpqwqBbUrK50hUE4WZsjFhixsWIPIvTMbVtYV3cX8rDKOa0LLGTHOVYyPuBos8gPE
         nV2bhcdSz+vghkrZk4ynZeIBEiRY2hvnXUGpSWX+o0Ykkmsan44SkBtD5sjQhnVSW/Nj
         pko9wx/z3mRCMu1XPQHl2zHUuCdnw5s3hwz4H0nAyzAt0sN4gizv0N5tDylZLVguUalS
         y4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=n4xG2k8Z7Qa5I/R1daYE+Xc9OOT630XhdJjQM94uVRU=;
        b=Pr4zrIpZJ4xVUkg8yoxACsg87b6O/t34tkZZREQdNftacLA6o+rCIwzFPCEaB1IKvn
         OnFKdT8Xi6958xMyCZTM8I0zdqdbz5WflsA1QZSAYCzom+R3MqjMlmPhpQ0AYA1f8OUI
         9rbkrOja9rIgRXMsccjc7td/uH7Gqro36WTdl2e32NW/j8e5BE0Qen9OCJI2jZP4/bC1
         ztV1Sa2GZhli84spBlwaWHq8qIj8imYR9MxwlE7wplIn8KugOFxgrKgYc05Onz8gxY9j
         +wrdOOs9pb9vu1fzKgpD1/ROmAxN3l0o/zClwJiUJZHLO5rWFOVBjY6tguDsZVBI5srX
         sSGQ==
X-Gm-Message-State: AOAM531WvD8F/ESOB1i9mcwSIhKGa8jncqM3+z7LNZCFeMtMgPE5F2v2
        OLwqj/PNphhqHDURr8D5tC4bjgbNMJmJpeI=
X-Google-Smtp-Source: ABdhPJyBdE9X/S5xbyHVINezYUllZUk8xjMFqNx9FzN9Xtnyv+BW1j9DmtI2IkWEAVe8rsnMso2VHIZ0LzOAeHQ=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:8475:2f1d:e8b4:f65a])
 (user=saravanak job=sendgmr) by 2002:a25:7454:: with SMTP id
 p81mr2056574ybc.162.1612478365410; Thu, 04 Feb 2021 14:39:25 -0800 (PST)
Date:   Thu,  4 Feb 2021 14:39:17 -0800
Message-Id: <20210204223921.1693487-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v3 0/4] Make fw_devlink=on more forgiving
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Marc Zyngier <maz@kernel.org>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Martin Kaiser <martin@kaiser.cx>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I dropped a few patches from v2 of the series that are still work in
progress. So v3 of the series only includes definitive patches and the
patch numbering has changed.

Patch 1/4 and 2/4 addresses the issue of firmware nodes that look like
they'll have struct devices created for them, but will never actually
have struct devices added for them. For example, DT nodes with a
compatible property that don't have devices added for them.

Patch 3/4 and 4/4 allow for handling optional DT bindings.

v1 -> v2:
Patch 1: Added a flag to fwnodes that aren't devices.
Patch 3: New patch to ise the flag set in patch 1 to not create bad links.

v2 -> v3:
- Patch 1: Added Rafael's Ack
- New patches 3 and 4

Saravana Kannan (4):
  driver core: fw_devlink: Detect supplier devices that will never be
    added
  of: property: Don't add links to absent suppliers
  driver core: Add fw_devlink.strict kernel param
  of: property: Add fw_devlink support for optional properties

 .../admin-guide/kernel-parameters.txt         |  5 +++
 drivers/base/core.c                           | 43 +++++++++++++++++--
 drivers/of/property.c                         | 16 +++++--
 include/linux/fwnode.h                        |  3 ++
 4 files changed, 60 insertions(+), 7 deletions(-)

-- 
2.30.0.365.g02bc693789-goog

