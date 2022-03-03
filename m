Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4330B4CC210
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 16:59:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233585AbiCCQAO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 11:00:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbiCCQAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 11:00:12 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7CA918CC38
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 07:59:26 -0800 (PST)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 84D833F61D
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 15:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646323165;
        bh=MdwjWjZqm0RnOglfFnSZ5WY/pIE+2hElYzOWtQJQrYc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=MDfg+jPjpKksoV3C4ckPNTlr6lsnvPv+QZArpMsQY8WYhLtUFIqz+LK/lFlpJZYZ8
         ivJcT3Rk65/Jz0jNlaaI0f99CvhDkERzadWiACAYpWmUdD0hP0Ghfd5lfxvFEzycf/
         qZy4zYqp9a4YTfzIk+OwhLHztwFHdqC/d2Tf+7fV8WdPV4+afop1QfOBn4mG8e6iDa
         e9q/EubfqG1UDuRYDxIteNZ+96iR3UPjEOZwkxyUeOoHSjqRF5B7PpgM/F1NvyQO6T
         yA3LLUHX3zGyYsuPQ6BUuCoLq6VL6BK4xqdpkxI34yPshpCPoaeupLnyK4wCE0Jp5V
         iQ6aI7XEOlGMw==
Received: by mail-wr1-f70.google.com with SMTP id f14-20020adfc98e000000b001e8593b40b0so2180485wrh.14
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 07:59:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MdwjWjZqm0RnOglfFnSZ5WY/pIE+2hElYzOWtQJQrYc=;
        b=a9F2v2YtaM5taTxzG2NWF+Iz6rFCuGbPGyYDUlcHKLb7HcYvSY4QVlGUcR4lmN/ZAI
         3qe5NqoEXAHSwl6FmLD0RiiP1+lSzgH63stMbsvzY2/CSA/Mtm7wED2BoUcWnBVBVeZn
         cgW/FH8ZVa6QdB5Ix8SWkkNsldnBRiG9gBK927A51TOmbHDEKKkZ54S5x4lCeLezgrTc
         iCsQ8UPKD8y2tSca5UYEWT+x1ZAqItBJi9LzRwTJNfkYYoXPuXfO/KNP/+hbCAYfnXXn
         qsDvrUOrNtN3N7zRwLMpmqJNDh+1Gmy6SDT2FCAA77TOJjGvNigV7VFnWr7phA6oqSXA
         MyHQ==
X-Gm-Message-State: AOAM530j1FAxaqAbW5xpmFKWj+KTr7UJnXs4zR+m5R+BnAW785bqwUOG
        CLDF4+MLvx/wjBHY/Js5uEMPXRwEC3570Khl84vsxLnn5cxSi/6ad6BJp0JQR6kfspNny2zTuAD
        DES1IawIPFaKR/5Yu7J37Ye+k2Nh6HsW6mI55qnM=
X-Received: by 2002:a5d:50d2:0:b0:1f0:2348:4331 with SMTP id f18-20020a5d50d2000000b001f023484331mr8154306wrt.19.1646323164093;
        Thu, 03 Mar 2022 07:59:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxHlIPEDuVmE/S59LvjLHrwrYJRSachY/7BYD0C1MLQqqJNXoqHm4h7MEj9W5zhmieIqEBtnw==
X-Received: by 2002:a5d:50d2:0:b0:1f0:2348:4331 with SMTP id f18-20020a5d50d2000000b001f023484331mr8154279wrt.19.1646323163879;
        Thu, 03 Mar 2022 07:59:23 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id o13-20020a5d648d000000b001efd62a840dsm2610469wri.111.2022.03.03.07.59.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 07:59:23 -0800 (PST)
Message-ID: <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
Date:   Thu, 3 Mar 2022 16:59:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To:     Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wcheng@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com,
        quic_ppratap@quicinc.com
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 07:13, Sandeep Maheswaram wrote:
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
>  1 file changed, 125 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0dfe691..227c097 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -50,6 +50,131 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  
> +  qcom,hs-disconnect:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect a disconnect event at the host. Possible values are.

':', instead of full stop.

> +      7 -> +21.56%
> +      6 -> +17.43%
> +      5 -> +13.32%
> +      4 -> +9.73%
> +      3 -> +6.3
> +      2 -> +3.17%
> +      1 -> 0, Design default%

Use "default:" instead. Here and in other places.

> +      0 -> -2.72%

In current form this should be an enum... but actually current form is
wrong. You should not store register values in DT. What if next version
of hardware has a different meaning of these values?

Instead, you should store here meaningful values, not register values.

This applies to all cases below.

> +
> +  qcom,squelch-detector:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect valid high-speed data. Possible values are
> +      7-> -20.90%
> +      6-> -15.60%
> +      5-> -10.30%
> +      4-> -5.30%
> +      3-> 0, Design default%
> +      2-> +5.30%
> +      1-> +10.60%
> +      0-> +15.90%
> +
> +  qcom,hs-amplitude:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This adjusts the high-speed DC level voltage.
> +      Possible values are
> +      15-> +26.70%
> +      14-> +24.30%
> +      13-> +22.20%
> +      12-> +20.00%
> +      11-> +17.80%
> +      10-> +15.60%
> +      9-> +13.30%
> +      8-> +11.10%
> +      7-> +8.90%
> +      6-> +6.50%
> +      5-> +4.40%
> +      4-> +2.30%
> +      3-> 0, Design default%
> +      2-> -2.20%
> +      1-> -4.40%
> +      0-> -6.60%
> +
> +  qcom,pre-emphasis-duration:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This signal controls the duration for which the
> +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
> +      The HS Transmitter pre-emphasis duration is defined in terms of
> +      unit amounts. One unit of pre-emphasis duration is approximately
> +      650 ps and is defined as 1X pre-emphasis duration.
> +      Possible values are
> +      1-> 1x, short pre-emphasis current duration
> +      0-> 2x, long pre-emphasis current duration

I could understand encoding of percentages in way of register value, but
a boolean flag is too much.


Best regards,
Krzysztof
