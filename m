Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B22292AA93
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2019 18:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727833AbfEZQFL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 May 2019 12:05:11 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:42538 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726759AbfEZQFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 May 2019 12:05:11 -0400
Received: by mail-oi1-f193.google.com with SMTP id w9so10294176oic.9
        for <devicetree@vger.kernel.org>; Sun, 26 May 2019 09:05:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=spCObiZuoXF/2k81ars4iYeDrKAN8YsErQDyxpRSzfA=;
        b=LFMGKkfQjOWa4Q0oVjDJNAMUJp+g/MCX0OaFTyt29iYw5LrkBe+pl+lgXxqFdTi7iX
         9JkwmZ1IlqZEhgqUDMivGTWele3xs6cI8LM3HIA5u5y0RHl5OZU1RTcQMITGvii5SdJY
         +UPZxg01og+Vn93C1yFdm6wFP138ZMJsG3wbR1iAWt/c1sLFqPz7s2+x4k58WrwivNLi
         BDbaxt9JY2sQjhAhq04gAG1kp+4QcwfBWdv7JQj8PlJigQgwJdwVq7o0SKmB//q9u1Ht
         O7WypAC4BdKBaXl7DzdkPpLGs7mIQwSJ0P1k1OHQW9+rsGzysC8n43fLPH8PK0ustLjO
         Pj/Q==
X-Gm-Message-State: APjAAAXaBTTo9PQd3l//en6aAt2qj35KI3ueLgr2fzTXM9piCAigTaXZ
        Wmekd1A9eucKcylo7lEe+A==
X-Google-Smtp-Source: APXvYqwCSzwp9mqcTNtS5Y5ZPPLAlTCwMkCsQQllnyEUr/B+lnzJKIwqjAFFxq16cy7G5aq4uPOhyA==
X-Received: by 2002:aca:ed04:: with SMTP id l4mr11677058oih.64.1558886710201;
        Sun, 26 May 2019 09:05:10 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k3sm3211314otf.42.2019.05.26.09.05.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 26 May 2019 09:05:09 -0700 (PDT)
Date:   Sun, 26 May 2019 11:05:08 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: vendor: Fix simtek vendor compatible
Message-ID: <20190526160508.GA32215@bogus>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-2-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-2-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 May 2019 15:41:37 +0200, Maxime Ripard wrote:
> In the text file, simtek didn't have any description and apparently this
> confused the conversion script. Fix the simtek entry and add a proper
> description.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob
