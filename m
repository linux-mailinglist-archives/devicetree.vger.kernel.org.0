Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C28AE75F9D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 09:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726357AbfGZHVV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 03:21:21 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:38586 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725864AbfGZHVV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 03:21:21 -0400
Received: by mail-pf1-f194.google.com with SMTP id y15so24068157pfn.5
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 00:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=DPFbvaM0ffzn/S9lvtDvQ6X/wXEPD6IvdQw6DnygcpE=;
        b=Dcn0TQ5iRKLiq9la/u8PnkLoh/bQ2HK/pp5dNWDnoSTPgId5B1ES2XCZi8js0tnVhC
         KXOtq22CVWqlrrr+aJObx2rwiuJsfIl7mY9R3xWmrAFgRkh9A0GLxELmkTaWSiy/d51P
         s0bap92JtiqtNfdeVMzIxqhcUx6GIyuEaMsWzjldAXjQdkBdQjzVZXq03JkOdlEqsCr7
         +/7+BNEovq0MpwM8KHegM16BSHvp9FATaTzBq6pse5fXCApisAoCGuNKaecOlGBVxX9n
         LmfGDxRULfqXvBm7lRINK7qgeM4mx9z+WK8g8Cm7S5UQc9jKSK0AonVKhg+tPDB2PiFo
         qIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DPFbvaM0ffzn/S9lvtDvQ6X/wXEPD6IvdQw6DnygcpE=;
        b=AdJoQfiSAsyRJnP6pYNH6wLCTqcIo3bpY1DIBQISalXn/6PCBZb4iIMBY1ncL8+xvn
         yU291B8Yx3hutbM3CQx785sudqNa60H6WOA+8esH9rE6LweBk06SW5zhJLvaTHitrtfJ
         UYvJIbenarp0rvVIVbrq/jOKIvUI8AcbAsEVwkkkSHMGEG2KGz1oILK0AcYN//P5x4Em
         /g/uNhiKFI8PEXXotfnm0I9xdzbUrMuA9xKkHzefth0FaSafUWMJstDCMucecA7UgKHQ
         kEiwR+k2bTBkFSnANwypUKK1pLNL/UrP8DiJnUNlZDoqgwhkIytXsdTJcQ5clb42K+Q8
         UAxw==
X-Gm-Message-State: APjAAAUtIuE4ZC650IFKufviMGlgtCYNyDxed8iApo/FIlcRjg89HezB
        rRRs6ml9y48s5VatxVPg4cO9Hw==
X-Google-Smtp-Source: APXvYqyF4Tr6KpqzUUg1uyFSW7cNnma7IjvzfFuYcV2VA1wP1hJQrdEzG7PNSHLazixsMdq0cLRW9Q==
X-Received: by 2002:a63:c006:: with SMTP id h6mr56329731pgg.290.1564125680781;
        Fri, 26 Jul 2019 00:21:20 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id o12sm39216152pjr.22.2019.07.26.00.21.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Jul 2019 00:21:20 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        orsonzhai@gmail.com, zhang.lyra@gmail.com
Cc:     weicx@spreadst.com, sherry.zong@unisoc.com, baolin.wang@linaro.org,
        vincent.guittot@linaro.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] Optimize Spreadtrum ADI driver
Date:   Fri, 26 Jul 2019 15:20:47 +0800
Message-Id: <cover.1564125131.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset did some optimization to remove some redundant code,
add more reboot mode support and change hardware spinlock support
to be optional.

Baolin Wang (3):
  spi: sprd: adi: Remove redundant address bits setting
  spi: sprd: adi: Change hwlock to be optional
  dt-bindings: spi: sprd: Change the hwlock support to be optional

Chenxu Wei (1):
  spi: sprd: adi: Add a reset reason for TOS panic

Sherry Zong (2):
  spi: sprd: adi: Add a reset reason for factory test mode
  spi: sprd: adi: Add a reset reason for watchdog mode

 .../devicetree/bindings/spi/spi-sprd-adi.txt       |   11 ++-
 drivers/spi/spi-sprd-adi.c                         |   92 ++++++++++++++------
 2 files changed, 71 insertions(+), 32 deletions(-)

-- 
1.7.9.5

