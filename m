Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A0C4D7C24
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 08:40:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233661AbiCNHlR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 03:41:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236746AbiCNHlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 03:41:11 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 950A640E65
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 00:40:01 -0700 (PDT)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4E1463F32D
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 07:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647243600;
        bh=vL1DMH5mB/xA+saWf/LfgxjeoWUu89778nGRlXG7H8w=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=YIJOJ1/QBAdfhgwPo2N+gX/+jY+/CoQVH8bplFWmkCwGN+F3KHV7oreEDLHq0vDCe
         m9d+QXY92JhsTw7DhJmUng8d2z+TPKvAGFq25k5KsRhXwX03MoLqBvorVjkvC6fpLs
         VrR28qO4d5z2TC7Mj4bdQqKyFOqaXJM0mnirepoI41oZfwInSAnoEvbRZNBDVi35+M
         SwegAfQavC0bd1AQtbY6L1K9QM8oecg9DpsOL3IAO9eIdlpB4juaID7cvWqSRRVeVi
         RiDMugMGYNq/fmuxglPejm2QD6dM3yHK8npwQscYeeThEr2d6eiGvQiuxyWPkasMnN
         qEhSZ/O6jApdw==
Received: by mail-ej1-f70.google.com with SMTP id hr26-20020a1709073f9a00b006d6d1ee8cf8so7439139ejc.19
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 00:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vL1DMH5mB/xA+saWf/LfgxjeoWUu89778nGRlXG7H8w=;
        b=XeSTsSlRlJRAK5ADE8S7nlh0pWmS5eGViC7XAu+2WsAE91JL9UzemocgRR+KECuAzc
         uPZptFPngKMuz26KnEy7By4F1ulheLrVU30/i4YD1+WkWHX1P6GgOeYFJCKDSU4BXBz1
         CmRGR1pTLmGnfG/bbU6z7kY09ttBsHJjjicXRhqRnpXWspXQ6Fv1K/7dVi/Vk9ZCkKh5
         PDOUUTcAvnKIfvTU/IzkwNlnrjrnjJEC4Kd9MKRe4EI61HfSdwMBXV430Q/bA4QrylgG
         pbEArDPalrBx3CBsqiVxX97GzCxPOeN7Z8azvJ+fIAnGASv5wow8QCqbakFZ4bhQRRmz
         7sDQ==
X-Gm-Message-State: AOAM533WHhDNQxSsLZdFJn0xN7e7AxFmedxemuxPu9zd4SKE/oaBnFBZ
        WLOmtSvonYKXJyDpMG8dEvl+ZPGIXbboWuAt5qBiq10nVLO2Ds6jsB1E6uQ/HXe7PEnM+3XOneS
        DOQ/DBb2kBICkeo5wLLmISHwcwd7GKWp/idvhFe4=
X-Received: by 2002:a17:907:96a0:b0:6db:a7d5:166a with SMTP id hd32-20020a17090796a000b006dba7d5166amr11292874ejc.725.1647243599448;
        Mon, 14 Mar 2022 00:39:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPxGLGvg6NYB7X0d8qa+t78Eu3+toeF4mQVyTiq0YuLnZWWKsaPeVCabDXp2g1VLgogEky+A==
X-Received: by 2002:a17:907:96a0:b0:6db:a7d5:166a with SMTP id hd32-20020a17090796a000b006dba7d5166amr11292864ejc.725.1647243599250;
        Mon, 14 Mar 2022 00:39:59 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id a102-20020a509eef000000b0041614c8f79asm7552126edf.88.2022.03.14.00.39.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 00:39:58 -0700 (PDT)
Message-ID: <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
Date:   Mon, 14 Mar 2022 08:39:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To:     Pavan Kondeti <quic_pkondeti@quicinc.com>
Cc:     Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <wcheng@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_kriskura@quicinc.com
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
 <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2022 04:29, Pavan Kondeti wrote:
> Hi Krzysztof,
> 
> On Thu, Mar 03, 2022 at 04:59:22PM +0100, Krzysztof Kozlowski wrote:
>> On 03/03/2022 07:13, Sandeep Maheswaram wrote:
>>> Add device tree bindings for SNPS phy tuning parameters.
>>>
>>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>> ---
>>>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
>>>  1 file changed, 125 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> index 0dfe691..227c097 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> @@ -50,6 +50,131 @@ properties:
>>>    vdda33-supply:
>>>      description: phandle to the regulator 3.3V supply node.
>>>  
>>> +  qcom,hs-disconnect:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description:
>>> +      This adjusts the voltage level for the threshold used to
>>> +      detect a disconnect event at the host. Possible values are.
>>
>> ':', instead of full stop.
>>
>>> +      7 -> +21.56%
>>> +      6 -> +17.43%
>>> +      5 -> +13.32%
>>> +      4 -> +9.73%
>>> +      3 -> +6.3
>>> +      2 -> +3.17%
>>> +      1 -> 0, Design default%
>>
>> Use "default:" instead. Here and in other places.
>>
>>> +      0 -> -2.72%
>>
>> In current form this should be an enum... but actually current form is
>> wrong. You should not store register values in DT. What if next version
>> of hardware has a different meaning of these values?
>>
>> Instead, you should store here meaningful values, not register values.
>>
> 
> Thanks for the feedback.
> 
> The values in % really makes the tuning easy. People look at the eye diagram
> and decided whether to increase/decrease the margin. The absolute values
> may not be that useful. All we need is an "adjustment" here. The databook
> it self does not give any absolute values.
> 
> I agree to the "enum" suggestion which we have been following for the
> qusb2 driver already. 
> 
> The values have not changed in the last 5 years for this hardware block, so
> defining enums for the % values would be really helpful. 

I did not say you cannot store here percentages. Quite opposite - store
here the percentages. Just do not store register value. No. Please read
my comment again - meaningful values are needed.


Best regards,
Krzysztof
