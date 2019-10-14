Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF853D5AC7
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 07:32:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729706AbfJNFcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 01:32:22 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33265 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726650AbfJNFcJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 01:32:09 -0400
Received: by mail-wr1-f68.google.com with SMTP id b9so18066611wrs.0
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2019 22:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=aiibnLb4ztqM4McCZf8ivuH47sJDCIoIvUY8u0wjWw8=;
        b=dZWm0bODxvVtd4jc+Sv3HEOR144u2b+ytObS+iiHa0aWE+7M86xnmZ1BQr3dL+y/R5
         I3dg+hkyPrT1CpIWzSYqJpSd2Nma1oDXyroJNgsTMmgMCkg0RNvghA5OatcRKRamhlAR
         ouV7VuiYPwRstXsmzg6/QPxOItKOWp87NucpAz6f83jY+B6Y1eUKdhamcDg77ueQ493/
         0KDj2K41P8eP9KCnV1adMmDtKATMNOaeUgxsv9Jn3QVk63xzvDSADv9g8ZCV1v04pB2p
         XPD1uo4Vb30Uss7PrWno0cArt2kbvguVeN+qqYP/D068ydIxqj7ohAYke5/KQ/WZpbQP
         DImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=aiibnLb4ztqM4McCZf8ivuH47sJDCIoIvUY8u0wjWw8=;
        b=GTijUbutl5OiB49vacYOGIPFgYm4w5RjEHfBA//qACxlBvbRKVPPIkMPjRmBSaNeB2
         1XH1liYOlPHBoz2SBafLXKLDvW71/2sVXa4501DTZ+tV/fggW379bkgUy1Myj5yyVzrK
         607gXEO9eR+8ekDZArUeUVQDJpqVBh+bJCsIdG6oJqUe1dsbOulbzly8cB2DfRqjUdFi
         CgaCZgZifbI5G/jSVJeYF8KyJPNS0Ny203NSyok4+G1rTjsMN69pYfAnEKi6IBRoXrEv
         mZyU5CDD3OhJd3oDrYd4r/ezz/z5Gopi9/0fDlCkdAmth+PDwY/ytZ4EQTChbTdJDrTX
         jSmA==
X-Gm-Message-State: APjAAAU5KF8rgR7nX2icq6T7gN36QXLDdEdngsslmVPTWmeimWXxkayi
        ZRSZ6TakXOHCIoBk+ouAoosSCQ==
X-Google-Smtp-Source: APXvYqzwgYyla5i+WdGDH9uV7L7OrlHDKcef3vSlLkS/1w30Ak08EC3dys/X03T3BQUy1jWogl3vYA==
X-Received: by 2002:a5d:6984:: with SMTP id g4mr9280068wru.43.1571031125748;
        Sun, 13 Oct 2019 22:32:05 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Oct 2019 22:32:05 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org,
        martin.blumenstingl@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 2/4] MAINTAINERS: Add myself as maintainer of amlogic crypto
Date:   Mon, 14 Oct 2019 05:31:42 +0000
Message-Id: <1571031104-6880-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I will maintain the amlogic crypto driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36c5d6ee01f9..a8487a0999ce 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1477,6 +1477,13 @@ F:	drivers/soc/amlogic/
 F:	drivers/rtc/rtc-meson*
 N:	meson
 
+ARM/Amlogic Meson SoC Crypto Drivers
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/amlogic/
+F:	Documentation/devicetree/bindings/crypto/amlogic*
+
 ARM/Amlogic Meson SoC Sound Drivers
 M:	Jerome Brunet <jbrunet@baylibre.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
-- 
2.21.0

