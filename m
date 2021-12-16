Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6C7477DA4
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 21:32:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241444AbhLPUcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 15:32:06 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:40781 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236123AbhLPUcE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 15:32:04 -0500
Received: by mail-oi1-f171.google.com with SMTP id bk14so576295oib.7
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 12:32:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=umUy1uYNyZY1VykdghF7eMiCi+OMbNsH6C13bj0a6Fc=;
        b=TsPDGxNIvk158niHP2ZsO7fPwRiYz/o33GK0+4yDOB7VpTRssGbrmiCB9RaLghW0qk
         Rdzuq4Enk9DCyRwcsyCfiKv+JSzOftJkcfXEf8+M2WZBfS8T3DJ4y4n3miMr7/kkPfHf
         dRvCqnKrPAwZWmLkZD+KLeAx04NMte1Dh66kc0DX6f6TfxlLrlpHGbmIJNSlBZ+te4fL
         kA5Lt31cPyk9QcP/FxFxygmJEyYDFNuKfX4bstSTSB0E0CEyzYwHb7ALG3UXKKvAVoM4
         poXor8XjcKNNWMjeFQuMKIcPO1l2+BOmYnkRVF4a2wL7xzyq3o6L3PlDi848nN2Qq0sh
         q5hg==
X-Gm-Message-State: AOAM5326oGVeSZUR27mCUNeZt9XpN5ErTtCk1/hZ6boj4WiY/OsdzjFW
        1rBg+uynCVZB+bGkOs02cQ==
X-Google-Smtp-Source: ABdhPJxIuAAHF4Tu1T2g8nQ4SAIbKIMuI9BFSu3AAU+8GI3F/9OLT+gd1yGk5ZdTgRQLItyFR0C7sQ==
X-Received: by 2002:aca:58c4:: with SMTP id m187mr5311388oib.113.1639686724022;
        Thu, 16 Dec 2021 12:32:04 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bi20sm1322787oib.29.2021.12.16.12.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 12:32:03 -0800 (PST)
Received: (nullmailer pid 706190 invoked by uid 1000);
        Thu, 16 Dec 2021 20:32:02 -0000
Date:   Thu, 16 Dec 2021 14:32:02 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] ASoC: dt-bindings: audio-graph-port: enable both
 flag/phandle for bitclock/frame-master
Message-ID: <YbuiQpu/pbEjWDfc@robh.at.kernel.org>
References: <20211216000018.2641925-1-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211216000018.2641925-1-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021 09:00:18 +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> snd_soc_daifmt_parse_clock_provider_raw() is handling both
> bitclock/frame-master, and is supporting both flag/phandle.
> Current DT is assuming it is flag style.
> This patch allows both case.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
> v1 -> v2
> 
> 	- anyOf -> oneOf
> 
>  .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
