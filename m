Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A894570323
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 17:09:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726393AbfGVPJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 11:09:00 -0400
Received: from mail.kernel.org ([198.145.29.99]:42534 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726388AbfGVPI7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 11:08:59 -0400
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CFE1621BE6
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 15:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563808138;
        bh=UQWsGLdVRsvcxhCicQBhe6YNMoBGdFuYxN4YWFD+D30=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=sq5JWRV8CrAc7R2Ja6iTSMJ3Bou1MjIoCmR+9poUxR+nlFakbaHzy75cUxXucbPiz
         23lYAF+zHZfetHUNlReWr56nE8aE6LHIkkVqfNQLVfrZIlWtvi0vPl+e/WYpmd6cf8
         f/Zk22UidrvKbCPSeM8ySjunESR7WBTsx87T8Gy0=
Received: by mail-qk1-f169.google.com with SMTP id t8so28863290qkt.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 08:08:58 -0700 (PDT)
X-Gm-Message-State: APjAAAXDoYfFOkmho1Uj9Sk2s1OABg0P4aFWNjCdFYAevz9DTUU2utq+
        gavCWllLtIc+zrzImNeitsxTXgbknF4+p6alMg==
X-Google-Smtp-Source: APXvYqwtCD5goKriRZ3YbphoGZCOYxJ56Kr0AKrjbE+K6u4y5K4Fa14TSVMPIafIZixsuvMNIJxnv6CK8cAOZkjIlpM=
X-Received: by 2002:a37:6944:: with SMTP id e65mr43415102qkc.119.1563808138073;
 Mon, 22 Jul 2019 08:08:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190722081229.22422-1-maxime.ripard@bootlin.com> <20190722081229.22422-4-maxime.ripard@bootlin.com>
In-Reply-To: <20190722081229.22422-4-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Jul 2019 09:08:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJtGWthjrSEpqVUypzPOHxRZGhtWi3PHCtJQS61BoAw9w@mail.gmail.com>
Message-ID: <CAL_JsqJtGWthjrSEpqVUypzPOHxRZGhtWi3PHCtJQS61BoAw9w@mail.gmail.com>
Subject: Re: [PATCH 04/11] dt-bindings: timer: Convert Allwinner A13 HSTimer
 to a schema
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
> The newer Allwinner SoCs have a High Speed Timer supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../timer/allwinner,sun5i-a13-hstimer.txt     | 26 ------
>  .../timer/allwinner,sun5i-a13-hstimer.yaml    | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
