Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AD080170B71
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2020 23:23:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727917AbgBZWXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Feb 2020 17:23:34 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:34402 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727736AbgBZWXd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Feb 2020 17:23:33 -0500
Received: by mail-ot1-f68.google.com with SMTP id j16so1059763otl.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2020 14:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kopismobile-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pfUf4spEhkDBmKxyxMorooyDLjAKRPJLyckzruXNUbg=;
        b=wZYkr7JBtdoc5YuzjF3ohzPAVDJ1gnRZjKmKJAFSt/LvVdTzc/ObarwxW+Bfdg0qsO
         GL/MnvZ3yJNOS9OYbhuim58B12tHPBcZ5hMil2MR9CQlrzjgrVX0oTW5g0cuuvr/TYUD
         A9wRyDpW6BvopIGKAfqgmPhJCQ8+DdSWS71A2JthVnFXEfX3H/uw7zrK96geumE2yg87
         O+abf6qnRXqoff+ABDXk0afpLrELFb3v6f0+PvdILW5xN41xRP1RVZTITIbBJwfZgFME
         xPFOCujPruB9hRVoqFBJSv2/wTfedfZR7L4GLC7Gj+UEFKqI5wuq+/M6Vo7zt8/pyHXC
         q/dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pfUf4spEhkDBmKxyxMorooyDLjAKRPJLyckzruXNUbg=;
        b=b7JG0e8IA+DS19xe9lHEsb7BytEYBw0cVFMheCqqpW7r22UQF201w6gwIofKCopmC8
         K/mTEU71LzqMjt4a6kcND0lejqGrYLX2BjWGQG7K3unCKeqeJEkkfRU10XQU6hQ6nkCy
         Y2hC4MmRmQRciF9+7qfCfDIeJKTUw1Adh9J/FOAl+vc6gEnzODQFYk2tz8emCIet6ATK
         gpSoUYicSEPn86/KCXKR8aen0ggOlwj4lJZwokbTRqw5jNis5lnSbr6riUzrWfyE1BPM
         WsyvmZ5iz2lbXsOY7XqLmslAFWiqeqBAY89akujLZ10Het/6srEaU/5+I9PoHXVetd9m
         3HiQ==
X-Gm-Message-State: APjAAAX2UakKrJZrXeZTd3/jGJJRDfyWVruvMaIRAJQpA02Q6R3p5Wvh
        oZTxWWEczjs43+N+kLGyq6RnjA==
X-Google-Smtp-Source: APXvYqzH14hksfq8W/t4RGgz57wk9GHGGZP32bA2kV+roi7VwOltmEnTMtsVyCnxC1QyoQwXk/+3Yw==
X-Received: by 2002:a05:6830:145:: with SMTP id j5mr812538otp.242.1582755812741;
        Wed, 26 Feb 2020 14:23:32 -0800 (PST)
Received: from farregard-ubuntu.kopismobile.org (c-73-177-17-21.hsd1.ms.comcast.net. [73.177.17.21])
        by smtp.gmail.com with ESMTPSA id z21sm1237614oto.52.2020.02.26.14.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2020 14:23:32 -0800 (PST)
From:   George Hilliard <ghilliard@kopismobile.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     George Hilliard <ghilliard@kopismobile.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de
Subject: [PATCH v4 0/2] Implement support for inverted serial TX/RX on i.MX
Date:   Wed, 26 Feb 2020 16:23:17 -0600
Message-Id: <20200226222319.18383-1-ghilliard@kopismobile.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This peripheral has dedicated control bits that flip input/output
signals before handing them off to the OS.  This is useful on my
hardware because the UART is connected to an RS-422 transceiver with the
+/- pins hooked up backward.  Instead of a hack flipping all the bits
before sending them, the hardware can do it for free.

v4 cleans up the bit manipulation in v3; see previous series at
https://lore.kernel.org/linux-serial/20200212163538.3006-1-ghilliard@kopismobile.com/

George Hilliard (2):
  dt-bindings: serial: document fsl,inverted-tx and -rx options
  tty: imx serial: Implement support for reversing TX and RX polarity

 .../bindings/serial/fsl-imx-uart.txt          |  4 ++
 drivers/tty/serial/imx.c                      | 44 ++++++++++++-------
 2 files changed, 32 insertions(+), 16 deletions(-)

-- 
2.25.0

