Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AFBC42CEFB
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 01:10:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbhJMXM2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 19:12:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbhJMXM2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 19:12:28 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C0E2C061570
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 16:10:24 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id n8so18588075lfk.6
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 16:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7u46+ADThD6wTYw98HxB4YGpAE/UnEg06qqVREyT9cY=;
        b=D6WiObz+3nLXzSqSZovOzTjqqK8j0YG0ltC5cMhl/JvhDiqU2O0BC5BRHLcD57EmUJ
         bJnEkRWxd8WPBmdv6Unhbqe+Pxp9Advj+pkU2FzgnrIKQ/1nV6V92RPsU3Oj+4uzNAWG
         qMTZlt395Qwz0MZSGUcQxHit9sR346OqklmU2nlRMRrLmSky10t55EMVFPQ7UX7fQpHD
         7NIiUI43DtM8kj/5Jf8oYhLaR+6RKJUI4nXC1Bgo3OJhUUo25AZz+8mZlaz5B+/h0ian
         WOXbJhX+Fvt5GwYWAb+Pj5R7CndkeYzwS8qAKfHzwSctYN7A7BBJrOoYGgCcZvbLm21l
         VTCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7u46+ADThD6wTYw98HxB4YGpAE/UnEg06qqVREyT9cY=;
        b=PNaZd4iS7E+9QM3kvuCqHCZsYxMGniNTnDKzQG7hQHGiw81/a65qRI+yIghyvrkVB4
         Jy2odFcLG2NMaa7BPzmr/+otWpzR+Hd3PnuLfXk7AprirrbEeVBpH/nWH1TcfNPg3LXl
         qJEG08kNJQ3We/m+fI0bUNYKWMBX++PG509ZIlHarCBEPfzIdraWvuiHsfQ+2eVzAoin
         KKW8c080pR55bTYgTBv5I1sOHHfWShjnBKOkZajrD+qXPhAU0jHs4opqSuoCYs/K8VCe
         QUnRw3cXFarJuHzSw7HnKOhcuvQNteEkNn+3VzxOjt0Wxy6v3UuosrWm44jXam6UHdsF
         FgAw==
X-Gm-Message-State: AOAM533rhx0qOQE/FnzPLSdSm7UlmCZ7A7+RevAeKEJOcYR/Gm2mdBzu
        OfnP6PaoKaG9cLcjpcDCGa9M/tkvg9wV626BHWobkA==
X-Google-Smtp-Source: ABdhPJycAihuKPgSZtBcljGnX1RYFy+QiGg+RCx/ZF1nxi0VDu2CnCl6KHlENfZta/Jj3+GS4MRnrGI6gCYM9I5N4W8=
X-Received: by 2002:a2e:7f14:: with SMTP id a20mr2381541ljd.259.1634166622416;
 Wed, 13 Oct 2021 16:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <20211008205938.29925-1-zajec5@gmail.com>
In-Reply-To: <20211008205938.29925-1-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 14 Oct 2021 01:10:11 +0200
Message-ID: <CACRpkdbUUScrtA=aLV_LV7t0N7aEaTJ7ELMn3op1b7M4qC+u4g@mail.gmail.com>
Subject: Re: [PATCH V3 linux-pinctrl 1/3] Revert "dt-bindings: pinctrl:
 bcm4708-pinmux: rework binding to use syscon"
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 8, 2021 at 10:59 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:

> This reverts commit 2ae80900f239484069569380e1fc4340fd6e0089.

Thanks Rafa=C5=82, I applied all three patches for fixes!

Yours,
Linus Walleij
