Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3DE5EFF53
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 23:34:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiI2Ve2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 17:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiI2Ve1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 17:34:27 -0400
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70D931D73E3
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:34:26 -0700 (PDT)
Received: by mail-oo1-f50.google.com with SMTP id k11-20020a4ab28b000000b0047659ccfc28so1001514ooo.8
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=eYvJmG2DezK7WO/Bmnou+uvozjcPMGth8jsvm80c5Ek=;
        b=WdQ3Qhr6je3qC9GVCFv6HRavt/DQyji70tFs4KJFXMQhlCOoxVIl/IkLouWwU5OD6x
         UDWavnTCTwGKegLq+Jw7KFcEp9L5IxkCW8nNR+IOiCixFrNrkbRkCX7b3o3iYpW5wSAx
         R+02kLrDExYcholSTfaWfHAaPOoXELFQJBgxv5zwKcSo4ylfDPklBNZYWYprkkj8XpPK
         b+n5nVLvPlYB3Pylvr7DX0pxRUxlpDglH5L0HuFE/2nXUE3nk29Xnur9hYyoggKqdutf
         7sYAO0J2JkHfbTSqrFG0cjWlXDdk+lZ2T0Gjk67zc2MqWfxVspZ6KFm+45cayM6KpEhp
         d8fQ==
X-Gm-Message-State: ACrzQf0k5vmV6sXL5RQ9pL8Dt9McP75vx/sfRQ4IeUSREWfYSRtNcDQl
        mqbTsh0GnWYWTCkU85rxug==
X-Google-Smtp-Source: AMsMyM42oLN4Lsz9nA0FiglN+3/h2Vck9CaLP4Kz+0lcc3iP6YyxEmq4271U8YGHRRybBtuefJClIA==
X-Received: by 2002:a4a:4847:0:b0:443:347d:6617 with SMTP id p68-20020a4a4847000000b00443347d6617mr2179371ooa.94.1664487265644;
        Thu, 29 Sep 2022 14:34:25 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w92-20020a9d3665000000b0061c9ccb051bsm184987otb.37.2022.09.29.14.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 14:34:25 -0700 (PDT)
Received: (nullmailer pid 2750589 invoked by uid 1000);
        Thu, 29 Sep 2022 21:34:24 -0000
Date:   Thu, 29 Sep 2022 16:34:24 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     Maya Matuszczyk <maccraft123mc@gmail.com>, airlied@gmail.com,
        thierry.reding@gmail.com, sam@ravnborg.org,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, daniel@ffwll.ch,
        Chris Morgan <macromorgan@hotmail.com>,
        krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH V3 1/2] dt-bindings: display: panel: Add Samsung
 AMS495QA01  bindings
Message-ID: <166448726388.2750529.4671119627643773426.robh@kernel.org>
References: <20220926164333.7485-1-macroalpha82@gmail.com>
 <20220926164333.7485-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926164333.7485-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Sep 2022 11:43:32 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the Samsung AMS495QA01 panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
