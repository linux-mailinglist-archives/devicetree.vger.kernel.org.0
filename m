Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9BE1123C93
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 02:42:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726382AbfLRBmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 20:42:51 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40286 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726227AbfLRBmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Dec 2019 20:42:51 -0500
Received: by mail-ot1-f67.google.com with SMTP id i15so325606oto.7
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 17:42:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ew/OWcoZF8yAgM/pHrVPmiOIGMsRwuMYCKV/xzngD90=;
        b=lAcY2wnMOpY8tizXi3e3HqDdPs4m8ag/kPuFlNGMZN3F+cGi3b6D9Yjqbx0kTyG0SK
         CW2NkQCWWY+V1Chxb9MK6Sq+6KoiePHdx5C2xsOMN44NO/gP99OVNwQBq4NIT2jedxxe
         3pZoxW4kJAEbLT0rWyxDiaa2CzAzQj9wj5dwZ10sGq6guwuC+WywItpWMqI/GmprwISO
         4gMYdozZxiBIdvFk2n/owLADUYqqMF7JknPjOq0mrf85hFtZXKVnIsdhvpqOnsTcdSVO
         wNQMLaF2C+Q6VKiHmKl9E+ghJZg6cH+y/rR6lhFAI/yl4lbyn9g8xbdC1JNgzVPaCzlx
         KE9Q==
X-Gm-Message-State: APjAAAVnaABjiFhFG51kYI/1dPylOGtT8JnIW0kcXWh71Qw3I7u0AxOa
        BFZD9mezb/hwJ9D++6zBIg==
X-Google-Smtp-Source: APXvYqz4booIX6RD8QkPGk4Sna5bs72GY7hrxJWSbqPE1RgHKYa/O3Zi5ymdkbELkLAgRH+mgcnTzw==
X-Received: by 2002:a05:6830:2087:: with SMTP id y7mr291060otq.96.1576633370583;
        Tue, 17 Dec 2019 17:42:50 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z12sm233024oti.22.2019.12.17.17.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:42:50 -0800 (PST)
Date:   Tue, 17 Dec 2019 19:42:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, krzk@kernel.org,
        Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/4] dt-bindings: sram: Add Allwinner SRAM compatibles
Message-ID: <20191218014249.GA32215@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
 <20191209093441.50694-3-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-3-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon,  9 Dec 2019 10:34:40 +0100, Maxime Ripard wrote:
> The mmio-sram binding was added missing a few SRAM sections compatible for
> allwinner SoCs. Let's add them.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Applied, thanks.

Rob
