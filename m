Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5F2442A136
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 11:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235774AbhJLJhe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 05:37:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235749AbhJLJhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 05:37:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7EDFC061749
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 02:35:32 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id ns7-20020a17090b250700b001a0937b87b7so1533105pjb.1
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 02:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=o1k8Z+wdh4QOPkQnS+F7/9QuIX0JH9DSlOiSZOGiLJ0=;
        b=JPI1N3b7+PMvCr14EefM11K1KWWL9gaM68fMQB7IOAiZNObXnUiboTUHWlnYJDNW4Q
         mAL5untW+5tZk/Drg861zZnJ9H4YHfyVpz6p6D8S9xoKxTdQVHUTycAjL9cKWw8J1PiX
         cinbdgMKzCE4rX5LNwEYerT8da3aVSR2j4wjuDJVPrWYQfsUMfLgK1JDGIjjGZftmbR4
         NfkMIKuopr20cjROoPqyebI1ELIut1t1FrnCNI1rm0SN4UeT0GFxPEmu6D3Mb6gc/vpf
         NvU9Ikd8PH7/TCmv20xvT7bPLqqXs259HgnHrkCC0K33EmuDKKIWryZ0FLbBfB/rBqNc
         UMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=o1k8Z+wdh4QOPkQnS+F7/9QuIX0JH9DSlOiSZOGiLJ0=;
        b=jkNENw4I+kWt069sl1YJzmH2Izc8yvHiPHb9tn+5AhrGM1ml4TyxHpBG8SRHXwJUfd
         /B6ACLCJG4/GWZVBfyE2WC54npkBoZdgMWPLa18vPyvpZR6f5Y2R5KQDux3tvgYQVO79
         aRwMdzD760fVqqqS2O5f+cgVY0AkoYg9vXud/e9XSG4Eth3ir+42ywOmjUKZbZiiy/R9
         OmZl8nSgSOe3D5c90Kv/u60Lm2kY8gzrAk1VJNYRVG9RPGlaO1LDjdyRKdL5eh4GI0XI
         3zDSWgisSrzNvezyxEEBcYOatDDam4pj2A0PbrTjT0Pi35G/cQKAZM4/7ICKRt1kHO/R
         Cs8A==
X-Gm-Message-State: AOAM532BYH/g7XwsXg6Hxgcwl2E+bF7kxvj+cGePEsSAncuHvp8jpT8X
        Zy7M9oxWxMlOJmOqfZQzk1hTkQ==
X-Google-Smtp-Source: ABdhPJwmjNVx5j57L4zEiPRXtEe8aH/7F8Q9b0NO96Wmfmn8nm+42QOAA5HdzvgpsdPfHkHGSn5kpQ==
X-Received: by 2002:a17:902:8494:b0:13b:9365:6f12 with SMTP id c20-20020a170902849400b0013b93656f12mr28929229plo.19.1634031332258;
        Tue, 12 Oct 2021 02:35:32 -0700 (PDT)
Received: from localhost ([106.201.113.61])
        by smtp.gmail.com with ESMTPSA id e15sm10067916pfc.134.2021.10.12.02.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 02:35:31 -0700 (PDT)
Date:   Tue, 12 Oct 2021 15:05:29 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Hector Martin <marcan@marcan.st>,
        linux-arm-kernel@lists.infradead.org,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Sven Peter <sven@svenpeter.dev>, Marc Zyngier <maz@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Kevin Hilman <khilman@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 3/9] dt-bindings: clock: Add apple,cluster-clk binding
Message-ID: <20211012093529.pzzfo44ikq5oc6cl@vireshk-i7>
References: <20211011165707.138157-1-marcan@marcan.st>
 <20211011165707.138157-4-marcan@marcan.st>
 <0fe602f6-3adc-dfac-beee-2854b01cec5c@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0fe602f6-3adc-dfac-beee-2854b01cec5c@canonical.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Apart from what Krzysztof already said:

On 12-10-21, 10:51, Krzysztof Kozlowski wrote:
> On 11/10/2021 18:57, Hector Martin wrote:
> > +    pcluster_opp: opp-table-1 {
> > +        compatible = "operating-points-v2";
> > +        opp-shared;
> > +
> > +        opp01 {
> > +            opp-hz = /bits/ 64 <600000000>;
> > +            opp-microvolt = <781000>;
> > +            opp-level = <1>;

The opp-level thing wasn't designed to work this way, though it may
work just fine. It was designed as a unique key for power-domains,
which don't have opp-hz. The OPP core currently looks at 3 different
values, which can act as a unique key to identify the OPP. clk-rate,
bandwidth and level.

I think this is the first platform which has both hz and level in the
CPUs OPP table. What exactly is level in this case ?

Again, it may work fine, I just don't know where it may end up
breaking :)

-- 
viresh
