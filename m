Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FCCC4EBB71
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 09:07:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243787AbiC3HIm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 03:08:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243636AbiC3HHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 03:07:45 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6D6FE5413
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:05:53 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id o10so39612995ejd.1
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cQew/rKnRgD8ogV1qI7WxDPMDBYN+z5OLUWXPsIgIoA=;
        b=VPizdmYjUO15XOTiLqnQiK2mV8W1i7YUwrt2w2VWfLt0lQEcSP8xJbPRle7ZgYD5EW
         Fh1R+tvRLjEC3z590d4GqJoen6u+OIzZoWvzT08j6cM+C+sYQlkjr4MUpNv5ihSIBeA0
         /Cseo7LLFe8qQlOMPvcSwdFhdsacJ2vutYZL0NdpFxCNzWbz9NcDIr074fe6ypvlxmzn
         2axAgNN68ag6KG4OGycrHt8odgClnTslGCIlwrF2yudJPYiABqhJu5w690kQKZaJSq0E
         WkkoMZcoITYzFBd3jZjuu8RcFnAIBRshQhJY9k05OeV2PgKlQ+zjaDwfsujTp3aNrhD/
         +Fqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cQew/rKnRgD8ogV1qI7WxDPMDBYN+z5OLUWXPsIgIoA=;
        b=VtAS7AHFcKnlNc7ps9MSsjzAYzLH4NgNDIwB0NRNtfwciAH62AJKQocruMEekDwOyE
         ovCw8CpHCL5tMoaeZky5n5+IzQVU6bK+JL2fe+wrckxNbsvsAvnQhuS166+Ct1vuuvnU
         GTqA4xyFIqzpPAqe+4IBZ2LJhTlZ0sZYtf1LzR7clqHe0Xn5h9xHbkcI8PybGbgiz4HU
         ym46dH61yYHS1Kj9Qdah8tfWTmxi+UxGi7SO7wztSRP2dQDkUFPchnPV6fCh0z44+Htz
         tQFm9q7NviGEIzPBwfhiCSSWLl0hypan/0YpJzSuEb3Mj9PTC5HOpeBG2TtzXvw2kiKM
         ZJpg==
X-Gm-Message-State: AOAM531ClgS57MHWfZv/bOFVteAqNK1AW5ppUK0QCx8Nyg8X8Kijxkxd
        Ys9kFTsYCaQOPif73VJaZMXuYw==
X-Google-Smtp-Source: ABdhPJxgkb+42v8YFLrLqoPpsFf/y67+6+hsTr+DeAQB1T968yZRDUeZIpcReBoQDYA15QDt2Z9tEA==
X-Received: by 2002:a17:907:1b08:b0:6da:b62a:762a with SMTP id mp8-20020a1709071b0800b006dab62a762amr37530526ejc.60.1648623952515;
        Wed, 30 Mar 2022 00:05:52 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p14-20020aa7cc8e000000b0040f13865fa9sm9351819edt.3.2022.03.30.00.05.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 00:05:52 -0700 (PDT)
Message-ID: <928aec2e-6dfc-164d-fee2-8e3b1dd476ff@linaro.org>
Date:   Wed, 30 Mar 2022 09:05:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] dt-bindings: reset: Add parent "resets" property as
 optional
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648617078-8312-1-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617078-8312-1-git-send-email-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 07:11, Kunihiko Hayashi wrote:
> LD11 mio reset controller has a reset lines from system controller.
> Add parent "resets" property to fix the following warning.
> 
>   uniphier-ld11-global.dt.yaml: reset: 'resets' does not match any of the regexes: 'pinctrl-[0-9]+'
>       From schema: Documentation/devicetree/bindings/reset/socionext,uniphier-reset.yaml
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
> 
> Changes since v1:
> - Use maxItems for a single reset
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
