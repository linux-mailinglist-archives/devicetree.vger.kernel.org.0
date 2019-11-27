Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0AABB10C052
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2019 23:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727280AbfK0WpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Nov 2019 17:45:14 -0500
Received: from mail-pl1-f193.google.com ([209.85.214.193]:40069 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727165AbfK0WpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Nov 2019 17:45:14 -0500
Received: by mail-pl1-f193.google.com with SMTP id g6so2190442plp.7
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2019 14:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=63jmzggHofWJgr5L+GFqxa+EPIblRXoAkXungwth2fI=;
        b=MGcWFCb0G0DykTImRQeb3TawUcMhqC9QSHIXhHlJYWD5JI749HJpVBWgXqg7daoiGA
         T7es9mluxMthSbpztiGoHaZthnsvDRErI7+DezwQi2RYIRCd9s2MHGxiEPnJ6zw1uwkb
         EndGbT1feeUF49ynd1MIXRupi0HFXWNJ3BgJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=63jmzggHofWJgr5L+GFqxa+EPIblRXoAkXungwth2fI=;
        b=NfZEqDzeR1UqQKkKMpxP30rQzaDEwr1ChnlECvjKvh6Lns1/BMhtJra8IC7AqsfqL1
         SYVtq2MD66ISrzsgAvURi1uKGuC5uaxBd7rB97DHqpTDtScixwK3pqZZaN/Orv0+L11e
         DaMk3Vancq+TFCN5xeLRptpY4/lmqwQecsENEfzpnGRLUkGJwOQ3kjZHSf7NJok05V4C
         tJzBBZc9iqDe1J+BnedhbXLJXfnx2yPRdTzDcHRhkUwnA0X9uYBiZr3p4QjZGM7fgBF8
         KAAuNzYxrrLO5FgJya2Jt4xt6sn0QnKlO+0ir8QMJlejODq8LUKPjV9BPGLykVHLZtqV
         bECg==
X-Gm-Message-State: APjAAAUK543aDsf0k2b7+Mgj3YFWaoru5xVEXSSr2qsi5LN7VcbvNFbk
        Wvdvw0Sk7Y6Ip8nE5I6qduA96w==
X-Google-Smtp-Source: APXvYqxkiaNpRSKYO8TFXuDbKEa4C6rhv9HChTpAPsUa4ZwUsN9Kt+fIhYQ8z4o9sPgZF5ZN+rFnRQ==
X-Received: by 2002:a17:90a:b38c:: with SMTP id e12mr8827391pjr.89.1574894713609;
        Wed, 27 Nov 2019 14:45:13 -0800 (PST)
Received: from apsdesk.mtv.corp.google.com ([2620:15c:202:1:e09a:8d06:a338:aafb])
        by smtp.gmail.com with ESMTPSA id g18sm17756714pfr.165.2019.11.27.14.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2019 14:45:13 -0800 (PST)
From:   Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To:     Marcel Holtmann <marcel@holtmann.org>
Cc:     linux-bluetooth@vger.kernel.org,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Johan Hedberg <johan.hedberg@intel.com>,
        Ondrej Jirman <megous@megous.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Mohammad Rasim <mohammad.rasim96@gmail.com>
Subject: [PATCH] dt-bindings: net: bluetooth: Minor fix in broadcom-bluetooth
Date:   Wed, 27 Nov 2019 14:45:09 -0800
Message-Id: <20191127224509.3341-1-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The example for brcm,bt-pcm-int-params should be a bytestring and all
values need to be two hex characters.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
---

 Documentation/devicetree/bindings/net/broadcom-bluetooth.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
index b02a53275c98..b5eadee4a9a7 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
@@ -47,6 +47,6 @@ Example:
        bluetooth {
                compatible = "brcm,bcm43438-bt";
                max-speed = <921600>;
-               brcm,bt-pcm-int-params = [1 2 0 1 1];
+               brcm,bt-pcm-int-params = [01 02 00 01 01];
        };
 };
-- 
2.24.0.432.g9d3f5f5b63-goog

