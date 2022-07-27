Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F20D582274
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 10:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbiG0Iv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 04:51:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbiG0Iv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 04:51:57 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B32FD46D83
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:51:56 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id t1so26113599lft.8
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 01:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6Z+vA+GNURpYHtX5pWjPCTELZ9sRjNtldKU1aBthd8U=;
        b=gCpKpfwbUs1i1lCVcjEC6eLmFqeFnB3XJZp3ETEgFTyESF/HGjR7ds9XVtxIeRh1CD
         fGo/OKF0T6n2BvplmvrsZNZzLaDkTq3sP1hq+7KBfJOaee86JuvRnYU97hFyRLRPBefP
         reQed4KUV2lz+a4e4DxuL49sMJkGN1HA7y+erLj28RiTGqEzyO2HeGnja9lIDpPdqTE/
         uvWuUM0b2sj2dLQ0oQj72pc55Z1IH2j5kUB0LIbRHW0Tfz0dLBqHlQ7rwsLncrktFRqb
         QMgkh4PFj3r454rWLgfFgJ6IE+ioqwPoZOiRUJbarB2BgwMaBXbmzw1R2FFEibslxdgD
         3D9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6Z+vA+GNURpYHtX5pWjPCTELZ9sRjNtldKU1aBthd8U=;
        b=bROVn1p9hCI6z4E4wWiN5UbBORwoWLqbqT/dRBTT2pG4nHVsrfPQwIp9Adot16M11F
         nbxNi70FaqgvjsrNHF4b83w2xjQ1lqTaE66JGfoYgY+To3ZBHoTSfU4ChIj1i7rdu/hR
         IpCd3IBtYM6kU4ZsAExkddGmGpFgFUGVpymO4Vp/FwMwyrF98HPO6awrgAAHfrWPZ3K4
         U0XKdXFMIV/cTsclw9l1gaceUR3Sa5UC7D8uV1Ok9MaY6BxB6mVZbL5CCdRsCi9r1TWw
         fEUGFLAjHLm3/tDGfqXar/VV0QXTRAIyndh1nOFxL4Mdnyz42cvGieE5J4zxpeHayu5v
         9M1A==
X-Gm-Message-State: AJIora+bRC1qRrGUboqlQbxq3D2QMhzY3igW0prKvY+tVkJ0rx5TJGAR
        v5e4uQsi+m8nqoZ3wPqqiR1RdQ==
X-Google-Smtp-Source: AGRyM1uKWKAi0yNUGeZG3IGpc3bRokpfDiAU0FPnEZjMGfIjzo35QsYVVN566ElrVQkWw1QEx4oz1g==
X-Received: by 2002:a05:6512:6c5:b0:48a:85b5:d55f with SMTP id u5-20020a05651206c500b0048a85b5d55fmr5937878lff.402.1658911915092;
        Wed, 27 Jul 2022 01:51:55 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id m17-20020a2e97d1000000b0025e11321776sm1079390ljj.127.2022.07.27.01.51.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 01:51:54 -0700 (PDT)
Message-ID: <f449cb56-5d16-1443-895f-cf2119c5dea9@linaro.org>
Date:   Wed, 27 Jul 2022 10:51:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/6] dt-bindings: riscv: Add Andes AX45MP core to the list
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Anup Patel <anup@brainfault.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220726180623.1668-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220726180623.1668-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726180623.1668-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 20:06, Lad Prabhakar wrote:
> The Renesas RZ/Five microprocessor includes a RISC-V CPU Core (AX45MP
> Single) from Andes. In preparation to add support for RZ/Five SoC add
> the Andes AX45MP core to the list.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
