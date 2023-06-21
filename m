Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EFCA738387
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 14:21:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbjFUMUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 08:20:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbjFUMUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 08:20:33 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 472B61717
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 05:20:31 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3110ab7110aso5906772f8f.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 05:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687350030; x=1689942030;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7f4alMY8gg7nfg1Gs0Kc2GVyxt35f+NA4guvssPWclU=;
        b=lKs5cUXYYqaa4f16tHzfNJrPFCCzhJtaAztXqUE097kYOmtiJjOaABWyrKAXCPONOk
         HCEzDPXkRUoREd2xL8pmoswCagNNEGkNC1E8vamxQwKhfmNnXldOhoxOGeyyEErPffZD
         eDvnqcG4devpqAZsJJaU8cjFEgW17P2mFV4so9NP0m9VnGXq5aeqy6jPe8XgeBsIflPD
         vqqRa5Lasgy059HIWcH6n4rXIz5EPVDBQ0P/P6/u3aqLoCPzC+O4jbyziDsJ2RxX2uOk
         LS5Av3YXeWfaE+eluRGJiSyKuSmynFV/M2cUgxxW5tMsjjyjrhqwjmWjGteCyqEH3HLQ
         D/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687350030; x=1689942030;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7f4alMY8gg7nfg1Gs0Kc2GVyxt35f+NA4guvssPWclU=;
        b=DljKR/V1tZxfzyCDJmIE8EVZ5YTaiOoIUtL9w/B24WktENg4uiCA84CS2UH1I94jgP
         UAmIaGQLGcY4VeS2LsWqyJU7pcuWutt+sZw97dM1NyuaoWvbiojzgiD2+YGf8LsYX9zK
         DGcuoGxwosYNaz/db9rdCo1eAUwHRvoe1NeLlRq/MOA3rwvESNjx4TGrVTp+40PJLoAb
         HM9EsldclTvWsVqbGruJJc8tWHnuCZq+obScafnjpQIGUa42SGp0j02C54dSmO5WZaWx
         NJvUACpA3xt9B5XUnQabnH5Ep4m8HFMAjzerazL8fmHvmm7G/yORv6O2vjLmgQCZrc4i
         5e9Q==
X-Gm-Message-State: AC+VfDwzv34v7mcVJNzpaVh6/v5KxaFNDkEv0P+vefmgOQDkABLUyjlC
        IB7WAPmuvDlo+fSbyDyI5C8piQ==
X-Google-Smtp-Source: ACHHUZ5t8NdTvEtIeoot5tiyijkCTUsXj5AqSCoheunglvmVvDncsNH8SuDZ8Z83VLfjYw/YHWh/ug==
X-Received: by 2002:adf:f488:0:b0:311:1b0b:2ec8 with SMTP id l8-20020adff488000000b003111b0b2ec8mr13851189wro.52.1687350029774;
        Wed, 21 Jun 2023 05:20:29 -0700 (PDT)
Received: from blmsp ([2001:4091:a247:82fa:b762:4f68:e1ed:5041])
        by smtp.gmail.com with ESMTPSA id w18-20020a5d4b52000000b003127a21e986sm4314528wrs.104.2023.06.21.05.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 05:20:29 -0700 (PDT)
Date:   Wed, 21 Jun 2023 14:20:27 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Wolfgang Grandegger <wg@grandegger.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Vivek Yadav <vivek.2311@samsung.com>,
        linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Simon Horman <simon.horman@corigine.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: can: tcan4x5x: Add tcan4552 and
 tcan4553 variants
Message-ID: <20230621122027.k37n23yn62ygi6cq@blmsp>
References: <20230621093103.3134655-1-msp@baylibre.com>
 <20230621093103.3134655-2-msp@baylibre.com>
 <315991a3-c825-5df8-2e68-40f24c524df1@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <315991a3-c825-5df8-2e68-40f24c524df1@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed, Jun 21, 2023 at 12:29:40PM +0200, Krzysztof Kozlowski wrote:
> On 21/06/2023 11:30, Markus Schneider-Pargmann wrote:
> > These two new chips do not have state or wake pins.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> BTW, why did you ignore the tag?

Thanks for your Acked-by.

I did not add it from v1 because:
- We had a long discussion after you sent your tag
- I changed the binding documentation according to the discussion on v1
  as stated in the cover letter:
    "- Update the binding documentation to specify tcan4552 and tcan4553 with
       the tcan4x5x as fallback"

Thanks,
Markus
