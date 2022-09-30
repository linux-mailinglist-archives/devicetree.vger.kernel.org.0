Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3515F0DBD
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 16:41:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbiI3OlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 10:41:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiI3OlB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 10:41:01 -0400
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB16CFA272
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 07:40:58 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-131886d366cso5653585fac.10
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 07:40:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=ir2aT77ZPyD7mDnBEzgEmLEdJ5PGhUhxtKK2++Vwl1U=;
        b=NRZP5UyAyHb3HCK8VuAmyw+5bo8i33s4wJbj+7haVZxOUNq4sk2ZGwGG0zoueozK2j
         dp3XcyjRp3GV7LBxZzt4K8gsZnJ20115t6KXI1QtU2UKnBF49uN65ng8rFcmnIjdxiKA
         2GrrdGDT17VIIWTdPu0VOVAYPLoBiFReosj5maUJ3L29Jd+gMoWExM+rz0JFVcurNw79
         7Jly3F/05DkNLw+ijjboFbDSYXAPcmudfevi3zI+toHZwt3jhh4bpgNG8olKfvrnwkXf
         L7c9oDqoenlKC1bq44rgMm0b3eqwVXlYOAmEDZbwMyaBDEyChBjAH6+4KkZ/JZERU7yN
         uZHA==
X-Gm-Message-State: ACrzQf1EreSBJIgEaHCu3r6LbQBysR4B/V2LdwdHtbNNSJpbHkdBhLRY
        vqDMKDJvWGXPff159c05/A==
X-Google-Smtp-Source: AMsMyM7p+b6sQFL2iDAYXq2CJZjkuA0LM4ihkglncq1gUKfE41WcIiRdC8tCJwlKHq12i4JjX+0v7w==
X-Received: by 2002:a05:6870:4248:b0:131:f4fd:6a1 with SMTP id v8-20020a056870424800b00131f4fd06a1mr1970068oac.47.1664548858104;
        Fri, 30 Sep 2022 07:40:58 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x9-20020a4a4109000000b004769f57061asm493844ooa.18.2022.09.30.07.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 07:40:57 -0700 (PDT)
Received: (nullmailer pid 285320 invoked by uid 1000);
        Fri, 30 Sep 2022 14:40:57 -0000
Date:   Fri, 30 Sep 2022 09:40:57 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] ASoC: dt-bindings: Document audio OF graph
 dai-tdm-slot-num dai-tdm-slot-width props
Message-ID: <166454885650.285264.3330595407372144597.robh@kernel.org>
References: <20220927185359.294322-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220927185359.294322-1-marex@denx.de>
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

On Tue, 27 Sep 2022 20:53:59 +0200, Marek Vasut wrote:
> Document dai-tdm-slot-num and dai-tdm-slot-width props as those are
> parsed by simple graph card and may therefore appear in audio OF graph
> node.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Drop the definition refs and just fill in type and description
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
