Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8AAF314A46
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 14:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725994AbfEFMyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 08:54:25 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:38893 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbfEFMyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 08:54:25 -0400
Received: by mail-pl1-f196.google.com with SMTP id a59so6338180pla.5
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 05:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id;
        bh=mCH1PNSxZO8UcLFwRskob8mKkP1s690Icm959QBwtxU=;
        b=Pa0zYFaooyEYnq8TNhjhsXUlNZTUn09rsJ8MbLtbutJ3aBNJVK6GoB0Ieeo+ivQPKH
         c29gKxZLq9jfmaUkDPJXGoeQHFZ+BqEepzvbmCpuhplKrHOfsUx5dtQ2hoWnuP3KSMmi
         3MQrQ34bAG4govn9tRpYpXMp4e+AIB/LMZZy1ddaiJJL3MkeNGe/nFKNsR+1CxPEQgz4
         M1D8ORQk6cXBjqrBe0oduIqsMaZvCY0bSEx1GxZ4JiISvRxvYjeJnlcfs/i8rRRkSG6j
         nlv88TJUpQauJaa04VxyQrfrXjIRfJHUolR7Wt1P1ld8gBk+MTDanS7ULH4jCR6an06c
         GhDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=mCH1PNSxZO8UcLFwRskob8mKkP1s690Icm959QBwtxU=;
        b=r7WZ9tRBnfZ0VeULNoscl5BN/yOd+PbHBwxRtsD+OgoWkt3KtyKyoCDtJ7rRxHi6en
         9ATzpgri2KJGTm19+0wqDmyizGAKrwkDb7wOEZ9nyLZMvTsAmoaSnk/HkQ7bbsdIR3eH
         lmSDd0EI4X0wrhew2UhGVrK9AoWM6xlAk/rJA9MkfEFVb4hZg4rxjXGpnvGIff+0aEZD
         nabWPoIOSJVs+jRywqjkp4j/Qg7Q6+coVWxNyQ33EpdjZWtQbzGRSy8tKEog7IN54KsQ
         Hg+ErkSbu1FyXMxtuoDIn+mXxm2VngFuFNkpGYODtw+Fx+7jm69EXmzQsGgctbhyJWV+
         9CoA==
X-Gm-Message-State: APjAAAWUoUG0H9EOoSJPmqYlk7+GajKBfgG3NzwTq6NPK1Jp8n5pVs3z
        k61U+Kojo5/fQJBdeoIFUcIDyg==
X-Google-Smtp-Source: APXvYqzA7OlsB9Sxuwz64C70xfdtuDDDGNwfRbcLFQfRJu2C+ztVPX59gkK/uUwSuBXaxJYg8WdB9g==
X-Received: by 2002:a17:902:2dc3:: with SMTP id p61mr31847462plb.308.1557147264714;
        Mon, 06 May 2019 05:54:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id p81sm18031132pfa.26.2019.05.06.05.54.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 May 2019 05:54:24 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, palmer@sifive.com,
        paul.walmsley@sifive.com, sagar.kadam@sifive.com,
        peter@korsgaard.com, andrew@lunn.ch, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 v1 0/3] Add dt bindings to support I2C on sifive devices and a fix for polling mode i2c transfers.
Date:   Mon,  6 May 2019 18:23:57 +0530
Message-Id: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch is based on mainline v5.1 and is intended to add DT-bindings for Opencore based I2C device 
support in FU540 SoC, available on HiFive unleashed board (Rev A00), and also provide a workaround to 
make I2C polling mode interface work with FU540 chipsets.

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated 

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and TIP flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and 
appropriate device node is added into board specific device tree as per the information provided in 
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Sagar Shrikant Kadam (3):
  dt-bindings: i2c: add documentation for adding SiFive I2C driver
  i2c-ocore: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.

 .../devicetree/bindings/i2c/i2c-sifive.txt         | 29 +++++++++++++++++++
 drivers/i2c/busses/i2c-ocores.c                    | 33 +++++++++++++++++++---
 2 files changed, 58 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-sifive.txt

-- 
1.9.1

