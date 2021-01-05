Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CB232EA9C8
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 12:26:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727269AbhAELZO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 06:25:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729102AbhAELZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 06:25:11 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8CEAC061793
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 03:24:30 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id j13so1518701pjz.3
        for <devicetree@vger.kernel.org>; Tue, 05 Jan 2021 03:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0iojE0FbfksPxGDHaoi7nGrdC6/TZhC32X4xFEfuq34=;
        b=sNDlCvXHU9mLxar1M2e31cqruXME5LN6Jy9m4aJa+LZqduw2ZZJhttZy1wsk5HnFNY
         BsMZQz/Gc7kJDGvxkMNuV7koBFW+CsLmmomfJBuFE1x+awiQFt2rLV+rdDDWWH2cS2+3
         7jwg7++0ZQLrwLOiCxfg+uiBg9RYAaDDIm2X96sU5o28cBbRiWkDBVrazPLHLGPefiQx
         Hbh/hBSI0U97n0l0lzKxJiT4xtabaMeYDIxYz47b7WKTsWyziykZklTrenfhvtR5vsvi
         7z8LLzsAjwxYQdM/bP+8U+QLCYtcFSYAp+BkkcInf5lkPKfJVIcDqKjppqYaTUVb7l1d
         RElg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0iojE0FbfksPxGDHaoi7nGrdC6/TZhC32X4xFEfuq34=;
        b=BCP00X06eIW2OpPI3oOLELKKpyZbYe4EDmT+UHYKVYgiR+vBmrPUT6h9gsENq2/jW6
         nUsILNDcHHdMZuv4CsXmcHVIIK7Uk+UfNX9kxg4ZhsBGk9N7tzpuVUHdd7IMSCcpdGpf
         A/4RA2EwKD4A5Hg7Aq2cG2U3GehpzlYgEbJT+RNeA73iMDTj1tPrzwTj0ptrsQKAEavS
         FmBTQDmT9rAItjF+5ZfGUvJCHj4Q+lsipVMlhQORuVoYg3UesMYiu1l8TsfXC7+Xw5hM
         YaFoCkt1h8MGE5xOg1R9Pai1W+InaU3NWcnYXZRdH+7BoTAgwtBRoFfrui4Mi02yJLLp
         U6Kw==
X-Gm-Message-State: AOAM5309Ye+u2n3QYDgF5iKaeEVoje9K0khDAfgrVgQwocP0ebjbt3DW
        DArMJgucieli/c81F7s9O6C8OA==
X-Google-Smtp-Source: ABdhPJwzVyGl0/EingPinXtXC3JWREuAJMsR+Ve0tkMJ6goYPApiB5S/0FlD1EUbTmkYQxJgdKCCbg==
X-Received: by 2002:a17:90a:c82:: with SMTP id v2mr3574430pja.171.1609845870173;
        Tue, 05 Jan 2021 03:24:30 -0800 (PST)
Received: from localhost ([122.172.20.109])
        by smtp.gmail.com with ESMTPSA id k3sm39035119pgm.94.2021.01.05.03.24.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 03:24:29 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>, tero.kristo@gmail.com
Subject: [RFC 0/2] kbuild: Add support to build overlays (%.dtbo)
Date:   Tue,  5 Jan 2021 16:54:15 +0530
Message-Id: <cover.1609844956.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Here is an attempt to make some changes in the kernel to allow building
of device tree overlays.

While at it, I would also like to discuss about how we should mention
the base DT blobs in the Makefiles for the overlays, so they can be
build tested to make sure the overlays apply properly.

A simple way is to mention that with -base extension, like this:

$(overlay-file)-base := platform-base.dtb

Any other preference ?

Also fdtoverlay is an external entity right now, and is not part of the
kernel. Do we need to make it part of the kernel ? Or keep using the
external entity ?

Thanks.

--
Viresh

Viresh Kumar (2):
  kbuild: Add support to build overlays (%.dtbo)
  scripts: dtc: Handle outform dtbo

 Makefile             |  4 ++--
 scripts/Makefile.lib | 12 ++++++++++++
 scripts/dtc/dtc.c    |  2 ++
 3 files changed, 16 insertions(+), 2 deletions(-)

-- 
2.25.0.rc1.19.g042ed3e048af

