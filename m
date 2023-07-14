Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A48E3753DDD
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 16:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236118AbjGNOnI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 10:43:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236156AbjGNOmy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 10:42:54 -0400
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96D7710FA
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 07:42:48 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-346129c9512so4377035ab.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 07:42:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689345768; x=1691937768;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KafqaUPjCBQvFb5pvwK1WdmWPTr611IYKGNe6Y4q1jw=;
        b=d/UZpbCLcicDYkSkBr9hh1+VfSe0C3RvSqB7HlUtelEBTWfV+9upv1UiRnPfFaeILp
         rR5h9f5rgf/GfC4k+dJ5kTW+nF4OtCgCQ1g38JlLk19LvcrlA5ufeQzZnY/1W0xJUMQh
         mMyy++TJNlWZhbFr9qPPg66779XyspYgSZGu7J47b6JviSedJfGV4miaBC1Wyf4EYXKx
         Y4saDw3IIWpwLj6dXODcNQ8KJXE5ltlfm05PdfXdBBofZwiI+/3LHoxLgYs6cBt7p2tD
         /qnrf3s77sAUP31aE4eMHPq2tTBoVoan/dkzIPZvIDq1XTGTlCt/5bShNjQ16IG3l0Ur
         v+mA==
X-Gm-Message-State: ABy/qLaIM0QxYKDiewEALaHAPqPpigVYV3l/5GR3GjtfYi4kZ5o1jnRE
        nRTEX2VXF1gCtNiwDoY4MA==
X-Google-Smtp-Source: APBJJlGgw+aS9LF9nyYrifeO4PKMHlwWzPPjDwEY0tG7a8ECRbrBNcvL4TYX5yATAdGS/P2F6DiReg==
X-Received: by 2002:a05:6e02:1a62:b0:348:72fe:8de0 with SMTP id w2-20020a056e021a6200b0034872fe8de0mr443527ilv.14.1689345767787;
        Fri, 14 Jul 2023 07:42:47 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h12-20020a92d84c000000b0034267d3fcc5sm2788971ilq.55.2023.07.14.07.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 07:42:47 -0700 (PDT)
Received: (nullmailer pid 3499251 invoked by uid 1000);
        Fri, 14 Jul 2023 14:42:45 -0000
Date:   Fri, 14 Jul 2023 08:42:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Cezary Rojewski <cezary.rojewski@intel.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        =?utf-8?B?IkFtYWRldXN6IFPFgmF3acWEc2tpIg==?= 
        <amadeuszx.slawinski@linux.intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 14/15] ASoC: dt-bindings: renesas,rsnd.yaml: add
 common port-def
Message-ID: <20230714144245.GA3492124-robh@kernel.org>
References: <87mt04o96f.wl-kuninori.morimoto.gx@renesas.com>
 <87351wo921.wl-kuninori.morimoto.gx@renesas.com>
 <20230710151956.GA1992791-robh@kernel.org>
 <87lefn8gh9.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lefn8gh9.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 11, 2023 at 09:00:18AM +0900, Kuninori Morimoto wrote:
> 
> Hi Rob
> 
> Thank you for reviewing
> 
> 
> > > diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > > index 8a821dec9526..d9808b130e8d 100644
> > > --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > > +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> > > @@ -9,6 +9,20 @@ title: Renesas R-Car Sound Driver
> > >  maintainers:
> > >    - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> > >  
> > > +definitions:
> > 
> > $defs
> 
> Hmm... many drivers are using "definitions" ?

Patches welcome to change them. I don't think it's many (not counting 
types.yaml). Use of "definitions" or "$defs" is an exception.

> This kind of indication is very confusable...

"definitions" was common convention in early json-schema. "$defs" was 
added to the specification to standardize it.

> > >    port:
> > > -    $ref: audio-graph-port.yaml#/definitions/port-base
> > > -    unevaluatedProperties: false
> > > -    patternProperties:
> > > -      "^endpoint(@[0-9a-f]+)?":
> > > -        $ref: audio-graph-port.yaml#/definitions/endpoint-base
> > > -        properties:
> > > -          playback:
> > > -            $ref: /schemas/types.yaml#/definitions/phandle-array
> > > -          capture:
> > > -            $ref: /schemas/types.yaml#/definitions/phandle-array
> > > -        unevaluatedProperties: false
> > > +    $ref: "#/definitions/port-def"
> > 
> > It would be better if users just always used "ports { port {}; };" even 
> > in the single port case.
> 
> "ports" support is added, we can't modify past.

I don't understand. The graph APIs all work the same with or without 
'ports'. Changing the DT shouldn't affect the ABI.

Rob
