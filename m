Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D84A2D344B
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 21:51:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731450AbgLHUf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 15:35:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726758AbgLHUf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 15:35:57 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69B70C0613CF
        for <devicetree@vger.kernel.org>; Tue,  8 Dec 2020 12:35:17 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id f9so14418212pfc.11
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 12:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=cOsptZpbaXZdyHeq1KoGUWDMF3slisUiT0yak+RYvVg=;
        b=V1HJf+WKm8xtLqwvNnhsLkSQVipGbGBajM1F2ZUQcrOTQ2iu39pW4KdaTgszCgwjnq
         tGzWVJdaHcBvZzl5aaqYttQ5TUOZCZZeqIs09s44Q9oB+hsnPkOAZotzWpI8i00QVucJ
         ZkqvlVBVZSwtlbZua/brIaYJZ/+yexmmd5LKCv3G/Ku5t2DBPxqLPlTYem2pm7/BQHwc
         Y2739VDQ3AMdHUYiNTI4cIVwWH1a3RA/iMrBvYTFlKq7M7ehhFBWisKxwf1Ty4u4bQp6
         Q+maaFLNMOJu0B6hXcWTKH/5A8HPZ32RGxpfIbbSJvjpSfD8VZYPzolUFR9zjcbs0rIx
         4beQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cOsptZpbaXZdyHeq1KoGUWDMF3slisUiT0yak+RYvVg=;
        b=cn+5M9rl5c7NsRTw41PzYKUcKkeyFNRtYs+dYxrvBYmUkhwrK5vKSOuGLLacB4WZvH
         ijxMVjMJ8+B5MpPiB8/TSDsjFzedNVRrK/3k3ifoFKya+d5UY2GiL35kuivoNhdXs29/
         f0h8+am9wXgpgCrrBV4LU/GRiMrK0d5D2P/qJpUB4QXovwQ+Ef2ALwZRBwixrGV9fuvp
         ez9Cs1xcmcapL+978bCdvShgWH3sf/R7xTq834OY35DZCe3lctFu+1ERUSxQp/2ldgOE
         76C8JW8ZAmqAYwrMTQdMFiG+DgQYfjARTylJumsDcgHpesp408u/7e6E80fpIh2o+9Sn
         SclQ==
X-Gm-Message-State: AOAM531Q6mI/R/NAiIqD1rxFBF6LKsVweA0BdFvwd+iwPXQIyeGOmYWb
        MLnGwzUWPlHoP2z+d33gJNbB6XjdfJlzGGtq
X-Google-Smtp-Source: ABdhPJxyhjHPDKKo2JqsB/7HDITrAO23pyfmgSy+gat1GDFvuRxWeDGk6joJ5fCWRlKZVFhCYSjLzQ==
X-Received: by 2002:a62:7693:0:b029:19d:92fb:4ec1 with SMTP id r141-20020a6276930000b029019d92fb4ec1mr21819903pfc.4.1607455203885;
        Tue, 08 Dec 2020 11:20:03 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id i4sm16499994pgg.67.2020.12.08.11.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 11:20:03 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: add i2c3/rtc nodes and vrtc alias to GT-King/GT-King-Pro
Date:   Tue,  8 Dec 2020 11:20:02 -0800
Message-Id: <160745519765.13209.7401462503756984105.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201201062135.18241-1-christianshewitt@gmail.com>
References: <20201201062135.18241-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Dec 2020 06:21:35 +0000, Christian Hewitt wrote:
> The GT-King and GT-King-Pro boxes have an RTC chip and power cell, so enable it.
> 
> GTKING:~ # dmesg | grep rtc
> [    5.237245] meson-vrtc ff8000a8.rtc: registered as rtc1
> [    5.261869] rtc-hym8563 0-0051: registered as rtc0
> [    5.265016] rtc-hym8563 0-0051: setting system clock to 2020-11-30T09:16:54 UTC (1606727814)

Applied, thanks!

[1/1] arm64: dts: meson: add i2c3/rtc nodes and vrtc alias to GT-King/GT-King-Pro
      commit: 7704b100719cf0fead976a1bc839c60ee552d045

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
