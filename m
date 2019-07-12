Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7EDF766FF0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2019 15:23:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727363AbfGLNXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jul 2019 09:23:07 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:46262 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726318AbfGLNXH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jul 2019 09:23:07 -0400
Received: by mail-io1-f65.google.com with SMTP id i10so20188011iol.13
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2019 06:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1826QRSZND5xFSaycA3VXZ3Su7jhccLEc5HQPy9cFIA=;
        b=JQJGNiRP5Hek9ZbF9PwDs2z98a6RRZru12adZkopys/a/CdCmcWVo5jE6TZubBR9Qb
         USIHinIUTYGJgYr0lJtv9D6l1xo7K2/gXapV279e+3UuSQFJ3x7KJk/rer0Kh8PjD8G8
         tZKvFn8QIZRhjurSd4Rjamli4oVNEZhY4pY9X1b+S/wELq1v9xyuCHvicWaVxZkDrEpI
         u+Ob6XDDHyNIp0O5e8z3xkLPFhgEiZub4zQ+HIRYWcyKznYWwN5Qg3BYJMQl4Ta71ha6
         WTeZikj6aB8IuCNNxm6bBBy3hpPnGglxgdq5UJEGARtHZwf5e8Td3CaPzy68qpd24XFQ
         vdDw==
X-Gm-Message-State: APjAAAVjjB6cQPvyIIEioIS+ZM4Ojkor6vrzYpFfi780uVBwHP3iP5jC
        u9PYVGgMkXuFesbtavyHpg==
X-Google-Smtp-Source: APXvYqwhSj3Ox6SQUhezN9z9ULkaflrYBgXnSp7Q2YXOxs4aR926uZ7KXEPvo5nAPyWaFq2nES5Zyw==
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr10816706iob.271.1562937786548;
        Fri, 12 Jul 2019 06:23:06 -0700 (PDT)
Received: from localhost ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id 8sm7543818ion.26.2019.07.12.06.23.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 06:23:06 -0700 (PDT)
Date:   Fri, 12 Jul 2019 07:23:05 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: bus: Convert Allwinner DE2 bus to a schema
Message-ID: <20190712132305.GA13584@bogus>
References: <20190711094036.21777-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190711094036.21777-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 11, 2019 at 11:40:36AM +0200, Maxime Ripard wrote:
> The Allwinner SoCs using the second generation of the display engine have a
> bus for that display engine. The bus is supported in Linux, with a matching
> Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bus/allwinner,sun50i-a64-de2.yaml         | 84 +++++++++++++++++++
>  .../bindings/bus/sun50i-de2-bus.txt           | 40 ---------
>  2 files changed, 84 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt
> 
> diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
> new file mode 100644
> index 000000000000..b9734f8109c6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: GPL2

I fixed this up.

Rob

