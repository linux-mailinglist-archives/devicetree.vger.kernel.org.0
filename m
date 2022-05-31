Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A61F8538CB8
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 10:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244797AbiEaIVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 04:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244886AbiEaIVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 04:21:35 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 219CE95DE1
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 01:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653985288;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=I2fPIOlCOM3E2ayUp2iBt+EP7fcwTmAstFfusjqDQsU=;
        b=HIzsttLL1cqIPRTOYpfyEj7Tair5lPfy2WDn2+PpWZ9GfPDNsgJOp2mhpQJXSab5UNi3kG
        K/jDbNLhp29hJ3V3JSEh9xjrJgtWJQddhzcfYBlbZS+yS6seLSlD0TVQqnYcFDqqdnd2cL
        E1cT2giCdviURuPxpohz5nvLRmQy8G8=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-55-IZ2ummEVNcSfOblAhEG3qw-1; Tue, 31 May 2022 04:21:26 -0400
X-MC-Unique: IZ2ummEVNcSfOblAhEG3qw-1
Received: by mail-qt1-f200.google.com with SMTP id a6-20020ac81086000000b002f65fd83048so11665662qtj.6
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 01:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=I2fPIOlCOM3E2ayUp2iBt+EP7fcwTmAstFfusjqDQsU=;
        b=IRWWFmBzrNJWgALmkSADRabvPmvwqb7m7xlZ1jB0v5tY8u/CPa0NKn7I7JeACK7wNe
         r2WERcueeiWoL+WRnzBnqz/VUYnH8yhdHz/rPDMrPF+u9SHuTjGZeYC5Xpwd3KisDvh/
         lCg0bmMI7uILypcgIu/rMRUwhBuuUBIAWSfeHm+wPY/QMqO8Jux8kQkprkrOyD5tXbTg
         Ik7+dn05NyNN34jW839Pb0O66Iw2mXphXAc03RE0l1fGAn3ydgmo1sOP/y/5OoxohMUD
         XLFFEdY7yTki6VCB7b7629EOzxdUgucxxi3+S0bNiwUNQz5kePYqDE7NFrepFKo4R9wo
         H6aA==
X-Gm-Message-State: AOAM53331n/7uENiOzVD+pPGm3El8b81Km5/sj64XwpOXqdzexSSwkPU
        YstfvJO4hyLi1EXkg0kBoH2p1buP4t+TsNigNtq0VtAXLRecaEZ+oi2Kg82S8YJce80LGnGbROZ
        DlPY92c2RW1zxB+66V8sA5g==
X-Received: by 2002:a05:620a:48:b0:6a3:5595:9d1c with SMTP id t8-20020a05620a004800b006a355959d1cmr34608324qkt.246.1653985286350;
        Tue, 31 May 2022 01:21:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5Elviq8wkR7QEM12lazPriRbiYCkorY6f8q5VZxEiIzIY4yeGkiflwejzp+2iiEkHKHnqCQ==
X-Received: by 2002:a05:620a:48:b0:6a3:5595:9d1c with SMTP id t8-20020a05620a004800b006a355959d1cmr34608311qkt.246.1653985286083;
        Tue, 31 May 2022 01:21:26 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-112-184.dyn.eolo.it. [146.241.112.184])
        by smtp.gmail.com with ESMTPSA id p20-20020ac84614000000b00301729af618sm4758636qtn.97.2022.05.31.01.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 01:21:25 -0700 (PDT)
Message-ID: <48cb78ebd38dfe4ac05e337d5fb38623b7ee0e8f.camel@redhat.com>
Subject: Re: [PATCH 1/2] net/ncsi: use proper "mellanox" DT vendor prefix
From:   Paolo Abeni <pabeni@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Samuel Mendoza-Jonas <sam@mendozajonas.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Date:   Tue, 31 May 2022 10:21:19 +0200
In-Reply-To: <20220529111017.181766-1-krzysztof.kozlowski@linaro.org>
References: <20220529111017.181766-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On Sun, 2022-05-29 at 13:10 +0200, Krzysztof Kozlowski wrote:
> "mlx" Devicetree vendor prefix is not documented and instead "mellanox"
> should be used.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  net/ncsi/ncsi-manage.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/net/ncsi/ncsi-manage.c b/net/ncsi/ncsi-manage.c
> index 78814417d753..80713febfac6 100644
> --- a/net/ncsi/ncsi-manage.c
> +++ b/net/ncsi/ncsi-manage.c
> @@ -1803,7 +1803,8 @@ struct ncsi_dev *ncsi_register_dev(struct net_device *dev,
>  	pdev = to_platform_device(dev->dev.parent);
>  	if (pdev) {
>  		np = pdev->dev.of_node;
> -		if (np && of_get_property(np, "mlx,multi-host", NULL))
> +		if (np && (of_get_property(np, "mellanox,multi-host", NULL) ||
> +			   of_get_property(np, "mlx,multi-host", NULL)))
>  			ndp->mlx_multi_host = true;
>  	}
> 

I can't guess which tree are you targeting, devicetree? net-next? could
you please specify?

thanks!

Paolo

