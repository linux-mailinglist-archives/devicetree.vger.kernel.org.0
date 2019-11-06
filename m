Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BEF91F0B0B
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2019 01:30:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730620AbfKFAaM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Nov 2019 19:30:12 -0500
Received: from mail-pg1-f194.google.com ([209.85.215.194]:39413 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387414AbfKFAaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Nov 2019 19:30:11 -0500
Received: by mail-pg1-f194.google.com with SMTP id 29so4532407pgm.6
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2019 16:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wC1fV3XmJiisvf6Wmub25EKlo5Tq9rK55tShjUn1JT0=;
        b=jfzwzkArakv+2H4BiI7PnShrmXYvKyjGhz5dkAGMEfFJ0oHIdHV+dH9FeVwkQZ/N3e
         IjSijEYi3wNSpL6nPpXlTgw3sUkN5qGSgM14CN6r6afhxVqPjhZE+ztJb7XGJSXpzzHE
         YLxvo2fiKlwZHtPwoxvq6eiNnYKj2pOSN6OrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wC1fV3XmJiisvf6Wmub25EKlo5Tq9rK55tShjUn1JT0=;
        b=BDqOn0eBoWBcj5Tzmet+UsHDkdTgXoiluXWsZfdCDQK17ZqQqofKbDRN9q6H5t5brQ
         AyCJsrMDVfn2smGJF0nYm7h47a/1aZj9fex3B+IBay8c/6dsnDwh+CYMnnYwlHheev0k
         +o0+9EGAThOZrjc6bTQcJ5c2vdu7BoS7rwobVmXTYY1qqjhFw0zS/28wSCz3GtGOX6UK
         wI9j60nvo/Hpli4DH5kdZyMcWXgnvmI8YZKG5HWEFCMDyWH5/hfJaPHOa6+P3yNWEzVZ
         mlbbpqOF966TZ6otqL+7lhw8RxiFITmQeVyZnetzIG+mKbwDLLybMWlc2DfMQMF3+R8s
         fNMw==
X-Gm-Message-State: APjAAAVAyuYKOa7kiHvxBXYmnRCXXjh0e1z+4Mn0dnMTFdb8TiwBuZjg
        MAdsXlmIW2nn+mDiZPL6+wF4jQ==
X-Google-Smtp-Source: APXvYqx47hh5YbDuUa3YWMzpsYd8LTO0GxdEdRVR/2Z/sRZoF/LYzFRNgsN5YHICZtVdUUY1kfyW0w==
X-Received: by 2002:a17:90a:989:: with SMTP id 9mr13112pjo.35.1573000210856;
        Tue, 05 Nov 2019 16:30:10 -0800 (PST)
Received: from apsdesk.mtv.corp.google.com ([2620:15c:202:1:e09a:8d06:a338:aafb])
        by smtp.gmail.com with ESMTPSA id k9sm21032835pfk.72.2019.11.05.16.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 16:30:10 -0800 (PST)
From:   Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To:     Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>
Cc:     linux-bluetooth@vger.kernel.org,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 4/4] dt-bindings: net: bluetooth: update broadcom-bluetooth
Date:   Tue,  5 Nov 2019 16:29:23 -0800
Message-Id: <20191106002923.109344-5-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191106002923.109344-1-abhishekpandit@chromium.org>
References: <20191106002923.109344-1-abhishekpandit@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for pcm-parameters.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

---

 Documentation/devicetree/bindings/net/broadcom-bluetooth.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
index c749dc297624..ae60277b5569 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
@@ -29,6 +29,9 @@ Optional properties:
    - "lpo": external low power 32.768 kHz clock
  - vbat-supply: phandle to regulator supply for VBAT
  - vddio-supply: phandle to regulator supply for VDDIO
+ - pcm-parameters: When set, will configure PCM parameters on the device. The
+   contents should be a 10-byte array corresponding to the pcm params (see
+   btbcm.h for more information).
 
 
 Example:
@@ -40,5 +43,6 @@ Example:
        bluetooth {
                compatible = "brcm,bcm43438-bt";
                max-speed = <921600>;
+               pcm-parameters = [1 2 0 1 1 0 0 0 0 0];
        };
 };
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

