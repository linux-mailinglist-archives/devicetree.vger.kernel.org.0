Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74F4F5960FD
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 19:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231131AbiHPRWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 13:22:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234836AbiHPRWt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 13:22:49 -0400
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 014DC7C303
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:22:49 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id z8so5716124ile.0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ZHnZl3ym2vIb1DqfF41kB+hOU6xwc5iPv4rLrgAJ00k=;
        b=zHtNJl8PDM+Y9nuSF5h98XbUIUxPWPpdQzMCJYm24thB/afelyzsisZXfRn8xaQnJN
         08wELGDaSWEEPeq6cLblZIkWnrKofCH35iX2KxItthpzB0r/yjHUzg3Zbp33Ge9erMxV
         t4mDKdLpZs75Jt9MLwYSwSzlb7fbasmOm7h5rJXK4EUo1JdzNw40MdzHsb1jLAs2yoe3
         eSJI/KF0sHMJadJcsKOwxP5Fyez/BDst9jplw29RM81+n6lgNPkod5y33gkNJcF/+xUd
         Cfa2zj7AWvd6MSTwn/wU9Q3wlX/3XhL5a2qfOO1YeIaZg2N7lSwjdmW+E/M1a224uEk4
         mKfQ==
X-Gm-Message-State: ACgBeo3c5a4fvWDwzBc0IbW1GAJ/oKk17is9mXwZ+2+HjbZvNVYXLQww
        Nc4TXqP17n6bXTVNfSuR/w==
X-Google-Smtp-Source: AA6agR5b2ckymTX+22qn74lBza90/3D4mUGYoitkuvx5tJHjF24DOixmA4nX+DorvbKrPOApYJ0+Lw==
X-Received: by 2002:a92:cbc4:0:b0:2e7:147b:6f7 with SMTP id s4-20020a92cbc4000000b002e7147b06f7mr1157509ilq.174.1660670568228;
        Tue, 16 Aug 2022 10:22:48 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id y9-20020a056638228900b0034343fc4fdbsm4698925jas.44.2022.08.16.10.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 10:22:47 -0700 (PDT)
Received: (nullmailer pid 2407941 invoked by uid 1000);
        Tue, 16 Aug 2022 17:22:46 -0000
Date:   Tue, 16 Aug 2022 11:22:46 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     robh+dt@kernel.org, linux-phy@lists.infradead.org, kishon@ti.com,
        heiko@sntech.de, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>, hjc@rock-chips.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        airlied@linux.ie, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch
Subject: Re: [RFC 2/4] dt-bindings: phy: phy-rockchip-inno-dsidphy: add
 compatible for rk3568
Message-ID: <20220816172246.GA2407886-robh@kernel.org>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
 <20220812143247.25825-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220812143247.25825-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Aug 2022 09:32:45 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a compatible string for the rk3568 dsi-dphy.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
