Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82E55580830
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:27:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233889AbiGYX1u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:27:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230467AbiGYX1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:27:50 -0400
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8FFF26561
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:27:49 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id s204so15287698oif.5
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8oYhKynfWx9NaWSzEsCx30+DB/6sdfscG0yAYQujutM=;
        b=GTR+n8Xstcc1UbvmX1ubdGmIKsvNEqYDscMvEEKTPCDWSiGXdwQJNjr9tzyZJHh2Ni
         10CCr6V0jS5Ax6x6dQTol7AQd4/EdpmbOAalCK1fRnVTkR9x3iYIFmMLGRycrX4w6ezf
         4WrFWM6t7gge8Yd+OK8KXhHh0/89tTjEfgdxQjcg7/oFpZGPC5SifbLVuF326zvtPSGq
         fKPL8uC5PuVrQutw0zgFuEHboaF6SxRp22S9inLVXKxwFkYufVnJ9qBB+SJlpkAM7pSW
         ZnigBs4S4S6neKAFeKn4kKxgApErXpOyX/XEKMhOK0bC9VI+MpNNBn2OZatvYHhS3ZX+
         hdRw==
X-Gm-Message-State: AJIora8+TNzfNjsqDk5BS1KsqewNIRVRmQ76HCGWDQihjQ2Kq5nxEA4J
        JKuNb/9y+xZ98sf7ScCMqw==
X-Google-Smtp-Source: AGRyM1uh5OpQAd0GsCkxOIOFynCg6VcdXBYFUig50InQ0YE5u3xh9AY3IaGE90zvNca5mYBDnaQQfw==
X-Received: by 2002:a05:6808:bcb:b0:33a:ce5d:be58 with SMTP id o11-20020a0568080bcb00b0033ace5dbe58mr5318505oik.223.1658791669015;
        Mon, 25 Jul 2022 16:27:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id g5-20020a056870c14500b0010c0d04eb00sm7310434oad.2.2022.07.25.16.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:27:48 -0700 (PDT)
Received: (nullmailer pid 2955529 invoked by uid 1000);
        Mon, 25 Jul 2022 23:27:47 -0000
Date:   Mon, 25 Jul 2022 17:27:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 19/22] dt-bindings: arm: rockchip: Add Edgeble AI Edge
 Compute Module 0 Carrier
Message-ID: <20220725232747.GA2955495-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-20-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-20-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jul 2022 02:13:32 +0530, Jagan Teki wrote:
> Edge Compute Module 0 is a 96boards SoM-CB compute module based
> on Rockchip RV1126 from Edgeble AI.
> 
> Edge Compute Module 0 Carrier board is an industrial form factor
> evaluation board from Edgeble AI.
> 
> Edge Compute Module 0 needs to mount on top of this evaluation board
> for creating complete Edge Compute Module 0 Carrier board.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
