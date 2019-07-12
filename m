Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E3DD66FE8
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2019 15:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727444AbfGLNVO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jul 2019 09:21:14 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:46744 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727363AbfGLNVO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jul 2019 09:21:14 -0400
Received: by mail-io1-f66.google.com with SMTP id i10so20175720iol.13
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2019 06:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6mm2ZP45HUTUWCV27e9EpCNxbdRbgRzxFgLva4awkew=;
        b=Hoe6Gb5ZDHucAhSQ5AEpjFvt9Y46x7ILu1WYiX6h31sNLInbXsbJ2P9Qw54oxrngsd
         tnO0kTTdBO0emg9bDunHCid47ay2g0JjjdGW4byUPWX/ZryfNMAFUkeGbzDtNRbUxk5K
         kP/ykYtd5wzfFNk51yoWf07eGkqGjwAwOW/U9EJ/s9/bXR54OWXwwFtpOcHXeBtxYsvP
         kV14QBqwHXRDUq7nN0WTy7KSQxUJsrqXvNdEN9s3Cu/dqtNZe53p5tmzYEK6qT59KC+l
         lbSGDPEvFpEXhvOfVDfUCTdlYT4ZS7RNDMuN435Cn6DbhHzM6P8F/ZQgnW2n53LsM2Is
         t0UQ==
X-Gm-Message-State: APjAAAVCVT93Ww4gbHkK1gnuYf2IfWD8lCVLISPGkxO96BZ931XGYC+6
        NNzhBpgmmlpiLx3DC15R1Q==
X-Google-Smtp-Source: APXvYqyDXTW+6nv4SKYRL0nhgWk+xVeUGk1ShvbvkaufQHyaIwJ2auHkDDHLsUBpPdKFEZnX5RgKMg==
X-Received: by 2002:a6b:8f93:: with SMTP id r141mr10910099iod.145.1562937673638;
        Fri, 12 Jul 2019 06:21:13 -0700 (PDT)
Received: from localhost ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id t14sm8234651ioi.60.2019.07.12.06.21.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 06:21:12 -0700 (PDT)
Date:   Fri, 12 Jul 2019 07:21:12 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: bus: Convert Allwinner DE2 bus to a schema
Message-ID: <20190712132112.GA11035@bogus>
References: <20190711094036.21777-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190711094036.21777-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Jul 2019 11:40:36 +0200, Maxime Ripard wrote:
> The Allwinner SoCs using the second generation of the display engine have a
> bus for that display engine. The bus is supported in Linux, with a matching
> Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bus/allwinner,sun50i-a64-de2.yaml         | 84 +++++++++++++++++++
>  .../bindings/bus/sun50i-de2-bus.txt           | 40 ---------
>  2 files changed, 84 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt
> 

Applied, thanks.

Rob
