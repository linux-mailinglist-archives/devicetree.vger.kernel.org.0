Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 59D8D158390
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 20:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727434AbgBJTaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 14:30:10 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:39231 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727331AbgBJTaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 14:30:10 -0500
Received: by mail-ot1-f65.google.com with SMTP id 77so7544571oty.6
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2020 11:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kopismobile-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ttAcZsliGUSH7WXcVjhAV/BjixYVK4XpgsWIL/Hit7c=;
        b=1AtFHHgHTS8qKJtFng0Lcn4Jx4ytAEVwvCUlERa4Y3S5RvhtlfDYKcw5tJIrzxyEG4
         IqCK0NQ0KONUD9HDQ/TbOjpSiCQ7mFNUUyB5+8lBhVAojD7115tcyNDvWJA/lmEcE/rl
         f9/7FDFVGPinXDYg4h+Qf3+x3mR23lFwQe9mxbJaTinUkaULX4UI5bChPyjB8gM6OfbT
         qgC+ZklVkry+/NA01RoouDRmlKAXwJqr8TtKARNMw/ognzPg3BHKWjLnX8H83Z/Cl7Ji
         3kq+Rs9oMPR6eFOsTdtROvxibm9ytUX3TNFHBns5fj5vqN/j9MmWjCBjOXQH/1rW/pGv
         PsUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ttAcZsliGUSH7WXcVjhAV/BjixYVK4XpgsWIL/Hit7c=;
        b=ZzSp851+iyInz2Fo0ERn5P/aETQLjVl//0Re8gkbRoM8ySPfzipQXPLIJfXVqXuM7p
         OUsPDl56GeXHQpsRv45Jyn1ab6PJbPrhmCH9szjJYHhu2InLR2KEw7NQ9QWougSUO699
         L/Igs31zTvwP0bICuXjMnfqswtV/Ozh03XuquGJzMMLKxIe79y560BpapwSN5ve7DwjB
         vQjtITkmD/shaDxk54L8g8Q6ZHi/fI5Wq3f1cCf2OxMe38ma1mHQXIyCHAlER9c8F7bY
         hA/vCJM8UFfk+Wlrnr003dHoCI42lRzh3vCHD8I8bl53LZctVlhnuF+DYzy1W8jhN5q0
         eIjA==
X-Gm-Message-State: APjAAAWsAJGSgcoXaL4EiIzHscaVJ+GBtHWOBOiCKCtpdE+6XyNfSX2M
        gYSPdFq1Twc6CxH8HwmI1Uk/9A==
X-Google-Smtp-Source: APXvYqxwMvwLJXzmeZp/mbXuPai64iNGbAETuUWWzd3ig2H/OVUaeJjjRbpJC27IHP+Q3FkjW1CeJg==
X-Received: by 2002:a9d:1ca3:: with SMTP id l35mr798534ota.271.1581363009457;
        Mon, 10 Feb 2020 11:30:09 -0800 (PST)
Received: from farregard-ubuntu.kopismobile.org (c-73-177-17-21.hsd1.ms.comcast.net. [73.177.17.21])
        by smtp.gmail.com with ESMTPSA id n22sm412163otj.36.2020.02.10.11.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 11:30:08 -0800 (PST)
From:   George Hilliard <ghilliard@kopismobile.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     George Hilliard <ghilliard@kopismobile.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: [PATCH v2 0/2] Implement support for inverted serial TX/RX on i.MX
Date:   Mon, 10 Feb 2020 13:29:47 -0600
Message-Id: <20200210192949.7338-1-ghilliard@kopismobile.com>
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

Functionally unchanged from v1, but the confidentiality notice has been
removed.  I also CC'd other lists that Uwe suggested.

George Hilliard (2):
  dt-bindings: serial: document fsl,inverted-tx and -rx options
  tty: imx serial: Implement support for reversing TX and RX polarity

 .../bindings/serial/fsl-imx-uart.txt          |  4 ++++
 drivers/tty/serial/imx.c                      | 22 +++++++++++++------
 2 files changed, 19 insertions(+), 7 deletions(-)

-- 
2.25.0

