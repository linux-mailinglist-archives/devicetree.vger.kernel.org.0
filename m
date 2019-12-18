Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1641123C86
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 02:39:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726227AbfLRBjm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 20:39:42 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:41320 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726167AbfLRBjl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Dec 2019 20:39:41 -0500
Received: by mail-ot1-f67.google.com with SMTP id r27so311047otc.8
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 17:39:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O54iOlIKGxKbflN7jepMznsdZ8rH/t4iutnsk12FMqk=;
        b=o8gO4M598K4yP4rcjwAdR+sMMj5ayfG99DRYZA2dpbBChBvxr1iSkuHJ3YOOH8xzKW
         dDvmcaXEDN5dF6R8asyLc69NApbEH6PAXEdtwhcGQYPOXoe+wN8d+Y87WvSk+Leas/bN
         TdMEBLqta+UdYQ59WInZ+v4L+w/JY2uX3Pc32VdQVOk9nAbZnl/C5uMkkCbsexkANAWA
         S02CNaIu6YMfmj+YbKTvSM+nvYg0FNRzxUbeScKMyGgtC15r2eVXcEOgaeFWpIQ0hdDQ
         VDwYe9b1wC4khU5JY/OYU7fEMGtPzNH33b7/9argYPdZK71xsaiho71MEw723sdLXFNd
         MMJQ==
X-Gm-Message-State: APjAAAW5jqpTY9tzF1KjnwvPiOpJCPCbpkzGGASXEzirivVmtjMdSkZ2
        bXJ94+CLrpZGwREjOXhFgQ==
X-Google-Smtp-Source: APXvYqyjLVhBZPQqZfhgsyf+C1l1DHQlzCFojrWiPNAhW3mO5/s9P2tjXE7ddXKQ2jWGwLiiGoLseA==
X-Received: by 2002:a05:6830:1e5a:: with SMTP id e26mr207595otj.351.1576633181056;
        Tue, 17 Dec 2019 17:39:41 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k67sm257961oia.32.2019.12.17.17.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:39:40 -0800 (PST)
Date:   Tue, 17 Dec 2019 19:39:39 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, krzk@kernel.org,
        Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/4] dt-bindings: sram: Allow for the childs nodes to be
 called sections
Message-ID: <20191218013939.GA26807@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon,  9 Dec 2019 10:34:38 +0100, Maxime Ripard wrote:
> The generic SRAM binding currently only allows for child nodes of an SRAM
> to be called sram too. However, these are also called sections in a number
> of device tree, which seems a bit more accurate.
> 
> Let's change the name pattern to allow both.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob
