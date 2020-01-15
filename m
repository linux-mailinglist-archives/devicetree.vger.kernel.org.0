Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED3413B724
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 02:43:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728993AbgAOBnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 20:43:49 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:44595 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728988AbgAOBnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 20:43:49 -0500
Received: by mail-oi1-f196.google.com with SMTP id d62so13862150oia.11
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 17:43:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iLGTssc9FHCMcOGMTyr/UYKoEZZS9tYZ4rHOO35XpvA=;
        b=aDLWixq+Nku26aEWiOTAvKMt5Bn805MkbO3TZz7iToTowy3xXr/WJNhAUZfnU8HIpD
         9CaZ3CUhM2Zu/PEe6WKaF7a2UxE12HAiip7bRzKRenK3WrxiUZa0450cT1rmuhzrS8jx
         kkquM6fB+cYsnYYSAc72eS2t3/QCO9WPv9ROpH76iNpk800Jnv+U9gMYXzrfbTkUCsEt
         P/sWYXR4OJ5UzoERHQXt6kp9yQGJ5IqxHEVQM8VDpvo21/Q2slTBkB0EXJL5540nOqM8
         PvUx8O6zSM017DJ1ggbc+68lUuU2DxQFzf1Ki+IGcrgXxaZqpe/9Rc30m/qhF5/tVWtm
         +2Qw==
X-Gm-Message-State: APjAAAXwRvBalFlJ50dFPy7fdyMJTGGAMPNWjMJa87Cugb/b89eXXPeN
        R6Z3rEtvKZbY9SoV3RJXCe0kxWE=
X-Google-Smtp-Source: APXvYqwdMuuhdr1Fw7XWYw42J3uYNkkT9I7f0IJMr70h+sduJSL8osiL1CUnBOmUvI7pRXKZ93h1gA==
X-Received: by 2002:aca:cc87:: with SMTP id c129mr18551956oig.13.1579052628465;
        Tue, 14 Jan 2020 17:43:48 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 26sm5276715oij.9.2020.01.14.17.43.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 17:43:47 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220a2e
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 19:43:46 -0600
Date:   Tue, 14 Jan 2020 19:43:46 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     support.opensource@diasemi.com, linux@roeck-us.net,
        robh+dt@kernel.org, lee.jones@linaro.org,
        stwiss.opensource@diasemi.com, Adam.Thomson.Opensource@diasemi.com,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: da9062: add suspend disable
 option
Message-ID: <20200115014346.GA20553@bogus>
References: <20200108095704.23233-1-m.felsch@pengutronix.de>
 <20200108095704.23233-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108095704.23233-3-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Jan 2020 10:57:03 +0100, Marco Felsch wrote:
> Document the watchdog disable option which can be used if the hardware
> automatic suspend option is broken.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/watchdog/da9062-wdt.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
