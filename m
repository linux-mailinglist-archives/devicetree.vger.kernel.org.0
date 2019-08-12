Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1C748A951
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 23:29:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726758AbfHLV3t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 17:29:49 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:43850 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726500AbfHLV3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 17:29:49 -0400
Received: by mail-ot1-f67.google.com with SMTP id e12so20314474otp.10
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 14:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZebiGBSMiPh9UgA6bIJDz8bdvGeaM9PFdpy9O8ClYOo=;
        b=SdV4l2OqOH3XeZDNNPbSykdwwtpYDNbPnM6XNFISQROvgNlaRwf72P65O5R04TZNeS
         19QUuJ+7r2sfOV2J+4xFrZvIJAlILHzMBksATMwlNpPcB5hqH51YCn/y7MxgJG0CmNNT
         pByx3HtjaKsAjUFgd+GjYT7iqdehUDwPzFZtIicnFUmosmT4L1FC5wIN1c7DMaVrTwYn
         YLfOImq6lhJ2TyFh6PHTtvd8zRPyFrC25Ho2EiF6B5WBvPv7DhhiVbCDuzILRSoBFI0b
         DhIxC8L8yCCF/OJ5ZFg4qeVLhJXynF2RaUAMyNiruLITwW5CO3YLWY5ULu/JczTzGk1l
         Vvcg==
X-Gm-Message-State: APjAAAX60mZG1hkZowxk4+LNWF2sNCbCwmQZpswwVtVo9R4JTZkWPXZ1
        Om5Rm/aygklJ6qc7ENAL8w==
X-Google-Smtp-Source: APXvYqz3cyuzSsRaxbp/Su8D2j/E+kG3mJz3jsPKSACywEtNz8URb6dSTTdudqoP32hNxWFd50aV1w==
X-Received: by 2002:a5d:80c3:: with SMTP id h3mr38210641ior.167.1565645387994;
        Mon, 12 Aug 2019 14:29:47 -0700 (PDT)
Received: from localhost ([74.118.88.158])
        by smtp.gmail.com with ESMTPSA id c13sm19775854iok.84.2019.08.12.14.29.47
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 14:29:47 -0700 (PDT)
Date:   Mon, 12 Aug 2019 15:29:46 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Message-ID: <20190812212946.GA6120@bogus>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <20190731122126.3049-14-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190731122126.3049-14-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Jul 2019 14:21:20 +0200, Miquel Raynal wrote:
> Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
> bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.
