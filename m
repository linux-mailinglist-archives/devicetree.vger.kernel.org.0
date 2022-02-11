Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EB674B1F72
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 08:41:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239933AbiBKHkq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 02:40:46 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237700AbiBKHkq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 02:40:46 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0658131
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 23:40:45 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3F8AC402AF
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 07:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644565238;
        bh=Kv1h0VSTo+y1KIWyLqXo+zKdHA28wssinzCl3m6t9NE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=k1DOqiChrt31Po6aJL0x2TYAWZjycJoTOAOMNOyIi+GbjIkoUqlMS8Qaqy4rcm19x
         o2/NhnUeyrJDE0+wGhOxJUj3MSNQOD8OiWJ9RFANZFZsgZCqo77maTg3fXf/Sq9mfm
         LAdi1pwrzFb8+qPcgLe55OU1Tl8PjN0AzY8Y+fIv1K/R7x0TEEmYAWQ1TQBE2aLvDX
         nBlOEzaJGYporniM3NLRnE6836lYCOX6HWTj6h3CV4dR1ey6Bdq0A6zQAz7wxrYm8Y
         axXtS/gz2jg96hRICidBPD+PdrbwffQ0QtR7/7+Bo/rlNOA4+LGC5JbkebJiLUg2mE
         wvwVydFkzX4QQ==
Received: by mail-ej1-f70.google.com with SMTP id r18-20020a17090609d200b006a6e943d09eso3716022eje.20
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 23:40:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Kv1h0VSTo+y1KIWyLqXo+zKdHA28wssinzCl3m6t9NE=;
        b=BEnIA/enE8feMKKFLtj0vnKJg2gjrlpuhOOah9UnpaUD6SPi9gtwXTGlBPMX6eMLz9
         DbcrkYw2RIirF31FClYfyKHOTG95tivbJyuCIDA/0HdsIyspPkojcJ0J7uxT0cY3+sfV
         sQAiZn34B1LDP7RS4lyv/D//GkOIEgbvF2P6xMVurPk8+foNexk1UVERdKekn1afVbgn
         fQAjh/NrA2HjhfLI5gI8Rzi5VF+jXiDbVWXhOdHLoH29eOOEtSXIG306rkpPnO282UBo
         YS/FtpEbug+MKzYl13OuB/DjAjvEOY5aS8pYZ6zrtmcl6Z8TM3IBLuKCn3WdZTG4jt3G
         AQRw==
X-Gm-Message-State: AOAM531WrZWCJpKHeH/KQVrbWLGj/rsxrhyR8yT3mpxdBvhTDJPxWWXa
        jpRiRa7nBk3/OeSchQiF7v26DdEK0gEVXXgdiRYs++NDOXtt9ngR79zzudHtb0rZjeeCIN5AGSm
        pxJ1giHITd5TH/Jwa4qs3/1WaYRtPhUTVUR8BfZI=
X-Received: by 2002:a17:907:9494:: with SMTP id dm20mr332743ejc.148.1644565236867;
        Thu, 10 Feb 2022 23:40:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwe6Cr/fobWoIGuYaAC7gTvhZZRWiObYqT+pEfyWLxdNfwPpukri+jSGsSnIAJmOkFEfDnbKQ==
X-Received: by 2002:a17:907:9494:: with SMTP id dm20mr332733ejc.148.1644565236638;
        Thu, 10 Feb 2022 23:40:36 -0800 (PST)
Received: from [192.168.0.99] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id b17sm6171404ejd.34.2022.02.10.23.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 23:40:36 -0800 (PST)
Message-ID: <905a8063-8d84-698c-d45e-0acb0f7b0ebe@canonical.com>
Date:   Fri, 11 Feb 2022 08:40:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] [v1]dt-bindings: vendor-prefixes: add HPE Prefix
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Hao Fang <fanghao11@huawei.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <nick.hawkins@hpe.com>
 <20220210175912.102159-1-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220210175912.102159-1-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2022 18:59, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Description: This patch adds the Hewlett Packard Enterprise prefix
> that will be used for upcoming support in the HPE BMC GXP.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
