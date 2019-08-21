Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF25982C3
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 20:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727237AbfHUS31 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 14:29:27 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:37473 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727041AbfHUS31 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 14:29:27 -0400
Received: by mail-ot1-f67.google.com with SMTP id f17so3000688otq.4
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 11:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ImS9KZV7TpFDhUla3b0FNSPzoSiUR5ICcdSXT8tj+nE=;
        b=GY3tz+fgL6WSLcycVV7iuUxF05mxezKn7jYG+GxtTJhqWKAmPEPe8HEtC61PzSYsPJ
         HkTTwnWmn71OEXdViaBNq9iPh97yELGgJ5OCkcqJVbxeFMmqVgV/NA0RWkEk2ApNlmze
         wvAgpDMxXaiEIJWYNHJCGLQQkAwlhC/Jxu7k3kYJlj22DfXRporzihgnfamJOVymtoMB
         8APjcMnwysncpjhUVjcGQQVE1PyJx0Kd1J8Yig0krG6Rutp8KIyALbJO4NgybM96vuM1
         Wdksfny3ufZXgnup+acbM2VHRtzj6+kaL1Y+63olMQhRr9lHzYS/VrHHD+OxuXHOw6bO
         F0qw==
X-Gm-Message-State: APjAAAUHKEJFCsblvGEuQGN28ke/8gcq73QWyfsQEyB3+ZPJp2S9X8tu
        jA6XGApaEID55ARkr2M2Xtcc0vQ=
X-Google-Smtp-Source: APXvYqyxgZIGwg92+n23XI7HKIPQPveeef8Tlg0SCzw4WXFrGInnF11kRkIACZ9w1tzamDhzfH/ivw==
X-Received: by 2002:a9d:4814:: with SMTP id c20mr22664003otf.186.1566412166691;
        Wed, 21 Aug 2019 11:29:26 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z24sm2473900oib.5.2019.08.21.11.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 11:29:26 -0700 (PDT)
Date:   Wed, 21 Aug 2019 13:29:25 -0500
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Jens Axboe <axboe@kernel.dk>, Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] dt-bindings: ata: fix typo in Allwinner R40 reset
 specific paragraph
Message-ID: <20190821182925.GA17783@bogus>
References: <20190731122535.3257-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190731122535.3257-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Jul 2019 14:25:35 +0200, Miquel Raynal wrote:
> "Property" is misspelled, correct it.
> 
> Fixes: caf8975b97c1 ("dt-bindings: ata: update ahci_sunxi bindings")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob
