Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31D5657D40E
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 21:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232681AbiGUTXd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 15:23:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231897AbiGUTXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 15:23:32 -0400
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22F088E38
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:23:29 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id r70so2104776iod.10
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 12:23:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZsT13cbOfKaeqRu9m6sKUj9DOoQkNTpRxNMP6NsrGLg=;
        b=qiHNtnh0zUEbuLosATXDvDR/l2cL9mxPVSu18QPK+Sow08/rvfeqhqrNWJ84gv/zO1
         EjK/1QlMAzbibxvAD/YuIZK4MFaBZzVqQ3bgxpu1Wdh0yokLFM87gvJ4w7D93gu0aJ8l
         YS1/nQgTFjanwVNL5jubO4Kn1W+pAGqu6JB0M2KnbH+iTekXnLVXFoKhmQSI7sjr5T51
         FiCc+AVAKD295aw8LFYkUyqpADXkNQEEogha0/4RZoW9VD4AogmTVXxfJmvu2Rm/sKQL
         jqY6sPOZo16+pd5FigXK6xZzfMwkh/YK4ivTCYX+QFIHzLhrNfzAbGAak+AbkhpfZ9q1
         Z5oQ==
X-Gm-Message-State: AJIora+8sNxxDq17GnVVULKxd3SuiHPBQB/SOGQPHoJvfNSlSFDtDRvT
        laKykTS1AsHRRYzKcuj2VA==
X-Google-Smtp-Source: AGRyM1u2lQyLy8WDrnn4+uoHo6gZ+5lcVtU0qCLZ3gKuIWYEjUWbTUdsZTiD3FSSFapjMrVlA6B86A==
X-Received: by 2002:a05:6638:1694:b0:33f:8178:53c4 with SMTP id f20-20020a056638169400b0033f817853c4mr27614jat.7.1658431409184;
        Thu, 21 Jul 2022 12:23:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e42-20020a02212a000000b00339ceeec5edsm1125840jaa.12.2022.07.21.12.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 12:23:28 -0700 (PDT)
Received: (nullmailer pid 1782639 invoked by uid 1000);
        Thu, 21 Jul 2022 19:23:27 -0000
Date:   Thu, 21 Jul 2022 13:23:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        robert.foss@linaro.org, dri-devel@lists.freedesktop.org,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Densitron
Message-ID: <20220721192327.GA1771991-robh@kernel.org>
References: <20220721030327.210950-1-marex@denx.de>
 <YtjnFxA66V6bMePa@pendragon.ideasonboard.com>
 <0b4927f7-f1e4-60a8-1eaf-6d4cbc38daec@denx.de>
 <YtlHz1+zLR2oi7cK@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YtlHz1+zLR2oi7cK@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 03:34:23PM +0300, Laurent Pinchart wrote:
> Hi Marek,
> 
> On Thu, Jul 21, 2022 at 02:24:57PM +0200, Marek Vasut wrote:
> > On 7/21/22 07:41, Laurent Pinchart wrote:
> > > On Thu, Jul 21, 2022 at 05:03:27AM +0200, Marek Vasut wrote:
> > >> Densitron is a manufacturer of LCD panels.
> > >> https://www.densitron.com
> > >>
> > >> Signed-off-by: Marek Vasut <marex@denx.de>
> > >> Cc: Guido Günther <agx@sigxcpu.org>
> > >> Cc: Jagan Teki <jagan@amarulasolutions.com>
> > >> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >> Cc: Linus Walleij <linus.walleij@linaro.org>
> > >> Cc: Rob Herring <robh+dt@kernel.org>
> > >> Cc: Sam Ravnborg <sam@ravnborg.org>
> > >> Cc: Thierry Reding <thierry.reding@gmail.com>
> > >> ---
> > >>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> > >>   1 file changed, 2 insertions(+)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > >> index 88859dd4040ee..6277240536b44 100644
> > >> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > >> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > >> @@ -312,6 +312,8 @@ patternProperties:
> > >>       description: Dell Inc.
> > >>     "^delta,.*":
> > >>       description: Delta Electronics, Inc.
> > >> +  "^densitron,.*":
> > > 
> > > How about "dsn", to follow the practice of using stock names as vendor
> > > prefixes ?
> > 
> > Is there any benefit to that ? All I can see is that it's making DTS 
> > less clear and more difficult to read. It is easy to map "densitron" to 
> > "densitron" when it is spelled out like so in the DT, but it sure isn't 
> > immediately obvious that "dsn" means "densitron" without extra look up. 
> > And even that extra look up of "dsn" does not return densitron, but some 
> > woodworking company and other totally unrelated results.
> 
> I don't know where that practice originates from, and if it's still the
> recommended naming scheme these days. All I know is that it was the
> recommended scheme at some point. I expect Rob will be able to tell
> which name is best.

The other practice is using the website name minus .com or whatever. I 
would stick with that here.

Rob
