Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEBF0707E0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 19:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730354AbfGVRv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 13:51:26 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:42801 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727021AbfGVRvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 13:51:25 -0400
Received: by mail-io1-f68.google.com with SMTP id e20so45501369iob.9
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 10:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=q6ryf7dSWkF7D9AkCTyTyLscKOsW89C8muD/l6dLf3s=;
        b=glwe0LkIJT9PDjCaUXUQGxpCch1D4+jeLP0eC2PLpq6manrns8HpkEeWTiMpQ0Ji4p
         QVph1sTSX6Q+Ju90hg0ewUec9B8CaZEuehCXxXC1rxDUF5qc/tVZPBJfmLS6/4x8XDLO
         5NbDU80LAwhLvIloihyFoYSB14a0VoPPXTaXjHoIjq4Q0A8dLWIZhfbkFs89MTJs7xk0
         jv7IfMQT0TkKFTWTJsHvNCwyrJg2K8L1/bUPSlXkRwKTFxqON/8cWf1GV2mOipAU4CMc
         QbwgXe51le58RpmLVXRWkDV5t/fRJ/esA5VxxgoruV8ASl27/MbX8JNSMh5aMiLqYA2v
         ipMw==
X-Gm-Message-State: APjAAAW0GcHwzr9DvO2ouuvcjI+mZfGMzSk4QMTVFMWe1MdXoJpK5gGx
        o8LjwJHyJ8bnYIh76v29rA==
X-Google-Smtp-Source: APXvYqykd+mKWjnRVCCig9KLNbCG/u0Q9M25HHjkq5xt2zkgutt8OJ6MBG6FqCLepfHtjMEpcgwv4g==
X-Received: by 2002:a02:4e05:: with SMTP id r5mr77720423jaa.27.1563817884669;
        Mon, 22 Jul 2019 10:51:24 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id s2sm29186059ioj.8.2019.07.22.10.51.23
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 10:51:24 -0700 (PDT)
Date:   Mon, 22 Jul 2019 11:51:23 -0600
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
Subject: Re: [PATCH v2 13/19] dt-bindings: phy: Add Marvell COMPHY clocks
Message-ID: <20190722175123.GA13655@bogus>
References: <20190627095104.22529-1-miquel.raynal@bootlin.com>
 <20190627122505.25774-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190627122505.25774-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 27 Jun 2019 14:24:59 +0200, Miquel Raynal wrote:
> Marvell CP110 COMPHY block is fed by 3 clocks. Describe each of them in the
> bindings.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/phy-mvebu-comphy.txt       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
