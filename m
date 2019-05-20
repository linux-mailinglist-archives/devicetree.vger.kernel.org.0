Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2174D2371B
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 15:17:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733102AbfETMVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 08:21:16 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44553 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388102AbfETMVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 08:21:13 -0400
Received: by mail-pg1-f193.google.com with SMTP id n2so54713pgp.11
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 05:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id;
        bh=UI2Ry4LzPxHOIisYc6asfzOtY8boyegN6334Ds6sCEI=;
        b=ZIILwPW/GJbpNHIG2d6GJNUh+YC8INguJPg/D9EiCOET24LSnZ2HU2IclERXRMRbw/
         uSaF3s4WN/heNoFQbThqG4Wg6gG86+2+/XewENDYMptRiJ6zDVQqMR4uxClQBdYiR4/e
         RtClcu2Gmc+PTZ0Y8R2pFm/MVF5PMDGtBC72bosaGIQ1P+k+RSfUgWXERbsc8VeBXOm3
         o5MOQemeQ8MmbuTjd9pC2XiLk5XiNfGJZM0J4K+2ZS7j2pkDa7tR2NdlpWvvcMAMB6dj
         qnjyZO3S5tkGQ0sVSXw0LF8aKsW1vU0fTelaptg5kzu0UrtSLZn2l45hc5EVZHbJsjY8
         ekEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=UI2Ry4LzPxHOIisYc6asfzOtY8boyegN6334Ds6sCEI=;
        b=m4rKPJ+pSc9j+MAoI5LDldCXvgI2VoE/hopN8ZaMBEsNHJrvFhsdOg30LDdbWCdCeU
         Co9HEXp9EtScNW/6QMklPP5CyEeIbTeE6B3nyiViKGcuvvYUDTUCFlyBd0iIby+FkZiJ
         siv3JicHtKQmqFOvfFX0xSKu8fhYgV6m/kiMLwFv0KpjHiB4zaq6AOlhee2NyDuzcUQ7
         vZoeocyGVfvGqVEYAx/ETFwXjjmsJStjVO6/CnDXou3dojkDqcgUsStONJj73GqOaISh
         PSF03qqyHWBGM979NcSSdofkLnlYl9HeTPEGITquhQB3urUrieg4gLaShAtJ8njve1Nx
         qOkg==
X-Gm-Message-State: APjAAAWIIhvmz9o+biMLHfl8OlDBypbiVrc4jt5hncHLEOrho/zAAFZO
        JcbVN3tp3ot/dYZYATTxhO6DAw==
X-Google-Smtp-Source: APXvYqylN7mBlUiyo1w+cBYmG/xrjqleVn9q2ejjZEJx8kMEyN8NtMLL9j6m9WUAjkDxTwcIBncIew==
X-Received: by 2002:a62:604:: with SMTP id 4mr80517445pfg.38.1558354872449;
        Mon, 20 May 2019 05:21:12 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id n27sm38137077pfb.129.2019.05.20.05.21.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 May 2019 05:21:11 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] Extend dt bindings to support I2C on sifive devices and a fix broken IRQ in polling mode.
Date:   Mon, 20 May 2019 17:50:14 +0530
Message-Id: <1558354817-12034-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch is based on mainline v5.1 and extends DT-bindings for Opencore based I2C IP block reimplemented 
in FU540 SoC, available on HiFive unleashed board (Rev A00), and also provides a workaround for broken IRQ
which affects the already available I2C polling mode interface in mainline, for FU540-C000 chipsets. 

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated.

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and TIP flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and 
appropriate device node is added into board specific device tree as per the information provided in 
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:

V3<->V4:
-Incorporated suggestions on v3 patch as follows:
-OCORES_FLAG_BROKEN_IRQ BIT position rectified.
-Updated BORKEN_IRQ flag checks such that if sifive device (Fu540-C000) is identified,then use polling mode as IRQ is broken.

V2<->V3:
-Incorporated review comments on v2 patch as follows:
-Rectified compatibility string sequence with the most specific one at the first (dt bindings). 
-Moved interrupts and interrupt-parent under optional property list (dt-bindings).
-Updated reference to sifive-blocks-ip-versioning.txt and URL to IP repository used (dt-bindings).
-Removed example for i2c0 device node from binding doc (dt-bindings).
-Included sifive,i2c0 device under compatibility table in i2c-ocores driver (i2c-ocores).
-Updated polling mode hooks for SoC specific fix to handle broken IRQ (i2c-ocores).


V1<->V2:
-Incorporate review comments from Andrew
-Extend dt bindings into i2c-ocores.txt instead of adding new file
-Rename SIFIVE_FLAG_POLL to OCORES_FLAG_BROKEN_IRQ

V1:
-Update dt bindings for sifive i2c devices
-Fix broken IRQ affecting i2c polling mode interface.

Sagar Shrikant Kadam (3):
  dt-bindings: i2c: extend existing opencore bindings.
  i2c-ocores: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC

 .../devicetree/bindings/i2c/i2c-ocores.txt         |  7 +++-
 drivers/i2c/busses/i2c-ocores.c                    | 40 +++++++++++++++++++---
 2 files changed, 41 insertions(+), 6 deletions(-)

-- 
1.9.1

