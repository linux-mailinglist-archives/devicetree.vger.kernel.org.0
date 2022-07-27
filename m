Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D58075820C7
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 09:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbiG0HLW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 03:11:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbiG0HLN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 03:11:13 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76AF402FA
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:11:02 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t17so13577566lfk.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 00:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+j3Js4wLf/4RbmOaoNWMFDPgMbV/MbPLSqgB35pCW20=;
        b=TbzK/oQEwHF3ziH3lc8tCD8XfwUS/gDpqKVykbLw2EFp/fmzvJHM+55I7TJTuEfnGr
         6hpvOeLIzUfQNnKosIVV3Hyl9chRTqUClnp3AXXEFvxQdJIb34UrY84/SqVylRgRvLWk
         G8p1Ti83NzBGtVkZtMnzIcO0bG5n8ENjx5w5s0N2lTvP7FUZM+3P9eUWH3lbnR52CbK5
         3d+MbmB5eNHwrFMIG5wxgMQDBmnHJx8QndsPn4b43Rg1DnkL0TCo4b1lOZz/C6NZBzE4
         ochsm2Kknjav/G/PcRyT/oYSPfZYthHB1JktZBYmu1/xmZYWUjnRlJXGgbfwmsRI23EQ
         mm2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+j3Js4wLf/4RbmOaoNWMFDPgMbV/MbPLSqgB35pCW20=;
        b=4fZhSO/xxPx+H5vI43Q56jehnRpW3eHjg+vP7C0n3qq+uxkNQjRpRSHrYQo/aviLxg
         OClSBPBdZbkfxSJpKcOmtFqZgYVAIVxIv1q0NIChMiuAmBtmWQm7YvBNsRd4h967bcf/
         +BaWp4LFIS2qDtZzPiU4IuyIkfmj1bYAqkLeJ6PHSx+aBykP+TxlaGGBccIHaZOqS1oZ
         JsNfnl5NOhJWJLLieRj3L9ky50HKWqdliULk/4TigOBFhpgmdLeoO35zPpDn9H07KIi5
         dZW+NHCnVS80TVaz/0Fn2R2liIJHC5xxEZNQjk0XUie4xNfSOfTXr5JwtGegbmh4psnj
         ga2g==
X-Gm-Message-State: AJIora93LH92njwzpEc14n81w1Wo7AfZRFDKMrk0F+xZ692n6OYXhZPj
        rClQwDFC1TkB/qJkI7fm74RVEA==
X-Google-Smtp-Source: AGRyM1uAaaeJj5s3nNjbsDJkcE2C9nuHfLrXsctNf51hepV+Dt3V0kSMyNFGp4J/TsAmd0kTs4BD6w==
X-Received: by 2002:a05:6512:2141:b0:48a:772b:bf86 with SMTP id s1-20020a056512214100b0048a772bbf86mr7669587lfr.178.1658905861343;
        Wed, 27 Jul 2022 00:11:01 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id s7-20020a05651c200700b0025deb36756dsm3112862ljo.103.2022.07.27.00.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 00:11:00 -0700 (PDT)
Message-ID: <c0218645-ae57-6808-4421-5767abcd5c9c@linaro.org>
Date:   Wed, 27 Jul 2022 09:10:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] ARM: dts: qcom: apq8084: add rpm-stats device node
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220726205355.598874-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726205355.598874-1-dmitry.baryshkov@linaro.org>
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

On 26/07/2022 22:53, Dmitry Baryshkov wrote:
> Add device node for the rpm-stats pseudo device.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-apq8084.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
