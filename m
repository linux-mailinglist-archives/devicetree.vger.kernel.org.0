Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5C1864DE5A
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 17:16:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiLOQQr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 11:16:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbiLOQQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 11:16:42 -0500
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60FB32EF1A
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 08:16:41 -0800 (PST)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-1433ef3b61fso21527829fac.10
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 08:16:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WmhcSod630WMmrv8Iz4/Aem44InqHzLhbQpOczKGFtI=;
        b=5ISnZ6XES5+zZCKbmBrKnOipiAOJ83Fvl4oiurxKbgg92Er5eADuACVIKG8AP/Og1z
         oaWAupnJPnKJykJ2Iyyh733/S2FIL/ey2DzL3mJ29phkYnVGcwJruvWGK6N4ACeDgI/i
         Cl8Z1BK2nRcx9dxIiLe3Wb37xdI2VlDWO98DI1/Hu7NELzxvP2mCkDhApIeGbIaq14qt
         gqY6EX1n3lwe2yxIOEA6HBsJg0wtX82O5xYS22pOXLSmDSrsJ1G9XYOmu3riJakpB1WG
         qAU+GFTtSk7QVjxcRciv83xTC/+JCqt7wGsgg8AuqxwywoLvHwWRsQWkWOEkbtlapFZA
         jOxA==
X-Gm-Message-State: ANoB5pn+qkzfKCh0miyTlhrDQnOgepOY9xmBLbIuQrF696LzHZjBDtur
        k4lrNhRVJHukFi4Pgx44qw==
X-Google-Smtp-Source: AA0mqf4ZpeLvaDZnLN6XCqYqsI3uas4LVmmjGi9sULsC0m6a0NGAeb3+kld7P5xa9O7lOS23KVKnfQ==
X-Received: by 2002:a05:6870:ebc4:b0:144:e283:831f with SMTP id cr4-20020a056870ebc400b00144e283831fmr14321577oab.11.1671121000173;
        Thu, 15 Dec 2022 08:16:40 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r20-20020a05687080d400b0012d939eb0bfsm4222398oab.34.2022.12.15.08.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 08:16:39 -0800 (PST)
Received: (nullmailer pid 138172 invoked by uid 1000);
        Thu, 15 Dec 2022 16:16:38 -0000
Date:   Thu, 15 Dec 2022 10:16:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch,
        airlied@gmail.com, sam@ravnborg.org, thierry.reding@gmail.com,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V5 2/4] dt-bindings: display: panel: Add Magnachip
 D53E6EA8966
Message-ID: <20221215161638.GA135300-robh@kernel.org>
References: <20221214180611.109651-1-macroalpha82@gmail.com>
 <20221214180611.109651-3-macroalpha82@gmail.com>
 <CACRpkdY7UArNJ5ZH8f5rx+9aoV_ii=0aE9PCj-6XHCL7Om0+=Q@mail.gmail.com>
 <SN6PR06MB53429788776760E4BDBC55ABA5E19@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN6PR06MB53429788776760E4BDBC55ABA5E19@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 15, 2022 at 08:44:56AM -0600, Chris Morgan wrote:
> On Thu, Dec 15, 2022 at 09:47:19AM +0100, Linus Walleij wrote:
> > On Wed, Dec 14, 2022 at 7:06 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> > 
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >
> > > Add documentation for Magnachip D53E6EA8966 based panels such as the
> > > Samsung AMS495QA01 panel.
> > >
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> > (...)
> > >  .../display/panel/magnachip,d53e6ea8966.yaml  | 62 +++++++++++++++++++
> > 
> > It's fine to keep this as samsung,ams495qa01.
> > 
> 
> Would the device tree team be okay with that change? The driver name
> itself has changed and I fear possible confusion if someone is looking
> for docs by driver name.

Doesn't matter to me either way.

Rob
