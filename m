Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67AD66142B7
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 02:11:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbiKABLk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 21:11:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiKABLj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 21:11:39 -0400
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F98D165AC
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:11:38 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id r187so14528817oia.8
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:11:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EtuNirfdP3MaA2p83xUDjwwQUX0NJu7/yIl+/F9+dHQ=;
        b=5+Grw//mTTQ+zn+RLkQA5Qu/TxBce7JnOZ5cdj+wZ2k3QtKaCjWCAmZQD0GJj+EqXq
         txpSymL1unHl7x3XZIosKo6eaj08dBceRM0puUGrIiuyKqUcZjy9pM7Wu8HNfHCDfZ2x
         G5wktuGEJ8avIGO49dnjVghtPyxqCR95D1q8kAAju5lxyKJ26pHXmYsl2ELTIDuijkFo
         Gg7TeDFa58ZWsAPSh+l/4jS3+Qf8WyLCjfmzSv8yaE6F0hf0ZqNVfMvO2OO8xE++1rfy
         D2wBn/qgKqeL6ma2biCkWhDilofn1C7/e72F4D29HZO1l3KAiu7oYQJKfRqNhLeW4lXW
         TCQg==
X-Gm-Message-State: ACrzQf1ln8tCe5QyqDCsqcJ9/ixIgSb8rwqpWK9prNeGDhWwEVWnvQ4C
        k4AIHxttZxC0UHwp+tuWwA==
X-Google-Smtp-Source: AMsMyM7PkPjCjvokoDKlgpXF0xGhT0xxEIWsQFKZusHIVxDlXwthc+cfIjbWAR/yst/cwmPzfUYQ+g==
X-Received: by 2002:a05:6808:1a13:b0:354:b339:25f2 with SMTP id bk19-20020a0568081a1300b00354b33925f2mr16488065oib.285.1667265097603;
        Mon, 31 Oct 2022 18:11:37 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j21-20020a9d7d95000000b00661b019accbsm3333754otn.3.2022.10.31.18.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 18:11:37 -0700 (PDT)
Received: (nullmailer pid 4041380 invoked by uid 1000);
        Tue, 01 Nov 2022 01:11:38 -0000
Date:   Mon, 31 Oct 2022 20:11:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        thierry.reding@gmail.com, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH V4 2/3] dt-bindings: display: panel: Add NewVision
 NV3051D bindings
Message-ID: <20221101011138.GA4040180-robh@kernel.org>
References: <20221028205009.15105-1-macroalpha82@gmail.com>
 <20221028205009.15105-3-macroalpha82@gmail.com>
 <762efc62-cad6-609b-c82d-01a4290e5948@linaro.org>
 <SN6PR06MB5342D758FFA64096002E348FA5359@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN6PR06MB5342D758FFA64096002E348FA5359@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 28, 2022 at 09:28:59PM -0500, Chris Morgan wrote:
> On Fri, Oct 28, 2022 at 07:01:12PM -0400, Krzysztof Kozlowski wrote:
> > On 28/10/2022 16:50, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add documentation for the NewVision NV3051D panel bindings.
> > > Note that for the two expected consumers of this panel binding
> > > the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> > > is used because the hardware itself is known as "anbernic,rg353p".
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Didn't you got here tag?
> 
> Yes, I'm so sorry. I always seem to miss one detail each time, I
> promise I'll get better (eventually, I hope). This one should
> already have the "Reviewed-by: Rob Herring <robh@kernel.org>" but
> I forgot to include it. Literally the only change from v3 is the
> return of a function changing from int to void, since that changed
> in the 6.1 kernel.

If you forget, just add the tags by themselves and the tools will pick 
them up.

Reviewed-by: Rob Herring <robh@kernel.org>

