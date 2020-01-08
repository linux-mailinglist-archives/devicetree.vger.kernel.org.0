Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5B21347F1
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 17:27:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727334AbgAHQ1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 11:27:33 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:42592 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727127AbgAHQ1d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 11:27:33 -0500
Received: by mail-oi1-f196.google.com with SMTP id 18so3112591oin.9
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2020 08:27:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hlPj6SA9VOkT0SEDoGb32WMgkDWrYAi1UZe0L9iyH6k=;
        b=rrLF9VnWWjP0HUUgUedoUbGYMs/cqnGQuP0P8oLwRJ0p7meqpJ9docPopHq0Mrx8ft
         eDUc734K1OiR22s9C3bccDrx5k5qg0Ns/fifb+Tymkq1FmlAy92mhLKmTsXxNp7XoLRI
         kCH5X/inuJae7DYgLtdkRop4PAN8fXj7oJz2cNltJhF81SqoA0d8aq28tesaZSJ2Gv56
         2BgI2sWHAwLXxkaHG+8PAzNqc8mduoauRTi6JDNaPhQAqwzfiab+kFDRPNovtMl+Hgsv
         thJxJnqj+PQXXRFdPMhkL+Sdfqwar0Rz9tSvWJvruqrMxW4q/8o64X69TQbeEZpGyB8O
         n5bg==
X-Gm-Message-State: APjAAAV8jpm3WIqfI+Y08/88eAWDOEUNk4hB1P7mHNplrLJuvGvr/eGs
        tGXU5mV81CC+xzC6qXJ9wr5l5l0=
X-Google-Smtp-Source: APXvYqz4THbbigM0GlcEX1njDQst7PopyNuAB40Wn//PR5/e3DEFCg79kF5PrzF5kGGkiwM5AlNXGg==
X-Received: by 2002:aca:4ad5:: with SMTP id x204mr3592098oia.162.1578500851854;
        Wed, 08 Jan 2020 08:27:31 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a6sm640402otd.81.2020.01.08.08.27.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 08:27:30 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220adc
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 08 Jan 2020 10:27:29 -0600
Date:   Wed, 8 Jan 2020 10:27:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, od@zcrc.me,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 1/2] dt-bindings: sound: Convert jz47*-codec doc to YAML
Message-ID: <20200108162729.GA26720@bogus>
References: <20191224002708.1207884-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191224002708.1207884-1-paul@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 24 Dec 2019 01:27:07 +0100, Paul Cercueil wrote:
> Convert ingenic,jz4740-codec.txt and ingenic,jz4725b-codec.txt to one
> single ingenic,codec.yaml file, since they share the same binding.
> 
> Add the ingenic,jz4770-codec compatible string in the process.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  .../bindings/sound/ingenic,codec.yaml         | 55 +++++++++++++++++++
>  .../bindings/sound/ingenic,jz4725b-codec.txt  | 20 -------
>  .../bindings/sound/ingenic,jz4740-codec.txt   | 20 -------
>  3 files changed, 55 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/ingenic,codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/ingenic,jz4725b-codec.txt
>  delete mode 100644 Documentation/devicetree/bindings/sound/ingenic,jz4740-codec.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
