Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A71C7E563E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 23:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726010AbfJYVzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 17:55:02 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41073 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726428AbfJYVzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 17:55:02 -0400
Received: by mail-pf1-f193.google.com with SMTP id q7so2471116pfh.8
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2019 14:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=89m06+xkP6iuCxM34qSVOV2dKIIRXKWy8S7NlrA4pyY=;
        b=dOqaIHVg3QZ2lOLTZxqk8+KqZisI933TPy9NwHt6X67IsFjKJ07OSsZTtGNXnMvfCU
         ii6mzEJjdHl013PciiJ+mojyAEWZJnjpNl8ve/ceTQ2XzD5byKJ301oAqTkQmM8foaDS
         oB0C+5qzR6tUr9kERgkvlCgHbbBhvuy/bLc38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=89m06+xkP6iuCxM34qSVOV2dKIIRXKWy8S7NlrA4pyY=;
        b=qDzB9FTeB0LMFTlpbMyLMTngh/83DDsv1NXyAbaPPkgNCr3+Y1S97zPkjIklUKC8he
         MR25JFAlewCNnhOcRtxESAg6JeZEUuQunjwHJQMl60631w5DLqcYUhSSOVOiYGrDbRzj
         1GJRZe0BwyVolqMDlhngybW6UgEWiSUdOkay5apRUKOUKzpQD3jEsizI3beyXdFtf0Zc
         R0Uzbmj1VWoh93YE+B+8MHb5Xi3PXNaU8LCU5YYyqzpixU5JPHWmyDS5ENUhBmLEr+Kr
         di5Mj+yNGpHCTmDtNgMF7x48q/wmRuGE5sgpLjA7seaBejKvaqn/rdZ3H8gz8tnNwndf
         4qPg==
X-Gm-Message-State: APjAAAW3vEFKUZMeHC6QQ26MT5vLjdkarRnsBm1y9zHvBxkcjo3Jhxuu
        Z9DDqCSVryEcxz3bnvZayVHHQg==
X-Google-Smtp-Source: APXvYqzl0KnFp0QeZi0ICQeTNpCU0pxjq2w6jjf6JCLmPyuwntCGMq7SBLTLQ8U00/IlVqC313JpjQ==
X-Received: by 2002:a63:6585:: with SMTP id z127mr7132514pgb.330.1572040500677;
        Fri, 25 Oct 2019 14:55:00 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com ([2620:15c:202:1:e09a:8d06:a338:aafb])
        by smtp.gmail.com with ESMTPSA id y80sm3815110pfc.30.2019.10.25.14.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 14:55:00 -0700 (PDT)
From:   Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To:     Johan Hedberg <johan.hedberg@gmail.com>,
        Marcel Holtmann <marcel@holtmann.org>
Cc:     linux-bluetooth@vger.kernel.org, dianders@chromium.org,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>,
        Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] ARM: dts: rockchip: Use hci_bcm driver for bcm43540 on Veyron devices
Date:   Fri, 25 Oct 2019 14:54:25 -0700
Message-Id: <20191025215428.31607-1-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


This patch series enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).



Abhishek Pandit-Subedi (3):
  Bluetooth: hci_bcm: Add compatible string for BCM43540
  dt-bindings: net: broadcom-bluetooth: Add BCM43540 compatible string
  ARM: dts: rockchip: Add brcm bluetooth module on uart0

 .../bindings/net/broadcom-bluetooth.txt       |  1 +
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 31 +++++--------------
 drivers/bluetooth/hci_bcm.c                   |  1 +
 3 files changed, 9 insertions(+), 24 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog

