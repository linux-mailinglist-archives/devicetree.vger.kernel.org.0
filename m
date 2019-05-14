Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 976491D0BA
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 22:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726195AbfENUkz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 16:40:55 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:38864 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbfENUkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 16:40:55 -0400
Received: by mail-pf1-f194.google.com with SMTP id b76so108765pfb.5
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 13:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZIOBUSdFGWh4ytKMsx2gV6KVpDwgsT8dia1L2z+1aIo=;
        b=UBCTegOVcrmBucXSEQsRP7KuBSmMckd4rWyA909XrGIvv1lbC3YPJEF6INKW04IYP+
         873oJhup8CG7B0l0e23udaA0/RCr5bttrTvE/Etic+Ily+vVX7oA/ACsMYHGzy0jdJjs
         Yivt5wnzO11T7M/yqVqbbVEC8FDt8TQf3WYx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZIOBUSdFGWh4ytKMsx2gV6KVpDwgsT8dia1L2z+1aIo=;
        b=J6eIDYtVNkeDpe6+KjQtCcJCZdu9w1iz2zXGjiIqb31K+DSwwuAgnDv6wHu+qPRgqs
         8HjGULGl99DQkuPyggQeTEMBLlH422bTS1ZA3mNT9PVbahIojL7MAB72soI7MjZK9t+7
         4TfHFCpCr9HmuIsuiYI608ngpJgvcWRC0432zVdiWwqXY4ayMOlXGKoKPK/a2DzazFn3
         GXjrPhmPOXcjgw9qYgZRHlRGVTRIPqrZ7YpyPeY0QhdGYp0X3rHR9P29esmG4oJOFc7D
         tiaBavcZDOY3u3JycGFvoEKImRqc9UKfLuypKXV7chQtqlOanDNF4DBfAUE9w6EItiIq
         SM9A==
X-Gm-Message-State: APjAAAW1aVjllZMhHOTfKWztQBS4zIGmAREzYY2wa1o911WoFpUoXkFC
        RlZM+RE5l0RWLKz8vnIWMLKLI1VI2LiWuA==
X-Google-Smtp-Source: APXvYqxFHQdmCkF2np3gSVvG0axUZJ+fDWHo9HY/6a+LOYNDPidD1KKxau1pq9ijEN6/RT2Rx45MqQ==
X-Received: by 2002:aa7:9dc9:: with SMTP id g9mr5890932pfq.228.1557866454788;
        Tue, 14 May 2019 13:40:54 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id p2sm2137pfi.73.2019.05.14.13.40.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2019 13:40:54 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>
Subject: [PATCH v2 0/3] Cleanup some unused functions in fdt.c
Date:   Tue, 14 May 2019 13:40:50 -0700
Message-Id: <20190514204053.124122-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series removes some unused functions, marks some more as __init,
marks the FDT as __ro_after_init for some more protections, and updates
the common properties binding to be less Linux specific.

Changes from v1:
 * New patch for dt-bindings and removal of that hunk from patch 2

Stephen Boyd (3):
  dt-bindings: Remove Linuxisms from common-properties binding
  of/fdt: Remove dead code and mark functions with __init
  of/fdt: Mark initial_boot_params as __ro_after_init

Cc: Hsin-Yi Wang <hsinyi@chromium.org>

 .../devicetree/bindings/common-properties.txt | 17 ++++----
 drivers/of/fdt.c                              | 39 +++----------------
 include/linux/of_fdt.h                        | 11 ------
 3 files changed, 14 insertions(+), 53 deletions(-)


base-commit: e93c9c99a629c61837d5a7fc2120cd2b6c70dbdd
-- 
Sent by a computer through tubes

