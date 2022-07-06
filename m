Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A2AB5681CF
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 10:40:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232386AbiGFIgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 04:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232377AbiGFIgg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 04:36:36 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2076A24944
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 01:36:35 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id m18so6219948lfg.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 01:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=P97RgFCmNV942tctqpn0OBJg9vJcOtiyZezQH2Fw3y0=;
        b=AtdGW6jfzD/zyGOlMQXFUoK+i7IgFxR9NelxXFHL7rCJMB2nAnOE6hbJWykEcnX9aa
         8pXFU2A9UbF9XCrE9Tyk3EbeE1RERHv+P5gFb0BVvLXhGAu3CzJlrWiIJB6O2eT0GLKo
         cx8OkcnsnRuOCSeMVYsrHnevbHP1nv5fcurFoEdmpesZRxA3fVRBIAnT9jlE8PTmHPen
         WjNzTYmHX1xsa1dUalkHHc2aIHrZNV9kAVsvbdMV7PxfgHrAPENzgLh/uMM/Dat5XAQC
         Z5DXu2hxL8DYvN8ZILYH90NOdJBEdrOsvdTJSeea0BqSWz09EVRhXRfMvUzesf10QS+/
         WDBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=P97RgFCmNV942tctqpn0OBJg9vJcOtiyZezQH2Fw3y0=;
        b=FQyy/RJJnlPs6f8feFOMm0FX+VqJngluPxW1II/AUmaiSvvXmvStrIxcsxQqmbKgaH
         T2KESWBTiDishBnHFPotqtwY1cNeJT5kVirvJKzuwKKZc7A9h8xCNxXhaQND1rerCesF
         1Iv2U1EYrGMXh9513ykQvAPneEzai8JPnByKeW1HyqNWfbKS6PmNhGv4ETLqOBpjR3ZQ
         SQDqZQYpFNAJZ8hXZlAaXpeTFaweK2gjXgRlHMXin+Q0iihmfpTNb8GxZeUPkLDCM7SB
         e3R7lWc2vXRXfLhe6Hykdk1SBmg34lhOP47NDBergXun366wrGp9B9AZAU+etXmnPiwx
         DUgg==
X-Gm-Message-State: AJIora9FFVeljhAjRaUBTkdjpLjwdfGjcU/mhA6cMSmM4rpnlzYnd8J9
        TxDKnoYTdBvec8DR0WWx6pnO3A==
X-Google-Smtp-Source: AGRyM1vI6+gYVywu/DuF0fgyKCxnUJ512MxR6y5v2Risw6pNlpeBZRBAlmqd01KbPYPBEgr6Fdi4vQ==
X-Received: by 2002:a05:6512:360d:b0:480:d14a:20ef with SMTP id f13-20020a056512360d00b00480d14a20efmr25206205lfs.508.1657096593541;
        Wed, 06 Jul 2022 01:36:33 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id q185-20020a2e5cc2000000b0025a891f7b8dsm6029436ljb.32.2022.07.06.01.36.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 01:36:32 -0700 (PDT)
Message-ID: <6c67a90a-510d-a3e7-4d04-66038395379d@linaro.org>
Date:   Wed, 6 Jul 2022 10:36:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 06/13] ARM: dts: qcom: enable usb phy by default for
 ipq8064
Content-Language: en-US
To:     Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jonathan McDowell <noodles@earth.li>
References: <20220705133917.8405-1-ansuelsmth@gmail.com>
 <20220705133917.8405-7-ansuelsmth@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705133917.8405-7-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 15:39, Christian Marangi wrote:
> Enable usb phy by default. When the usb phy were pushed, half of them
> were flagged as disabled by mistake. Fix this to correctly init dwc3
> node on any ipq8064 based SoC.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Tested-by: Jonathan McDowell <noodles@earth.li>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
