Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6135658082A
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237564AbiGYX0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237055AbiGYX0m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:26:42 -0400
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4920226572
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:26:40 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-f2a4c51c45so16730880fac.9
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Oq1X6bn8Fh1Xcb7a6kom5IWyOfExZ/FEaLv/zGoCOUM=;
        b=6gb4q91l4odY9ZJIxrsZirv3J5G0Ga5DQFL8L2hz0DfZ65lgc9TSHoAjoUhMpzkcMN
         89MoojZJZ6CBJvTlf9RxMTIgpB9eeHzSUpNyiOg2P6kcIul8F2ciXKlMGPXBwC1YTzkz
         LvgML+CDZZBvbijGIa5hH/oewvAXhoaQfthZB2KLF1SSMa48kzQkpyBZ8YHy9uFOTGTa
         mOkNVN3N21miE57QbZ/e2qYJPok/z3LB4Ar+oh3/RkVHUrMeYCbj7uS2ztdzeor6Y+oT
         RmQ25IKzDGG2STTT7Teeu8XbCZ5+NLAOkN/lZ7voFyh/1OMQkGeZRjTQDUENO68FLIdE
         BntQ==
X-Gm-Message-State: AJIora8s002oW66yFy5/ZJoqDPGCpmbztzLAsNF04Qcm/lrFV98kkV5M
        MXbP1RC9iN22kDpbvoA2IA==
X-Google-Smtp-Source: AGRyM1uNlPnVZfWaLwPUg1k89hoeKLKv6crDi1rKvo6RUbixRgvPHl/seEdwb88bE19RLL9kw2ll/Q==
X-Received: by 2002:a05:6870:8094:b0:10d:bebb:d796 with SMTP id q20-20020a056870809400b0010dbebbd796mr7980955oab.262.1658791599569;
        Mon, 25 Jul 2022 16:26:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e15-20020a4ada0f000000b0035eb4e5a6b6sm5332490oou.12.2022.07.25.16.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:39 -0700 (PDT)
Received: (nullmailer pid 2953381 invoked by uid 1000);
        Mon, 25 Jul 2022 23:26:37 -0000
Date:   Mon, 25 Jul 2022 17:26:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 15/22] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Message-ID: <20220725232637.GA2953329-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-16-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-16-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jul 2022 02:13:28 +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 pmugrf.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
