Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8C364608B
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 18:45:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbiLGRpB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 12:45:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229894AbiLGRox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 12:44:53 -0500
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A3B55CBE
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 09:44:52 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id h132so21531239oif.2
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 09:44:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bh3kJNWxxONTcLXhSVPL8j31R5ZDr7EBJ7l2X1kdsAM=;
        b=jAChlR4ryMziQS6DyjrvJryCSQCDk/HN+m42YwM+PiLNrgeuZgSmWDoNgkYw5DezlV
         fEvJmfC8LGVK7PaAlPDuRDZorJNgYcfQwHOHOKz3FQefSjIG9rmtHR9RDisXydNQjx6r
         Qc3wlS1BSTRFZOyD+pJBRHP7kdoy6HWnHomqnOUbQJsK5uRm+rux2tzBSZMxgIrCYNK2
         zvXM4DIOIDGB3RkUTZJLDyLw+YJ7Ri82xbgK75DxT21CMozCXYpG0+394duex4QGoWZd
         R//JfRlO57lZzwi+EfGhKO9umR+OovDu94OoHvca90FfgEhnwr9aYDFhsI7V2Y5/b9au
         L2ng==
X-Gm-Message-State: ANoB5pm/gw2ET3z5CCHvHLLajwwrjTgYHeEl/PLpvAIvJVg0PrOmUZ9l
        PH7puPAcoHlaNGPIBhRGFw==
X-Google-Smtp-Source: AA0mqf7uhb6ijSBjoNlIwqMlwkTA5E/1hfm7BXE8hSwPDgd1Pd2bWhJ1JtiYhQ71mmbh0+wi4Cud3Q==
X-Received: by 2002:aca:5c85:0:b0:35b:d7db:7f9d with SMTP id q127-20020aca5c85000000b0035bd7db7f9dmr16010624oib.157.1670435091906;
        Wed, 07 Dec 2022 09:44:51 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id fp43-20020a05687065ab00b00140d421445bsm12420856oab.11.2022.12.07.09.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Dec 2022 09:44:51 -0800 (PST)
Received: (nullmailer pid 2465122 invoked by uid 1000);
        Wed, 07 Dec 2022 17:44:51 -0000
Date:   Wed, 7 Dec 2022 11:44:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 2/2] dt-bindings: lcdif: Add optional power-domain
Message-ID: <167043509049.2465064.10919707670198151961.robh@kernel.org>
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
 <20221207151400.1572582-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207151400.1572582-2-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 07 Dec 2022 16:14:00 +0100, Alexander Stein wrote:
> i.MX8MP requires a power-domain for this peripheral to use. Add it as
> an optional property.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
