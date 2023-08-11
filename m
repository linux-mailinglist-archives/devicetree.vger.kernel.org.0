Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11C7F7791CA
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 16:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235830AbjHKO0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 10:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234384AbjHKO0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 10:26:45 -0400
Received: from out-120.mta1.migadu.com (out-120.mta1.migadu.com [IPv6:2001:41d0:203:375::78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BCE12712
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 07:26:44 -0700 (PDT)
Date:   Sat, 12 Aug 2023 00:26:15 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
        t=1691764002;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=ThgEcDB8JUzTndOqcy+Y5WmjStMnn8tsicZSZ/0y+p8=;
        b=od31vtjhsH6yLn0+f3Xn0B057WY6B0uUIZNA7ZxIVUHn99CyOCcNo4Geoykt07xRnCEC31
        ka1/woyaNakdNOs2NcizNBfqnLz8fDOLplrgacm7xqsLMlfvfFjA7QN6EZM4BQS0vl2baP
        vTTn/X8N6ebfa49tNWutNpONQEN+XRiTBNKJNGlxy4ICIRmtvRIll1QXRaV9AOS2wj7q59
        wrr2r25yZb8S8kKtY0mGcdcd8byttl441GzZeVzKWlyWzQXu5U8JhCxVp8FUTdlznU1m8U
        8ElCWg83QMYTMI6IZExxwzGZpblilcv01CxXMrPGNnvE9Dnnoy3CUOFDkhimqA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   John Watts <contact@jookia.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, patches@opensource.cirrus.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] ASoC: dt-bindings: wlf,wm8782: Add max-rate property
Message-ID: <ZNZFB2-kBrpnMSn1@titan>
References: <20230810224930.3216717-1-contact@jookia.org>
 <20230810224930.3216717-4-contact@jookia.org>
 <ZNY+x/R8/T5ysPhy@finisterre.sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZNY+x/R8/T5ysPhy@finisterre.sirena.org.uk>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 11, 2023 at 02:59:35PM +0100, Mark Brown wrote:
> On Fri, Aug 11, 2023 at 08:49:30AM +1000, John Watts wrote:
> 
> > + - max-rate    : max supported audio rate configured by FSAMPEN pin, defaults to 48000
> 
> This seems like a cumbersome and error prone way to configure this - why
> not just have the binding specify the state of the pin?  That's just a
> boolean high/low whereas this requires getting the rate right and then
> having the driver validate it.

Hi there, the pin is tristate, Z, 0 and 1. How would that be represented?

John.
