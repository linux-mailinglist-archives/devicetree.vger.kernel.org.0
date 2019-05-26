Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE8E2AA96
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2019 18:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726759AbfEZQGC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 May 2019 12:06:02 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:38475 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726622AbfEZQGB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 May 2019 12:06:01 -0400
Received: by mail-ot1-f65.google.com with SMTP id s19so12818572otq.5
        for <devicetree@vger.kernel.org>; Sun, 26 May 2019 09:06:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=snoy8tugr3y3IvMDEaVYed+w2Gz83p0ghzZ7t8kp7Zc=;
        b=nFfuIXmY5QbMCINLUH3Vn7azEUgUVdG3C4uwGFvYavLJ+hvCTmQA//W1xwcBk1DjIW
         hWEi1AeDxHtTVrQQ/guwKs3a2x/+r4T+2+pm4f0zcrw+SjCdLygvqZ19YpKin0WRdTqs
         nRWK/nbb16CHYk+ftsGRjlGk8me3C4va/Eew+DxJ/onp2ENr643UqLKMFjlCjcMPP++O
         W5nOzpXVtOJrQzryBPkTRJO5kESFrdFErZP+YO3Jl2T+sLjj3YhT3Cq+FAWdHyNKwEOC
         YmO374CNNGBMPEuKxWUa+nLi4uIBVtS/xeCabWcsIIZ501spJJbv20R2y/MiNiI8NDnD
         R4VQ==
X-Gm-Message-State: APjAAAUzq+KojW2iSzmZnkztKrYeJJRUC72IqSk6b+BOUmSVGyL4yinU
        KGGL05ST9MQcHbf3kX7H1A==
X-Google-Smtp-Source: APXvYqwjhgS9mXpmu9ZSby6zJl/uab7TlVy7RDIASzWAm6+qU9OvveXrq0TywrEJPT/dP68ndv4o4Q==
X-Received: by 2002:a9d:694a:: with SMTP id p10mr4907637oto.61.1558886761150;
        Sun, 26 May 2019 09:06:01 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d30sm3023409otk.19.2019.05.26.09.06.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 26 May 2019 09:06:00 -0700 (PDT)
Date:   Sun, 26 May 2019 11:06:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
Message-ID: <20190526160600.GA1399@bogus>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-3-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-3-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 May 2019 15:41:38 +0200, Maxime Ripard wrote:
> Add all the missing vendors used in Allwinner DTS.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 

Applied, thanks.

Rob
