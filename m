Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B34073031D0
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 03:30:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728473AbhAYSnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 13:43:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727783AbhAYSnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 13:43:04 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56701C061574
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:42:24 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id d4so8217909plh.5
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=tDtRKtyqGRuQ4lrMOTvgY4qxd3EwftJYAalx5ZLkrgw=;
        b=LWMBnxG8unZRG+UvzmG3L24ysojyWa1nwbyH6d5X2gSMoOdo7jRTlPU9f63gUJVVow
         INK6pVue3wFGiqqPvUNILYVDMR1xmvqhJX0AyXN6uwgZlOL6FTpz86FDR9+Z3+/tLnJ8
         STsOPy1cidOwveW/an+09+T76NYMHGv15PXKQgTE8u+q3TKLY4T6POinski4DpBUMDdf
         9EJIZMdS+6DN/fEYdNjzicoxpoxhbV75rwCjJGEo1alCfD3zi5ZGNm2117lnzZYzqO5P
         c6ym1AQyOqX00ZL8F5/Vo8B7pu8VG+oHalQuNPCORjmmvO4Y7m2WCj8fUwENocMamb55
         mEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tDtRKtyqGRuQ4lrMOTvgY4qxd3EwftJYAalx5ZLkrgw=;
        b=KBHx39SE3Q0T3sMSuP0D+I0CHwNA0j038leNVe6J0qra7N0PkWOMmQldNljuEmF4FG
         BkXJ35oi2fIkzyBymaiblNEsp+XI9CYU5ycCoOXWYUHEodGdE3kM0wHp+l5lO+/beHMz
         JFqu1ad+k4VxH3kwZXS9VJdAKG6MtnFtKzhI2lil6Pt7ozbuxCka+FKSRKZCndrNNsgF
         7eBdaLd7iCqyTKhS9Sb41+9TjlI7Osgpkjf9OvbER55ulwr7+1ESJyqMxrpDp4JoPTD5
         SHb0pYQRKMGea/ULBe787/xusFaSvy0+0VQaMOC5ZT4YbEyP3sqfZBxl33jXZt7/vRYl
         LUuA==
X-Gm-Message-State: AOAM533bO0mXdVCCaAdf0wUoWLc27+5pkvMCXP/FgmQrnWerO+OBhgt4
        pWBwOMFI290ce4k+nu0WYSjSFg==
X-Google-Smtp-Source: ABdhPJwnuhy5CNoBbZXzCSs0DAq+D4xeeHPD21j5t4GTJrqcAa4QeqDmuq0iTBqWnk9X5ANO56dv5w==
X-Received: by 2002:a17:90a:4088:: with SMTP id l8mr1607930pjg.106.1611600143332;
        Mon, 25 Jan 2021 10:42:23 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id bj18sm88198pjb.40.2021.01.25.10.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 10:42:22 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: meson: add i2c3/rtc nodes and rtc aliases to ODROID-N2 dtsi
Date:   Mon, 25 Jan 2021 10:42:18 -0800
Message-Id: <161160013614.17631.15998919281170079054.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111135831.2218-1-christianshewitt@gmail.com>
References: <20210111135831.2218-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Jan 2021 13:58:31 +0000, Christian Hewitt wrote:
> Enable the onboard pcf8563 rtc hardware on ODROID N2/N2+ boards via the
> common dtsi. Also add aliases to ensure vrtc does not claim /dev/rtc0.

Applied, thanks!

[1/1] arm64: dts: meson: add i2c3/rtc nodes and rtc aliases to ODROID-N2 dtsi
      commit: 930f424bd8cec154466d7929c10f1ad0525f605f

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
