Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1B9314C38
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 10:56:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbhBIJ4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 04:56:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbhBIJyL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 04:54:11 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76E36C06121E
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 01:53:26 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id i8so30218914ejc.7
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 01:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pqbb2hbiFk/I6vb7TmhkdeW2Dsvn3o0tV40ygJzupJY=;
        b=b9Yr/WFLNTMKwRU/2j24yNwf+F6THMtjELrnzsywsXAvhuvqobOJXsTvc+lpvKP3TV
         JjyxjnXcK6zymN3TICdIcYxmJPe59Buw647pX/xX1GwjeksqDvnR1xClt3jNL9cruFPT
         k1RBj5wUH74f0g5nDeoMk/IqVDQCAhH6uMFIjZeTxzg2VE8FYH74AN+Lmk3AC8+F1tR8
         wbdLI8NTK+qLD5yeAJxvhqx5NUL70wwjvLH5qYX1e1lrfYQqjLOLmMF8f6ccCcSBIR6h
         0I35KsZlmdqauVSYeSmPW+hz/Smm1QWs2ndz0HZdUJ8n78SOkSI9E+davlobcA2tDpWP
         QqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=Pqbb2hbiFk/I6vb7TmhkdeW2Dsvn3o0tV40ygJzupJY=;
        b=f5pXhu6xxUOMD+E6kZAT8j3D9iaqngEkwyty3x6PEUERu9zFb62OLOMOFATFQW7I2w
         wYnZlcuQIoqD0vw2vSIOYNgOTTyz91umjAWo7M694++lBpFXlNoB2icg2iu0Bjq+IUdZ
         z4FbIAOHM3k+Wdsdpwh8KqwfxRURZOpujX5tqGX+Wi5dtyTBcVthWZQsmavcvtVHDApx
         xsSQj52caaE8K+AgnUTsJZ+DE90oo9pCUV9MgycKmpo00C2xR3vSAJUKLAJ4cGS6vZY2
         qWu2t/C2jUs4kbf9dDC9qU3USP6Vt203DtAeONyiLtp5okEbDoi1CO5Txpv1RwTtjOxp
         EWeA==
X-Gm-Message-State: AOAM530rPI/NH7DEw/y7Ax8bKliGY+EhPUbdIlMsX2TbDODevS9qWYdt
        zQ4xQfkfeZIfKzBIZ5jMp+Qdbg==
X-Google-Smtp-Source: ABdhPJxTHff2sFseU/wwogexEzr83TWbeERuCDSraUtmSFT/XUiOPJ0B8MHbnrKRymb0cLjUniSZRw==
X-Received: by 2002:a17:906:880f:: with SMTP id zh15mr8838974ejb.268.1612864405279;
        Tue, 09 Feb 2021 01:53:25 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id i13sm10249734ejj.2.2021.02.09.01.53.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Feb 2021 01:53:24 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Al Cooper <alcooperx@gmail.com>,
        Alan Stern <stern@rowland.harvard.edu>,
        "Alexander A. Klimov" <grandmaster@al2klimov.de>,
        Bastien Nocera <hadess@hadess.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Piyush Mehta <piyush.mehta@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH 0/2] usb: misc: Add support for Microchip USB5744
Date:   Tue,  9 Feb 2021 10:53:18 +0100
Message-Id: <cover.1612864393.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

the series is adding basic support for this USB hub. The key part is
running reset over GPIO line and when i2c is connected it is necessary to
send command to boot the hub. This chip is available on Xilinx
zcu100/Ultra96 v1 board.

Thanks,
Michal


Piyush Mehta (2):
  dt-bindings: usb: misc: Add binding for Microchip usb5744 hub
  usb: misc: usb5744: Add support for USB hub controller

 .../bindings/usb/microchip,usb5744.yaml       |  56 +++++++++
 MAINTAINERS                                   |   2 +
 drivers/usb/misc/Kconfig                      |   9 ++
 drivers/usb/misc/Makefile                     |   1 +
 drivers/usb/misc/usb5744.c                    | 115 ++++++++++++++++++
 5 files changed, 183 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
 create mode 100644 drivers/usb/misc/usb5744.c

-- 
2.30.0

