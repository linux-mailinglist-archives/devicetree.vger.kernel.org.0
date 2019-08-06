Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 006D6834EF
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 17:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731603AbfHFPR1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 11:17:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:59206 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726713AbfHFPR0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Aug 2019 11:17:26 -0400
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2144E2089E
        for <devicetree@vger.kernel.org>; Tue,  6 Aug 2019 15:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565104646;
        bh=O7r2gpXOQ691eUhvxcBqHTnRWEAVRBQE6uOaSmCJ0ww=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=DVpBDt/iIMWNnmfMM2MMuyLg8KHBWkuWqY6H1EDOAIT+muOaaKSpY7Coip7A4eryn
         JbAiq1xgwOfNG6t2Ji2TMZL3VBxOScQm35wiicM1OE0jtGuxuX/tDTYvFXLskaTZ0e
         Kn0SplLQdqqPdxhiKWt37A3g0aeWDlyfwgf/Nmoo=
Received: by mail-qt1-f178.google.com with SMTP id a15so84855995qtn.7
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 08:17:26 -0700 (PDT)
X-Gm-Message-State: APjAAAVcYlcHD0gqYnjLSmZTlJ0d9aUqDHE9D/aKJLZHH/v5ZIHBPmFR
        UDdY/B4lu+t6jrUy2+0u6VhFXEba5YbNXEPOxw==
X-Google-Smtp-Source: APXvYqwPuPPmaziv0aqb78eSBuyoFJxdBkH4XjABe+CabJ603+wBi76G4no+REuxzJFDMefmj38zKOLnaukDigblww0=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr3597235qve.72.1565104645367;
 Tue, 06 Aug 2019 08:17:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190806135437.7451-1-linus.walleij@linaro.org>
In-Reply-To: <20190806135437.7451-1-linus.walleij@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 6 Aug 2019 09:17:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKhQwqtU_bdTymEM_b035f2rcPgYRWP7L-_G2F=DO1VWQ@mail.gmail.com>
Message-ID: <CAL_JsqKhQwqtU_bdTymEM_b035f2rcPgYRWP7L-_G2F=DO1VWQ@mail.gmail.com>
Subject: Re: [PATCH 2/4 v3] drm/panel: simple: Add TI nspire panel bindings
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 6, 2019 at 7:55 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Add bindings for the TI NSPIRE simple display panels.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChanegLog v2->v3:
> - Switch to GPL-2.0-only OR BSD-2-Clause license
> - Use a simple enum for the compatible
> - Use the new nifty panel-common.yaml, tested on
>   linux-next
> ChangeLog v1->v2:
> - New patch as bindings are required
> - Let's use YAML
> ---
>  .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
