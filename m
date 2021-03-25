Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD48F34955C
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 16:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231419AbhCYPY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 11:24:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbhCYPYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 11:24:19 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C55BDC061760
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 08:24:18 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id y124-20020a1c32820000b029010c93864955so3311454wmy.5
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 08:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vjIiCTomysNBHigYUO2F29y2fu9n4K1mpORfU6aQthU=;
        b=rehPFnP/AkKl027/tuMZ0dZjy9QnfxgtQtJSVXmCLlNHgBtiKGpuIydvjUqstxJ+f1
         bpbA1vG8+/viUmDHV3RKst1+0+mDVIe/4jSWY4U4MYrK2Rfh5KO1q7ganxzw9cwv3KGz
         /jEFmNs3PQ5tZnWZ4TwCAH6pjdYFfuFwzaOoMZ2g9A81gu5i+OxYNjp5K/830ylhR7dj
         F+eGVi3tQ8yTCn1n4pSwJUb4j8lZz0KLWQWim6IEAi8g/gQe4oyA5OHVPOjQCV+vPZDL
         oFn260UmkLUx1YNj8VIagF9/JVKRYW3a7wzL9tnWV5DwSBuMLdAomP9REXKschZg3V3L
         nFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vjIiCTomysNBHigYUO2F29y2fu9n4K1mpORfU6aQthU=;
        b=mIfE+hnaJAS0WmYSabsgHmEwPtlvgCsbuh32uqy47TH+CDU06eS+VNeLXBkZlXtheC
         biZybFWpNDisVNQGJHFOkV2pUkp/LxVwdd30xLgBcIHZ25G0oU2ZtjS3KOLIPGAETqhn
         NRnj6ON4QU2/41o299kre0CpmrQll3cCSSpUgr7QnyrdHz/1z6LDVAgWy87WwhgmoBC9
         Me+Ov4V+WqRXETKBOzTMOh6TDq+msJ7KIPmYPmGSqT/RPWNtVXA1OCeZP+iFBkNp8pgL
         dT2W8n2HqKXzRmR7RJ9REhl4yowY98Y2SpEsUWA2mUhtA3bJJy47XZhiQIl+kYsKq0ib
         05kA==
X-Gm-Message-State: AOAM531aXI5K0frn8XHxWHttpQ4mNMZSdCdrRd+LEPYjFAVH/WsxNjla
        ZG4cmHOLQ+Hs0RkiL2pehvyeNg==
X-Google-Smtp-Source: ABdhPJx+pqAdNhSx9GFKMbPAXZItlskPfQ2YKeW1riDj8QxU69vfbwXWlnBOaVLScMfrAyLE694NVQ==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr8624075wml.147.1616685857177;
        Thu, 25 Mar 2021 08:24:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:90c:e290:b105:9672:b0a:5820])
        by smtp.gmail.com with ESMTPSA id p18sm7395260wrs.68.2021.03.25.08.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 08:24:16 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     gregkh@linuxfoundation.org
Cc:     devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 0/3] tty: serial: meson: add amlogic,uart-fifosize property
Date:   Thu, 25 Mar 2021 16:24:07 +0100
Message-Id: <20210325152410.1795557-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On most of the Amlogic SoCs, the first UART controller in the "Everything-Else"
power domain has 128bytes of RX & TX FIFO, so add an optional property to describe
a different FIFO size from the other ports (64bytes).

This adds a property in the bindings, reads the property from the driver and updates
the DT with the new property.

Changes since v1:
- switched to a more generic "fifo-size"

Neil Armstrong (3):
  dt-bindings: serial: amlogic,meson-uart: add fifo-size property
  tty: serial: meson: retrieve port FIFO size from DT
  arm64: dts: meson: set 128bytes FIFO size on uart A

 .../devicetree/bindings/serial/amlogic,meson-uart.yaml      | 6 ++++++
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi                  | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi           | 1 +
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi                   | 1 +
 drivers/tty/serial/meson_uart.c                             | 5 ++++-
 5 files changed, 13 insertions(+), 1 deletion(-)

-- 
2.25.1

