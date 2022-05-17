Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC55752A53B
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:51:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349307AbiEQOvY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:51:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349297AbiEQOuy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:50:54 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC82639D
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:50:53 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id h29so31817344lfj.2
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JvPPeITm36j9y991h9lR/vh8G1Vi3ahi8GlMgTU7Oqg=;
        b=I5IwfJIEtWxScs5NdyuHqwZwPe6asXoK8vw8bbfTTG0hlqRtf/dmca4GYlxO3fis3S
         HVkz40F4lSh701U99YG0KPmW2y6eNS9feZE9CukAFJG+j6LZDg8vMf+HKTpRcFrk4jfK
         kKbIhvXTf9cpvsVz2TxY5AYlNmtt8i7RwLP/EtSyxesP+0Ci1+1qmZy2rd2erLsEdonS
         Le3xmfpelpFELrp98qfjSzFvv77ZVHaLUQX5G/MgdCTsG4Mm1nuZMEpYvnsp2ga2awZu
         h2nMNDWjBFq14iF8p2aliCBt/LWbE1oSJBq8VoML94HMh9uDISDPlLq0E/Wt4Daxn7sO
         tyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JvPPeITm36j9y991h9lR/vh8G1Vi3ahi8GlMgTU7Oqg=;
        b=zcOLRhdq5cEony9HpdNpfWU/pDJXTtkNp3fXpFjAG55Iy85rECo4CrRLv8l1DjB/FQ
         1wGmX7m+2/YCmPyNAti1gTOMS2sMWTjNanXFJUWqULiEl1dOdCMqgjVlRz+xUS/YeNnC
         H/MS+fOqDxYoznfbNIn1IzEzd57d7haQ6P9F3BXK1/qSiCLKE2OrznA/CG396OQA0K+C
         NpdvXWkDL0iB6jaaNVqBjSsD/yVQwKvkGJ3IMI07BQjF2lHItY2xd//EvlEP0NgmEbBf
         g8NZhCnc570HxwdomZKmMg4MksSdqkvmeoSPpGCImkOZAkwiF/EbXpTzUK7Xafq4RGbv
         meZw==
X-Gm-Message-State: AOAM533AkUlEJ2Um0wYHJLJ4dt+yBnRZ6gtfxBTR0xGGreQRtk81pBV1
        uiR+sLbFkQduqRrcbVZOfVn6rQ==
X-Google-Smtp-Source: ABdhPJzu1zg8LyvM1WHN7zP1MfLbfRFx5uOhZmJpVp5inti3GTnbHKe5ASAQ5gyVUQjYt3XgvJMWsw==
X-Received: by 2002:a19:4343:0:b0:474:d7a:634d with SMTP id m3-20020a194343000000b004740d7a634dmr16925292lfj.168.1652799051750;
        Tue, 17 May 2022 07:50:51 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e7-20020a056512090700b0047255d211e4sm185030lft.275.2022.05.17.07.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:50:51 -0700 (PDT)
Message-ID: <75ec12e5-eb6b-96f9-a476-b194622defb4@linaro.org>
Date:   Tue, 17 May 2022 16:50:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] riscv: dts: microchip: fix gpio1 reg property typo
Content-Language: en-US
To:     Conor Paxton <conor.paxton@microchip.com>,
        conor.dooley@microchip.com, Palmer Dabbelt <palmer@dabbelt.com>
Cc:     Lewis Hanly <lewis.hanly@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220517104058.2004734-1-conor.paxton@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517104058.2004734-1-conor.paxton@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 12:40, Conor Paxton wrote:
> Fix reg address typo in the gpio1 stanza.
> 
> Signed-off-by: Conor Paxton <conor.paxton@microchip.com>
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 2 +-


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
