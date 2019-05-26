Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 959912AA91
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2019 18:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726863AbfEZQEu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 May 2019 12:04:50 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:35864 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726759AbfEZQEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 May 2019 12:04:50 -0400
Received: by mail-oi1-f195.google.com with SMTP id y124so10323244oiy.3
        for <devicetree@vger.kernel.org>; Sun, 26 May 2019 09:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jykIpBYCQi6zX4tPq4AomDQzhRlqunWT8OC4zFcA/5k=;
        b=NzCBn2CffmZNtGcdFkq/X6hQ9eJ1LhtCYrPgD1mjtXIzoUD4ni/pMcNKx3D7ZOQOw/
         HyiBaIJRTznmEeJkLBiQFlny1tpbXCrpLejQJqZdW2nxPtDsEwI4XtQvvTm40l973Kzm
         3AMg6UDeRmPmbqfDtFMeLOmPARys9tJpGtHVni+oMm3CK2CZ1yJABvqbrrYFK/zMeJRU
         2omSJvVdhR88DxcaNX7+WKYeaOK80kC2ov6wPeSmxIPTxptn7382b/HQrWDUDCHN3Ibg
         jFwBK0PNG3OBv9lr30RNAUzG49oNInkPFtX4JBC7Nu3yKn0ogi/TVUxUxsu/p44HQQXu
         hcUw==
X-Gm-Message-State: APjAAAWicqLZIEgbLepkzqT813+HTrVdrSI+IDLvlm+A+yOQBEh8hAUU
        cpccLkWbjtJDkLuh86+bKQ==
X-Google-Smtp-Source: APXvYqxnfdT5APY2v9FEfBObPQzQp0k19PxpIhJm97Wn/aiFQYzEEmK+/N1BH2rUD+h6N0ZrlyXoyQ==
X-Received: by 2002:aca:e594:: with SMTP id c142mr13040056oih.155.1558886689574;
        Sun, 26 May 2019 09:04:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 63sm3358926ota.28.2019.05.26.09.04.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 26 May 2019 09:04:48 -0700 (PDT)
Date:   Sun, 26 May 2019 11:04:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: vendor: Escape single quote
Message-ID: <20190526160447.GA31299@bogus>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 25 May 2019 15:41:36 +0200, Maxime Ripard wrote:
> Single quotes need to be escaped in YAML, make sure it's the case.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob
