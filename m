Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D5C191665C
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 17:15:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726470AbfEGPPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 11:15:30 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:35003 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726351AbfEGPP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 11:15:29 -0400
Received: by mail-pf1-f193.google.com with SMTP id t87so8248599pfa.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 08:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:from:to:subject:date:message-id;
        bh=jxvbr3KCxGuFA0UUCE0tn2m+gj1lVeJv2p0ZckpwEOo=;
        b=godi/eRqc9u1IGuhM6qD/GD01ckleD8wICQ7/wytewi8a7HBbzkII3459Dcb5M+5sy
         SFVxVOPrh7oEqVmF4uK8oXWesB2bHmyIkIDNTNkIiFE6aVDQAuMrT+Lhyc7dZjrVGUz3
         OYxlsQzH8MWBzSPmXLdIQNiSbw2MXf7hEu7OfDrD/NCs0oNCRXmxFjIiJhNeiDiPuNi3
         WPOv5roEbMkZgK8sd3IbMVL6LZW1FMNM5rqNKdKe625cMdK66Qm1aU5VhWd0NQHg5Ra3
         0XZSzk+0CYdxAWjOaclyJKyw53FQhY5XIYz5khKa4DFmlAxxdg66yLH1zv2d6LR1LfWo
         kvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=mime-version:x-gm-message-state:from:to:subject:date:message-id;
        bh=jxvbr3KCxGuFA0UUCE0tn2m+gj1lVeJv2p0ZckpwEOo=;
        b=br1v9veFOFm8kSBL3pcspntP5KIbG/w+/D8AHM9rjYMy9DiaTmiMxZW43h//e12lgV
         UUoRM2cBz2IH8eL0Aus4jSs3zYq9lgPfrxlDVEvtGCtf5hfirSs728UCXG/nKI9fH9qX
         /45G807Uir/BfCImCNeFAPcP/2DQtNNdaO4P6A5J6eqUYhd5GGmxX/3TbC3aJYk6bAdA
         DP4WNCPPUR23GTZgQi71YOHONwKAdggUA3MJrrqOswQOVBsFIJYohhU9c2dqzMBtaNqA
         JPZCwdIbLv9xtF1ceZx21GT6/ZJtm9xf9SMskU6BvUxRFzs768R01qpP5oWnj2tQ2JFK
         oyMQ==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAU2fibWThQuu5YbtyO0znHaMiQaFJ/fJqDm4BsQvxXzkAxohQDc
        PTEwoOMXlksoVeKR+sPYMavi9BdEP1u5RsJHQpC3bYSsaAi7yx8AHJgCndtPFGRhq4lJwUqxo0C
        l/O7IukgRy9yLkKU=
X-Google-Smtp-Source: APXvYqzrXRe5boGKu4+E5H+iFQtt2WKa8IE844ytrYjmvDo2sjKQXZGEQiX+PPyG3XVys162mtMbAQ==
X-Received: by 2002:a65:4649:: with SMTP id k9mr16750621pgr.239.1557242128887;
        Tue, 07 May 2019 08:15:28 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id 2sm5397398pgc.49.2019.05.07.08.15.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 May 2019 08:15:28 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 v2 0/3] Extend dt bindings to support I2C on sifive devices and a fix broken IRQ in polling mode.
Date:   Tue,  7 May 2019 20:45:05 +0530
Message-Id: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="US-ASCII"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch is based on mainline v5.1 and extends DT-bindings for Opencore based I2C device in FU540 
SoC, available on HiFive unleashed board (Rev A00), and also provides a workaround for broken IRQ
which affect I2C polling mode interface on FU540 chipsets. 

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated.

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and TIP flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and 
appropriate device node is added into board specific device tree as per the information provided in 
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:

V0<->V1:
-Incorporate review comments from Andrew
-Extend dt bindings into i2c-ocores.txt instead of adding new file
-Rename SIFIVE_FLAG_POLL to OCORES_FLAG_BROKEN_IRQ

V0:
-Update dt bindings for sifive i2c devices
-Fix broken IRQ affecting i2c polling mode interface.


Sagar Shrikant Kadam (3):
  dt-bindings: i2c: extend existing opencore bindings.
  i2c-ocore: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.

 .../devicetree/bindings/i2c/i2c-ocores.txt         | 20 +++++++++++++
 drivers/i2c/busses/i2c-ocores.c                    | 33 +++++++++++++++++++---
 2 files changed, 49 insertions(+), 4 deletions(-)

-- 
1.9.1


-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.
