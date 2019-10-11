Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 531EED4841
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 21:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728954AbfJKTP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 15:15:29 -0400
Received: from mail-yw1-f73.google.com ([209.85.161.73]:42557 "EHLO
        mail-yw1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728851AbfJKTP2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 15:15:28 -0400
Received: by mail-yw1-f73.google.com with SMTP id o14so8269222ywa.9
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 12:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=2LK7MZ/I1CyNASlk+qr5lnr5R+gCtp5cqesKvyijqAI=;
        b=dCcyfvcv3IsRhEQUEUjJI6r7Io7Gj9enAHtAz4TMJxBZoqWS6kUQsJuOJv+mvRxcaR
         W/57JYw5pOOFCADaMAdznF5d7agokzIqiCwbL7PK/MuuAl4FtJKuvMcMEFPF/n1QUtwG
         +AfFp3fOUi/+/DQSjvBx8vbs+hxrNro+H/GUUBf2upcEP7Gd5vBUKpEVUeYGYM5SYDyF
         Az91FrVj4G7UyKvJOjNaxljdgQckRvrNmn8+iVEQdn8kf5Be/nzGpdyT97dI7i1Py6TW
         nRZYVkNAKu7VlAW/GlY5+px+7mJiMMjK3cw2xMRNXGNvyEyQQkxUxxzOBckMyIoGcVu9
         rRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=2LK7MZ/I1CyNASlk+qr5lnr5R+gCtp5cqesKvyijqAI=;
        b=KyxuaHzw5EZxXs/UXIfqkpPXyfbzSx5v4WbmTfzgeFhfgPBJbCQavo0g36piP06h8M
         8ghC56+lcHICMPhhfJyMDvkC8/WQyGoCyBQhYZdqWR8bpdaFKgmRwglst8bM8NXNZrhT
         DS53tu+JtGdtzL9A+AFFls/zQ3gYLMAlgxDQa3IuayjZN4mpqRnkXAk5KV2UUHE5jqtz
         2x1lzaLKMIzHQWdusIQicyZ+R/Ez5KdecHgu0oDVUrzNeRYZ5Gy9mzTCCG5l//3cImDX
         jVAYw8W9qAdfNUdWgXXFJuXYkcYj9QX+NSuGKMXu+4AJKXcReqsrs7XcPldlSbin+HS1
         y5gQ==
X-Gm-Message-State: APjAAAWFFy56qtxxRy9xSrJ2aggOYil4xe/I5sPEza2BAZxDvsvoZ+Wd
        7hjFymGydwerJ8CFlIaXaCzSx3nO/NjUaRA=
X-Google-Smtp-Source: APXvYqxCwAr5/9joD+wnV488pzFB2G7pMoHdRW5ziKI7SO4MYaakbb/DVO337qNGCNybdnSYAfFybGH90A4h6Kc=
X-Received: by 2002:a81:441b:: with SMTP id r27mr3771738ywa.381.1570821325935;
 Fri, 11 Oct 2019 12:15:25 -0700 (PDT)
Date:   Fri, 11 Oct 2019 12:15:18 -0700
Message-Id: <20191011191521.179614-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v1 0/3] Documentation/minor coding style fix ups
From:   Saravana Kannan <saravanak@google.com>
To:     Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Len Brown <lenb@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Saravana Kannan <saravanak@google.com>,
        Stephen Boyd <sboyd@kernel.org>, kernel-team@android.com,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Addressing a few coding style comments and adding a bunch of
documentation.

Saravana Kannan (3):
  of: property: Minor code formatting/style clean ups
  driver: core: Improve documentation for fwnode_operations.add_links()
  docs: driver-model: Add documentation for sync_state

 .../driver-api/driver-model/driver.rst        | 43 +++++++++++++++++++
 drivers/of/property.c                         | 12 +++---
 include/linux/fwnode.h                        | 21 ++++++++-
 3 files changed, 68 insertions(+), 8 deletions(-)

-- 
2.23.0.700.g56cf767bdb-goog

