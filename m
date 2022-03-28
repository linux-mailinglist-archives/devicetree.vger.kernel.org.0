Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42A2D4E9F31
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 20:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237565AbiC1SzR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 14:55:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245329AbiC1SzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 14:55:16 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCCF1B855
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 11:53:33 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id pv16so30655258ejb.0
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 11:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=of31JbXORDeHdHam9ibeujdbRpu90rcdHTXqJLVkyNg=;
        b=HN8BGCiPD2Vr2BxwsvzuYwa0W9x80vgZAJYxpMiiCzdkql68NffIfNSJNUUNyu8H+F
         s69fnkCIfAsj1YPk8Yyw158wm27kbD2Bx4TPnjXG0HUUf7H3EPxRS34NTj3fP7CSAOGw
         QZTswN+nWSrPu/8eU8DP/Y9bnKIq/ppTtXiQO2BpGyZs6VIb/QyuqTkcgQM1Up98l6Mb
         b9vW2K0PDdP5xUnehtuJASaknEjfXL+JU8rogMCyJWXdugZB7b2aoUTmKNK2rc3vdlsT
         d2AJFC7pzE1ZbOlET7Pze9DBmiqnOuHioyo0GvuuouXzyv13+jIHYB7fzy3NRZ2y3uQc
         y/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=of31JbXORDeHdHam9ibeujdbRpu90rcdHTXqJLVkyNg=;
        b=uttstUfTlf8lgc+jgdeid0yBpc5oVVOwKJ7kKfoQJjHfB3na423iBLma11YIU/Eclm
         03tUKXuaJM6mMKq+QclUC6/94wFOYl5IY/bSxs379DGGwKvGaE4K7ZFzUcNFlNDMn5rL
         XvuC+bubnHeUmI7o/TKgqn+WN2v2JqckSgaor9Gr5mgykZH+GiT4thsrxVq2WmeK6AOl
         1PgWwwpJU0y4Snd+Ua7aIPbrjH3XydzLi9AuSCXOsucsrqM7g0RTmbjxrOFJQpY9FWcg
         iy9mxmzO3a0ZSjMbMtHF/86wleI+M25duwd1oD7fMaQ4my+ylUc2JcaiXk62N5B0dOgF
         azdw==
X-Gm-Message-State: AOAM5339K/s6GLLkEDiuKukmwoL+YaUV3UZdclcZq2j3Gudpr0C9xqMJ
        kdbUsulkgb/N/84q0jYCCmVJfw==
X-Google-Smtp-Source: ABdhPJw7CM/SHgFzeFhitNhooE1p7ZhIrNQbPiZZ+5Gxt8JwGu4Da4yOt4KuJ7PqnPrLtmMXn2iTWg==
X-Received: by 2002:a17:906:9b89:b0:6da:ac6b:e785 with SMTP id dd9-20020a1709069b8900b006daac6be785mr30179433ejc.295.1648493612434;
        Mon, 28 Mar 2022 11:53:32 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id jg22-20020a170907971600b006df9ff416ccsm6088959ejc.137.2022.03.28.11.53.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 11:53:32 -0700 (PDT)
Message-ID: <d706c302-4604-e43c-864f-bccac1280363@linaro.org>
Date:   Mon, 28 Mar 2022 20:53:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: uniphier-usb2: Add vbus-supply
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-2-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648433152-23126-2-git-send-email-hayashi.kunihiko@socionext.com>
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

On 28/03/2022 04:05, Kunihiko Hayashi wrote:
> UniPhier USB2 PHY controller can apply vbus-supply.
> Add "vbus-supply" property to fix the following warning.
> 
>   uniphier-pro4-ace.dtb: usb-glue: phy@2: 'vbus-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
>       From schema: Documentation/devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-usb2-phy.yaml   | 3 +++
>  1 file changed, 3 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
