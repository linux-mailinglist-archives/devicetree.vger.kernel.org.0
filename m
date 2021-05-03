Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A6C0371FF0
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 20:52:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbhECSxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 14:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbhECSxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 14:53:36 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32914C06174A
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 11:52:43 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n84so3944380wma.0
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 11:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=82HDXXG46Pyy1GhCwdYUJ5WCmL9ABh3Q4FDg8vtMbgU=;
        b=P2kULaZjG8+ReQlLuLNzUohHBVbqvoYQUTHmhAZ2ZJbUdaoheXKqMpy+plTvx0edQL
         Wum4dgUq/ymQNvXoCdZ9T3GuDDpr0DQRrz7NTVC+nXxqHvLqz7RQF08rn8FiQyEXH0kb
         edmn9JKZFVyKSqDts/cTWf5iq/2HDnsRIqhDtchEsYnnEH6Hex6H5e443OWd5/4c6Dlu
         dzlD/z7y4OfZQ+X3DIUCZ+GPQcQey2I07PejXmf8fNFPiIyk1sL3xAxiysU+bq662LO6
         xJ2g3SOXJDdV6OmEhYxgvgBOHLFXt1tcokVYW3qI2lK6BTOk0sMbLBxIrasJfDuDu+1J
         /qdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=82HDXXG46Pyy1GhCwdYUJ5WCmL9ABh3Q4FDg8vtMbgU=;
        b=NVrA6/fRy+TTgigCRB01lyf4GTIPiXQtECrw6+Zxsg6ltLm2vqWWXfGLrLRxCMkbGj
         YauPDN9+0a91y/N6jWYCf2QWXRlZDsmgSeBzb2Ls0JCTUbvcsT/DHxH9ObFdiT+xPRjx
         Zdpg2OQqnvHu3oVfz7P/6WbGzgdv7yyZSNwE2GIt8XnbuAYwGd3me3Da/RJwKUy8VUJI
         iwKS4WhpZeT0z7Myvj9byMhAffcKskMdpz4KdMtZq9WVoPZDTYJLDTa1y1jD52g1XY4A
         K2hmRo/EIiPKrKzF2xbq/K+c/3gI+iJzV+fqLTCTdP2JGzu/8/MhLyWco0lWAhdDt2K2
         ArwA==
X-Gm-Message-State: AOAM533KV8wLAA+mTw4zHkjKlfMWBfsZj6DVrMrTojHm4+KVh1BWu/4v
        CQbh4dGbiOSsnXxP04vsNIvA3A==
X-Google-Smtp-Source: ABdhPJx+/FD+vQb71g+hkJ2DiRJnMCIxM5J6rNPMIeuaRRwtKuOzARhkNPbNrzczU+8vkNPFkAR5SQ==
X-Received: by 2002:a1c:3:: with SMTP id 3mr9895wma.32.1620067961929;
        Mon, 03 May 2021 11:52:41 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i14sm711228wmq.1.2021.05.03.11.52.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 11:52:41 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     bhelgaas@google.com, linus.walleij@linaro.org, robh+dt@kernel.org,
        ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 2/2] ARM: dts: gemini: add device_type on pci
Date:   Mon,  3 May 2021 18:52:28 +0000
Message-Id: <20210503185228.1518131-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210503185228.1518131-1-clabbe@baylibre.com>
References: <20210503185228.1518131-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes DT warning on pci node by adding the missing device_type.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/gemini.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/gemini.dtsi b/arch/arm/boot/dts/gemini.dtsi
index 1833b6590d76..31db0be7ec67 100644
--- a/arch/arm/boot/dts/gemini.dtsi
+++ b/arch/arm/boot/dts/gemini.dtsi
@@ -287,6 +287,7 @@ pci@50000000 {
 			clock-names = "PCLK", "PCICLK";
 			pinctrl-names = "default";
 			pinctrl-0 = <&pci_default_pins>;
+			device_type = "pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			#interrupt-cells = <1>;
-- 
2.26.3

