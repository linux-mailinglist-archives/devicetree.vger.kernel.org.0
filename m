Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BED815E5BB2
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 08:54:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiIVGyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 02:54:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229790AbiIVGyh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 02:54:37 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E10C645B
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:54:35 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id q17so9781913lji.11
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=o+uu/9RKBphu+zm7TwKOrXkxy3xHEkf7FRx1AonLJpc=;
        b=N/3/P5+L+iID7BMiTHffQPyeJaNFN86/1f0sSV9lpteQxDNzqFdz5OdnPWWGR248UV
         rarm/iwKPco+zTVlTcMz1S9+JOyCwMpk7ReqlzbMtMF/fON2684SGA7AM06bzPu1UGW3
         PY2XlM6pxOoAnmeqLE0EOTycQjfqHk8ADgrqj5oxxV73IrZIbYpTfcVwHZRKTB7L9jGn
         kyVx74KNIzwo2p827DskvI17B+FwWnF2F0Y/6riUjHqq9D5j8blTs1UzgnEJM+LAltpC
         lSuDOagSqy48KnDVQtlrzQLnIOIQ4N1rJDjuVkkm+0DSE+jAMvzYrMuuv3evRPqvm6zu
         7SLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=o+uu/9RKBphu+zm7TwKOrXkxy3xHEkf7FRx1AonLJpc=;
        b=KVp1oiFht5w69WYa+kywzigiv3b3Rwnj48oLzNSiQ6YObM0SSNwRkGVLqX0S4g7gEO
         pWYwXMnEs3mU80OqTVG+jEHvhno0syvb/gSGB570acubr5wKsn/R47tVZGvSV+DxdSeC
         bGHeWgZ8BySAdmrZChkT7ff9DhOHKLcqAVrt9MpaaQ032vQrQjPMKVIJ5y1XUJCqsNfT
         m+vnds4cMuoIJ1kB50J6ugo+cXiimK0NfuMLPw/G+IUIaxyvD2PtWb7A4CkKhOi0GlkD
         T4Pg8XlMpxiGpxTktnJHkFSD93r/RMFaAmbPnPUHjBtXuLBqmNZjokBV0v/slwXVHiMz
         mXwA==
X-Gm-Message-State: ACrzQf28IGALpwpWKONI2VLoYnLJk90aZ+jXAhhuQmywxV7jtF509a6c
        UxxmufoOwag/zRjYhZQeT6Nv1g==
X-Google-Smtp-Source: AMsMyM73rElfFWYmfa5lgS3NaACXv9Nniq1eeiCeWsHRAcEKJR4mqjh7OZAvuQLMQr70W3iILGG5Zg==
X-Received: by 2002:a2e:b16d:0:b0:26a:d1da:db8 with SMTP id a13-20020a2eb16d000000b0026ad1da0db8mr589601ljm.217.1663829673780;
        Wed, 21 Sep 2022 23:54:33 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bf27-20020a2eaa1b000000b0026c603169aesm774796ljb.0.2022.09.21.23.54.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 23:54:32 -0700 (PDT)
Message-ID: <f8aa2125-33c4-0860-cc34-f6d303b623db@linaro.org>
Date:   Thu, 22 Sep 2022 08:54:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: dwc3: add sdm670 compatible
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20220922024656.178529-1-mailingradian@gmail.com>
 <20220922024656.178529-3-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922024656.178529-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 04:46, Richard Acayan wrote:
> The Snapdragon 670 has DWC3 USB support. Add a compatible to reflect
> that.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

