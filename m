Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40EB2768D31
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 09:09:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231214AbjGaHJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 03:09:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231160AbjGaHJc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 03:09:32 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E98E244B1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 00:07:56 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fe11652b64so6793619e87.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 00:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690787224; x=1691392024;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E3GEO4RHgr782gFDfrXsNOCR5xhrbUR8zBK5vFyqF5E=;
        b=Rc40TX9h6wZPcD4/Qk4hipl9QOUWj7zPJ56nQ40/W7Lv7xJ/LnPtsgfrcYG7CsVtqL
         cZIywVB3P9gTDZMhJsqcj1tHmd0xe7hBwv1jgTrS0YOzOU04EBCRNFOcjB3XSDqCOoNH
         XwO/wzfWeVj/9aua7LcTg/PNxJ2UTAZEWGcPTO9ud/dSctnT4HlJwI/+0fAaEy5nyKj5
         LNrccKndSO4A+v5TQ3Y1of0HaPwo6J1F1dFwnTsMY8XXFNamx3XRpR91q7porR8ytbAo
         Bp8zSRaeDeu6UbGr0yXLPiWvU/viaGMpszhq9eeEjv08I/hSlvsHo2zeJZUX08yFUYge
         owkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690787224; x=1691392024;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E3GEO4RHgr782gFDfrXsNOCR5xhrbUR8zBK5vFyqF5E=;
        b=A3kUoIzzJ7QwAYNkx2d1uHSR1xp/q2PdmJtyOnvp5rz/F06Fh3qjMs5kZ9worutuqp
         d1nbtTB3fPynkgWRlwdJZCjuIBhIdCQDwS1njX9SUpReNLkJJtqAtCRn6un5KM/n0zdo
         Hx3wxvB+KYhwzE5c0jJahZMdfXnBIizN8DS2embsDocRfIkv2CmbwI/n1XlZ23s2ReP5
         QQ9SzR6IBzi8aHWp6X5yX2dl+53kq2/AOaT7PIpYD2YwegB8+4LsBP7ZkoybGF9neC+w
         1LHgUxb9Zg+KHsgFfb8bfGA3myyc6RkQilAcA3ABZYAVDZrFGDSr1xYPKMMgV9zgp8gT
         JufA==
X-Gm-Message-State: ABy/qLaCIseFsXOPJkFCjwGQLX+AS5mDnMhIs3ASJ+e/S2nseZpxbnCY
        5mc1sAKhYadCKPjQwfn94Cvb1w==
X-Google-Smtp-Source: APBJJlEuVCd0Zgv+jcQEVHsaTSJmHxRvVHkkUHmBcQwGVrRV0K834hzUCA/TiZwhIbeesOa0of3eqA==
X-Received: by 2002:ac2:5e3a:0:b0:4f8:4245:ed57 with SMTP id o26-20020ac25e3a000000b004f84245ed57mr4677010lfg.35.1690787223945;
        Mon, 31 Jul 2023 00:07:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id p4-20020a056402044400b00521d2f7459fsm5121651edw.49.2023.07.31.00.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 00:07:03 -0700 (PDT)
Message-ID: <d4ade8f3-6fbf-5524-8e12-f7b6065df30f@linaro.org>
Date:   Mon, 31 Jul 2023 09:06:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: document Orange Pi Zero 3
 board name
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org
References: <20230731011725.7228-1-andre.przywara@arm.com>
 <20230731011725.7228-3-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731011725.7228-3-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 03:17, Andre Przywara wrote:
> The Orange Pi Zero 3 board is an updated version of the Zero 2 board.
> It uses a SoC called H618, which just seems to be an H616 with more L2
> cache.
> 
> Add the board/SoC compatible string pair to the list of known boards.
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

