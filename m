Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 589F51A868E
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 19:04:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388209AbgDNRED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 13:04:03 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:38546 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728549AbgDNREA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 13:04:00 -0400
Received: by mail-ot1-f65.google.com with SMTP id k21so357300otl.5
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 10:04:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5E6AKPFuk4jOgvMShpUokg4KhfWDylI23zxNYnDyJ7Q=;
        b=NZ7rQIHRpK7TjKFE0nLucCFby9fhryotcYRR0UIv9DcPx90PzE0n/8s0BtWORhkFJ7
         37JbuFRlssynnZHAPW0gDO7jyx9brOf0niPh1Kwams7Pmblubd2uWzCewbKtZFbk/GQA
         jeNB1xn+dzXT5W1px3/rR2as9MUZYiXyKxaXcjcDJGd1t+/1aecmGr5eaPRC9JRaiHyc
         P2jIV7qyNdzPmT25qHYC3K8wKzPJcZhhNu6H0o+yQ4Fj6DymDbsQyf1lxAWyFchtSBv4
         0JDnjRtGDhOX3wkPEBFvEecY1I0V43Y/3krfEywjEVKFEZz+Le1id7zl1M3URQyU0+zv
         CHIA==
X-Gm-Message-State: AGi0PuYTOFEF2xSct8hFGKkY/RFknhRnmXC0vCBWiU++F18UxrknFwp6
        +YP2SfwQguw2BoODYGkTcg==
X-Google-Smtp-Source: APiQypLiWvkykoVJFzDScXjYv0x+U0TCtMh8u7TgEYjyNtOGiw1gvQZVhdg8XLOJK7dca7uWg2RjcQ==
X-Received: by 2002:a4a:c3c9:: with SMTP id e9mr12430120ooq.51.1586883839887;
        Tue, 14 Apr 2020 10:03:59 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y92sm111172ota.33.2020.04.14.10.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 10:03:59 -0700 (PDT)
Received: (nullmailer pid 7301 invoked by uid 1000);
        Tue, 14 Apr 2020 17:03:58 -0000
Date:   Tue, 14 Apr 2020 12:03:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, leoyang.li@nxp.com,
        festevam@gmail.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: imx: add kontron smarc to schema
Message-ID: <20200414170358.GA7268@bogus>
References: <20200402083436.24710-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402083436.24710-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu,  2 Apr 2020 10:34:36 +0200, Marco Felsch wrote:
> Add Kontron SMARC module compatibles to the schema so we can make use of
> them for the validation.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
