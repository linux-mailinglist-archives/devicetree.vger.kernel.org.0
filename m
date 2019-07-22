Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B2AA170A95
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 22:23:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729377AbfGVUXl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 16:23:41 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:52633 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729751AbfGVUXl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 16:23:41 -0400
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr [90.65.161.137])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id E8F1C200002;
        Mon, 22 Jul 2019 20:23:38 +0000 (UTC)
Date:   Mon, 22 Jul 2019 22:23:38 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rtc: Remove the PCF8563 from the trivial
 RTCs
Message-ID: <20190722202338.GC24911@piout.net>
References: <20190722140921.22681-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722140921.22681-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2019 16:09:21+0200, Maxime Ripard wrote:
> The PCF8563 has a binding of its own, with some, clocks related, additional
> properties.
> 
> Remove it from the trivial RTC bindings.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/rtc/trivial-rtc.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
