Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C58613B5C2
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 00:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728844AbgANX0x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 18:26:53 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:44467 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728650AbgANX0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 18:26:52 -0500
Received: by mail-oi1-f194.google.com with SMTP id d62so13589779oia.11
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 15:26:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OD3k/3afce55aKrw/+Sox/ckv7HTxlsRWXlz74Axqv4=;
        b=pWxVPdRCmydKPd0Oc/mkFXRcH0AamUgqzEyA7/ZA4lJ63h7XJ3PH8g5VmtGlEjfflq
         F2+OetMZZfZ2MytIEg5WWeK8oalS3JU9FYri9yTmDYdK2zOgiwB5aIp/2tEcNek4xC8U
         B5XnTT4DdQiwiz4vF7tlcowWORl4rkel8WDqPCrCIWszJ2bmDCTEsaPdfI+92EeLIpSB
         5AjJU/1avGxmCiVSSu8D5aL6hWJQgpLh8K40rJsX9NeG6OJSLtmWWGd3ejAkuNLaDmgJ
         /oNI4M4kJAkbZDTGMofGKpjl2MQrUnij8eoYyKwvQnXbn/0cUOt3RBMqGY0llZMcFG9t
         zZUw==
X-Gm-Message-State: APjAAAU4Uo2YrhRH1mD1D0mAOAwYtxrvJttt5riSilG0CzqDMY4v16R5
        mAN5Ili0iYYt+PXh6fW5wfCVcD4=
X-Google-Smtp-Source: APXvYqxzpBLOq/K4QwZunNhOG95M2jtdKkfDvIezx4aO6JZJDy1nW7QVHx9NtiXzOQclhSzesggKJQ==
X-Received: by 2002:aca:4fc2:: with SMTP id d185mr18822626oib.33.1579044411796;
        Tue, 14 Jan 2020 15:26:51 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p24sm5897911oth.28.2020.01.14.15.26.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 15:26:50 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2209ae
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 17:26:49 -0600
Date:   Tue, 14 Jan 2020 17:26:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Claudiu Beznea <claudiu.beznea@microchip.com>
Cc:     robh+dt@kernel.org, lee.jones@linaro.org, mark.rutland@arm.com,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        ludovic.desroches@microchip.com, radu_nicolae.pirea@upb.ro,
        richard.genoud@gmail.com, a.zummo@towertech.it,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-rtc@vger.kernel.org,
        Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: atmel-tcb: remove wildcard
Message-ID: <20200114232648.GA16276@bogus>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578997397-23165-2-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Jan 2020 12:23:11 +0200, Claudiu Beznea wrote:
> Remove wildcard and use the available compatibles.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel-tcb.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
