Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D320730A8D4
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 14:36:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbhBANfW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 08:35:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232040AbhBANfS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 08:35:18 -0500
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9B17C0613ED
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 05:34:37 -0800 (PST)
Received: by mail-qv1-xf49.google.com with SMTP id k20so11186936qvm.16
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 05:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=JRWaNv8CUyRtnGhAv2UGsIw+4RM2ET9YxEDAkb3Ls7Y=;
        b=aek5t0dPTVzznvKfKlb3j+JOm4kKQh9WdrHHkSe4ZxoC1T6EcGVy7ZjSU8WGloOGpO
         hN8NSUjcSgMbaaZMR15YDwA1hCNwJEU/46Nid5XFo10dyvRoKTJqlM/XkafslXXhLzWb
         RixP6l9My0D1EEaPwKo1C68wKWCLL70RNjLyG6SYJZcNGG6/sn9mldfLmUJrFCgNBnvT
         jzvE+PuZyU4R1YZL77CiI7ljfpJmO3gGqU2w6ydVPRKDtAIEu4txF1P9fPoh84r4gYzS
         +M3QFbqsycbjavuo+Z+gHdA1JZYhckVfTyEdgekU+K6DdM2AeEf0xBIwEUTavbE4p6zU
         t91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=JRWaNv8CUyRtnGhAv2UGsIw+4RM2ET9YxEDAkb3Ls7Y=;
        b=Y9YHJiXlq6Vrpa1WlAUQ9ETXSLCRzlHTaJuJWt2kBIS5qARIp/sWU9KPzgQGnQTFCx
         ELJVPApATVizHFu8msMrbiH/UeszZiBsz9JTlvqHBq1pq342r4zSkdPohAxXyRvy/xpt
         ZBjYCd/ITCN5gNKEsCDeIDCurRORUUnqERO0cOd2MQo+1XnoLjLG/nIjnPgXF0g02LOV
         QQBINCwMGD/5MAKYDzXqgGupDqqNiFqVef5mE5LN9Qb7aBNfSUS0N8kJJDDhP4IGG7BX
         FV0LszBRx8FsouHYvW7d4gohKdxpjbm1QlbkJL8fUIKsyHjZ0MytSoxbjhpQ5wfLARie
         m0SA==
X-Gm-Message-State: AOAM533Wjmh0hgEXbv3F712uAKgIr9x2inqQ8BB3N9Yml/AfpIPBRA6C
        9ItnYmWcNI57dB0rQ/eLTnY00Qfgo2sK
X-Google-Smtp-Source: ABdhPJzyG9LUMNrb3QLRGDnVvKeshlEgn3D13VlkENd+g2VwzIYrnIUvJyTju+kHIZ5UBPcMnAVrXyxA2xmi
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:dd94:c753:a81d:c855])
 (user=kyletso job=sendgmr) by 2002:a0c:b989:: with SMTP id
 v9mr15179560qvf.42.1612186476917; Mon, 01 Feb 2021 05:34:36 -0800 (PST)
Date:   Mon,  1 Feb 2021 21:34:18 +0800
Message-Id: <20210201133421.408508-1-kyletso@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v3 0/3] common SVDM version and VDO from dt
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, hdegoede@redhat.com, robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

patch v2:
https://lore.kernel.org/linux-devicetree/20210131151832.215931-1-kyletso@google.com/

Changes since v2:
=================
usb: typec: Determine common SVDM Versions
- rename the variable and the functions (remove the text "common")
- remove the macro

dt-bindings: connector: Add SVDM VDO properties
- no change

usb: typec: tcpm: Get Sink VDO from fwnode
- use fwnode_property_count_u32 instead to get the count
- revise the error handling

Kyle Tso (3):
  usb: typec: Determine common SVDM Versions
  dt-bindings: connector: Add SVDM VDO properties
  usb: typec: tcpm: Get Sink VDO from fwnode

 .../bindings/connector/usb-connector.yaml     |  11 +
 drivers/usb/typec/altmodes/displayport.c      |   8 +-
 drivers/usb/typec/class.c                     |  21 +-
 drivers/usb/typec/tcpm/tcpm.c                 |  61 +++-
 drivers/usb/typec/ucsi/displayport.c          |  12 +-
 drivers/usb/typec/ucsi/ucsi.c                 |   2 +
 include/dt-bindings/usb/pd.h                  | 311 ++++++++++++++++-
 include/linux/usb/pd_vdo.h                    | 315 ++++++++++++++----
 include/linux/usb/typec.h                     |  10 +
 9 files changed, 661 insertions(+), 90 deletions(-)

-- 
2.30.0.365.g02bc693789-goog

