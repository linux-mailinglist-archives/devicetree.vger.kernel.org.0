Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97EEB5BF70F
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:08:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230163AbiIUHII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:08:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbiIUHH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:07:56 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65F92491E3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:07:55 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id u18so7665586lfo.8
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=APb0/Hlj8PJfzMK/j/1WprkzmQ0RATqS+JRrEg6OtBI=;
        b=sOX0bkzdu+sZDtr8Q5SphkdzB1/ROEzLAP17FzCDCvxf8Mv6GI+0wiGyJiPZkveZPx
         kGgZlAEqiwFlJS4G9tdIXv9fLwfShJZI8QKDNOWEBiuKLUjRhXdMwPNhlSywjXG0+02V
         zIWJI5L5MfL/o7sOXPQ+PFYJDYqZfnzqCjqpS7l68M20RJbdNMWshDtOfpo/4WJ2cIKA
         VTdRiP7oHO//AJ902pphqDhUz3Z+rCc2FzkW7oDy1VvDNUY1dW2l24b5A4tsDf7R3hqO
         gKSEc1w3Q9Ne9Fwkp+QI+bM4mZuPDRg3Qs9SgYXHX0Rc0bBBKTXL6mEtIgvDXaBuRoYj
         LQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=APb0/Hlj8PJfzMK/j/1WprkzmQ0RATqS+JRrEg6OtBI=;
        b=p9Da9eBof09BFrDfFop0ZiVDFe1wnVw9elFE9Xhx930/1qX7eqeKbK+tp+PuuRBHYY
         YhkjC9WBUmkpi7CasQLoOhqi45sblVFIwneKPxFEAzLfXfVo5HoHBWiO6wQEm+jsxC7M
         4bV8UZLgSW5Wegm3IYhcDR5/vgYfHYp6Z/+tUNKvKszqyiHAbrCVCMIGY0qL9fQS/iYR
         6/rgXMEQicI7uIt36Wn5apzzqU0QCloPcsy6+Fb281dGT4iHEaGLTiNpfW++n19VZYJE
         wyGns05H4Orhw/9KZU+sagINof0xX+oDSem/9tNoDIV31aZIzy9ay7z87A3z6uihFpVW
         Wjdg==
X-Gm-Message-State: ACrzQf0Ii1nk05oUo+1kkEo4Uzq+LPaav9SxcQktzwCI1RvpDdxnb1X6
        t6nQen2h4Jep/A88ou/A5Z+Shg==
X-Google-Smtp-Source: AMsMyM4gqxAQvcV8ga0K7YyxcBClQ/kW2wmIe0eJRgZ9zQemRycPrYGF8vU2GgeKuVirXwB5Ah7e8w==
X-Received: by 2002:a19:7619:0:b0:49f:6cd7:45c2 with SMTP id c25-20020a197619000000b0049f6cd745c2mr7191079lff.7.1663744073769;
        Wed, 21 Sep 2022 00:07:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b15-20020a19644f000000b00499fe9ce5f2sm307613lfj.175.2022.09.21.00.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:07:53 -0700 (PDT)
Message-ID: <95fb2bfb-6eb8-012d-88f8-c739d229ef70@linaro.org>
Date:   Wed, 21 Sep 2022 09:07:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: firmware: document Qualcomm SM6375 SCM
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220921001020.55307-1-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921001020.55307-1-konrad.dybcio@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 02:10, Konrad Dybcio wrote:
> Document the compatible for Qualcomm SM6375 SCM.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +

allOf needs to be updated.


Best regards,
Krzysztof
