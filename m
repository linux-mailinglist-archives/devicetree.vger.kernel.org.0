Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36B4426546
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 15:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728370AbfEVN5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 09:57:21 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:45895 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728881AbfEVN5T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 09:57:19 -0400
Received: by mail-oi1-f194.google.com with SMTP id w144so1637148oie.12
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 06:57:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ufc5xAkTgGElLwGV3th2QQhKqTN82tIInC0mh/mr/zI=;
        b=OjkchTJOWz4cAxIIsVry5RcHL1fwqOD0r9Y51/rVY+9UU7WXZNEJ6yKqLm/wPbzP6o
         +icztKW8LWx7qXwMC2SJK1i4pLhf4GWNcaLf/MUO1/ZfmoUczMLOcyUYUwqGh8M4FQkA
         feXnSjeEA/dUnBynp1jhhIoDrdRS9SnxR+SyrdRRyOwa+HhP+bemFkIDRw3vncaw4x7w
         cze441zqjtzHJdoPLX1OQ09q28cxGLgOz2/3+PbPDuhr9ow/vA67xDAIGLOhJvLJK6Vv
         KHBM61cgaUfG2Au5Qz3EPm24f9pqJjchDCoHcw6pHnRsYt1EeZeU+7PSC8HCPEklstIF
         6DxQ==
X-Gm-Message-State: APjAAAUm1QNx6T4WJ48big+0FFwMdA2snDQx2PbpQUQECcw4a/7Ia360
        N7OSqLCaTRpOPXGRzfeubpN5LjY=
X-Google-Smtp-Source: APXvYqxi4uaUalBhrHYmE19XVGTw8ZehARzdqVww9dDisYp5w60DNiLvbox7RynSvNzpoP7eq2gAVA==
X-Received: by 2002:aca:b255:: with SMTP id b82mr7227466oif.52.1558533437666;
        Wed, 22 May 2019 06:57:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i5sm2253114otf.26.2019.05.22.06.57.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 22 May 2019 06:57:17 -0700 (PDT)
Date:   Wed, 22 May 2019 08:57:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] dt-bindings: arm: Clean up CPU binding examples
Message-ID: <20190522135716.GA4030@bogus>
References: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
 <fe070f591d5e07042062b6b07a701feab324ee2c.1558456785.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe070f591d5e07042062b6b07a701feab324ee2c.1558456785.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 May 2019 17:44:27 +0100, Robin Murphy wrote:
> Following commit 31af04cd60d3 ("arm64: dts: Remove inconsistent use of
> 'arm,armv8' compatible string"), clean up these binding examples in case
> anyone is tempted to copy them.
> 
> CC: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/arm-boards     |  4 ++--
>  .../devicetree/bindings/arm/cpu-capacity.txt         | 12 ++++++------
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 

Applied, thanks.

Rob
