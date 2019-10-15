Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 702ACD8035
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 21:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731968AbfJOT0F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 15:26:05 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:43396 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731021AbfJOT0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 15:26:04 -0400
Received: by mail-ot1-f67.google.com with SMTP id o44so17971601ota.10
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 12:26:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=bMN7HsXxW10Z/AXt6bsUTKC+n3cllPgUCAnFiYh55f4=;
        b=JEu6YTf8nDHJOq6IioonDa2dZxq42qMsCtDzrGHM+idv7q5O7aS56NiTVY1htjI+50
         qiXXGYKTEd6xtdLBALr+B9rtIHy1ekndsu/XFtH4sXLOgDlYHmUMDD8UzEe1FXyk5e7g
         sXBpnKnfmcr9tM9imzi97AMcg/WyhiMd3k4kv9DuvoonvzYEWrTPahF4USmfLtIstD6l
         RjW7sFS05/8mMuDVyAEuCPs7+p3JqEB3a9MPe813NZyOA/0OG+0vOEJm03djErRRoDAs
         4Q8GnLTiSYVeigamsoVTQ984x0Wx18K8F+RTON2IGzh1uISkPystgHBEa9NjnS+oPviN
         kVOQ==
X-Gm-Message-State: APjAAAUwEefqiqJN1OV8TyGbIl8w1h+6LZVfOrUBa7XTe1EUAG/1zCxi
        NYyj5wjUH5kTUmql8yGEew==
X-Google-Smtp-Source: APXvYqwlp5+8r2qKOXYzE3/Ug0686nB0PMhOBNsopPiUJRsFnUZMpsYTSVwqINAlrTQju3xmJY1Q9g==
X-Received: by 2002:a9d:66c5:: with SMTP id t5mr30074981otm.225.1571167563870;
        Tue, 15 Oct 2019 12:26:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i2sm7329212otf.19.2019.10.15.12.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 12:26:02 -0700 (PDT)
Date:   Tue, 15 Oct 2019 14:26:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?iso-8859-1?Q?C=E9dric?= Le Goater <clg@kaod.org>
Cc:     linux-mtd@lists.infradead.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
        Andrew Jeffery <andrew@aj.id.au>,
        Richard Weinberger <richard@nod.at>,
        Marek Vasut <marek.vasut@gmail.com>,
        Joel Stanley <joel@jms.id.au>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Brian Norris <computersforpeace@gmail.com>,
        David Woodhouse <dwmw2@infradead.org>,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-1?Q?C=E9dric?= Le Goater <clg@kaod.org>
Subject: Re: [PATCH 11/16] dt-bindings: mtd: aspeed-smc: Add new comptatible
 for  AST2600
Message-ID: <20191015192602.GA2299@bogus>
References: <20191004115919.20788-1-clg@kaod.org>
 <20191004115919.20788-12-clg@kaod.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191004115919.20788-12-clg@kaod.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  4 Oct 2019 13:59:14 +0200, =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= wrote:
> The SMC controllers on the AST2600 SoC are very similar to the the
> AST2500. The SoC has one Firmware Memory Controller and two SPI flash
> memory controllers.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Cédric Le Goater <clg@kaod.org>
> ---
>  Documentation/devicetree/bindings/mtd/aspeed-smc.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
