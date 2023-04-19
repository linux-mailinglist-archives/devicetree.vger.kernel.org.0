Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 784596E7A30
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 15:00:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232623AbjDSNA5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 09:00:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233202AbjDSNAy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 09:00:54 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3B5B146E1
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 06:00:51 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id xi5so81399679ejb.13
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 06:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681909250; x=1684501250;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HvsdoVQoCpVXr+WmcOi/iD7cxUhSIX6zVIKzcWvken4=;
        b=wZTZCW1x8LaESfkttaPGaTBmLaXJzZWXbDTDq6AV9b/CzFw1SiQaVxq9mSHZH1qFwP
         xTFkVO2t0FCQFHTZOTxryRvJc61VnTjf0Ty96GgS73wENUu20WzPVDh/SfNepD8Byjvy
         6ZE1w2pErKVPXlq3oSMKTbWYc0H0LpgXiLSkqoXUGu+BJ19jHYFUEcStpPkc/4qTUt0r
         9wtIl4BgVfAK8eIfGav7kym95HZlKOBN+ilUgDs6ukMra5xpYELUPDr4hYY1mQ25tFT1
         4YUE4qxUe4ij+FZxoHu9EziQETd3/hhA0OAg4uHKp1rYymFOqw2i9+WNCGWm/6yAXUnH
         6whA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681909250; x=1684501250;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HvsdoVQoCpVXr+WmcOi/iD7cxUhSIX6zVIKzcWvken4=;
        b=QegtHVU4y9DiyIgBMn3Qmius4z7+eeACzQsXyxkyegaeqvY/Aw7nxfWeVqsSPsyzco
         FkLr93IBHfHH43QqWuEKUGyOiI04kzIrDyzCkgvHG4veiO1eJm+BCz6J2dQq5wdp/3Es
         BnGAN1XjPNB6sR/lgk4DOvXV/jB7AyiV08QDNRApKZClO3I17048xyJ8YSRv2+yaMCVd
         xc8vxOYq1e9B5Yt6Fhv9xAJZE6xf2caoKgWvHTlHgcv2vhvf4OP8tOrsw4V6WTzRwzsz
         mD0T+JgvZHlBGRNHyk29HeM0kDPZ1tg2ZxXxPcR4n9NDh8cDF6YzFBWfdcEHsulg342D
         lV0Q==
X-Gm-Message-State: AAQBX9dLumh5hdMFSRJg9GczKXcR4BJOqer/ekBN6uqXFLMpYfMvEmBF
        QCGepeZ0Ix82K2LGyOwqF2q/dQ==
X-Google-Smtp-Source: AKy350Y3H9zSFc6QM3SiyTMdWZGraMbr37jMIiTCR+98o2mrk9dShGNKooZYWgTbr8PghjgQ4CYxvQ==
X-Received: by 2002:a17:907:7205:b0:953:5eb4:fe45 with SMTP id dr5-20020a170907720500b009535eb4fe45mr1883856ejc.23.1681909250483;
        Wed, 19 Apr 2023 06:00:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:b7d8:d88b:1fac:c802? ([2a02:810d:15c0:828:b7d8:d88b:1fac:c802])
        by smtp.gmail.com with ESMTPSA id g17-20020a1709064e5100b009534bfdac27sm935200ejw.137.2023.04.19.06.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 06:00:50 -0700 (PDT)
Message-ID: <8063f09f-1042-f9e2-e399-4be44b88c102@linaro.org>
Date:   Wed, 19 Apr 2023 15:00:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 7/7] MAINTAINERS: Added maintainer details
Content-Language: en-US
To:     Pankaj Gupta <pankaj.gupta@nxp.com>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        gaurav.jain@nxp.com, sahil.malhotra@nxp.com, aisheng.dong@nxp.com,
        V.Sethi@nxp.com
References: <20230419175538.855493-1-pankaj.gupta@nxp.com>
 <20230419175538.855493-8-pankaj.gupta@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230419175538.855493-8-pankaj.gupta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 19:55, Pankaj Gupta wrote:
> MAINTAINERS: Added maintainer details for ele-mu driver.
> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0e64787aace8..59201de85009 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8103,6 +8103,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/crypto/fsl-sec4.txt
>  F:	drivers/crypto/caam/
>  
> +NXP Edgelock Enclave MU DRIVER

Fix the order. Open the file, read the beginning about ordering.

Best regards,
Krzysztof

