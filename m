Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FDF26C0133
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:58:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbjCSL6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:58:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbjCSL6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:58:53 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F0811154
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:58:51 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id er8so25003548edb.0
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679227129;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7MN7paXo8gARmlqdSBHrmgibY/GvfwgNXPrgzUtEv/Q=;
        b=GczyFrt5Krq6F/hYnJjUF1PZBu4OA9IJei2yacwtwvjXjogPJtvdLs0T8THLmwfryr
         yDzZFxOuaDrJUGSSRUPqUGetTo7c6Sk1/6a31byI5xKN+NlcOdqkm4O0ZKYQMGZS8MmZ
         ioLXkTZyFuKY3oYqKbTZdzjoOYurvS6jRESYnNByM4/UrQHR+E7E0x1Kmu03KDes0Dsv
         aXW4HI9o28JVhWHiou9t2wa423wKOMVbi1rzX6Poae6QU0rVlX4+EnEZQCMkgtdY41qG
         fPuHztiEK4p95ZoUnnnA4Eoziod8nWeD4fvxdFUJtparFiwJ4XC7QHL4W0a++MS9MTds
         ZcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679227129;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7MN7paXo8gARmlqdSBHrmgibY/GvfwgNXPrgzUtEv/Q=;
        b=0mMz+I5JDAU7qfTXvaB6HhZDPyKz7Kmi1IzZywjalzc+oOBbGzN14OdD6PBOrtBteA
         JPb5cfdXwPJ4NE4WRfNfjwlbalZfom2DkAGM9bj3jA7s39/psu2Cb4haWZVHtDQg+AOZ
         Fzk4kRglfcXQWhWOCgwMnOEhUyUmwD+6WXDqKWu15mSd/XuiG35HK+TAOmOaGJerMhqt
         k9t7tkEp7neR+P0ard4nMIWhEbCJMGHWa6NCOVH5La/OpI3+1U5HeZGd64aKYto5+WU9
         ZR1xT14PN1uCDRXphJnaa6B5bNPvJ20egaP9B1cGRoc6sti9Vni5fgWwoZAirSMxRhpC
         duBQ==
X-Gm-Message-State: AO0yUKXJ7VCDlnp1bPjpbajsdpeO6siOLbXMgAJCkU1oVadRQp2QYuqY
        sZ/erQJV7oGCqDrCb4SsIwYq6g==
X-Google-Smtp-Source: AK7set8Ydc0lN/b2iFpr7A/4uJXT8GJcHCAf3s3qZnrKyHTYDYLkIB4gxN14AdXCdE4nIT9+ZgQtyg==
X-Received: by 2002:a17:906:4dda:b0:92b:dff4:f8e9 with SMTP id f26-20020a1709064dda00b0092bdff4f8e9mr5248012ejw.8.1679227129761;
        Sun, 19 Mar 2023 04:58:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id v14-20020a1709063bce00b0093344ef3764sm1271813ejf.57.2023.03.19.04.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:58:49 -0700 (PDT)
Message-ID: <88ccb21c-4370-7132-b2c1-c74b1f865cec@linaro.org>
Date:   Sun, 19 Mar 2023 12:58:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 10/18] dt-bindings: mfd: qcom,spmi-pmic: Add pdphy to
 SPMI device types
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
 <20230318121828.739424-11-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230318121828.739424-11-bryan.odonoghue@linaro.org>
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

On 18/03/2023 13:18, Bryan O'Donoghue wrote:
> The PDPHY sits inside of the PMIC SPMI block providing register-level
> ability to read/write USB Type-C Power Delivery protocol packets over the
> SBU pins.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> index 8f076bb622b15..111aec53caeb5 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
> @@ -140,6 +140,10 @@ patternProperties:
>      type: object
>      $ref: /schemas/power/reset/qcom,pon.yaml#
>  
> +  "pdphy@[0-9a-f]+$":

phy@



Best regards,
Krzysztof

