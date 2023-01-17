Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12574670B82
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:15:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbjAQWPV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:15:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbjAQWOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:14:05 -0500
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2C3C367D3
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 12:32:27 -0800 (PST)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-12c8312131fso33313459fac.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 12:32:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ei7hUDAiokoxx/9WPMuOqNWvYrLQ+vjtAvN9ZovDvY=;
        b=ti4GDpcLFh37Qb18r4/o+lFRiiFJYJfSlcjN8My+NDdU7pdmnLFz2lIrZE3/iSYpYo
         h4MwWSnqcPwOx+8F43fVYic8ZPJTUCTCacZyCy4cu2Qs6YfqPGGzS4GFLqQgh1B3S83a
         ZPd8x8tosYKXtL7Odcj9V4XyKtwJjyHUr1EkYreyHuZsQF62ibEdDIkFVfeU5doTXLM/
         ZZAulVQhJIkqUvnfklwZ9Fc9Bo4yiF1qk3gnQgyl++FWAT79WsDoIW3vGzcVlOoXKlao
         yqGksGMqD3ElAaj9CSPqNFSqpW6BC5v3W2yaCNCyELohtEpbzPiT2lUnWfd3lmYI9P+E
         zxgA==
X-Gm-Message-State: AFqh2kp9OANifnaVHEXHGYqhzZfEfsiEQEnuhRLJtNmAiaJi/xH9ijvQ
        NcmxI5wF0rexH+MYRZROPb2wpPoovQ==
X-Google-Smtp-Source: AMrXdXvTo3qkCDH649Wp1lAdcXiMx/IKEWaaUO7T/RPepnEYZ4HtN0iRr0pfu3agouXpCeeVmUPdUA==
X-Received: by 2002:a05:6871:5ca:b0:144:1a42:fcfc with SMTP id v10-20020a05687105ca00b001441a42fcfcmr14339557oan.28.1673987547230;
        Tue, 17 Jan 2023 12:32:27 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w16-20020a4ad030000000b004a382acad85sm15362313oor.15.2023.01.17.12.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 12:32:26 -0800 (PST)
Received: (nullmailer pid 3658202 invoked by uid 1000);
        Tue, 17 Jan 2023 20:32:26 -0000
Date:   Tue, 17 Jan 2023 14:32:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and
 compatible for Radxa CM3i
Message-ID: <20230117203226.GA3650011-robh@kernel.org>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-3-jagan@amarulasolutions.com>
 <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
 <CAMty3ZD9f+_LB+vF+gnOcBTWMkNTVnRVzz8UaVqk9P_oOv_rUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMty3ZD9f+_LB+vF+gnOcBTWMkNTVnRVzz8UaVqk9P_oOv_rUA@mail.gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 17, 2023 at 06:25:44PM +0530, Jagan Teki wrote:
> On Tue, Jan 17, 2023 at 4:36 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > On 17/01/2023 11:55, Jagan Teki wrote:
> > > Fix the dt-bindings for Radxa CM3i SoM based boards with proper
> > > description and compatible strings recommended by Radxa.
> > >
> > > Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> > > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index 3d3c59624483..6f276d787e50 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -628,11 +628,11 @@ properties:
> > >            - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
> > >            - const: rockchip,rk3566
> > >
> > > -      - description: Radxa CM3 Industrial
> > > +      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
> > >          items:
> > >            - enum:
> > > -              - radxa,e25
> > > -          - const: radxa,cm3i
> > > +              - radxa,radxa-e25      # Radxa E25 Carrier Board
> > > +          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)
> >
> > No, it does not match your patch 2/7. It also does not make sense to
> > duplicate vendor prefix.
> 
> 2/7 follows the existing bindings and that one is incorrect as the
> actual product name is radxa-cm3i not cm3i. This patch is trying to
> fix that.

Compatibles are unique (hopefully) identifiers, not 'product names'. 
Granted, 'e25' is a bit terse, but does Radxa have multiple things which 
are called 'e25'? If not, then you don't need this change. If the name 
is problematic in some other way, then state that reason for the patch.

Rob
