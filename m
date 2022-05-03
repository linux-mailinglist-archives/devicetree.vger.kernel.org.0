Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42E8A518393
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 13:54:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234953AbiECL6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 07:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234686AbiECL6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 07:58:16 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C643925EA1
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 04:54:43 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id i27so32938573ejd.9
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 04:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JHb4avsE/Z182eIBc1bH1BNsS1Df/C6G7i2++ODsOQM=;
        b=Bhz+rWKHyFsnb/hJKVTGaN5ZyXdhG5WepLYGcU1skf+j6qLiegWEsRwxrAA6LbGszo
         Nye0AZOVsxuYZY0BnzikcOykJBTLTKQnrrkW+cfus8iqoB1MtS+3zJKLT+GzXejpQMl3
         2y9/GbAM1yMfYMYWGo/xXQYX9oXEA/v+WeT2J7GI0bv425xaxQw7dlKHu50O4mCoEaEW
         zQiX5SUNQq79qNXkpDQ6goy+IG/ZpujQ1vg7Aj7VCGoM++FkRE6wy8fwGc0SvC9dbnHb
         9ke8JexdDQ+kTYjhCLVNvbZg9rNxNRF++7w2UU3BhAM7v7B3tlJvxPZ4tPvi0OHd3h71
         4QJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JHb4avsE/Z182eIBc1bH1BNsS1Df/C6G7i2++ODsOQM=;
        b=kt9kip48KIT8g8QcGPV6MiYl9Twyqn7QvywedZsRKpfSIt7r6Bk9TTnyJnOv2vFdIH
         9ekfga+RUX7L6wo5CBYNwDMBhcxZ082tkAwYQZFwBUF+vTWNP6bVJy6/UTNFrIhsntOk
         l9J+NrSTGuDhvSb+XNoj7h4vNbYqemMql0TlojM5M+QvWcY1tuRLpaYriVtneWqVFAmV
         bT/pEc4t0m1rEFEa1n+QdSeeioIvniWB5WdDDiOVKQCPOozoOvFY+aXNK2JJIDJU1kIO
         l97x2mg04IskfS94pzwUknslzto87RckcVFRibBOpgvqwy9BJ0EC1pu7qXwrNiKc8s0I
         RBDA==
X-Gm-Message-State: AOAM531aAXbSpHPfGgKwnSfwUiUcrmMsRkoj4Oo29cbfqbC7SYGyFJPf
        PIOTqQ13NEGiLIoKjlBTTTVEiw==
X-Google-Smtp-Source: ABdhPJyRe2oN2PjybssrL0rb4/oQp5zJXxZLfRxzcXGrktecpYKEIsJ7vUbQZ5hS6x4rQVZXApP6nw==
X-Received: by 2002:a17:907:7745:b0:6f3:674a:339 with SMTP id kx5-20020a170907774500b006f3674a0339mr15148203ejc.207.1651578882436;
        Tue, 03 May 2022 04:54:42 -0700 (PDT)
Received: from [192.168.0.202] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id og47-20020a1709071def00b006f3ef214e79sm4554870ejc.223.2022.05.03.04.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 04:54:40 -0700 (PDT)
Message-ID: <4c11e4c7-c441-7520-5fea-08a89e149ce6@linaro.org>
Date:   Tue, 3 May 2022 13:54:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: soc: renesas: Move renesas,prr from arm
 to soc
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        Simon Horman <horms+renesas@verge.net.au>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org
References: <5f124fc332b4b866f5238ada7ac000f4639c88c3.1651495078.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5f124fc332b4b866f5238ada7ac000f4639c88c3.1651495078.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 14:40, Geert Uytterhoeven wrote:
> The Renesas Product Register DT binding is not a top-level DT binding,
> hence it does not belong under Documentation/devicetree/bindings/arm/.
> Move it to Documentation/devicetree/bindings/soc/renesas/.
> 
> While at it, change the license from GPL-2.0 (only) to GPL-2.0-only OR
> BSD-2-Clause, to match comment practises.

s/practises/practices/ ?

You should get Simon's ack for this. :)=
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> To be queued in renesas-devel for v5.19.
> 
>  .../devicetree/bindings/{arm => soc/renesas}/renesas,prr.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/{arm => soc/renesas}/renesas,prr.yaml (85%)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
