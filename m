Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69D453158CD
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 22:43:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbhBIVlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 16:41:39 -0500
Received: from mail-ua1-f53.google.com ([209.85.222.53]:37176 "EHLO
        mail-ua1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233840AbhBIVGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 16:06:19 -0500
Received: by mail-ua1-f53.google.com with SMTP id d3so6301336uap.4
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 13:06:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0lSV4AohGsl1Zr1fTQrQWSThsP43A4U9NitlrjcGFLY=;
        b=Szd2ZHk9F/ocMLpbkZvZPAFX8OerBdm5XsGJHx9KoLfA8CFZ4/Kbq8ULRf35mUNydq
         9JQedFEry2dsjL2AFYpIeR5JxBhDegAhWFET8yhsaQ8e7UAQWCI9nbfOxWhppvlW1Xd/
         YSh5zu3bEM6wLTQ7VadVrLN+rj5FTMqlP9O5Ms0u45sAdPMAX6JTq8nlDsLIWKfOwE0M
         U/rINuHvmykqnoer490dRWssQ/7hU1VYBVfWHqJ2UfljOwOGI1uzpeywbuGTKuvzPZxQ
         th9YaBmZulISPkdVpLlkFKpBM2SycUj+EtX7OOl1vT4S878pwLZZCbNIxljgkpW/sZyC
         73HQ==
X-Gm-Message-State: AOAM5320yqCdbMyX2LlodznMAfHB/daruAGjBnE51UeTDCcwxKBn7ATl
        xdd2JwpNQnIQArkhKew08a15x1vPBA==
X-Google-Smtp-Source: ABdhPJzKfXsiizxjCyXEx0VckoiwC/5UFxLGdVQTZTq7WF7ZYGtOjNpOJapzmlORTAvYbqLUa9YFig==
X-Received: by 2002:a9d:71c6:: with SMTP id z6mr17187410otj.276.1612897691853;
        Tue, 09 Feb 2021 11:08:11 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i20sm4504476otl.78.2021.02.09.11.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 11:08:10 -0800 (PST)
Received: (nullmailer pid 4167159 invoked by uid 1000);
        Tue, 09 Feb 2021 19:08:09 -0000
Date:   Tue, 9 Feb 2021 13:08:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Claudiu Beznea <claudiu.beznea@microchip.com>
Cc:     nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linus.walleij@linaro.org, alexandre.belloni@bootlin.com,
        ludovic.desroches@microchip.com
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: at91-pio4: add slew-rate
Message-ID: <20210209190809.GA4167103@robh.at.kernel.org>
References: <1611747945-29960-1-git-send-email-claudiu.beznea@microchip.com>
 <1611747945-29960-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1611747945-29960-2-git-send-email-claudiu.beznea@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 Jan 2021 13:45:43 +0200, Claudiu Beznea wrote:
> Document slew-rate DT binding for SAMA7G5.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
>  .../devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt       | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
