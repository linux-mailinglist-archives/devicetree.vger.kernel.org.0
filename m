Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88F1F1A1EA
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 18:50:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727846AbfEJQuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 12:50:15 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40322 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727660AbfEJQtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 12:49:47 -0400
Received: by mail-wm1-f67.google.com with SMTP id h11so8127149wmb.5
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 09:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QD9hBkezx95+dQeemkScJZveM5ylPZcSzzLZ+VBuxxE=;
        b=HWrLNOSW7RlVAi8RnLDx9KvIJJknkMjmnYmZy9vW+1r2Ma2dQZiiDk7bY9t/f18XlA
         ruQW4Pgi+nn4UplAbSckCQl+rTWnKc/XFo3SAExVvYIUksfeRGB9IXrglJt27LbXWzDx
         UfYVUOBbUBaPkIMh/fXiKGzHRlaGldrihSDv5LwkaeLgbDZtfimsklmxo6juBNUUGQsb
         rLEXRDRLc6qvjpYDGaFJPEOOKRW9wZKGuGJaYhFFKNywyeiZsTT4ui4rH63GDiNoe1lI
         ADhN+LhC0aOhapH30Ta4zLY13kfu50mhOI5VagYLrUorRUs3lGZQYRcDuA6WPmn6G6vt
         M9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QD9hBkezx95+dQeemkScJZveM5ylPZcSzzLZ+VBuxxE=;
        b=ThziOVikLN3MJMmow1TZIOvKf4TEKwy1V2Ou7u0X66Jt40AhPd6xPDCOUYVVD847mt
         I7hBSTQbQhzu0TLlf2lMhyKcppas4Yx21NK1Uk8L5KALNIm3bRJW+JGok+bEcYpguvNq
         /tLUzGh/wy2CPGkqB76GjnwLd7Y1yYHPatXpDjPhWLMwGQQlZFWjkiXJa7PbmMkEsvti
         7UnBY3Oj8Ce/FOX3SfCoHTLdwNHnhr6PwmBFfOCzKWv1AnGzLEqYHxrI0SPy/36nfUsz
         QbYP5QHciJqNC4khbsPQtr85YItqLnBBTrNt0SCEzqaRugQsTMdOjpPJSHF9wFkYdlKd
         7cUg==
X-Gm-Message-State: APjAAAWsttgcNcnz9MQ0W/B+J8fiGGAQvp2DnviwJCdo0bVZnBTEFSWP
        MOKgz9ppPGfFe8Lx7nJ2hLK2Xw==
X-Google-Smtp-Source: APXvYqwUEF4XTc72WlhD1gJI2eKGwCeixpKjDSaEsM4YUTrNZXm/BcVU7KxsNOWWwpGU80rHKeaNLg==
X-Received: by 2002:a1c:730c:: with SMTP id d12mr7423745wmb.47.1557506985321;
        Fri, 10 May 2019 09:49:45 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id q26sm5114308wmq.25.2019.05.10.09.49.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 09:49:44 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 0/5] arm64: dts: meson: g12a: add network support
Date:   Fri, 10 May 2019 18:49:35 +0200
Message-Id: <20190510164940.13496-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add network support for the g12a

Jerome Brunet (5):
  arm64: dts: meson: g12a: add ethernet mac controller
  arm64: dts: meson: g12a: add ethernet pinctrl definitions
  arm64: dts: meson: g12a: add mdio multiplexer
  arm64: dts: meson: u200: add internal network
  arm64: dts: meson: sei510: add network support

 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  7 ++
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  7 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 90 +++++++++++++++++++
 3 files changed, 104 insertions(+)

-- 
2.20.1

