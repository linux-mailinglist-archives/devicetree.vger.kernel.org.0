Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91F6D2A8743
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 20:32:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731901AbgKETcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 14:32:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727376AbgKETcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 14:32:05 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55028C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 11:32:04 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id e21so2009796pgr.11
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 11:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=0G0IXhBucv2N2cTx5Rb2GRJ7etitMG0FuNpN+t25+nc=;
        b=PjLYFotW85Hzzn/mygYTIri8c1tkd/uOrFnfzqsqSVUuWoe3HDI1iYRWT0eOtkDQ+K
         cRblOP2VwhS4JfrXpjcECI4IHFxsQOq5aMJ7hy+IE8Qk+ekDhHGDumhfpkweNhFoi1gN
         cTPs5ZEJt+kKRY1pcEi1TLwj+/dww9T//9bri1uG+Msd2x1VB1ZuZ0RiJftXrbIQyT3t
         MP+40b1yOHArf+N6wTT7JIsMAjOrPrKZDr0+HFf7IqVeHhFJAH8SqPMG4YggeGy6Fefq
         wMPXtBzbDf6Q6wuZoCdekN/8h2r/5eSrm4bev26zT3WPcngpnfD1o0T2sDyqTnVX52ZA
         hrvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0G0IXhBucv2N2cTx5Rb2GRJ7etitMG0FuNpN+t25+nc=;
        b=FvvqLBnNdOLFFasj6mGbexbqo/e3fR8dXgzpHahrr4BlCyEblWO9XE+m0Fvue/52dJ
         ZcXK39FprnmQbHmYWRTq2VN0M7XU4osBg/dHR3rQ8T5bp2nV+4aX5O2pBe/tStla+suD
         T7H2lywGl4kDBCDWlo2UuBlQenEKl8ZbDCwskjPpcrsZxHDBhJHXlRE3BeWtUeRlYA3/
         mxXIqdiiye7Msmk/Ub9n3F0JBWTVa5ZvONSwhxhKnxKzGr4l+TG6f7NEigQTiJc4TKGt
         6xBBLROjj45JiHU/iHzArQWdmIiFPpGud/Z7PMrTJlpmmuheKCyhYgBeZzf0qhtvDlt5
         d9Qg==
X-Gm-Message-State: AOAM533snzoBNHrZko8ORmXQBXr2aEmrtu+AyTtktzU0CumU8R1I/3Mi
        oGWnjCjmzhxgswReeuKml838/Q==
X-Google-Smtp-Source: ABdhPJwLk25IEr/KbTgbdMV/O/td4Dl2rI/TQyX7dBwcjQ+1lsF952T2of4J8FxwGc57oT+u+sGeeA==
X-Received: by 2002:a17:90a:7303:: with SMTP id m3mr4167317pjk.190.1604604723708;
        Thu, 05 Nov 2020 11:32:03 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id z17sm3184518pga.85.2020.11.05.11.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 11:32:03 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: add watchdog to g12-common dtsi
Date:   Thu,  5 Nov 2020 11:32:01 -0800
Message-Id: <160460471585.10458.582735384564499478.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201101021012.24519-1-christianshewitt@gmail.com>
References: <20201101021012.24519-1-christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 1 Nov 2020 02:10:12 +0000, Christian Hewitt wrote:
> G12 vendor kernels show the watchdog on the same address as AXG
> so add the node to meson-g12-common.dtsi. GX boards inherit the
> same from meson-gx.dtsi.
> 
> v2 fix typo in node name (s/wtd/wdt)

Applied, thanks!

[1/1] arm64: dts: meson: add watchdog to g12-common dtsi
      commit: 7bd5175918eb4b294c0979c75056f20fd90a50bf

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
