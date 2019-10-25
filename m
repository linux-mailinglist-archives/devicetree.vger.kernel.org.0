Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 964F6E5649
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 23:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726567AbfJYVz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 17:55:28 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:42601 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726564AbfJYVz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 17:55:27 -0400
Received: by mail-pl1-f196.google.com with SMTP id c16so1973466plz.9
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2019 14:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7uKa34kYvsX7BroFGlpYBz0Sd8dZ85UkHcONCBB1nmI=;
        b=mVoUJAapx+uOBznFP8kPMazgbHKDh/1nmbF+I3B+I6pGY1Bc0SXxsWWOwS6ZqaoJ8s
         MZwQqVJx/GAL3Dx9IjsemZnfdzeglMPrWkMYkWqz0w97Ar+Oo94dGyVVXX910/Ivgo/8
         UOyu6jroYVgGEnJcyAEBMuAzV/hMF9wsf+NvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7uKa34kYvsX7BroFGlpYBz0Sd8dZ85UkHcONCBB1nmI=;
        b=hsd/KHOe9WuYci5+Ee906YiAeCs/91VubyzVT1AvY+0T1QGBjvuPnUYCq52kh1sixz
         wQgrNnm8N3ZHXohfWlpTZhtA5H+W6ELFd6SUes/GeSgMpUMikDoIKX/PM6V3vuaEKPQR
         Km/cDCqD/wwIdrFG81+kPR+PAAVjOXKvSEUPoN/tRSR/RyBPT3LOg7HyXxNfpe/O6bfV
         7fj+E2+gjQwvYtxz8EBGcNSxu5mhHQQMDT7h2JhUXDTE8IsQZJxlk156/9WzoXMj3q44
         5YRyxyrz7AqNQ2zPQHeZ6kYMeSZs654XBGIQ8H5U7Szo/+ORTCSdSm9mC2ZAsgalSOCM
         N57Q==
X-Gm-Message-State: APjAAAUA6S6v9e6ftnJKqiDo8Kjn7EpWWR+Ww7zrCxRasmDdQie+B8mQ
        WdRvBPnvdkxijWxw3tSlz4Il5w==
X-Google-Smtp-Source: APXvYqz/ooBuyGY1IHf6DZksSTGAVttn8pjAAVhvqvN5QaSKbLw1d5alO5D0UMlMwup7Kjy2l0zWiw==
X-Received: by 2002:a17:902:b687:: with SMTP id c7mr6367753pls.214.1572040525016;
        Fri, 25 Oct 2019 14:55:25 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com ([2620:15c:202:1:e09a:8d06:a338:aafb])
        by smtp.gmail.com with ESMTPSA id y80sm3815110pfc.30.2019.10.25.14.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2019 14:55:24 -0700 (PDT)
From:   Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To:     Johan Hedberg <johan.hedberg@gmail.com>,
        Marcel Holtmann <marcel@holtmann.org>
Cc:     linux-bluetooth@vger.kernel.org, dianders@chromium.org,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/3] dt-bindings: net: broadcom-bluetooth: Add BCM43540 compatible string
Date:   Fri, 25 Oct 2019 14:54:27 -0700
Message-Id: <20191025215428.31607-3-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025215428.31607-1-abhishekpandit@chromium.org>
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The BCM43540 is a 802.11 a/b/g/n/ac WiFi + Bluetooth 4.1 chip from
Broadcom. This is present in Azurewave AW-CM195NF WiFi+BT module.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
---

 Documentation/devicetree/bindings/net/broadcom-bluetooth.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
index 4fa00e2eafcf..c749dc297624 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
@@ -14,6 +14,7 @@ Required properties:
    * "brcm,bcm4330-bt"
    * "brcm,bcm43438-bt"
    * "brcm,bcm4345c5"
+   * "brcm,bcm43540-bt"
 
 Optional properties:
 
-- 
2.24.0.rc0.303.g954a862665-goog

