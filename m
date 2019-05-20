Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF0A24292
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 23:16:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727015AbfETVQT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 17:16:19 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:36665 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726011AbfETVQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 17:16:19 -0400
Received: by mail-pf1-f193.google.com with SMTP id v80so7846598pfa.3
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 14:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=X11xXTQxYWoosLNPwRWlFnmTEam1kT0o1szWaMkgM9c=;
        b=HHyCrQv6G5aQvUtrHbokaGqaA/73YvYWAPzeYncd6Xx/YJz+fQgr/B6bilk7OIBcjV
         51/buRSX19vrNFecv6DsT46TQ2unVCXeA8Iy50BJNK+YVIzc+bb3SS6ekZprsUaIhTsT
         7upkgRb3XycoDsCp6DRRSlbZbd9dKhSfXUgBEyanuLsMd1CVPBQvGsO1OsEfgKxGTlzI
         XMShRDzXRkMW6zfE6RwzHcLa1/WfLRffKsTZuXS5bfUGhos/eOsBWRh3XQxEybqRk/fi
         oAUa2nQtG4Rk7ZijOf3EfSMu9Pg24vqpDlrOlyxtWzROmEqpmuqLG6sFIQMAwQ44R7HC
         PYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=X11xXTQxYWoosLNPwRWlFnmTEam1kT0o1szWaMkgM9c=;
        b=RSV1XVjslhSmT1zuiitqAwVb++GQB5kSQtAwk8ROUw5EfeY5Ev9zPWR10wvM+bLc+D
         0LfXq/M5yXlyuy0AoSmIiAUIKDyw9zEqSpFtpJr+VRdhS9j84vRsgYUGlCYYcF2s8v+k
         YQbgIsc+hI4vepDFKwYyaqWaqDeonbXlScaUlU++gdTSKTB8GWuc3Fg3CR5Ez35jEHt5
         js5RPkKcb7NW5aHHpSjLDuM3cpBXR9tKTYzmYoIKH6+bF1Fy16KQDMGr2pTPLyh+4rto
         FrpVhgUm4tIahF/htu0ByIwZMzhSsXGFqH1A11su6I4pn/ERE3TslpgS8YQzFxT9btYh
         Z2FA==
X-Gm-Message-State: APjAAAU+tUotkUXH6ch1buTDBJOsytC/kudkQ1Ynr+CwbKMPvwTiNXEf
        hTaKJ+TJAQbrJMXFdupmvVUC0A==
X-Google-Smtp-Source: APXvYqxbwqwmTVULcWbnwfmIPrqu9zdhqXuY6SOKl7pRTLfZmefQFMMzdblKBydMvMK93i419kRUbQ==
X-Received: by 2002:a63:285:: with SMTP id 127mr5571201pgc.200.1558386978322;
        Mon, 20 May 2019 14:16:18 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:e483:1cc0:e2c2:140d])
        by smtp.googlemail.com with ESMTPSA id 79sm34029407pfz.144.2019.05.20.14.16.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 14:16:17 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/8] arm64: dts: meson: g12a: add audio devices
In-Reply-To: <20190514142649.1127-1-jbrunet@baylibre.com>
References: <20190514142649.1127-1-jbrunet@baylibre.com>
Date:   Mon, 20 May 2019 14:16:17 -0700
Message-ID: <7hy3307roe.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> This patchset adds audio related devices to g12a SoC family.
> It adds the clock controller as well as the memory, tdm, spdif
> and pdm interfaces.
>
> At this stage, the HDMI and internal audio DAC are still missing.
>
> Notice the use of the pinconf DT property 'drive-strength-microamp'.
> Support for this property is not yet merged in meson pinctrl driver but
> the DT part as been acked by the DT maintainer [0] so it should be safe
> to use.

Oops, I replied to v1, but I actually queued this v2 series.

Thanks,

Kevin
