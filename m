Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEBC649AB7D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 06:16:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237395AbiAYFFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 00:05:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1326895AbiAYECc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 23:02:32 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C3A0C061397
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 16:42:49 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id m6so56736257ybc.9
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 16:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5TWHeo5S3x3uQq7PP+PWbYGK3Pfl3+qB4a6zXg+oPyI=;
        b=LgyhohuKY5vnyJwpRlUnpdclyAmZqAzcEIho3G7lpJ/kD7cu9gY2OUvIAhE8FdJOij
         OGbD+FwLy3h979+o5n9ohQSJQwJqa6yY7pdqZz3PhM5O030Zi6/ZskNjcOlnUkJHqmWx
         l50QPi8BjjY1cd69XUspegwez/8ezllCQnm5DCRqoN6hmOBZ0tPhF1g4NnPutmcJ107E
         BRirh09plnC5boeg8muT9bprf2lj8bbvsFJmwwb2rHjnWIVaDAtUvRET1QeYKdeeq69u
         OiYHZcrmAMFyzNWs7PLX4yqXYxFF53ZLRzMAKCOu+w29sqxwqXfilSIyDxvQXTz7Mrm7
         HF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5TWHeo5S3x3uQq7PP+PWbYGK3Pfl3+qB4a6zXg+oPyI=;
        b=5ugXzwUz5PLEVB2rhN0kgL/YF9zOZeKEOu75Kx4L9fmzsB/xy4mvWHQjsSgUI3dnd5
         nW12sKzlJFGPB6MaPW1fLk+A3KgYCArsdC0tPUR7cp6LIN9CHc1ysuvtxNsobXUVRXaU
         5YDjpLf9m2V3pOBvyypcAU3dX9wJKRKoUKdwoKGw72zvPKaE0diwudG8zKeod+E/5HZ/
         NDYY+Je9oD2Z/oreszsHZI5BNTzNQ2wS1N+j25zyPgw+JGOU6HMUJBas1COl9e11DEK0
         awr+LUQsPYbqnUfUIay/zrQBUZWJCgGIH+C+yYdG2UgQPXqhqyWQQppFt7FDOAzrF8Td
         JwtA==
X-Gm-Message-State: AOAM531ZjIbDWwvd4AIZPuj+TrezQ7Jeh4u/xjs5nWYhyevpKpDcRaP4
        pUhYN1unC7F/WKKBKig+oiAnyiWd+bFyoIgzC0TOGmhoeDYNbA==
X-Google-Smtp-Source: ABdhPJzmzSK8xkM8cl8JnG27MvlvPu4L4+p5aEmJqa5/cog3dgG5Flr1HdPp1oe+Qu7A5N37ok8ZLiJrHP8+ITk8fg4=
X-Received: by 2002:a25:c3c4:: with SMTP id t187mr24563542ybf.634.1643071368923;
 Mon, 24 Jan 2022 16:42:48 -0800 (PST)
MIME-Version: 1.0
References: <20220124102243.14912-1-zajec5@gmail.com>
In-Reply-To: <20220124102243.14912-1-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jan 2022 01:42:37 +0100
Message-ID: <CACRpkdYchbMnK8NNbZbGSGauCwOfXMF+b_9r=71isd74W=p+WQ@mail.gmail.com>
Subject: Re: [PATCH V4 1/2] dt-bindings: pinctrl: Add binding for BCM4908 pinctrl
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 24, 2022 at 11:22 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>=
 wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> It's hardware block that is part of every SoC from BCM4908 family.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> V4: Rebased on top of the latest for-next which includes 5.17-rc1 now

Patch applied!

Yours,
Linus Walleij
