Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B7C1581048
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238492AbiGZJrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238521AbiGZJrS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:47:18 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A03A32050
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:47:13 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id w15so13815644lft.11
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JG0xRZmWb8mvx5i0TSYuzFaz/yiY+cwQ7/x7y0JIQ+0=;
        b=eAYkTZ4sTc+PK3E0Ok2+638pi4Yw+VDFEaWLrLgw9i2SeHuFVGjZBZ+oi0fzpCGH0L
         TkbDzx+cV7nvJXI5zCHMM45U1BHe2cdlJxmcUXbAItFoy7zsRsnFWft9jogs+BxSyifY
         ItkBpzVb9TIsYt5/dfXem6cQZbOId2mxD8BcRiEIdcVf5nMaxnRVKH9kWVLXhmZoLNd2
         +rnAVIgPEcx4eR7YHId0vwmPQBLGJWdE/9n9v+meAeUqT6PPZpXo9AyvgBMUp9tM6bac
         85/Dch0ioAmYIqDtLGVdzXjQVK+jB8cH+DE2mA3EB+i6clSIOisOd4hIyhU0LIc+BvyH
         sqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JG0xRZmWb8mvx5i0TSYuzFaz/yiY+cwQ7/x7y0JIQ+0=;
        b=XAtKe87Ktkye75jm9doEeXraRWaE6kzIctFVdfQ+8RHeJWoRcVadF9eW7puBhr5yLH
         M7V9Vgqq2wUiv5XttT93D6KMDy4r/dx+suniz6pIln+pvsKZPLqX1yjK7AeC9eV0KtAS
         6qekT4y11Pq9STT/Uy/NbURAxdbIQiASQwtGql5I4eVVHF7eQSqfBobeE4rOChOrFv+8
         fCee84KJ4tQmg2hfh6tp36M4Nm1eDFMENWJ5d26NqzNHUahvbgrQ7lOy2bgCn2Q2aTeS
         HRqtyKMwJnCIBW+2ETljxLzzbaAlCm5tznQ+GbOAGk8oloyuPaY5UFU20q5zyLutZ2EH
         /MdQ==
X-Gm-Message-State: AJIora/KhIa6RMF4+ew3MWKUiibai3SPZSzom0AnKC/Vly+Z6pEwGM/M
        ozAz9R+eWnGJA+fkcbc6xv8P5g==
X-Google-Smtp-Source: AGRyM1vRwPnG7NSomcC7bgx3FgRfofno1LdnnoS0lQ7saUTLfwKfPk7rQo02FYi52y9BfWcIRZ7fOw==
X-Received: by 2002:a05:6512:4020:b0:48a:8d1b:c8c3 with SMTP id br32-20020a056512402000b0048a8d1bc8c3mr3589538lfb.131.1658828831837;
        Tue, 26 Jul 2022 02:47:11 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id g31-20020a0565123b9f00b0047fb0d5e049sm3120559lfv.273.2022.07.26.02.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 02:47:11 -0700 (PDT)
Message-ID: <20869b88-41f3-9e9c-347e-17c3d01baa5d@linaro.org>
Date:   Tue, 26 Jul 2022 11:47:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 2/2] spi: npcm-pspi: Add NPCM845 peripheral SPI support
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, Mark Brown <broonie@kernel.org>
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Joel Stanley <joel@jms.id.au>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        linux-spi@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
References: <20220722114136.251415-1-tmaimon77@gmail.com>
 <20220722114136.251415-3-tmaimon77@gmail.com>
 <afae04e0-76a3-1bcb-5b47-9944fa9ab2c0@linaro.org>
 <YtrvyyMGm64hFG5j@sirena.org.uk>
 <0c8688d5-b0c1-8cc1-ec27-292acbb38dfc@linaro.org>
 <YtrzF9BFJrXfxiz0@sirena.org.uk>
 <CAP6Zq1iRowFv4qg=AqdVmBRRx5p4-5AaC1G-aZs=2LnOAOELXA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1iRowFv4qg=AqdVmBRRx5p4-5AaC1G-aZs=2LnOAOELXA@mail.gmail.com>
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

On 24/07/2022 10:44, Tomer Maimon wrote:
> Hi Mark and Krzysztof,
> 
> Thanks for your reply,
> 
> On Fri, 22 Jul 2022 at 21:57, Mark Brown <broonie@kernel.org> wrote:
>>
>> On Fri, Jul 22, 2022 at 08:47:24PM +0200, Krzysztof Kozlowski wrote:
>>> On 22/07/2022 20:43, Mark Brown wrote:
>>
>>>> ...with a fallback list required by the bindings so the driver actually
>>>> binds.  Note that bindings are currently not in YAML format so there'd
>>>> be even less enforcement of that than normal, and as they're currently
>>>> written the bindings don't require fallback.
>>
>>> Yes, the bindings document should be rephrased but we were living like
>>> that for few years. :)
>>
>> The binding document as it stands only has one compatible, there's no
>> existing problem with it other than the YAML conversion.  If we're
>> adding something new that requires a fallback we should be explicit
>> about that rather than have something that's actively misleading where
>> previously things were clear.  I don't mind if we add the compatible to
>> the driver or document the requirement for the fallback but we should do
>> one of the two.
> 
> is V2 good enough? adding the compatible to the driver and the document?
> Or should we use fallback?
> If fallback is choosen, can you explain how I should do it?

I propose to use fallback. The preferred way is to convert it to DT
schema and then add new device support (so two commits). Other
acceptable way is to rephrase the TXT so it clearly states desired
compatibles - one for old device, two for new devices. There are plenty
of examples in current sources.


Best regards,
Krzysztof
