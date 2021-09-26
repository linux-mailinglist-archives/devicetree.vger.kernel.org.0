Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 540444189E6
	for <lists+devicetree@lfdr.de>; Sun, 26 Sep 2021 17:15:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232022AbhIZPQt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Sep 2021 11:16:49 -0400
Received: from mail-vs1-f41.google.com ([209.85.217.41]:42577 "EHLO
        mail-vs1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232019AbhIZPQp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Sep 2021 11:16:45 -0400
Received: by mail-vs1-f41.google.com with SMTP id z62so15341984vsz.9
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 08:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=9+6BHA6Y+Mug0Ury7azxLzdId08mKmMxUAPT+ZvUUdA=;
        b=ZvGp3nQ7sET0xMAEFjADaaOfvyqocahfhx/hxHdeTITprBjvY3DiGEmAy+9knGANQc
         AB2PVG7nwAoIQ96lcWpB6dHv06iAcch1yyFMwZBmcuCbZ4q8Ff9KUNSfgCV7Xkcapxqe
         9BmOsMWQWC/ICQkBLg+qKFSSEZKkVfkg4VxRs92v5SafXqzTQ6oZz4IEIWJjlNh4gvO7
         69xyTOQMOPf7o2w8Urx7Yybf/I6Nv7ySWoVVdUPL7tcE6uJnX6mkOPiXd/wM0FoCY4fj
         fjjECVyC6z5razGTWUaCslRqqISNJGdPFXz75xL8ztldB/Vvl+FBXEEEnxcedYMFO+9F
         lRwA==
X-Gm-Message-State: AOAM532v2ee/cLF+F6PDzbmPIielRPpfI+JMBMAqqveVlhoeKz8R2+Qp
        5T9MOcPGs4rXUzbosjVXFhja8armakPoVw==
X-Google-Smtp-Source: ABdhPJyaP3uFxA8rZXjYoR9RdU/rP0T6iwQlITicwl9OER//UGbhfzBb+RyOexdNgiCl8yHeFwEiTw==
X-Received: by 2002:a67:f147:: with SMTP id t7mr16637453vsm.57.1632669308997;
        Sun, 26 Sep 2021 08:15:08 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id r21sm768339vso.22.2021.09.26.08.15.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Sep 2021 08:15:08 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id x74so15322649vsx.13
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 08:15:08 -0700 (PDT)
X-Received: by 2002:a05:6102:20cf:: with SMTP id i15mr16383760vsr.49.1632669308607;
 Sun, 26 Sep 2021 08:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210924071614.868307-1-maxime@cerno.tech> <20210924071614.868307-2-maxime@cerno.tech>
In-Reply-To: <20210924071614.868307-2-maxime@cerno.tech>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Sun, 26 Sep 2021 23:14:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v66AiepHO939ZWxxk3F-WpxqTS2TZ4J4pGQVr2gs6N7ZQg@mail.gmail.com>
Message-ID: <CAGb2v66AiepHO939ZWxxk3F-WpxqTS2TZ4J4pGQVr2gs6N7ZQg@mail.gmail.com>
Subject: Re: [RESEND v2 2/3] dt-bindings: mfd: Convert X-Powers AXP binding to
 a schema
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 24, 2021 at 3:16 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The X-Powers AXP PMICs are supported by Linux thanks to its device tree
> binding.
>
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>
