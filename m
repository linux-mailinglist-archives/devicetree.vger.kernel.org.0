Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 563A457A6F1
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 21:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238155AbiGSTJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 15:09:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229944AbiGSTJd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 15:09:33 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A50CC48EAB
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 12:09:32 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id r14so3780287ljp.2
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 12:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lwZxJ8GXW3wlcO69LK4ruNdKE8Jrdho6vqEVjYJkcQs=;
        b=SJphrDguuN7EnrcTkDh6MJ1NqtzLy8rfbrvCdoAo3qCMhYLvhRLOlBVWbGZwCItwmo
         qfimMf8lI5RBNzNuofOInj+sGOfV+wKEqRwmo/0btgySW0Ko1D4aV3aAv9JHMmSZBRgo
         GftnCSpS8YilSN57IkbQR9Q40fyBg9FdRgWNhcU876jPg64iaQTFkY7kwQPhYCI/R7yA
         bWCHvxb0aEKMsFxJoVdq4zDMDKMZD7Bl0GC9RyTga3Gm+xIRNvXt/WwuQOs4sgndsmEE
         oaPXmvXCC+8EvUywLKlEyEqs8Bhb+diE7ZNEWtwLpneh2P6u5qxhOoaE8MJr1135VanY
         qAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lwZxJ8GXW3wlcO69LK4ruNdKE8Jrdho6vqEVjYJkcQs=;
        b=lNSnup7N0cwwbKSLSUtnJTWQutjdJ+cS0Qjm54yf6UBaIsdqBQHGwEB3JMYhQ740ry
         ebFMZC12SXh8WafKSd+mJ6yIAEUKD4jywwAXzVky1wjA6GdQ0vp5RiRAh/I2SfMyTYTc
         QMAjL6sDRQd/I2IIDNgAZ9HuBS1zFbLFRmfNFqyntnS60diYriHtl+XHOpvt/Az4tkY6
         PdMrzNo9WCuX9E+C+R8D8HXBiEtzjz1/lRrMhEFOnj6XEfgJwAUB6nY/RJuNlaAjKeG2
         58X0ObhMsMIhn3h1YRCTLa7uq00BhZdyoxO2AGowc7D8KPCs0m0BfaBkdH8tV/cL5eY+
         m4Xw==
X-Gm-Message-State: AJIora8NoHNbgsgT5sCH4HQw44OsjjVbDNKpLmiPnBCYmTc9HzBjxNuo
        qssf8o3HYRbdQ20PXt/+1WN9HQ==
X-Google-Smtp-Source: AGRyM1vBZ0liTIfli//q0RfDeeiVyTr0tUc+TIVjOqcazwq3I5OMFIqRZ0pwSjZjdnUxAol77EiyQw==
X-Received: by 2002:a2e:be8a:0:b0:25d:c49e:fa29 with SMTP id a10-20020a2ebe8a000000b0025dc49efa29mr2792427ljr.194.1658257771036;
        Tue, 19 Jul 2022 12:09:31 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id i4-20020a0565123e0400b00481348b1074sm3362333lfv.81.2022.07.19.12.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 12:09:30 -0700 (PDT)
Message-ID: <fc1855cc-fefa-1887-e444-23b650e4dd2a@linaro.org>
Date:   Tue, 19 Jul 2022 21:09:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/4] dt-bindings: qcom: Document bindings for new
 msm8916-samsung-e2015 devices
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20220715102055.3844-1-linmengbo0689@protonmail.com>
 <20220719125917.54638-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220719125917.54638-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2022 15:01, Lin, Meng-Bo wrote:
> Document the new samsung,e5/e7/grandmax device tree bindings used in their
> device trees.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
