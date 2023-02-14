Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F411696659
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 15:17:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232495AbjBNORM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 09:17:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232347AbjBNORK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 09:17:10 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49F662A987
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 06:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1676384115;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=pZpsZITW8K8rqb5Pl2xverle3EkeAIBSQl4ftmdFU3A=;
        b=Jm6r1VjWYlkzHT3s+gnZHKGFfrikwWM1CHALWO9JGD6Ziw+oiiVBkoqz4E84sOh0Qmx1Bn
        YnBfBMiSYA6m2+Qh2YWer4HRjC5ZLmTkJ08X1BpsZ4vJF84KvAou/2H8stkpIWQ1ZXh/mf
        H5uvTgZh34sX0Suqf4J6//1f8BHHF38=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-672-VMI3SHK8OYy0WVxvWCTVDg-1; Tue, 14 Feb 2023 09:15:11 -0500
X-MC-Unique: VMI3SHK8OYy0WVxvWCTVDg-1
Received: by mail-oi1-f200.google.com with SMTP id r22-20020a0568080ab600b0037ae28e49d7so3063209oij.0
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 06:15:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZpsZITW8K8rqb5Pl2xverle3EkeAIBSQl4ftmdFU3A=;
        b=2DyDlM+YqvsNLmkFqM7oplgtblyIqzMyUNggiWy60Gj6YpL+waB96MGeTZx8SXwqLZ
         VKHqLSvxkdT0OEvKgLGWNX+GO/8NTByHNKg0vmseJ6KyNKm+LEIdG2iD70SZjirom8Qz
         dW11+E7COeslneFWAzlDccpBjM+axW5W3P7V/u7Apt6zfO60rnRyLs0kFVecZGZcNjQ1
         RVwEZDuas/e6TznxGJ3dQ+0SmCTAr0vK6tO3cMwu4NQtS3JR0rczaq1YpfYmxnOUmA+V
         oGVsMaKvwBjGO7KXLVfknTJHuXgCh8QaaTv2/nno1KRKeOwFPaON9VrUP9e8dE9NpK7e
         1NgQ==
X-Gm-Message-State: AO0yUKWpzwTTxFaNNGCLSdaxjBsMjNFQKKz19oaONkNNaSsu8eua5tlU
        WkWzBzQvN3buO3HdlMyL86z+4kkmcTwu20fil8FfAZ/7TmZUVKqf3cly309bzy7MH1LFvnuI33v
        jy0+znL+9XThHeYrN5AYeMw==
X-Received: by 2002:a9d:61cf:0:b0:68b:cd6a:4117 with SMTP id h15-20020a9d61cf000000b0068bcd6a4117mr929893otk.5.1676384110787;
        Tue, 14 Feb 2023 06:15:10 -0800 (PST)
X-Google-Smtp-Source: AK7set+rxIeKTPPqi8Qn9IW/T+KY5+TLUbfNnlWwgV3aZu1RB/NhlLLFjeCq/bOXdDNQQWn5L0WUsA==
X-Received: by 2002:a9d:61cf:0:b0:68b:cd6a:4117 with SMTP id h15-20020a9d61cf000000b0068bcd6a4117mr929883otk.5.1676384110534;
        Tue, 14 Feb 2023 06:15:10 -0800 (PST)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::21])
        by smtp.gmail.com with ESMTPSA id l9-20020a9d7a89000000b0068d4dda3d61sm6343262otn.39.2023.02.14.06.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:15:09 -0800 (PST)
Date:   Tue, 14 Feb 2023 08:15:07 -0600
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com,
        alexandre.torgue@foss.st.com, peppe.cavallaro@st.com,
        joabreu@synopsys.com, mripard@kernel.org, shenwei.wang@nxp.com,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: imx8dxl-evk: Fix eqos phy reset gpio
Message-ID: <20230214141507.ibj42ejowhvrdoyb@halaney-x13s>
References: <20230213213104.78443-1-ahalaney@redhat.com>
 <20230213213104.78443-2-ahalaney@redhat.com>
 <e4c33665-179b-8bf4-f7eb-38f86dceda56@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4c33665-179b-8bf4-f7eb-38f86dceda56@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 14, 2023 at 09:12:36AM +0100, Krzysztof Kozlowski wrote:
> On 13/02/2023 22:31, Andrew Halaney wrote:
> > The property is named snps,reset-gpio. Update the name accordingly so
> > the corresponding phy is reset.
> > 
> > Fixes: 8dd495d12374 ("arm64: dts: freescale: add support for i.MX8DXL EVK board")
> > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> > index 1bcf228a22b8..b6d7c2526131 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> > @@ -121,7 +121,7 @@ &eqos {
> >  	phy-handle = <&ethphy0>;
> >  	nvmem-cells = <&fec_mac1>;
> >  	nvmem-cell-names = "mac-address";
> > -	snps,reset-gpios = <&pca6416_1 2 GPIO_ACTIVE_LOW>;
> > +	snps,reset-gpio = <&pca6416_1 2 GPIO_ACTIVE_LOW>;
> 
> I don't think it's correct change. This property is deprecated. Also
> uses old, deprecated suffix gpio.
> 

I mentally grandfathered this in, but after your comment realized it
shouldn't be. I'll post a v2 with the reset handled in the phy
node directly. Thanks!

