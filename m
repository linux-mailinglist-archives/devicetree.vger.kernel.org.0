Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D511C70189D
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 19:46:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231686AbjEMRqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 13:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjEMRqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 13:46:16 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7DB526BE
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 10:46:15 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-96aae59bbd6so358001466b.3
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 10:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683999974; x=1686591974;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VlaCg6wfPVvnZ5zFHR3mfRbKkdzjOgynrPmd7hA07U8=;
        b=ig/HK4fEcXBK96boSX0/M8jkFBIOid55UCOrLxO4HhT72Zk2uGgFQRZnb5JZAv1Z93
         zqOjGQEIJ/YBGEPM42deEpvHm+m/ftLEMqvCuLNCsYInZQD1O0u00Vg/eSYAgfgXB3ox
         9BSuQm2KrFDbgOaJzyS2N5BEe0JTbjM+IUmNX+c1m5Tsu6gDA4DKjrRxqfZQmkMEcBIn
         /TUu/bKFK4hv7Aoy7bbUwleD4aS8/4OVojSPlZ6WOpEr1/2jvPlfyDNXrBnA9JevK/7X
         oZAF89ccgg0mdKUTlCfOUCtIWsVxbieZdtefLXLyYiJI2/Ul8mNzyHRgjeomcTpO/3UH
         9ROQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683999974; x=1686591974;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VlaCg6wfPVvnZ5zFHR3mfRbKkdzjOgynrPmd7hA07U8=;
        b=OK8cJ/TryJSeQzoZPDM56MJqcDn5Rbp4LGIvN65bnurqPNH3SsWxjr1XIvt9KU8Kle
         D7HBfe4RWR0ORG+FmzKO03fd3kUhs+lGE3ahhIrPV4kzdnrJEHTMghSmrXfA74Yfp0rD
         /WTK5bEgYqwry01VuWitQVuvBuWjCPr7nKJiOwKhrymZI1mETr6XyXeNet7X8IY1dYwT
         uWsCQZ5CBg+sUOXz3A4BPTgF5YbuEHO5whZjFY8ZYF16VCLUI5+sb2ufEzPcX19Pfhsq
         rOPeKnEFiGixRYqMt1nNKbisgPxGC26+WAUD2S7AiFrINsJGor29ozc9Co0ZEBN6Vel5
         3Byw==
X-Gm-Message-State: AC+VfDwF4ibO7ZML7foG3+PCzOEmwznf+eeRKG5sS/EYeWGgzWuIXtZD
        bUvHs9GAH+D78qtkChbuSYFgiQ==
X-Google-Smtp-Source: ACHHUZ7cZcDysVWiOyMFCNt3fRkH7D+BryidKSYVMnqXBR5crck8TeH4LEA5GDhoMCX9hjUnw6crbA==
X-Received: by 2002:a17:907:9724:b0:96a:1260:dbf5 with SMTP id jg36-20020a170907972400b0096a1260dbf5mr13488851ejc.45.1683999974290;
        Sat, 13 May 2023 10:46:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bc2d:23f8:43c2:2aed? ([2a02:810d:15c0:828:bc2d:23f8:43c2:2aed])
        by smtp.gmail.com with ESMTPSA id bz1-20020a1709070aa100b0094f109a5b3asm7087468ejc.135.2023.05.13.10.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 10:46:13 -0700 (PDT)
Message-ID: <db145619-3f00-a9fe-df0f-9a1948cb7623@linaro.org>
Date:   Sat, 13 May 2023 19:46:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [RFC 1/6] dt-bindings: riscv: clarify what an unversioned
 extension means
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
References: <20230508-hypnotic-phobia-99598439d828@spud>
 <20230508-decibel-fender-532248c8f8ed@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508-decibel-fender-532248c8f8ed@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 20:16, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> C'est la vie, the spec folks reserve the ability to make incompatible
> changes between major versions of an extension. Their idea of backwards
> compatibility appears driven by the hardware perspective - it's
> backwards compatible if a later version is a subset of the existing
> extension. IOW, if you supported `x` in vN, you still support `x` in
> vN+1.
> However in software terms, code that was built for the vN's `x`
> extension may not work with the new definition.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

