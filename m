Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 454371FA05
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 20:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726950AbfEOSdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 14:33:20 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:46091 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726422AbfEOSdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 14:33:20 -0400
Received: by mail-pg1-f193.google.com with SMTP id t187so183998pgb.13
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=KTn4Z+mP+RK9qfYjM/8C+gF7DHUoeVhnhade+GuKjk4=;
        b=1qr5UW1hGKCD1t9Lva/WBysBSCPPi07jakQMbn5YKqeIpXFI1j60Sqn0793aukY46q
         CmQAicqUN2t3dlERSLLqZnF3xzjDMU3ojhnsIXn0feXMYgbxasdk8E2h9K+Xtsjx3Kfs
         PCeZmfQTaJA7sH1py4q+nuMh5ZytiTYn54FamSdbLq1Elg+rNRdGVrFpaG6KI8HrqW2S
         yyEwTA4pSWJbiaTFJwRZtRPCAZia3yJHaabp+Q353LeX/l/tN807VLhvt+pB1+2utqfM
         1ECCPRDY+VwvfzTY8VDQExnN8849lbIAEzZjNKP0AZY3X4Zxahe7+M92uJAOozk8ecL8
         jNuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=KTn4Z+mP+RK9qfYjM/8C+gF7DHUoeVhnhade+GuKjk4=;
        b=g1QeIFnkbBXOFqN1APPz6XzX3zyeA/x1lTXp9jqy+960KwgTYNKiQfDwEbccRK3liw
         hJRZuPlZy0JHG7atfKS06wJ5Fkd7LhVv5aLzwpuSXY6YurTuYAHGAdoK4+mkGGwSJlyV
         lc93GtB0Op0qBNcgoqh4UuWb510uxeMdxcl6cbKAXWrzsznUgUsV5bLwKiwOWS+s97g4
         Gs9rK6Flp8PSnkfjUQyLzOg67B4NEjLKgLWYzaPSSVLdM63Rqs7/sg6YBbFxCE1w72lN
         tRYKF/l8xzW6WZDywf2y4ArAHvMWdtmGbtKZNKgR5hQTKbJz+mawnVqZxQbv0DDpO/fv
         zAlQ==
X-Gm-Message-State: APjAAAXvoOmimkaQY3mU+xv3jMfU+Gz6d/YJckl8FGeH/QzbHLVYC4vr
        i4xUcfmSFb3DCnMX4nIuWC8FUA==
X-Google-Smtp-Source: APXvYqy/xNuRdj0vQvs/4sL1fODiYHQj+T+AwczqxGkZPytjid2N4wSlezxn8X+oTdH3vdNaXnYwow==
X-Received: by 2002:a65:480c:: with SMTP id h12mr44587808pgs.266.1557945199335;
        Wed, 15 May 2019 11:33:19 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:20fc:89b:acbc:4e17])
        by smtp.googlemail.com with ESMTPSA id q128sm3528980pfb.164.2019.05.15.11.33.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 May 2019 11:33:18 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 0/5] ASoC: meson: add hdmitx glue support
In-Reply-To: <20190515131858.32130-1-jbrunet@baylibre.com>
References: <20190515131858.32130-1-jbrunet@baylibre.com>
Date:   Wed, 15 May 2019 11:33:17 -0700
Message-ID: <7h7eard0uq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> On the Amlogic SoC, there is a glue between the SoC audio outputs and the
> input of the embedded Synopsys HDMI controller.
>
> On the g12a, this glue is mostly a couple of muxes to select the i2s and
> spdif inputs of the hdmi controller. Each of these inputs may have
> different hw_params and fmt which makes our life a little bit more
> interesting, especially when switching between to active inputs.
>
> This glue is modeled as codec driver and uses codec-to-codec links to
> connect to the Synopsys controller. This allows to use the regular
> hdmi-codec driver (used by dw-hdmi i2s).
>
> To avoid glitches while switching input, the trick is to temporarily
> force a disconnection of the mux output, which shutdowns the output dai
> link. This also ensure that the stream parameters and fmt are updated
> when the output is connected back.

Tested-by: Kevin Hilman <khilman@baylibre.com>
