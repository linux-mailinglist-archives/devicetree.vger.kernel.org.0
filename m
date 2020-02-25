Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2AB116ED97
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 19:12:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731239AbgBYSMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 13:12:53 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:41179 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730017AbgBYSMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 13:12:52 -0500
Received: by mail-ot1-f65.google.com with SMTP id r27so386059otc.8
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 10:12:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AS7kSS/iqLKzluPfp1yYbu9JOTEV5k+vqjiHSYnpBvI=;
        b=mG6+uEiunaU0tmoYpAyi3XTwtJOibci9BwsFeKRad5hCpWSU9Guo8nGXmGae8XPBVV
         Kpo1zo5u9CLaxXceueSFiWXDLXIjpWzV3JoJVPurdEZp1o/59BPixQsDOy1bXUiWwkUH
         rBweqlWXpZQd/Fufvm4cIn6mtn8lD7ygBYHL0FFqv3CraZjpSfxcAJ5YiQvUn2YTMb2F
         CIjLhWEafJMJLe1A6K1YTb1I3OTbaoc8ZdVrCyRyCq05yxrbENwGBtWHyOwOTcBRewsU
         E8SQVYpURym5tAsHDZy0Zj3w3hyXRSQijH/9t5edTjBhNaEl42PS51JQ089/ia7YmngC
         hm3A==
X-Gm-Message-State: APjAAAWE5NkfSo70600Aomn0rCSfyN2Lf8hEWmxlqjtEzY5LLLRHAjtL
        ioamjWDndKznKaXK0/uNUA==
X-Google-Smtp-Source: APXvYqzaRLTYii3nkDojyPbV178KGbB2P+XQwbj2nlCdlEq+3mr3I5oDWMhdY8xQvu7D06fbfbzTIQ==
X-Received: by 2002:a9d:6b06:: with SMTP id g6mr45424470otp.93.1582654372101;
        Tue, 25 Feb 2020 10:12:52 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n25sm5528659oic.6.2020.02.25.10.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 10:12:51 -0800 (PST)
Received: (nullmailer pid 29791 invoked by uid 1000);
        Tue, 25 Feb 2020 18:12:51 -0000
Date:   Tue, 25 Feb 2020 12:12:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3 v2] drm/panel: Add DT bindings for Novatek
 NT35510-based panels
Message-ID: <20200225181251.GA29735@bogus>
References: <20200223121841.26836-1-linus.walleij@linaro.org>
 <20200223121841.26836-2-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200223121841.26836-2-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 23 Feb 2020 13:18:40 +0100, Linus Walleij wrote:
> This adds device tree bindings for the Novatek NT35510-based
> family of panels. Since several such panels are in existence
> we define bindings common for all, and define the compatible
> string for one certain panel (Hydis HVA40WV1).
> 
> As other panels are discovered and investigated, we can add
> more compatibles to the binding using oneOf constructions.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Rename file to novatek,nt35510,yaml to match the first
>   compatible.
> - Require both the specific display manufacturer compatible
>   and the novatek,nt35510 compatible in strict sequence.
> ---
>  .../display/panel/novatek,nt35510.yaml        | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
