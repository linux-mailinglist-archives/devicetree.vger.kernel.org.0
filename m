Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDA63B3807
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 22:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbhFXUnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 16:43:45 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:44602 "EHLO
        mail-il1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232029AbhFXUno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 16:43:44 -0400
Received: by mail-il1-f176.google.com with SMTP id i17so7648338ilj.11
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 13:41:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ok2hpPykmGXiHG+F4AI/3x10F+GmrNWvoxbtP7wfVfk=;
        b=SNz7gscZW/LlqxKRWZzUi9+APWCMjljyIgYRNJe9aqKtty4aaBI/U7DmZiFmINCcV2
         whZezKR7nRL65igQLyDyx0yitvbOP5tEYltb3RZWbQNpBL7U1G2u07bmriB8EBA9Gwqf
         oi0u9aLmWqYktrKW6sn6RnSrGObJWWkCO+CKxwe2UgxygEd9QrSJfL3aBJy5Cj6yXMiN
         Yda1yfEsyAB9X4ytjok7xMzMc0m9k8WzV7XUQgCO1iwhyYriGXEj5M5du0z4SItYw50+
         WEwwRgzhUMgNG9aFCzXgFKbWLnQ7/2WNxDk6Z/HUTMf51ze+2wGYjHroezhF2Xl2siwa
         udLA==
X-Gm-Message-State: AOAM530P7BZd7ufhTZ1GCfjwKiFaabSXmf7+mn4IzGmHGBpZrtUDvC7n
        jFOnBFzYMwF/QKZjdY42Fw==
X-Google-Smtp-Source: ABdhPJwXLgCAnzkptSaGJbutUQkzKaRCfp3LJFfq+IR5bbrRUXgooEmjH+rnmGhAKkECrdVruTXXhw==
X-Received: by 2002:a92:6509:: with SMTP id z9mr4926510ilb.184.1624567284918;
        Thu, 24 Jun 2021 13:41:24 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m19sm2350998ilj.52.2021.06.24.13.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 13:41:24 -0700 (PDT)
Received: (nullmailer pid 1953251 invoked by uid 1000);
        Thu, 24 Jun 2021 20:41:22 -0000
Date:   Thu, 24 Jun 2021 14:41:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     "Lukas F . Hartmann" <lukas@mntre.com>, kernel@pengutronix.de,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: fsl: add Nitrogen8 SoM
Message-ID: <20210624204122.GA1953222@robh.at.kernel.org>
References: <20210614170633.31638-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210614170633.31638-1-dev@lynxeye.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Jun 2021 19:06:29 +0200, Lucas Stach wrote:
> Add compatible for the BoundaryDevices Nitrogen8 system on module.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
