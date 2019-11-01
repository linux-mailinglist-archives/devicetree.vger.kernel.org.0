Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A9C8EC660
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2019 17:10:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727466AbfKAQJ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Nov 2019 12:09:57 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:38434 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727229AbfKAQJ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Nov 2019 12:09:57 -0400
Received: by mail-pl1-f196.google.com with SMTP id w8so4579737plq.5
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2019 09:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mRy57XKTw+iRaQ47Zu7gF5ohXFgXAtsfkcxRhCEocfA=;
        b=pqgUoVGB+Pvgs7uB4bZCVL9ddF6mUcusJ+t0IwqeiLrX6+prPEqal1X/OHf+0FpvvS
         roWNNTa/wYh05Pj1boCFGl+442kLqX6wsmlUJ6S1tT+v2BWeeavOniuzuLm/u9bCtQYX
         eQ8WBHmX0f1nkWYHj+8QpAIzUMREW7EDyaD9Ge6rO8FGPPMVtJOpLaI9G4fol8KUW/xi
         TuNBxblEwg3XBK0qlvvnA++b8xIgGdtWlnxQW1qYSBIH1R3mI/GHMuJ9rSUTslOTzqCj
         f3/WBWImyw0L4OrCd7MgfCSjXeIqz8kiJ2F16qgmfg/G1j+OBvwAP/1b9nQrUn+z0eYe
         varw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mRy57XKTw+iRaQ47Zu7gF5ohXFgXAtsfkcxRhCEocfA=;
        b=jQsBy7efxW+LsS4JTN7NgSRDCyO6Bc2UHeXGQ1yZkfsBnOgcmQDSCLb6CEx4wouCII
         v7h7+VuiHOYUrgDe4+y/QK3jahDpvCc1yCRXA9O3dnf8orQTNV/Qs7in3xfNGaj/PjLB
         A3ZuzNsE9ePOx8V7tIAb7qQaecjjdZkQNJWY4zZKMOGQuTe0geS5A3SC33PIhyHLFJEW
         WO4lhebxDbud0uLV8UMPkyaHGktVoi4TBMF62Hil3oq5MahatBrQOUcxtg9plXqtIOKV
         B1tGCiowl055sPgWs7GM+05Ri00ONeQqFGVchuWJwEtnATJ+Vc6tyMTNDI9SiO/3zAdq
         h7xw==
X-Gm-Message-State: APjAAAWWKfgkg6Uz1OPVOxV85ulMGgDxNqIn+ILahur478qyZ1eW4rgp
        nuF7zWN6Gf4FXMMlakDX9Npi
X-Google-Smtp-Source: APXvYqzfsLFiVzl52QPqi39geGbcUfS4XiTHJYRx20OJF5w9UUz77wUS+JTwJdlus1wJ1HApS5Y8cA==
X-Received: by 2002:a17:902:6b07:: with SMTP id o7mr13800479plk.215.1572624596640;
        Fri, 01 Nov 2019 09:09:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6413:fc8c:9538:d2ea:eab:d2c0])
        by smtp.gmail.com with ESMTPSA id v63sm6705910pfb.181.2019.11.01.09.09.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Nov 2019 09:09:55 -0700 (PDT)
Date:   Fri, 1 Nov 2019 21:39:43 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Tudor.Ambarus@microchip.com
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        darshak.patel@einfochips.com, prajose.john@einfochips.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
        dwmw2@infradead.org, computersforpeace@gmail.com,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Message-ID: <20191101160943.GA20347@Mani-XPS-13-9360>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
 <20191101145806.GB13101@Mani-XPS-13-9360>
 <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 01, 2019 at 03:55:01PM +0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 11/01/2019 04:58 PM, Manivannan Sadhasivam wrote:
> >>> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> >>> supports dual/quad I/O mode with 512 blocks of memory organized in
> >>> 64KB sectors. In addition to this, there is also small 4KB sectors
> >>> available for flexibility. The device has been validated using Thor96
> >>> board.
> >>>
> >>> Cc: Marek Vasut <marek.vasut@gmail.com>
> >>> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> >>> Cc: David Woodhouse <dwmw2@infradead.org>
> >>> Cc: Brian Norris <computersforpeace@gmail.com>
> >>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> >>> Cc: Richard Weinberger <richard@nod.at>
> >>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> >>> Cc: linux-mtd@lists.infradead.org
> >>> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> >>> [Mani: cleaned up for upstream]
> >> Can we keep Darshak's authorship? We usually change the author if we feel that
> >> we made a significant change to what was originally published.
> >>
> >> If it's just about cosmetics, cleaning or rebase, you can specify what you did
> >> after the author's S-o-b tag and then add your S-o-b, as you did above.
> >>
> > I'd suggest to keep Darshak's authorship since he did the actual change in
> > the bsp. I have to clean it up before submitting upstream and I mentioned
> > the same above.
> > 
> 
> Ok, I'll amend the author when applying, it will be Darshak.
> 

Ah no. I was saying we should keep both of ours authorship. It shouldn't
be an issue because we both are involved in the process.

Thanks,
Mani

> Thanks,
> ta
