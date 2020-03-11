Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 28C21182231
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 20:24:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731003AbgCKTYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 15:24:14 -0400
Received: from mail-il1-f193.google.com ([209.85.166.193]:44597 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730705AbgCKTYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Mar 2020 15:24:14 -0400
Received: by mail-il1-f193.google.com with SMTP id j69so3142854ila.11
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2020 12:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8N/7KqaO2uHDIYZv/eBCikgO0CGFEy0TUrj3C3ZKTKg=;
        b=ARE6qGsmx2gNgSWJCSYU0TNiWLYMwyiRcF6ENWM3CzZ22PibB5K9mK6zqiGKXRuzWy
         KopIQ+9mN/zayHYAau1eIEgQO/CVEKQFu7DTE9CQOd0YytHsopNF7ePGCmgBn4lttdgq
         MMEyPTdXGQ7lKTsi+rgkBT4ejvtJ6j+kWqLpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8N/7KqaO2uHDIYZv/eBCikgO0CGFEy0TUrj3C3ZKTKg=;
        b=bmXTTb/2ihP9jx4n2CX3QIanv7IS+7EXNvqUUIJkvJak/Nok7UYp4XRo6+YJSii4dH
         PVUm4eCR59DUL1Md9Ku9NwX7sNI2IvURr48wMovRnhqVHN/gc+vPXSCN4tJjwlb+nVSJ
         q1kHvH+zVol2P0zV2Q+mbkPxZNYbSQM0a6B+bWW5mV5ofChT26TpUZrxbir1rEgU+SJa
         PruhovC+QwQnIT6SvCiq8kYRcJ8AQhPNOYDfoRBksD0bXViCG2LVFk62SBTYj8nt38Kv
         FXxQImheWr6vJVqmB0yFJDsbc5CrwbLiY1IU32+UU9FqU/wPeSr6axd6Ro7nRbe6L9vg
         BUrg==
X-Gm-Message-State: ANhLgQ0vteJTqAkSzx5wtW6mOtVzczrtwXhvLF7nmBBkLg22RW2hGP2S
        WpFkQnqRt9beDdiBVa42evJlZF4InGC4lQwRSmDxnA==
X-Google-Smtp-Source: ADFU+vu73cL6OluZ5si943eP+eQIpQ8nGNRk/kAu29sLxMb2Kjpld2YYVtSCdcWAgwpjVWtWsQ9Tjb7Cnb1d1i9YbQA=
X-Received: by 2002:a92:52:: with SMTP id 79mr4698842ila.41.1583954653040;
 Wed, 11 Mar 2020 12:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200214062637.216209-1-evanbenn@chromium.org>
 <20200214172512.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
 <20200219223046.GA16537@bogus> <CAODwPW8JspiUtyU4CC95w9rbNRyUF-Aeb9TuPm1PzmP6u=y1EA@mail.gmail.com>
 <20200219232005.GA9737@roeck-us.net> <CAKz_xw2hvHL=a4s37dmuCTWDbxefQFR3rfcaNiWYJY4T+jqabA@mail.gmail.com>
 <e42320b8-266f-0b0e-b20b-b72228510e81@amlogic.com> <CAODwPW94KX46PzSrf_uuEFPKudXor=26d=g3Qta5veRfxmMDUA@mail.gmail.com>
 <1326f594-3cfd-c03d-4f2c-50eeb75724b2@amlogic.com> <CAODwPW8WwntWb_=dg2J3AMy-gHw2QvNj_g98SufN13+AuGnUSg@mail.gmail.com>
 <b4ba821a-eef6-4aea-1eba-897171b92c41@amlogic.com> <CAKz_xw2T1UceCwFZnBxg6WVp2D4+MziyvQPdU6tEnR_BdLh-PQ@mail.gmail.com>
 <ad28aa47-0490-937f-898f-0e4695ef6ec6@amlogic.com>
In-Reply-To: <ad28aa47-0490-937f-898f-0e4695ef6ec6@amlogic.com>
From:   Julius Werner <jwerner@chromium.org>
Date:   Wed, 11 Mar 2020 12:24:01 -0700
Message-ID: <CAODwPW9oxx33hkO3kv2_G8YyLWvigVHkfJU7xUHLVgB7QU2i3Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: Add arm,smc-wdt watchdog
 arm,smc-wdt compatible
To:     Xingyu Chen <xingyu.chen@amlogic.com>
Cc:     Evan Benn <evanbenn@chromium.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
        Jianxin Pan <jianxin.pan@amlogic.com>,
        Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Yonghui Yu <yonghui.yu@amlogic.com>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Julius Werner <jwerner@chromium.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        "David S. Miller" <davem@davemloft.net>,
        Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> - *_INIT and *GETTIMEOUT.      Although your driver does not need them, could you take them as options in your driver ?

The driver already has SMCWD_INFO which is used during probe to
retrieve the minimum and maximum timeout values supported by the
hardware at probe time. Maybe it would make sense to rename that to
INIT (which would still return those values, but can also do whatever
initialization needs to be done in TF)? GETTIMELEFT I agree we can
implement optionally, and other platforms would just return a
PSCI_RET_NOT_SUPPORTED for that.

> - *_RESETNOW.      It is used to reset the system right now, similar to your SOFT RESET. could you reserve an operation index in ATF ?

Just curious, why do you need this? Shouldn't you use the PSCI
standard SYSTEM_RESET SMC for that? (If you want to control exactly
how the platform is reset, you could also use SYSTEM_RESET2 with a
vendor-defined reset_type.)
