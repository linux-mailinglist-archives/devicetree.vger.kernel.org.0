Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 139E91F4ACC
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2020 03:19:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726038AbgFJBTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jun 2020 21:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725954AbgFJBTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jun 2020 21:19:42 -0400
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com [IPv6:2607:f8b0:4864:20::74a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91DBAC03E96B
        for <devicetree@vger.kernel.org>; Tue,  9 Jun 2020 18:19:40 -0700 (PDT)
Received: by mail-qk1-x74a.google.com with SMTP id i82so680491qke.10
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2020 18:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=Oio1yvJgCY2gmJTZMFGujeFBCwZ7yES6tEoLpmbLLCk=;
        b=aUnfDVj2Slo40XkVxjWV51Yp/wlhRXOcjW9lABo3jti8H3BE/ljViSltpDWV71e+ke
         UWsf34f/T9c0xXIwrO2cWPASNLu+Jhm8j1YTIBTZ6tnfair37d2Nr2w6+0aePl/ZBG2U
         OSsHx4ScfpJJc+uE6Hxi5du0L61hDntOOHQXiREuqbB1JnMNMPu4GtoShC+Du3l11Egr
         hbZ8SZtiG/u/95QNpbfm/lqWLjqaTv8sJqmCs9w8XjMJRUtKqEYYiwUYRAOcG9jnD5MS
         hnUGvoiuezpGZeP1Gjr6SHjjdQdchR9VIbLzwMzTflnZwQv7lnjCbW/tpTUD60wgs2ln
         lFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=Oio1yvJgCY2gmJTZMFGujeFBCwZ7yES6tEoLpmbLLCk=;
        b=fFOCuKsH16z04zgZPoxuMA+Sd7n6KmjulpsuWb2vMh9JTT8EK/vTsap9lFlf5Ip0ib
         MYzx8gaaca7hXVdGfNvgMnAWBty1uwVYYYGYFLDm1vcYVLHsll1mEybxVs1WDApQCskS
         CMHtvyukMoP6WS9hv9zlJC7r5VynMZSy+el4uLpaLXgABtqRUjT1D7jL9foLEZDhmHF4
         JCpUUiwcV10t3yHvJJBXugWpwRbTwrGZ92ioSzqu9YPisjWiOqynnwqhMZ6Ln3EFD37I
         mIA8sXuP2wgtc9CWmQDQt5ooIfrRyRUWlRRWyu9H7KWvnjXKgr37iR4kEa1iCERU2Bov
         Nkgw==
X-Gm-Message-State: AOAM533+BgwN1qcdBML9bj+P6GdSw9yzyb95jBDTj98iHF5e1IsxTzp4
        KgBu2UAbaynq1eb2gaFjwRXOV2bDmTl1cXM=
X-Google-Smtp-Source: ABdhPJxr/kPdh+a9kmhpcYEAQxrwzHJBchZJTTu3AKa9m+4uzsv9p8VcvHieV368ZosqPw30q6BPKnKgp/TDxDM=
X-Received: by 2002:a0c:ee41:: with SMTP id m1mr885827qvs.95.1591751978222;
 Tue, 09 Jun 2020 18:19:38 -0700 (PDT)
Date:   Tue,  9 Jun 2020 18:19:32 -0700
Message-Id: <20200610011934.49795-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v2 0/2] fw_devlink: Improve cycle detection in DT
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Patch 2/2 explain the series. Just using a cover letter to thread the
series and add CC's.

-Saravana

v1 -> v2:
Patch 2/2:
- Added more comments
- Fixed missing put_device()
- Fixed stupid fall through in the error case

Saravana Kannan (2):
  driver core: Add device_is_dependent() to linux/device.h
  of: property: Improve cycle detection when one of the devices is never
    added

 drivers/base/core.c    |  2 +-
 drivers/of/property.c  | 62 ++++++++++++++++++++++++++++++++++++++----
 include/linux/device.h |  1 +
 3 files changed, 58 insertions(+), 7 deletions(-)

-- 
2.27.0.278.ge193c7cf3a9-goog

