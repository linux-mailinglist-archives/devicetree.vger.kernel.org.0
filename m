Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85AD516EE04
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 19:30:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727983AbgBYSao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 13:30:44 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45893 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726699AbgBYSao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 13:30:44 -0500
Received: by mail-ot1-f66.google.com with SMTP id 59so409954otp.12
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 10:30:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uZVFTo4BQl7p2WNbEiUNBFQLIlrRbU4snqUS+7cYh1Y=;
        b=CHMPjkG0mjUPvJloDMOYi43lxKOl7TEDZZVF4SyrXBzuXw6/tT74HpjuoNEnMrxxvh
         iyeJ/3fvNV99lqUJjgTa2hdzGQJ1l2REqGVsLNYxZA16juro5rlJJk7dzFCN3HSJxYHo
         vqWGy4iF0kt8s8g/ZTd1yW5sRnex84I0QqBc08bTVN7+wFiLPcI0M7Flr+BA7ZLdKCnT
         vDxRunmIiKKMFgmmqC2wDo2r7tTz3GSf0Z8dCfkRTXaDIbQLhjAMwXz73RZ2VYFYMxB4
         z7seQJpkID60oteZ8jBH9momx/Bc8crW1OHmtXH13jyfwHPshM0S8vGuF60kOwViy3PB
         E7Rg==
X-Gm-Message-State: APjAAAWNgsqWqeiVjq3LghMwna3+yrrbbPMD57NTFVL7y+ml7eMD+OXP
        zgEejH4k3F+xfqOT6jC5sg==
X-Google-Smtp-Source: APXvYqxBalPiYZ9ijm31Opj8KN6zYkTxHK94MMUBHOaKgbv76Z6fRJV/4X4svSyrcBmJ0rr/CEUWFw==
X-Received: by 2002:a9d:470a:: with SMTP id a10mr46747067otf.370.1582655443679;
        Tue, 25 Feb 2020 10:30:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z21sm5902528oto.52.2020.02.25.10.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 10:30:43 -0800 (PST)
Received: (nullmailer pid 23713 invoked by uid 1000);
        Tue, 25 Feb 2020 18:30:42 -0000
Date:   Tue, 25 Feb 2020 12:30:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 2/5 v2] dt-bindings: arm: Add Versatile YAML schema
Message-ID: <20200225183042.GA23655@bogus>
References: <20200225084627.24825-1-linus.walleij@linaro.org>
 <20200225084627.24825-2-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200225084627.24825-2-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Feb 2020 09:46:24 +0100, Linus Walleij wrote:
> This implements the top-level schema for the ARM Versatile
> platforms.
> 
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Enforce core module to be @10000000
> - Require all three compatibles on the core module
> ---
>  .../bindings/arm/arm,versatile.yaml           | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,versatile.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
