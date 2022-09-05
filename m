Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F408D5AD7D7
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 18:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237415AbiIEQuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 12:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231248AbiIEQuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 12:50:07 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3E5328E37
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 09:50:05 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id q7so13851726lfu.5
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 09:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=3bUqV7Ap8pc3cvN67C76OCJi9h7UXtxXc6Wux4dbkDg=;
        b=VqBlBZEMftS2eZTNXgOSvlr3SaUv8X3x/DDp8RXIK1/k2gq3JmiyaiqfJYl+V1K/Xh
         CDLBT0bmeY17KMD/vul3jDB1sCrTdeuUW74c0h7L+u3SqQi/pvZJ7y8ikbkqv2Oi3IFS
         QWC4Z5YuhRdu0hkS1rZeqmMr1AQNTua7YywHuk6WRBTJ8c7QJmLalI97uZbTWIt9Rrzk
         x4BDdm8PS6glJNRe5IqqCODQSvnxntbcyqiajB8ZldIrl14MYK5LC212RlaX2mXxTzkd
         2ok9WCIk6Q9Vn+b55ZdsHZyTUTmXWX8O0LYLNMP3Y/cjDSMflkTyQJdh3klYYWELk7lV
         Ja4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=3bUqV7Ap8pc3cvN67C76OCJi9h7UXtxXc6Wux4dbkDg=;
        b=t4L6XisDhaUyLGkMTVeU2YOrYCqYDIJPP0yKUZL/2h90+Ki5u0aGQm7/HCj361arU5
         vamTiDyMESJ51Sbr12ASrixodqM2P/t1XM11AtlX/z1WWdEpkPWav5HQ3zjb4B61M8pt
         8Za+K70CZfHeK/fEoY5gXZ8xCEHAR7oFgwU+aaYZY/Q2Vmq+wYc92csy9iDOezohzshX
         aDoaRPIWRkr8WQtUUmSrAkEVX2f7lj/3/+bdJ+LYPh433GfOz2AKxYIBFWvEs1fMmvQU
         SE4VKOSd2w+S08S4PGRveGyDiZi7lpbgJ7eAgWK2hKJBxx7+yeo5UtektdeYOt5LHmZp
         7cSA==
X-Gm-Message-State: ACgBeo0tB4LI76+o0xYP9yKnFtiLNdmpf1/Q8uaVAGu1CO+gHPqtOzV4
        ZL6f8mxzDZHg9IvLlnLRs7zwhg==
X-Google-Smtp-Source: AA6agR5ag+6eEoV1s/pV3ivSDTmVR7eQMiy3SB0b7ZI5fkVOVuIO2GqZD/gk3uzoQeynYhNEPL7GUA==
X-Received: by 2002:a05:6512:220d:b0:494:70c1:45dd with SMTP id h13-20020a056512220d00b0049470c145ddmr12321616lfu.325.1662396604014;
        Mon, 05 Sep 2022 09:50:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b19-20020a056512071300b00494781160f5sm1232616lfs.292.2022.09.05.09.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:50:03 -0700 (PDT)
Message-ID: <de24bc67-f608-d9a0-31e7-ba291c469573@linaro.org>
Date:   Mon, 5 Sep 2022 18:50:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 3/3] regulator: dt-bindings: qcom,rpmh: Indicate
 regulator-allow-set-load dependencies
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org, johan@kernel.org
References: <20220902185148.635292-1-ahalaney@redhat.com>
 <20220902185148.635292-4-ahalaney@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902185148.635292-4-ahalaney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 20:51, Andrew Halaney wrote:
> For RPMH regulators it doesn't make sense to indicate
> regulator-allow-set-load without saying what modes you can switch to,
> so be sure to indicate a dependency on regulator-allowed-modes.

Hmmmm.... What about other regulators?

> 
> With this in place devicetree validation can catch issues like this:
> 
>     /mnt/extrassd/git/linux-next/arch/arm64/boot/dts/qcom/sm8350-hdk.dtb: pm8350-rpmh-regulators: ldo5: 'regulator-allowed-modes' is a dependency of 'regulator-allow-set-load'
>             From schema: /mnt/extrassd/git/linux-next/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> 
> Suggested-by: Johan Hovold <johan@kernel.org>
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>


Best regards,
Krzysztof
