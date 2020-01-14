Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A4A10139E13
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2020 01:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728904AbgANAZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 19:25:06 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:46231 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728894AbgANAZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 19:25:05 -0500
Received: by mail-oi1-f194.google.com with SMTP id 13so10134429oij.13
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 16:25:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UiO2+Fp93HhiZmZTyPCKddyYzvj9rECWLiqMRlRa5BM=;
        b=rQvcJKuEuQKB/ST8TTDWruXlNpgaYKyAZKEE4oyDuzguMhxz1YnsqcA0tpmci5ApWS
         EwePDUz61egBA1Rl5dBULukGwOCsoX8L92OdDmu8TfWzQ6DYJsHd6w+gYWg2CPjfkXZa
         inFjuK+f0SApbTOnGFcLyOawx2Jvpqv+AwDUhJ6c7fMoL4Vn6HlX0931Z1qxXRT6xFq/
         CEsqnHMhNVATdz6JdaVuAcY+g68t5UT5WfOrX7u6EzRDL0HlRD3A8R3rgzDnHSHxZsu9
         bXHfs7BEGXGY+QWUpyyYZ+fSZPML7YRFZSldZndGiYyQE17nsWqud2gN/qlw6FT3DFzV
         ugnA==
X-Gm-Message-State: APjAAAU0DYLGaVhL3jVhH148V4pELcEJk2AUs/zdovX0ClCRHI1XJPWf
        hewxVZ6gsc5zu31wtOn7XFN5GK1ZLA==
X-Google-Smtp-Source: APXvYqw6vD4+CWU8Cl0UE755mZpDSXNUB/s0mp7fS+ec7jBNi46n6dJ4LLm30K6NBl4CkmQI919e4w==
X-Received: by 2002:aca:5588:: with SMTP id j130mr14191173oib.122.1578961504221;
        Mon, 13 Jan 2020 16:25:04 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m11sm4064625oie.20.2020.01.13.16.25.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 16:25:03 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220b00
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 13 Jan 2020 18:18:03 -0600
Date:   Mon, 13 Jan 2020 18:18:03 -0600
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
Subject: Re: [PATCH v2 10/17] dt-bindings: atmel-smc: add
 microchip,sam9x60-smc
Message-ID: <20200114001803.GA13249@bogus>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-11-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578673089-3484-11-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Jan 2020 18:18:02 +0200, Claudiu Beznea wrote:
> Add microchip,sam9x60-smc to DT bindings documentation.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-smc.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
