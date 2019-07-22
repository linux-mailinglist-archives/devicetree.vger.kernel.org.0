Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DCA4270318
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 17:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726619AbfGVPGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 11:06:14 -0400
Received: from mail.kernel.org ([198.145.29.99]:41232 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726516AbfGVPGN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 11:06:13 -0400
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A909921993
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 15:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563807972;
        bh=DslRK1L9TpwyVf4cAbzBfJh4gOSkPvgl9sgTHHuWCY0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=YsNPT2ub03cAe+/t4Hkw/FwffWy3FObHJyVkPNaRYSXCpzM+lLsJKaiUP6uqqbX9x
         z2d4+LmE4kqVOObCQZ4m5wtwx++3a8gTP/voOYwb7zHSFUYgtLYfQq3upY8aMQXq25
         fReaMSiPeWRZzmCAXZAZedttI+wQUnsGKwONPQXw=
Received: by mail-qk1-f177.google.com with SMTP id v22so28828862qkj.8
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 08:06:12 -0700 (PDT)
X-Gm-Message-State: APjAAAWEeeCSw9tCdJhg0QyfiIEYq3fi4lh5ge7YyPDtes/u4nvBvTmY
        n/T4nnM31DcqLw3zv9iabsTQa4WFGXRxu4vAzw==
X-Google-Smtp-Source: APXvYqymxs9AMSxKQ96kOmELJ2aKFezuLIxE38h9p+u2+IOUx4rgMIGin70TUmK0CUxwNQLOMx02aaXq7pAWqZx7voE=
X-Received: by 2002:a37:a48e:: with SMTP id n136mr48165993qke.223.1563807971861;
 Mon, 22 Jul 2019 08:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190722081229.22422-1-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Jul 2019 09:05:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJyDS0eaQeUWRx3OGJfQ7+QDRwEC=fTM1MzZOOEO0h3SQ@mail.gmail.com>
Message-ID: <CAL_JsqJyDS0eaQeUWRx3OGJfQ7+QDRwEC=fTM1MzZOOEO0h3SQ@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: timer: Convert Allwinner A10 Timer to
 a schema
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 2:12 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The older Allwinner SoCs have a Timer supported in Linux, with a matching
> Device Tree binding.
>
> While the original binding only mentions one interrupt, the timer actually
> has 6 of them.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../timer/allwinner,sun4i-a10-timer.yaml      | 76 +++++++++++++++++++
>  .../bindings/timer/allwinner,sun4i-timer.txt  | 19 -----
>  2 files changed, 76 insertions(+), 19 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-a10-timer.yaml
>  delete mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun4i-timer.txt

Reviewed-by: Rob Herring <robh@kernel.org>
