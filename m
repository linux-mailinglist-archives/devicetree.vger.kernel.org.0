Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5313D43B738
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 18:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234946AbhJZQdY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 12:33:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236233AbhJZQdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 12:33:15 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7A5CC061348
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 09:30:49 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4Hdy451hnszQk95;
        Tue, 26 Oct 2021 18:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1635265841; bh=XLMMqsRpEv
        3FYKXiVSWZySKrY2ef63BszlImvJV17No=; b=NHYzMwx0sjVvYUaAaDZgjm6jzN
        HLZFySZmyobBs5DtvP+z3JWKCwbNtVTezncGajoEZtd8itB1lrX+3Zqyb18YmpAU
        NOWlQRpMTnPC9CbkB+ufUySovXTdB2c8A9MVwfdywELacQj13hfqJL5edU4L02U6
        md2XUx5WnDSjfj430jErkw5Z9YJXxmjOP74jwU8u9S0d18vl1ft0qo/a8liubMSi
        /P2NslMuBP24qF6QTd0dlSTCKw8rUfdCtBYzgq9LWyfIBFIo2T/uTF6Vs50/wqhW
        JTehmhdNTOhTRrye/cLz3nR40Jw1XKpRFYuW2IrLxPBdHPkeK6IG7Q6p6rjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635265843;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=u3fWN9WaL/uoU5d1zljCLjiWKAeBvCe7TpPDdsJj9wo=;
        b=pnnqsBGt8VDhrHtdDDLjso8bfsfKP9ZErmOubLpMNBPI2eNIYOAWJ8Nb0mSegkhV1EBlMm
        8LA0//TEuUhdn2elDi6xO+02X5WMJ9/eJzNkFaUitP1Z71bbWjHH6HDFghMtjh6GyqgQuS
        iUCLiTCh8Gn0mYgXcrE5e5dIndqcOPGs/QdOwe5pDSGQ7iS74MLfyEJxa3z+icTfn0a2gV
        E+UfnbZsjYTVPmjK4eGpUkby71irluLD9RjZm4I7qYF823Q2u2sWNi3N7ZX9q/H2sAdJv+
        tBVZJwA/NGqNON5dI0ZsH9vkdfXcPXRbMM6+lH333ZYwMymVhRjGggJW3jU+jA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: sound: amlogic: t9015: Add missing AVDD-supply property
Date:   Tue, 26 Oct 2021 18:30:38 +0200
Message-ID: <2215645.ElGaqSPkdT@natsu>
In-Reply-To: <1jilxl5ang.fsf@starbuckisacylon.baylibre.com>
References: <20211023214856.30097-1-alexander.stein@mailbox.org> <1jilxl5ang.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Rspamd-Queue-Id: 34B181313
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Jerome,

Am Montag, 25. Oktober 2021, 17:53:04 CEST schrieb Jerome Brunet:
> On Sat 23 Oct 2021 at 23:48, Alexander Stein <alexander.stein@mailbox.org> 
wrote:
> > Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
> > do not match any of the regexes: 'pinctrl-[0-9]+'"
> > 
> > Fixes: 5c36abcd2621 ("ASoC: meson: add t9015 internal codec binding
> > documentation") Signed-off-by: Alexander Stein
> > <alexander.stein@mailbox.org>
> 
> Hey Alexander,
> 
> First, thanks for picking this up.
> 
> I think Rob's automated reply is because you forgot to update the
> example (if the property is required, it should be there)

Thanks for pointing that out, I noticed too that examples are validated as 
well, nice feature.

> Also, I believe this change could have been sent separately, to Marc
> (instead of Cc) and with the "ASoC" prefix.
> 
> With this changed
> Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

Yeah, I'll split the set during v2. Thanks for the review.

Best regards,
Alexander

> 
> > ---
> > I am aware that adding required properties to bindings is frowned upon.
> > But in this case it seems acceptable for the following reasons:
> > * AVDD-supply was used from the very first driver commit
> > * All DT (g12 and gxl) using t9015 controller provide AVDD-supply
> > 
> >   already
> > 
> > But I'm ok to not add it to required properties as well. The driver uses
> > it nevertheless though.
> > 
> >  Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> > b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml index
> > c7613ea728d4..5f4e25ab5af6 100644
> > --- a/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> > +++ b/Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
> > 
> > @@ -34,6 +34,10 @@ properties:
> >    resets:
> >      maxItems: 1
> > 
> > +  AVDD-supply:
> > +    description:
> > +      Analogue power supply.
> > +
> > 
> >  required:
> >    - "#sound-dai-cells"
> >    - compatible
> > 
> > @@ -41,6 +45,7 @@ required:
> >    - clocks
> >    - clock-names
> >    - resets
> > 
> > +  - AVDD-supply
> > 
> >  additionalProperties: false




