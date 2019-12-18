Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6F93D123C97
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 02:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726383AbfLRBnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 20:43:16 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:34979 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726227AbfLRBnQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Dec 2019 20:43:16 -0500
Received: by mail-ot1-f66.google.com with SMTP id f71so347679otf.2
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 17:43:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IiMjiBzF+xfyg/WDxwTRpq7JENtxssrwaIHMkTGyjrg=;
        b=BBIk6lp8eiIzX6F8KTSXDpcq5eFpERWJhzyl63qm81rISN7pM7UNFzgF84s9SVfeV1
         NRzK7kUCCCBy3lrq6Y8qP81VMXJDVu/dCeo06MXcKQKVpRUTPkFaqhlFeXhDh7SIT4cL
         NQ8NIkmScBBGBTopG4D4uCwKXh57DCP40PQUJo9/ARvPkBUy68aT4mH6/kBzBz3wqZdG
         Smm+Xi8dSCPDyTjVAFxwk1nlRTrRHvB45mynxKha5/W9GT/J04mor9ZLi1o9JzNhQ+KV
         RXtkE//4RNXcV5j72ZitLpW1GGphV6sEuW0weQTDkMHYVPo8ybsr2jItE60ssU8olK2L
         9wXQ==
X-Gm-Message-State: APjAAAXxXFzknE6nJuEwpbK3M/eh3fQLnusJhc5Movh6LN1zuaIxJT6d
        jGzg0APPbH93j147OURNWmoBXJw=
X-Google-Smtp-Source: APXvYqyUm/dw/EOEQtaVZYWzca7aTB35MmfeSqVe9uV0Tmt56Tyu6ZqgRK4per/0gE9FvANXdXryxQ==
X-Received: by 2002:a05:6830:1e7c:: with SMTP id m28mr265289otr.131.1576633395707;
        Tue, 17 Dec 2019 17:43:15 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u11sm256690oie.53.2019.12.17.17.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:43:15 -0800 (PST)
Date:   Tue, 17 Dec 2019 19:43:14 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, krzk@kernel.org,
        Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 4/4] dt-bindings: sram: Convert Allwinner A10 system
 controller to a schema
Message-ID: <20191218014314.GA604@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
 <20191209093441.50694-4-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-4-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon,  9 Dec 2019 10:34:41 +0100, Maxime Ripard wrote:
> The older Allwinner SoCs have a system controller that is supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun4i-a10-system-control.yaml   | 140 ++++++++++++++++++
>  .../devicetree/bindings/sram/sunxi-sram.txt   | 113 --------------
>  2 files changed, 140 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sram/sunxi-sram.txt
> 

Applied, thanks.

Rob
