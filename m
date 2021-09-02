Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 164CF3FE7D8
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 04:55:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243298AbhIBC4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 22:56:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243230AbhIBC4a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 22:56:30 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A6F7C061760
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 19:55:32 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id bp12-20020a05621407ec00b003773f981838so439838qvb.22
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 19:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=/aXUDlx1JTPpPyu3WN1BFuFJPOsjfLN1lwH9GuIMxhI=;
        b=BgTX341W1lvzaiOHoeTuEgeDO5h9DsUjqW60RI6LF/VS/q57VUubjG5ZEnceGkiqg7
         snSZVITLyFuZh+zfsChhY4LeuKr7of5HB/j6IHdaquCtOJBdsilBqLEE0xaVp8K7COVC
         zyJFfPOEHV6KyhbGUD/CgKXZ4jWnXl06VTzOMZ7wJi+Q/ryEUY+WPsVKSrK2YILervrB
         U31uWU+iPBIsDKUYGYjRPpGVuHKioYa6CsiRmFnm0BS+0T5uezZ1kN4PDOcHnRc16Tkt
         5VAiKbnLi8zl6AHBK//d6KV7yYDZXJoF+cuT4c4QPy7AV+2lHtSePXRJ2mSqh3szjFyu
         /nbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=/aXUDlx1JTPpPyu3WN1BFuFJPOsjfLN1lwH9GuIMxhI=;
        b=eKTd7drC+P3gxoGwTZ7kcZ6fgME9aCrphZvZMAVYyFhcrv0W+hTGtDnDVbdB8xQcqz
         E+CEt6jtslgdd7ik6NKpHtdB4YfWE1XqQwlOaOEG7DhW4XC8ZIouALCjJLZrb+83tdUv
         8N4ry0TBA1Eb01OWvkhAUBvXdVHlFQStQnVXXItCk2YrGKUwP6lgunWTDfFsmr0dy7mS
         A2BIF0xr4uK3yEoUCxOKTwXnHuX5dLru5PcQJj+BR5g7UAJWmKtSDflsfAji95uU5gPt
         Jn1WTfVyIkbBeHzt7svImkvGNPRrRfoSj2vcfnOekWktMvfnxb+LTMPMVQ3ihaNH0jz7
         g7jg==
X-Gm-Message-State: AOAM533g6Nj9UqpxLag0VINwqNTm0Eo4Wx4/TKz4dFagNZN2aEga8tYB
        XLonet5BhMqmxkLY0cYrbmxeA34WvIiKuIM=
X-Google-Smtp-Source: ABdhPJxb+rqgJ4/whkv1W+O1QqlMsEVUZd/MibVKjNebliHGR7A9pNhOlNE+GhvyfafZAHEiUjdSLsHe0F9Y+YQ=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:17e:f0b7:5862:e47d])
 (user=saravanak job=sendgmr) by 2002:ad4:4a04:: with SMTP id
 m4mr1116266qvz.42.1630551331676; Wed, 01 Sep 2021 19:55:31 -0700 (PDT)
Date:   Wed,  1 Sep 2021 19:55:25 -0700
Message-Id: <20210902025528.1017391-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH v1 0/2] Ulf reported an issue[1] with fw_devlink. This series
 tries to fix that issue.
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ulf, mind testing this?

Thanks,
Saravana
[1] - https://lore.kernel.org/lkml/CAPDyKFo9Bxremkb1dDrr4OcXSpE0keVze94Cm=zrkOVxHHxBmQ@mail.gmail.com/

Cc: Ulf Hansson <ulf.hansson@linaro.org>

Saravana Kannan (2):
  driver core: Add support for FWNODE_FLAG_NEVER_PROBES
  of: platform: Mark bus devices nodes with FWNODE_FLAG_NEVER_PROBES

 drivers/base/core.c    |  8 ++++++++
 drivers/of/platform.c  | 16 ++++++++++++++++
 include/linux/fwnode.h |  8 +++++---
 3 files changed, 29 insertions(+), 3 deletions(-)

-- 
2.33.0.259.gc128427fd7-goog

