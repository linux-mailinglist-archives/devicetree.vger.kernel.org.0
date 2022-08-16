Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF65E5960FC
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 19:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235081AbiHPRWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 13:22:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231131AbiHPRWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 13:22:37 -0400
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87A827C52E
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:22:36 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id n12so5427434iod.3
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:22:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=/xhUo44Zl18mAMZXi1Y6It/0tN5VB4Fd1x/4Rex+VMI=;
        b=FJhWY/qpIRNsQOJBHcphBmvzEqP+M4Ts3BGGdimL+iT0BP4IAispLvRT3qd6TPVV/Y
         LjedmBbZOLttOxee9Pb7qWpdwu48PpWTZV8At/JjK3kkNnZeRatF01mQ+dTiOWAftONZ
         i06qyrpF4PrIjrb7vLntR29cA6tPdd4TS5kS4fui7nW9aRotyf/tqVxjILbVsDKdwAY+
         ygmtI2fJfD0w7CdUu1XBMHKF4lCHeEGiG83ku2+OXTrbXAFWupdujA3eqn7XchjqRz3Y
         8ftuF2fSer/vcIohThpaWC/2/trawWDxYFDJ/f7r6zWoePEE4wKlVKaxzJ+QiZ9ouSRy
         k45A==
X-Gm-Message-State: ACgBeo11gSipJmfv6YBGPFwXIHXbR0PrN3OiCkyshcwTZpY/dcKAiBrd
        qZ89nQ3h2ayO5lJ4McAAEQ==
X-Google-Smtp-Source: AA6agR6hai1iYY0BGT9NpHe4tBpKi8DBQVs6OJHwV+WiBW3KtHVEUBGb218+cvyq6Xk1Fsgg0ZZCHA==
X-Received: by 2002:a05:6602:2c0c:b0:669:c1a9:245c with SMTP id w12-20020a0566022c0c00b00669c1a9245cmr9354129iov.218.1660670555746;
        Tue, 16 Aug 2022 10:22:35 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id p135-20020a02298d000000b00346ab331d24sm929055jap.73.2022.08.16.10.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 10:22:35 -0700 (PDT)
Received: (nullmailer pid 2407468 invoked by uid 1000);
        Tue, 16 Aug 2022 17:22:33 -0000
Date:   Tue, 16 Aug 2022 11:22:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, hjc@rock-chips.com,
        dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
        daniel@ffwll.ch, heiko@sntech.de, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        robh+dt@kernel.org, airlied@linux.ie,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [RFC 1/4] dt-bindings: display: rockchip-dsi: add rk3568
 compatible
Message-ID: <20220816172233.GA2407435-robh@kernel.org>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
 <20220812143247.25825-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220812143247.25825-2-macroalpha82@gmail.com>
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

On Fri, 12 Aug 2022 09:32:44 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The rk3568 uses the same dw-mipi-dsi controller as previous Rockchip
> SOCs, so add a compatible string for it.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
