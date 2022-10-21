Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0437C6079BE
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 16:37:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbiJUOh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 10:37:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230188AbiJUOh1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 10:37:27 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF95727EAE7
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 07:37:26 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id r19so1737192qtx.6
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 07:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OnAuXgvIvjZM6WLlEA5bBmzqAbuBhz2iZ+0vd24tkXg=;
        b=OLnv9Em0nWvgkrStFbWKMOgNqSKpsdAUcd46NECG8XYcLsgOoxt/h1WbmgNQTg2cG9
         MxlrnsCGshcGpwmVe9rMd0iumdRejWYJvOcfXMcOs99RvYggkmmirc17Jpli1MqYiFOw
         rRV8qPRfCxnFyGkfTRRmpljzD1bTrecjmESY22AvUxQ0CujgzxTGZC81T6oEn+38FavE
         xWSoQZIbrHD/j18HhsbcFNr5H/HzeY5rle//zNczMaP0CMzj3yz+zqG4wWiXEwA0AO/+
         fqTuNgTlUXs7GD07wcn7GFLTbTjfBJJXQ/Bef26mLYaSSb094UpOg/SDj8wploly6Q2j
         KIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OnAuXgvIvjZM6WLlEA5bBmzqAbuBhz2iZ+0vd24tkXg=;
        b=eKwuwdIuyi94twK+y0pqul1ZayT5lFjgpStXaOeeI9uG6db2xw5iYeeYARLVeLqS3f
         cA1cJ24EsOQmR8+L/c/SoknHSivDT7zc45O7oo2ZiyX28Mft/psZDdMEdClSS23fUk3T
         Y/n/4AeiWgyJRZTYaYvfsAKXnV6iRC1p04M61YWATx+6boQ68qPTyRrQwZ8LBcuNy6Fd
         WrhFvkHIgndEo9fcPk1237bsvpussaBWurP2VPG2MR7AvZJ9wSmGZNxT+jLe/ilFmFM8
         /TYrfZH+gK9ifV5qRT7R+WcRkGPXDVzOsCYCeGPW0rlCJ0gkw19s8HdjdI1cJCxko4bg
         TxAg==
X-Gm-Message-State: ACrzQf2K7/RuC7P4iAr+fvaFCs/bZNnj0cCrlSbl+4RFm2NM1O3qTXey
        RSFXoVaPsFVZOvnlBIseN1Oad9TeQevqkg==
X-Google-Smtp-Source: AMsMyM4dY6h/+9LKb7cQ3wDp/xk87PN7jDNkqRLiDngF99oRzo4pNwjWcVUd2vRoWu98NiUkVloNew==
X-Received: by 2002:a05:620a:3715:b0:6ee:cbcd:3e8e with SMTP id de21-20020a05620a371500b006eecbcd3e8emr14046274qkb.98.1666363035184;
        Fri, 21 Oct 2022 07:37:15 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id w6-20020a05620a444600b006b5c061844fsm9742381qkp.49.2022.10.21.07.37.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 07:37:14 -0700 (PDT)
Message-ID: <711fa34e-ef5b-8b4d-5496-1820d540df7e@linaro.org>
Date:   Fri, 21 Oct 2022 10:37:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 3/4] dt-bindings: arm: qcom: add oneplus3(t) devices
Content-Language: en-US
To:     Harry Austen <hpausten@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20221021142242.129276-1-hpausten@protonmail.com>
 <20221021142242.129276-4-hpausten@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021142242.129276-4-hpausten@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 10:24, Harry Austen wrote:
> Add compatible strings for the OnePlus 3 and 3T phones which utilise the
> Qualcomm MSM8996 SoC.
> 
> Signed-off-by: Harry Austen <hpausten@protonmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

