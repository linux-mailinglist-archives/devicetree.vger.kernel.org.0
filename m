Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 441814EBC65
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 10:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244062AbiC3IMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 04:12:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243258AbiC3IMV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 04:12:21 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FB48120
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:10:35 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id qa43so39835631ejc.12
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2Bx33AfU/HrMdmUVrutEhCI4XtzN6zsWPn96wMBqWfQ=;
        b=tB9ZV4xNkTjWB+JfChV1RXPd3jTDRvTlqgUVZYBP73R087rphFaYQlaPGbG10bTd8R
         pIKQ6ekTnt11peeMgweBaV6uj4ndWFbf3VcF/DGmbU5F2D/yOES7wCXZSPPwwCFD5xsb
         fCgioai7oet8z9ESFfxsTNgmSyNvezi0kmrxk1ygD6fHzUwhh4fj9ZC/l/7SUKlSu0bH
         F8rOagD4youDcBgNXFC23Iqu4mLEld97nRv1ev2JFw0htFR0QzgyGSbsmbYOWhyeV2F0
         F/kpEbXStSTMndFlA0o7wctslBAJLaldhLL9AU6MxBflZum8YWO/WNhG0+IUoCJo2RNJ
         UJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2Bx33AfU/HrMdmUVrutEhCI4XtzN6zsWPn96wMBqWfQ=;
        b=sGBbN9/PEAedDYQ80/BcxvZbP8Z0oNYmuLKP+JnPsMzU//eR57GiLHqmJDyyXS5lv9
         lp4atMnL9VLfcpu/DoFOhCXjEH15Yy4X52Q1bzpfFSH9MV+ro7rjNYlPwQSgIPUgsUQG
         zKTW0E1nrVcOae33a1Tu8B5cUFk8jf6higvWnFLRR+5tlSNFDK8v59EzjeqNZIkx+l7q
         jJUHqAFv7dLIymwKejBl2K36W/gefIBqAs5xTv+Bf+GLfae0Y8b2ZmX1ztY4eqsUiTFD
         yXt8jrVnjH4pKrnaVNcZ5YZn0LGc3GhUxk0IEmwlsqUbUnB7KPsQB7njO0vfwOwbHnVg
         ihag==
X-Gm-Message-State: AOAM5331aMkzjXEEOzue9hp3rO76mxLftBOJotUkUK+TiOkMRxQY2XDy
        awjNZwX00oNNvLV1mBIq+kP/pg==
X-Google-Smtp-Source: ABdhPJyr3a3ngbzY3rpCE8sm/h/E4CpGMIzRZRj13oMVUUOM4QcQjBwxtlOdEeguU+Me2VirmtUfNA==
X-Received: by 2002:a17:907:86a3:b0:6da:870c:af44 with SMTP id qa35-20020a17090786a300b006da870caf44mr38389614ejc.445.1648627834085;
        Wed, 30 Mar 2022 01:10:34 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id b17-20020aa7dc11000000b00412ae7fda95sm1129147edu.44.2022.03.30.01.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 01:10:33 -0700 (PDT)
Message-ID: <20a7dc75-93d9-dcb1-9f2a-b962a1f84d31@linaro.org>
Date:   Wed, 30 Mar 2022 10:10:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: uniphier-usb3hs: Fix incorrect
 clock-names and reset-names
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-5-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617651-9004-5-git-send-email-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 07:20, Kunihiko Hayashi wrote:
> There is no clock-names and reset-names for Pro5 SoC, that should have two
> properties, "gio" and "link" like usb3-ssphy.
> 
> And according to the existing PXs2 devicetree, the clock-names for PXs2 SoC
> should have "link" and "phy", and minItems of clocks should be 2.
> 
> Fixes: 134ab2845acb ("dt-bindings: phy: Convert UniPhier USB3-PHY conroller to json-schema")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../phy/socionext,uniphier-usb3hs-phy.yaml       | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> index 33946efcac5e..1bbd164f2527 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> @@ -31,12 +31,14 @@ properties:
>      const: 0
>  
>    clocks:
> -    minItems: 1
> +    minItems: 2
>      maxItems: 3
>  
>    clock-names:
>      oneOf:
> -      - const: link          # for PXs2
> +      - items:               # for Pro5
> +          - const: gio
> +          - const: link
>        - items:               # for PXs3 with phy-ext

Similarly to our other discussion, it would be good to convert it to
allOf:if:then: constraining it per compatible. The change itself is ok:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
