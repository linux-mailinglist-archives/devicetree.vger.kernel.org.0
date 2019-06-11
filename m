Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3846841891
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 01:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437017AbfFKXF6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 19:05:58 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:35433 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437015AbfFKXF6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 19:05:58 -0400
Received: by mail-pg1-f194.google.com with SMTP id s27so7792488pgl.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 16:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=OBwSPzkDdi1CMoAJXu3fdSCyBq/M09/6VhI4AMk4Xd0=;
        b=myQGfU/fQ9FotkLvkIP5napMe/OlFIpyYMu85C1/ME8ATNL3ykv9VzsgnRpn3SiXtB
         oK2zfgP4tp0UvDA43Eb5BnXfH2n9vFTf5ttK+jxUOAKg64WPZlvO+qYjypkNRx7fOELh
         +/kyBy9tyGhTsyAtSsjBgdhzvl7i8qU0vwi0bKaYntUUFQFSCK1PzG8coiWfRIHEs3F7
         mZnu+yaiZIil39fibfqN1W7CTlDjWG1/6hcssnbsnUUyZ07qAhXeSB6EJNLM4XK++Dw+
         hRmBU2Gnj+VniTueB2pa2vhiNaHtAg4oP5sZcjecADRWjA8Nh9VCSyaq5PBegpLoen9p
         oYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=OBwSPzkDdi1CMoAJXu3fdSCyBq/M09/6VhI4AMk4Xd0=;
        b=Ks/aHpnnx2iPERZDY69I49WM7Jb3vePXRZa1C+EMvvm0mrWU74u04Cp1XPeVfZWjNb
         Mh6IM66gPs817rfuUGoO0Ec+2jp5x9Posuwnsx7kXzdM//5llLFCeJpw9goC9kpYFj25
         y/NhTWkNM7puEmRGyUprBdDNl7yzMCyMrk6mEAJLmgZJh8OtXZiakIZBdUrFjqgYpfwe
         yxw5r3gUMThNCI5IGWGpbB3epq30MRl4NYQQbaxUEEyGnxMEvyHq8d6goA5Bh71n6RnK
         0JMMQs8pF44CdqTfcVZL1ckzmUlhCQRg8kVEQ6SXgioVi6fQ9bb+mrsWIlvFkLH0PQ21
         MB9A==
X-Gm-Message-State: APjAAAXqnPAcFoULUsjWVHcKfe5+8IauFzH0YU78IgMQaog7+0WdPYmW
        V5du0feTp5XF0frNmFXv4gbdFLUgfe4=
X-Google-Smtp-Source: APXvYqxjdj5vYjUUy2sB0u9Tk6uxU+kfxuJmVI3vHyHL5GJvrsWFCoAFGf8gZgFCMu8WEUVcxUHFCg==
X-Received: by 2002:a17:90a:ba94:: with SMTP id t20mr15629024pjr.116.1560294357844;
        Tue, 11 Jun 2019 16:05:57 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.googlemail.com with ESMTPSA id x5sm4327928pjp.21.2019.06.11.16.05.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Jun 2019 16:05:57 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: sei510: add sound card
In-Reply-To: <20190524140318.17608-1-jbrunet@baylibre.com>
References: <20190524140318.17608-1-jbrunet@baylibre.com>
Date:   Tue, 11 Jun 2019 16:05:56 -0700
Message-ID: <7himtb4t9n.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> This patchset adds the sound card of sei510 board.
>
> Note #1:
> The patchset (build) depends on the tohdmitx ASoC patch [0] for the dt
> bindings of the tohdmitx glue. It also (run) depends on the mpll clock
> series [1] to get a correct clock sources.
>
> Note #2:
> I would normaly prefer to use the HIFI pll dedicated to audio to provide
> the base rate for the 48kHz audio family. HIFI pll rate precision is a
> little bit better than the MPLL. However, the HIFI pll may sometimes,
> rarely, take a long time to report a lock. I'm still debugging this.
> In the mean time, let's use MPLL2 instead.
>
> [0]: e35f5ad6a965 ("ASoC: meson: add tohdmitx DT bindings")
> [1]: https://lkml.kernel.org/r/20190513123115.18145-1-jbrunet@baylibre.com

All dependencies are merged or queued for v5.3, so queuing this for v5.3
also,

Kevin
