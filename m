Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1D6A580827
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:26:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237183AbiGYX0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:26:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237162AbiGYX0b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:26:31 -0400
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF6B226139
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:26:30 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-10cf9f5b500so16749759fac.2
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KXH2/C7+h2pO7+Y9s9xtLMw52B4nuatqH7Df0xFd4NA=;
        b=k0KkaL/iYmRNnco6Be++XVRWOH12CuBvu+tHBM5WRLmbS8z+1So+iqiRkL/9YZHa4P
         zNz944v7/w4PwCJbUChUeXvctElFOgiWrjJxj9V1ErRSUTMLDYZM/gqxUeXcCjOSbhuT
         ryBmaRm4Yg5EUVAMEpDj5xGK8DRQ06grRRFT6NA+WevuHiktvpOjhP76xo4HaM5OKD4Z
         KTFijJG5oYN+jjjuJ0qH+hks5nEwuAMMIcvwEK6LIh39GSsUg2g4UFLIgY1q1YNN2+Uk
         EWznrwbTkcFBwN9b30OmZY1r/sUQ8Kq8rAIBAVRTE7De3vjWUJkasnTLlhsZ/Irbmcu0
         jNRg==
X-Gm-Message-State: AJIora9pS7Shpzy1qH516tESu7M0EDQr5kxuV9xx2IS3HNBTAA7+UnLi
        VG76DxUNpkgj+R7eIcgS8r2dc3B5bQ==
X-Google-Smtp-Source: AGRyM1vEVOAB5g+N1v4Cztmp/RT7BLlrQBeHObl65LRMEdFIfHeBjVlizsSkBkZQFNtZuPNbphemiw==
X-Received: by 2002:a05:6870:2103:b0:101:4016:b2c6 with SMTP id f3-20020a056870210300b001014016b2c6mr7533821oae.32.1658791590114;
        Mon, 25 Jul 2022 16:26:30 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id p13-20020a056830130d00b0061b8653b0c9sm5568316otq.22.2022.07.25.16.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:29 -0700 (PDT)
Received: (nullmailer pid 2953023 invoked by uid 1000);
        Mon, 25 Jul 2022 23:26:28 -0000
Date:   Mon, 25 Jul 2022 17:26:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 14/22] dt-bindings: soc: rockchip: Document RV1126 grf
Message-ID: <20220725232628.GA2952988-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-15-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-15-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jul 2022 02:13:27 +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 grf.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
