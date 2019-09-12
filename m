Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50F26B0B2B
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 11:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730516AbfILJT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 05:19:58 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44816 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730522AbfILJT4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Sep 2019 05:19:56 -0400
Received: by mail-lj1-f196.google.com with SMTP id u14so22854610ljj.11
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2019 02:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XH1GfjgGx1T+lc8m5zbu9NzNgidrGg/qrkIcskPP3lg=;
        b=T7ayBP5Vg3v9cuGFY1vpXWdl1so9yzOWC4+NdMgT1Yyof6I60HEplDj+h14Dompc/R
         cYcNBYxpxhSi8OrjNPzMjqO2/zOmOWCpTkUp30qeG7/7dQkMPGzH1xjs/26WLVuazOxo
         IPNhsUEXA/4UnYjEBblr59PoK7VzRkxl2A4SIsOs2+aZESpbonNU+BiRQkbb9elPif7e
         +wtdeAnl8SbqPqIh9lSCPs0olpnwAFmcIFXbNJrBTLfNlxW9mX4xFL9K8TRIhT69omCG
         6NEN9Qvgwun9a6PEoEx7ohPPmxYN+6xvqyTH36HUprKEwgvCh+zgHk7KWP3+H/Ueub+o
         Bfdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XH1GfjgGx1T+lc8m5zbu9NzNgidrGg/qrkIcskPP3lg=;
        b=JHGrZyt5VG1JKDqmhsx/zcsQKc3rotGou9rABWx/grv4Blx+ZKW0hklxgZO9kf0+jq
         WQ6PyrDwmSAP+C6QbsQ63Ne06bV0DMya1wGiLCUbmNiCWdByyx05omncRG7muVw5RjJs
         4iS4pouCqBIOiR2E58J/sDvkGw5SAKh4FXW0AYSQcrw/rNhdvClcB8OOQEQw36P5vjVt
         5+DMyknzFMbhaj+BftYfHYaY1dqUyCABph1gn3pvMsi8mWc2VVNhhT8hG9xlXF3mCPRX
         rfnLpWxZXUCWU0fVVQDGXDp03gR5mlkE17q2R3WiIrcIP55ZHxTl6noF4BUdi5uEZDKj
         3h8A==
X-Gm-Message-State: APjAAAWP+elAJS/tvPFRF2PNYuGbkaNPj1LJPhzb2XflXLz+L4GPQURh
        QD0OkVkPcVX99Xu53dXP7qEarI7hmlwbbbGv6Xnz+Q==
X-Google-Smtp-Source: APXvYqxhJXi/F3ipLiFiLbE8vRwdOajqhxR1cdEYstacX/ZQq77w/50Qgi/Gz2Y6qQIGp2R8NpUOibqCti14EmnW6H8=
X-Received: by 2002:a2e:7d15:: with SMTP id y21mr18815651ljc.28.1568279993947;
 Thu, 12 Sep 2019 02:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190910152855.111588-1-paul.kocialkowski@bootlin.com> <20190910152855.111588-2-paul.kocialkowski@bootlin.com>
In-Reply-To: <20190910152855.111588-2-paul.kocialkowski@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Sep 2019 10:19:42 +0100
Message-ID: <CACRpkdYrTCnrW6-28+RhdMZ4cB5VcqG6T-5aABvvEgiZ3iri2Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: gpio: Add binding document for xylon logicvc-gpio
To:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 10, 2019 at 4:29 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:

> The Xylon LogiCVC display controller exports some GPIOs, which are
> exposed as a dedicated driver.
>
> This introduces the associated device-tree bindings documentation.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
(...)
> +The controller exposes GPIOs from the display and power control registers,
> +which are mapped by the driver as follows:
> +- GPIO[4:0] (display control) mapped to index 0-4
> +- EN_BLIGHT (power control) mapped to index 5
> +- EN_VDD (power control) mapped to index 6
> +- EN_VEE (power control) mapped to index 7
> +- V_EN (power control) mapped to index 8

This should be reflected in the gpio-line-names in the example
and in your device trees.

Yours,
Linus Walleij
