Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F0689F3C32
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 00:28:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728116AbfKGX1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Nov 2019 18:27:53 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:41558 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728055AbfKGX1x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Nov 2019 18:27:53 -0500
Received: by mail-pg1-f193.google.com with SMTP id h4so2914936pgv.8
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2019 15:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OF95Y6TnW6OieP+Y9WS1apMoBYnzfQ+jt+7thUzBTXs=;
        b=m6JzZ/SDEyFFkN+KlmGjh4bR5LvH8brNTeqi2Sc0ce8xo/owX75imKkE7ZsukbVnWb
         innAzSygqbi+jiHw30euk5m0pC06My3SQhghN2wkg1MprzmDFf77tLxx0Jm0SuyYzDop
         tCZkXf4c5rSB0321P58rP+jHEhXGXMU9AWKDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OF95Y6TnW6OieP+Y9WS1apMoBYnzfQ+jt+7thUzBTXs=;
        b=DUWxmrpluZ+ITs76ruvCLLlqYEfrbOJ9v5Lx4vyZeWDsUy2zjY0B5LYpEJhTvc8nld
         kC+iNktkyZIeg9gOm3B6XZB3yI5M/CsguySn7xp1h4cUsnMThe/1l3hZBCeQhPdDj03S
         ScSHMjKwOwmycAK3K+pYl/wf3KvAwPliXi+wEhQlvM3DATokfSeD+yxoLxrTwMvbyZQ8
         jMR5Fcpd2esXVQuI3jNjB3yjAUvhp4VitlOKP+vi63fnEq8qiOzUBQMHkkNRETHcoNax
         h6FyxrS6/DlXY/Vc2ebgw1k/1DeKLQaGMcM1FVQQ5fs+lhXqQOka6v0QUCaDTcPYQWBn
         gDkg==
X-Gm-Message-State: APjAAAXHNurm17CqSu5S1hY+8CvsshN31VtSE2WUXlsuxAfE7sNNLFwl
        DdNpQISMP/+ZQxkCIchyZNxNLA==
X-Google-Smtp-Source: APXvYqxClUbNDXoPpkdCR/2DXEq4YGcc1rXfu4xSI1F7JMdZMZzYUOA+w/kkFJ5ujTewVVb/x0Lexw==
X-Received: by 2002:a63:6f47:: with SMTP id k68mr7668935pgc.92.1573169272633;
        Thu, 07 Nov 2019 15:27:52 -0800 (PST)
Received: from apsdesk.mtv.corp.google.com ([2620:15c:202:1:e09a:8d06:a338:aafb])
        by smtp.gmail.com with ESMTPSA id h3sm2857579pji.16.2019.11.07.15.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 15:27:52 -0800 (PST)
From:   Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To:     Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-bluetooth@vger.kernel.org, dianders@chromium.org,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, Ondrej Jirman <megous@megous.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 4/4] dt-bindings: net: broadcom-bluetooth: Add pcm config
Date:   Thu,  7 Nov 2019 15:27:12 -0800
Message-Id: <20191107232713.48577-5-abhishekpandit@chromium.org>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191107232713.48577-1-abhishekpandit@chromium.org>
References: <20191107232713.48577-1-abhishekpandit@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for pcm parameters.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>

---

Changes in v2:
- Use match data to disallow baudrate setting
- Parse pcm parameters by name instead of as a byte string
- Fix prefix for dt-bindings commit

 .../devicetree/bindings/net/broadcom-bluetooth.txt    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
index c749dc297624..b5de8a6a3980 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
@@ -29,6 +29,11 @@ Optional properties:
    - "lpo": external low power 32.768 kHz clock
  - vbat-supply: phandle to regulator supply for VBAT
  - vddio-supply: phandle to regulator supply for VDDIO
+ - brcm,sco-routing: 0-3 (PCM, Transport, Codec, I2S)
+ - brcm,pcm-interface-rate: 0-4 (128KBps, 256KBps, 512KBps, 1024KBps, 2048KBps)
+ - brcm,pcm-frame-type: 0-1 (short, long)
+ - brcm,pcm-sync-mode: 0-1 (slave, master)
+ - brcm,pcm-clock-mode: 0-1 (slave, master)
 
 
 Example:
@@ -40,5 +45,11 @@ Example:
        bluetooth {
                compatible = "brcm,bcm43438-bt";
                max-speed = <921600>;
+
+               brcm,sco-routing = [01];
+               brcm,pcm-interface-rate = [02];
+               brcm,pcm-frame-type = [00];
+               brcm,pcm-sync-mode = [01];
+               brcm,pcm-clock-mode = [01];
        };
 };
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

