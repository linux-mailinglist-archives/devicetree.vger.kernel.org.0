Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81C135F333
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 09:05:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727313AbfGDHFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 03:05:17 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42052 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726698AbfGDHFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 03:05:16 -0400
Received: by mail-lf1-f66.google.com with SMTP id s19so2756533lfb.9
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 00:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2/jhMVFWL9zAP6DASgDxWvKe4pRoCVY+Bzzlbxt4Sws=;
        b=qwDSVwsECgzZhe2WwlG1p8BOPlPHnzsNTaQt1KS8uYPGmdPXJqoI8dUKZa4N9BH/bQ
         O7QOMjn0trVW6NJLJAgx1IQA8mYmF2lT6hZqFMtVdWO5d7EKSxWkwVQeA51/LKFBQFeR
         JfWOVSjVV3Af/VORKOstlu0LPLSn+zx1e+VbFF6GbnJnmvY/KumjMcv+KeAbxHIJFwHg
         47dCJgb1rCk/k6pxP9MR2KHQI7uoBai+qnkxbSrfGXVxvqclUX3PzMMxApCEHCY2xU6N
         vWNlOxTyomJ9DxPxQU4YiQJgFKC/tJkybV4VdVUcFXD85U/wq+refUau9H/AEzpPCUtB
         39AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2/jhMVFWL9zAP6DASgDxWvKe4pRoCVY+Bzzlbxt4Sws=;
        b=nYEq6k8QhBtS4cX5zzXPNtQTdz2HwNO6xWxpgNcPoWaeQyU4KUVhC9ySWriN3KLJxg
         5TMacNupjUMcqQZXsxx6c8kCuD+nARCupD+ftXEIcSeuqo6om2vBPQ3qubX8bYJ4W7EZ
         gZybvESSTNfC89jS1bvH1x3olYoU2Uy1Qcp5xiDNzpqAQp7MqtO1KaCkiFOiTF9WfU3r
         VzSeAi417NDas5dgg81JAhmavp4TjfURo8+rtJbItPyqQfcw0wq9vylwZB8WqNB1zeRf
         atD8IYm3HaX7n4fUCSQTnOEe7P35Y3x4o/C+pDsGqYK3w0E+tkeQbhtb4lkPloCFxVJk
         5Okw==
X-Gm-Message-State: APjAAAVubhPdjXXB40FOMGHi4HX7/e1tww7La1FxuXJ/d6X/PGl2/BOb
        +xjLin/tMY9RrFn0Fok0iOFliaN8FBbJ9vI4TxYoAA==
X-Google-Smtp-Source: APXvYqxQCD23eaeoAJhpEZfOc2Of9fwPsf/stmR5iwxoFFdrgqdv4D53+o/uLeap0VPJozhN950Mm7ck5RTeeImezjQ=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr4161503lfp.61.1562223914898;
 Thu, 04 Jul 2019 00:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190703171924.31801-1-paweldembicki@gmail.com> <20190703171924.31801-2-paweldembicki@gmail.com>
In-Reply-To: <20190703171924.31801-2-paweldembicki@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Jul 2019 09:05:03 +0200
Message-ID: <CACRpkdb5LonYLpbOHj=Oo8Z7XjVUWoO0CuhOokxfSoY_fRinPw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] net: dsa: Change DT bindings for Vitesse VSC73xx switches
To:     Pawel Dembicki <paweldembicki@gmail.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 7:21 PM Pawel Dembicki <paweldembicki@gmail.com> wrote:

> This commit introduce how to use vsc73xx platform driver.
>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

Nice!

> +If Platform driver is used, the device tree node is an platform device so it
> +must reside inside a platform bus device tree node.

I would write something like "when connected to a memory bus, and
used in memory-mapped I/O mode, a platform device is used to represent
the vsc73xx" so it is clear what is going on.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
