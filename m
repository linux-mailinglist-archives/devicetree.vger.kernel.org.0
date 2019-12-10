Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64675118607
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2019 12:15:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727306AbfLJLPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Dec 2019 06:15:06 -0500
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:48211 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727018AbfLJLPF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Dec 2019 06:15:05 -0500
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 8657040008;
        Tue, 10 Dec 2019 11:14:55 +0000 (UTC)
Date:   Tue, 10 Dec 2019 12:14:52 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Peter Rosin <peda@axentia.se>
Cc:     Rob Herring <robh@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH] dt-bindings: arm: Remove leftover axentia.txt
Message-ID: <20191210111452.GJ1463890@piout.net>
References: <20191120145536.17884-1-robh@kernel.org>
 <20191210110419.GI1463890@piout.net>
 <0ea488f6-adf9-d2fe-ef55-373a70cf04fe@axentia.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ea488f6-adf9-d2fe-ef55-373a70cf04fe@axentia.se>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/12/2019 11:10:33+0000, Peter Rosin wrote:
> On 2019-12-10 12:04, Alexandre Belloni wrote:
> > On 20/11/2019 08:55:36-0600, Rob Herring wrote:
> >> The bindings described in axentia.txt are already covered by
> >> atmel-at91.yaml, so remove the file.
> >>
> >> Cc: Peter Rosin <peda@axentia.se>
> >> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> >> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> >> Signed-off-by: Rob Herring <robh@kernel.org>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Right, this one fell of out of my memory due to overload. Sorry.
> 
> Acked-by: Peter Rosin <peda@axentia.se>
> 

Rob, I assume you are going to apply it in your tree. If you want that
to go through arm-soc, tell me, I can apply it too.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
