Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4068139E01
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2020 01:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729291AbgANAUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 19:20:35 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:42326 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729486AbgANAUe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 19:20:34 -0500
Received: by mail-oi1-f195.google.com with SMTP id 18so10149481oin.9
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 16:20:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/2uIWxQRw2ac2zDhobeFtImF06Kett0ywn6nB0mPlAo=;
        b=myrGyiBoHRC0YgeOT+rvZZTTzaMbYDEzLP+Jw1ZU6CHf2Rl/tFSrNt6lwHkVZGkduE
         EX87/jiKwx4XLqphX/7LNR8NmUSm7AjpVkcgM7bCo0Zh9STgT/FBZRAdHY1zoHoJOzIL
         tPRTFIsiYWLz31DgMqrANJeNB/oRyGLZvJTzZBcWHKldNqiZoFrCL9dbPxvjZCYMSkGw
         XGAWr4pzrGdusppBon1EoqbCGp9zvIJpYRCK3Jrm8B/CjdaIKOzBNvnfEpI+gXLFE+Ae
         6tSKiLL8oDKZNBd/IsnzltQd3xmeCj8RJPCMBkR8Op+6N8n/kmzP4l2srgIwQiUQRKs3
         QxtQ==
X-Gm-Message-State: APjAAAUSdQLsnHhXtCLNROVToRrZUabb4lteSOEzADQhxFH9wki0aoSQ
        9V5wcbCflFSa5qVu7B+jEWvH3RZbZA==
X-Google-Smtp-Source: APXvYqwvnSKD6PC9OthyHw3iW0DNC3SNOlqV9488ogLcJWJfr8xU2vyV/Yjt+ViVoEQ+iRT4zl/MHA==
X-Received: by 2002:aca:1913:: with SMTP id l19mr13928340oii.47.1578961232958;
        Mon, 13 Jan 2020 16:20:32 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v200sm4074474oie.35.2020.01.13.16.20.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 16:20:32 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 221ab2
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 13 Jan 2020 18:16:59 -0600
Date:   Mon, 13 Jan 2020 18:16:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Claudiu Beznea <claudiu.beznea@microchip.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        ludovic.desroches@microchip.com, vkoul@kernel.org,
        eugen.hristev@microchip.com, jic23@kernel.org, knaack.h@gmx.de,
        lars@metafoo.de, pmeerw@pmeerw.net, mchehab@kernel.org,
        lee.jones@linaro.org, radu_nicolae.pirea@upb.ro,
        richard.genoud@gmail.com, tudor.ambarus@microchip.com,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        wg@grandegger.com, mkl@pengutronix.de, a.zummo@towertech.it,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-media@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-can@vger.kernel.org, linux-rtc@vger.kernel.org,
        Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 08/17] dt-bindings: atmel-nand: add
 microchip,sam9x60-pmecc
Message-ID: <20200114001659.GA11452@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-9-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578673089-3484-9-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Jan 2020 18:18:00 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-pmecc to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/atmel-nand.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
