Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F50111745
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 12:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726270AbfEBKfP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 06:35:15 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:39520 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726455AbfEBKfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 06:35:11 -0400
Received: by mail-pg1-f194.google.com with SMTP id l18so859093pgj.6
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 03:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=wZru5L4BwlMPJIzUrAzcCZvzKe2NTmlwt/CFToiy7Vs=;
        b=mX9KMI93SFhiHFZmRrSsQkw0yfoNOZT/f3xuRGJIUlEe4sgZGellOCd6jb7ZIfjpOF
         8ISyT58zUe1pShow8tMD1VF3snDw8geJ+PVIMjeF+do/3flqK42ioDxBE2Wlu6p5+eym
         19d4unsAjG54qqhfbbXfsikKv4gFLho8iMv+CaEO4tZE2GEqR4DO9xZtpJ+sh/+HC/5y
         /pQWz0ejLdonONRlEjWq4825blVVvGfGp6UU7XXuI8kx/gRovHn6Erb+CfdPjNGWCMf/
         NgNXUhNXwIgiBSuBre/hUSZBIX7rqdNFQWymugF9C9mXqOIIzg/UPED10GjBtc2/H9Ck
         N8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wZru5L4BwlMPJIzUrAzcCZvzKe2NTmlwt/CFToiy7Vs=;
        b=rTqMsHZMZPoohVcmMxdYFXP5kQ7NadffHgU71ZOwN16SprCP4Y+oliPikEH+LiqlIW
         kdZT8Tftbx4xmPU9f911AQKFmvNvQNySTHga9bP6CTtJ529DgFh1BEQ2GQiXXd9zFZ/p
         9Hj/4tIso29ieV9CD8zUIla4NruQKZv3a7hiMqR3DPx/M09o2GkrrMQEdR86shakIRIq
         m/khNzeEdHHW1LRoiLPJ+R45h/WiqRiliEHHMKkF/E3WzZaw6lxk5Nl4q0VxIuexZqVh
         QNn77fcsgcBfySdeBXBx3ukO+J3o7Y3rcRo1XFpAZownPA6wmmJeI+XQMr7KMKqRxt2F
         eRKQ==
X-Gm-Message-State: APjAAAU3q/3S9XquIu76GsdWAgk5MX3FW2Mzx2MHB1OzYV7ga+BtpfPb
        cCyt9Na8Z1uzgtJN7589ZPCeUQ==
X-Google-Smtp-Source: APXvYqwhlRnOQWCW7OXs/Fj/+cKri7DVuTQHAbVswxgM3+H54vt4x285HDiFeTDUBiPVFAJHrPZ9ZA==
X-Received: by 2002:a63:4c24:: with SMTP id z36mr1290196pga.130.1556793310922;
        Thu, 02 May 2019 03:35:10 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id h187sm69141133pfc.52.2019.05.02.03.35.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 May 2019 03:35:09 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        palmer@sifive.com
Cc:     paul.walmsley@sifive.com, linux-kernel@vger.kernel.org,
        aou@eecs.berkeley.edu, mark.rutland@arm.com, robh+dt@kernel.org,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH v2 0/2] L2 cache controller support for SiFive FU540
Date:   Thu,  2 May 2019 16:04:51 +0530
Message-Id: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds an L2 cache controller driver with DT documentation
for SiFive FU540-C000.

These two patches were initially part of the patch series:
'L2 cache controller and EDAC support for SiFive SoCs'
https://lkml.org/lkml/2019/4/15/320
In order to merge L2 cache controller driver without any dependency on EDAC,
the L2 cache controller patches are re-posted separately in this series.

The patchset is based on Linux 5.1-rc2 and tested on HiFive Unleashed
board with additional board related patches needed for testing can be
found at dev/yashs/L2_cache_controller branch of:
https://github.com/yashshah7/riscv-linux.git

Change history:
v2
- Mention the valid values for cache properties in DT documentation
- Remove the unnecessary property 'reg-names'
- Add "cache" to supported compatible string property
- Remove conditional checks from debugfs functions in sifive_l2_cache.c

Yash Shah (2):
  RISC-V: Add DT documentation for SiFive L2 Cache Controller
  RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive
    SoCs

 .../devicetree/bindings/riscv/sifive-l2-cache.txt  |  51 +++++
 arch/riscv/mm/Makefile                             |   1 +
 arch/riscv/mm/sifive_l2_cache.c                    | 221 +++++++++++++++++++++
 3 files changed, 273 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
 create mode 100644 arch/riscv/mm/sifive_l2_cache.c

-- 
1.9.1

