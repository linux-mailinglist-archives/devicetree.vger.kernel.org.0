Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35D6161A394
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 22:50:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiKDVud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 17:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiKDVuc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 17:50:32 -0400
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76A294E404
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 14:50:30 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id m204so6527231oib.6
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 14:50:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNHFEnaya9ZBg9ioaAzkgnt9oyFzleBQd7F3+qKPXGk=;
        b=lHOw/vCQ6C6LL4o6+gqygVFEWC28dmvkwh/o2bovuBrgrcD+IgF5falx+y5eMuPd7w
         epaCcer/oI2VZ+C0yW0jSmmjHYEVj4QFAyG9oEIAevN1eDiA+xOWs3eb7WD4ggPTAxql
         tlDyCaoD7+lGXGObhXfAS+6Z97swAumgREBKfmWcsMRyofiNJcegflXjq88yj2XHPYzr
         ajPw/eib58kj4nySo4+5AqQG8JrQ1jmrhN7Y431y96x+AMlmLEEmfVbwgJeVWhc+Ai6n
         RAqFAldW+8Pp+xV5j+XgqR7QkPZPMBkirSbWzI6WeZIMyAROlD/aXnkKSGPLNYbzj1Dj
         KOBg==
X-Gm-Message-State: ACrzQf3wI4pv7ldGb19Ba4nTqRt1VXSbHdZEaEvyIz28n5f/RZx2kSlL
        A0QeHh9BJML45QmrLxetwg==
X-Google-Smtp-Source: AMsMyM6yNVy1BsSmG1N5ZHrya99OHO+odkRjZ/KrpfadP24lG+7gLfvuqy+Wd7elh3dP82lqTIxWvQ==
X-Received: by 2002:a05:6808:238d:b0:355:2484:6f30 with SMTP id bp13-20020a056808238d00b0035524846f30mr20447532oib.26.1667598629704;
        Fri, 04 Nov 2022 14:50:29 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v20-20020a4ae6d4000000b0049427725e62sm126579oot.19.2022.11.04.14.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 14:50:29 -0700 (PDT)
Received: (nullmailer pid 2888890 invoked by uid 1000);
        Fri, 04 Nov 2022 21:50:31 -0000
Date:   Fri, 4 Nov 2022 16:50:31 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v6 4/6] dt-bindings: arm: rockchip: Add Edgeble Neural
 Compute Module 2
Message-ID: <166759863038.2888834.11852706242849643366.robh@kernel.org>
References: <20221102124607.297083-1-jagan@edgeble.ai>
 <20221102124607.297083-4-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102124607.297083-4-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 02 Nov 2022 18:16:05 +0530, Jagan Teki wrote:
> Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
> based on Rockchip RV1126 from Edgeble AI.
> 
> Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu2 needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 2(Neu2) IO platform.
> 
> Add dt-bindings for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v6:
> - updated SOM and Carrier name
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
