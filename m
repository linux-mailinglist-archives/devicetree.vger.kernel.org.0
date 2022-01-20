Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D673495159
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 16:25:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243084AbiATPZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 10:25:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242733AbiATPZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jan 2022 10:25:08 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFC80C06161C
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 07:25:07 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id g2so5598228pgo.9
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 07:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=T7OdeqOh/hYOdmsOERk4ttPSqRwGUsuSca3zIJoFRvk=;
        b=IBAL99ZzYREy7JHtv1lmFvHKqsXGFzf5NXKu90I0AL82ZlUKkcuaHbyzTuotmmO9uu
         qIpFgemyHTjTr9ZejzkM9LYMtSTa+lkkwT1qo0u7hwcF+cKb3RsiW1iEJ7G6/YPGcGvI
         4ZVsQlRzAjFVZT42km8HCHpXW6a2TSkMK5jDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=T7OdeqOh/hYOdmsOERk4ttPSqRwGUsuSca3zIJoFRvk=;
        b=8SX3XI4E3h2WO3egj4cjR6ob8LvbmXYMxrCPBWyV1s2U1LUbYfTR5pYqnG3uNZOH58
         rFyySgjW8MrsQHDNn96tx/lTPE/G+0Czt3XWBPomtdTVYIUTNl0zhMaRDDBL2su3aFnc
         DrRo7dLHZMUCVamKmtdbfYEVJhKzUsp2Bz4Thx1cYLJwiPQTFGZtIl0O95inicfzNDMz
         sjcj+kqReCl5l/hC12IUYdO6++rLARHVtBGT9h+o/2AUCCc8EUaJr3xIPULvfdKIQREN
         yixNcr0sYjzn4QDSVUysafx58Rw4GSyGvIsY9gBHCC0QRCeYSLnaDoGf0KZUUNxYQ3Kb
         wyjA==
X-Gm-Message-State: AOAM531hZagTeuQxAs0F9m+lL4e7r3tvh194g/J4boONVezJ7S5Ij5Mn
        48q9UvO1Et/N80WW2p+qZ01WGg==
X-Google-Smtp-Source: ABdhPJyxQbCNaPrGeV7g+T7OdlC2+QvGUHcpTRbjzOg6lVffnnyVUPT8nwczFmXyPqYdZsfaA0QnCg==
X-Received: by 2002:a62:f90a:0:b0:4c6:7794:6f29 with SMTP id o10-20020a62f90a000000b004c677946f29mr2416610pfh.1.1642692307464;
        Thu, 20 Jan 2022 07:25:07 -0800 (PST)
Received: from localhost ([2620:15c:202:201:ae15:a305:99de:b81e])
        by smtp.gmail.com with UTF8SMTPSA id p17sm9562312pjo.37.2022.01.20.07.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jan 2022 07:25:06 -0800 (PST)
Date:   Thu, 20 Jan 2022 07:25:04 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Christoph Hellwig <hch@infradead.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Peter Chen <peter.chen@kernel.org>,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-usb@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v20 2/5] driver core: Export device_is_bound()
Message-ID: <Yel+0DrtWm5I9JrL@google.com>
References: <20220119204345.3769662-1-mka@chromium.org>
 <20220119124327.v20.2.Ie1de382686d61909e17fa8def2b83899256e8f5d@changeid>
 <YekPTh/G1IkvpSiI@infradead.org>
 <YekTFMnXK87MNMh3@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YekTFMnXK87MNMh3@kroah.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 20, 2022 at 08:45:24AM +0100, Greg Kroah-Hartman wrote:
> On Wed, Jan 19, 2022 at 11:29:18PM -0800, Christoph Hellwig wrote:
> > On Wed, Jan 19, 2022 at 12:43:42PM -0800, Matthias Kaehlcke wrote:
> > > Export device_is_bound() to enable its use by drivers that are
> > > built as modules.
> > > 
> > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> > 
> > Didn't Greg clearly NAK this the last few times it came up?
> 
> Yes, which is why this series is _WAY_ on the bottom of my list for
> reviews...

I wasn't aware of that prior discussion, it would have helped to know
that this is a major concern for you ...

If using device_is_bound() is a no-go then _find_onboard_hub() of
the onboard_hub driver could make it's decision based on the
presence (or absence) of drvdata, which is what the function ultimately
returns.
