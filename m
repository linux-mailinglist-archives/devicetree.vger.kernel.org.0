Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7D04CA11F
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 10:46:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240649AbiCBJrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 04:47:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240641AbiCBJrN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 04:47:13 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D8CAB8222
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 01:46:29 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3AB333F5F7
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 09:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646214388;
        bh=/i/Tl5JDYxHy1DfeqPaVUUr4WPXCyRWi21gK1tt8oLA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Z0iLz+Q5TyiKheYP6UTnya+zncGbH+RViExGQ6DCLKlQYStSjv99UaOJFqChE4Jjl
         qCKXI0wDUrJO6xmHMCCy7qOvrPMvX9wnx/l5CMhhLebiw2KCLfuaKvvHu94Xxrpea9
         CUx5sNPEYjl4ZpeOcSbMui4pI/yAo/E6gBQjmR5fzWENCa3WZWO+QsQmVp2JMcqQS7
         xvSdGGaHVXqDipi3r/9vXt+4T2n2by/GmOn2qhjEEG7ICd33q2qWJH10qwedz/B5cw
         v+h/Lc5oKPppEdGUw+2dSRd+pM5o9Pj1b6vf0SuFDmjgJ2wbcWB7knc8DnDNRcol7f
         VoE4oMdtsllZQ==
Received: by mail-ej1-f70.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so704099ejw.9
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 01:46:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/i/Tl5JDYxHy1DfeqPaVUUr4WPXCyRWi21gK1tt8oLA=;
        b=JWRysiXUPQrIlQg+K8sSA3win2znQmWWnfR/90VTtE0RIyH1UZUc6lvT+bDVz4cNnA
         RHYlqyNhzQRkjVDgQyA3l+QNR3Gbg+z8sJ0tnJbVBi9eecyxhJleNedMGS+U4qZrpU+F
         JLu0zEXY2AdM05XUz+ELdhqeLlWxCY+r/G37VmQxTDzlPIpnGXm1fTpG3ksjcHBt7tH1
         dQviaOUg3Q6sQaWO5LQ0PbbRfEFWswnd+v3zFPK/Yr7zocddf0Tf9ZnYTsolH1TQFwTL
         +sAkQufEG0hnhffyRYlfiGizql/PGMTZEUvO7uPBglBxVoo4gZbczlXQ/d49c7SiPY4M
         XU6A==
X-Gm-Message-State: AOAM532WUyvBNemX0Oo7UxbF7qLvWR8whHRnKwPtY4LS8MSs2jHPYRyF
        feKMrg8W+0y0Qv4SCw1W0q74QjY7zsjVSIQVxKQuWep1ZuyNj6surKQ0OJStMBOeFWGr8mLJ81+
        VbIVmlsy7HkERZsRbofI8K0vbm90M/h3JxlX3KOo=
X-Received: by 2002:a17:907:3fa8:b0:6d3:477a:efe with SMTP id hr40-20020a1709073fa800b006d3477a0efemr23515490ejc.401.1646214387405;
        Wed, 02 Mar 2022 01:46:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyPOkiH4a9QCn+Wd7L5hlKw9lulPSI6MAqtbvWliZVQXaUWpoXaMt7gC/299TK5aFIrth7zTg==
X-Received: by 2002:a17:907:3fa8:b0:6d3:477a:efe with SMTP id hr40-20020a1709073fa800b006d3477a0efemr23515473ejc.401.1646214387252;
        Wed, 02 Mar 2022 01:46:27 -0800 (PST)
Received: from [192.168.0.136] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id ho12-20020a1709070e8c00b006ce3f158e87sm6159767ejc.2.2022.03.02.01.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 01:46:26 -0800 (PST)
Message-ID: <16c07205-cd2d-fb9a-771e-7874a568026c@canonical.com>
Date:   Wed, 2 Mar 2022 10:46:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 3/5] dt-bindings: Add power-domains property to
 ahci-platform
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-4-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220301152421.57281-4-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/03/2022 16:24, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Some SoC using power-domains property so add it here
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes in v4: none
> changes in v3:
>   - new patch
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
