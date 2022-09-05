Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC67F5AD555
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 16:45:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238651AbiIEOmu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 10:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238584AbiIEOmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 10:42:31 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC82D49B5D
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 07:40:04 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id b19so9451829ljf.8
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 07:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=INhSK7LXVVDaskTu6/00QJErD966u/7pw0hdfzEYJWg=;
        b=Qb8c09iKkB1fVbjL/AHzIlkmAr6Y4pLSDFlotZFPJRWqBG928PVxOvR6GxtKtwbMT7
         9sKPGiyfV5+nnjYsF8Xfhdvs1/OhBuOp2BOa0RZrBjbpgPfVX3TFPiTTMBuTbjngyKEk
         GD6qP6mL7KHM+2tpDX4YeT/BdjSqHL/znY/WT2dEHyRb7N2+Fy/oypSllsV1g3oS4Bvm
         ifSEG+TSpqMp0QAwbc12KtWpCyLOSpfzewdUdGyZZkwjfZrONj12+/8tvBVZl6cf/CA8
         i6EXZHGISO00IaNUj0GUaCgypA2Fv30lyvSYzaUscxcKqK9Z0VLHDEu3yQB5vcVaimY9
         hAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=INhSK7LXVVDaskTu6/00QJErD966u/7pw0hdfzEYJWg=;
        b=aPRieFyZdwPmVOtY8p5/VkQG9lgAM6pIZXh6wq7QlSpJwChkF6OetAxjm74ScbrgTf
         X1PcUUuJx3qoqxtYhnyGbezKpMfHts0DWoltRFza1uefny++PXF4Vdau257zzkv9/NK+
         R/0al9eflAn/0lUhFu1pKkjDT6WdgRWZDxxqAI8ocK7VSjNlFSQrilN6Qd3hV3Uw+Sbz
         7wyz90AOS4qQLHSth+zDygslr4S3WPZ+fHcw4hVPBfGr5VL/S8ll1jKiuafghmIz3HZd
         UR7qOK3u4a7lKAuMxQsNuAbH41A12anyllE313tAP3jkmR7X6YUstoWykI09h3J2XZBL
         3zyQ==
X-Gm-Message-State: ACgBeo31h3u8x3vUhm7Mi5hFM8XlFHhPvYhRS26sfz8n3kw+ObME1M8P
        Wve42b5o3i0HO+pKfI57zsvL9w==
X-Google-Smtp-Source: AA6agR7hdr6wzS4L5wb5JGm+1Oatscya7lhcM/HJzwZeKmJb29LdFrIu7ziHYTAFlu65mtPF1f/LBw==
X-Received: by 2002:a2e:3808:0:b0:268:f30d:a3e with SMTP id f8-20020a2e3808000000b00268f30d0a3emr4576031lja.486.1662388801204;
        Mon, 05 Sep 2022 07:40:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c2-20020a056512324200b0048b08e25979sm1205662lfr.199.2022.09.05.07.39.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 07:40:00 -0700 (PDT)
Message-ID: <0ab48493-cb9d-8760-d629-1ccd8c75b6f5@linaro.org>
Date:   Mon, 5 Sep 2022 16:39:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v6 1/2] dt-bindings: misc: fastrpc convert bindings to
 yaml
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>, Rob Herring <robh@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-arm-msm@vger.kernel.org
References: <20220905103715.955786-1-abel.vesa@linaro.org>
 <1662381657.354400.1957044.nullmailer@robh.at.kernel.org>
 <YxYH+3hGZ2fyUZpW@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YxYH+3hGZ2fyUZpW@linaro.org>
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

On 05/09/2022 16:30, Abel Vesa wrote:
> On 22-09-05 07:40:57, Rob Herring wrote:
>> On Mon, 05 Sep 2022 13:37:14 +0300, Abel Vesa wrote:
>>> Convert Qualcomm FastRPC bindings to yaml format, so that we could validate
>>> dt-entries correctly and any future additions can go into yaml format.
>>>
>>> Use compute-cb@ subnodes instead of just cb@.
>>>
>>> Also add qcom,non-secure-domain, qcom,glink-channels and
>>> qcom,smd-channels missing properties to make sure dtbs_check doesn't
>>> fail right off the bat.
>>>
>>> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Co-developed-by: David Heidelberg <david@ixit.cz>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>
>>> Changes since v5:
>>>  * Removed the txt file
>>>
>>>  .../devicetree/bindings/misc/qcom,fastrpc.txt |  88 --------------
>>>  .../bindings/misc/qcom,fastrpc.yaml           | 108 ++++++++++++++++++
>>>  2 files changed, 108 insertions(+), 88 deletions(-)
>>>  delete mode 100644 Documentation/devicetree/bindings/misc/qcom,fastrpc.txt
>>>  create mode 100644 Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>>>
>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/misc/qcom,fastrpc.example.dtb: smd-edge: 'qcom,smd-edge' is a required property
>> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/qcom,smd-edge.yaml
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/misc/qcom,fastrpc.example.dtb: smd-edge: 'oneOf' conditional failed, one must be fixed:
>> 	'mboxes' is a required property
>> 	'qcom,ipc' is a required property
>> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/qcom,smd-edge.yaml
>> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/misc/qcom,fastrpc.example.dtb: smd-edge: 'oneOf' conditional failed, one must be fixed:
>> 	'interrupts' is a required property
>> 	'interrupts-extended' is a required property
>> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/qcom,smd-edge.yaml
> 
> Right.
> 
> So actually, the parent node is glink-edge, not smd-edge.
> 
> And there are some other required properties missing when switching to
> glink-edge.
> 
> Will resend with glink-edge instead and add all the related missing
> properties.

BTW, if you need more fixes, just take over the patchset and add
co-developed-by.

Best regards,
Krzysztof
