Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0317D6AE0DE
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 14:40:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230255AbjCGNku (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 08:40:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbjCGNkk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 08:40:40 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4BBB81CE5
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 05:40:02 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id u9so52476905edd.2
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 05:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678196401;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XC4sVtRhs3Zf6p7vrRaYLHSxDBdL4Db27wMBtNXLbys=;
        b=rUV2Kjw3Vymhi+3LKUBky0XBHG5Bn1YsrJOxxxgNTd/dIPrFQa0FRIoo4OJVabJWKC
         ektMNMm9qE+yli/81Yj1BBSBM+L8jcraUhWPIgjWV1GGnFSZJltoowdn8WgQGDg4/3Jf
         chAOi0h/L4I6TwCh9AfTdguU0Cqpeo048SkVAynoadLVkiOr/zyDz5Ey5N0tpU7Ekmc8
         KMtQb0dfhpnKwcLFWLhvXDvBTJ+RQvHTuiEUt82hV/ZJrBqyJ0d8MxtXEih5R+b+ujbA
         TCekESNVB6kCqT2dJbKl5bQtdZ0kPVHQS7d689xPq3c90SV1hNsccw34xMkGNzXGEyk6
         HZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678196401;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XC4sVtRhs3Zf6p7vrRaYLHSxDBdL4Db27wMBtNXLbys=;
        b=ProyJEPitjGJN58fXNyM0EjMFNa3TdYvyQlzHukq0wp50D41dcjPeBo4ozCqZwwVRm
         0gT6hListVhZMsb+ECl5oC7PWGXm2T37HB7LWJoqxVc6cIgHfk1mqigUpfrqTFO+FIYi
         osGIMtqngf0mRygGjfHGgXuUHb+l2yekbWVmzjImZWgE/BmyeZU0r8LbEzq04Cg98Qnd
         uCjZTlog/yyIYcp1qOheHKCT5H7mQAQL22hWLTIha41ekduQoBwJM2sgF+p/SCER4oE5
         1OFWmz+zzB7eAEIsEHDT52PFbS1b+pr4uCnEFV1TFAJNrl+7bXXXTvME+aE6m9cCPKvh
         9S2Q==
X-Gm-Message-State: AO0yUKVC3gmfnSYWonfFOYeEZ7yJRma513RNPtTRpXh311QElOpxfcYF
        yXWVZLgPIme2gXHJ/5xLEqWF8Q==
X-Google-Smtp-Source: AK7set+FpSCgfpPHYilbHlEYTxWZBSw+CdQ3OZVBTpRaGlOWlMx6OlovVFAPZa2UCli9MyVzxG6i3g==
X-Received: by 2002:a17:907:6e1f:b0:8af:2a97:91d4 with SMTP id sd31-20020a1709076e1f00b008af2a9791d4mr16691610ejc.14.1678196401027;
        Tue, 07 Mar 2023 05:40:01 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:a60f:e604:c252:1f3d? ([2a02:810d:15c0:828:a60f:e604:c252:1f3d])
        by smtp.gmail.com with ESMTPSA id ga1-20020a170906b84100b008b17879ec95sm6090160ejb.22.2023.03.07.05.40.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 05:40:00 -0800 (PST)
Message-ID: <08aa9325-ed36-250c-d4d6-de6af1e82de5@linaro.org>
Date:   Tue, 7 Mar 2023 14:39:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom: lpass-lpi: correct
 description of second reg
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230302155255.857065-1-krzysztof.kozlowski@linaro.org>
 <CACRpkdbe=sHG9KVaGrbEaFoVbMY-2=r2X4WkcbNhCfZ9KOw1sQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CACRpkdbe=sHG9KVaGrbEaFoVbMY-2=r2X4WkcbNhCfZ9KOw1sQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 14:32, Linus Walleij wrote:
> On Thu, Mar 2, 2023 at 4:52 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> 
>> The description of second IO address is a bit confusing.  It is supposed
>> to be the MCC range which contains the slew rate registers, not the slew
>> rate register base.  The Linux driver then accesses slew rate register
>> with hard-coded offset (0xa000).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> LGTM, is this something I should just apply or will you collect a larger
> series of Qcom DT patches this time around as well?

Please grab it. I think I cleaned up Qualcomm pinctrl bindings from
technical debt, thus no more work for me!

Best regards,
Krzysztof

