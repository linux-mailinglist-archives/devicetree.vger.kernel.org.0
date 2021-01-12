Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36D522F2A06
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 09:31:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405405AbhALI3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 03:29:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725988AbhALI3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 03:29:49 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A91A9C061786
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 00:29:09 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id c12so947309pfo.10
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 00:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CrBTMwuCocMXNaZlBloj14p7TaV3dUqyAg3ZjdKSdtQ=;
        b=SheSm7pPzbdgKTGIS5Wbrtm+EyLFpf3IdIFMHUhJjjd5RQsq61KHB9elZRuoTCC2Eu
         LhpDn7kN9a6R63hOsxSvvK9hDTeYJ7SEtf4ru2381HGPyfNGlGMggNq+C+T5igUUdWu4
         3AR0la2JlukQLl4bU9bpUeZiz/TW1WQ8YQ6KDxI2/405yKKJT4JB+qRx+zwCY+FDMvKM
         8LQe6n459ZQlGeYxWMcdJBvgCrPcDPRqS0Uzgeh8X/lACZyHl2RjwmWzCdtqDCelh1qM
         pidA75ympxCe2WCGm3+XyvVw2REGMrrOcPYYuF70ZbeLxzJGg3UX7qhSjISoshlYIikH
         eNCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CrBTMwuCocMXNaZlBloj14p7TaV3dUqyAg3ZjdKSdtQ=;
        b=ICM4KKdKVaRkpui/PH/lyZnPEMKwCAK8lVvRBJy0tK8Cd8XkZxFiLGyQzMq5JmrlWS
         RIw2kuy8mdKOf8u+oxt7HFV41NUqFfv8hMx02WdFP2f3dmPwqPDMulqen84waLxk/58c
         7W7r5hmM85z5iAjdIwaC0H6t7SwfdhLMAyDXiylEN1aXqohNXxINMBPhSBemzuOv1tBP
         RBfQxVtZvn49ZmdnuWGT2WskW5Pildv/ZEMrkduNluRVGjn+ib07FzC49PQlC6ZlGOYF
         uOYREbRT5qTdPTKnD63uPWqYVsklHDiTLVCJzWv4MsiRhoTOZk8B7vhnz2HChKw+cwCO
         nuDw==
X-Gm-Message-State: AOAM530F4XjI3H4lpSFxWoTb9EDwWZ3nBM8biODGSyns8k9NtUdbwrGg
        7ZpxSxuFpfDd5zJY0aYKQXg6kA==
X-Google-Smtp-Source: ABdhPJweEioWpVtvQX71VyotDntXRJ0bZz1J7VJsaDO6OCrG4WuPO1/Yj0aac3RBFhQPfdcf3jYj+g==
X-Received: by 2002:a63:d601:: with SMTP id q1mr3608947pgg.417.1610440149194;
        Tue, 12 Jan 2021 00:29:09 -0800 (PST)
Received: from localhost ([122.172.85.111])
        by smtp.gmail.com with ESMTPSA id r79sm2187433pfc.166.2021.01.12.00.29.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 00:29:08 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>, anmar.oueja@linaro.org,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH V4 0/3] scripts: dtc: Build fdtoverlay
Date:   Tue, 12 Jan 2021 13:58:59 +0530
Message-Id: <cover.1610431620.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We will start building overlays for platforms soon in the kernel and
would need fdtoverlay tool going forward. Lets start fetching and
building it.

While at it, also remove fdtdump.c file, which isn't used by the kernel.

V4:
- Don't fetch and build fdtdump.c
- Remove fdtdump.c

Viresh Kumar (3):
  scripts: dtc: Add fdtoverlay.c to DTC_SOURCE
  scripts: dtc: Build fdtoverlay tool
  scripts: dtc: Remove the unused fdtdump.c file

 scripts/dtc/Makefile             |   6 +-
 scripts/dtc/fdtdump.c            | 163 -------------------------------
 scripts/dtc/update-dtc-source.sh |   6 +-
 3 files changed, 8 insertions(+), 167 deletions(-)
 delete mode 100644 scripts/dtc/fdtdump.c

-- 
2.25.0.rc1.19.g042ed3e048af

