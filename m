Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 477536B9EBB
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:38:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbjCNSii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231132AbjCNSie (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:38:34 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F76A7AB4
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:37:58 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id h8so22122153ede.8
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678819032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o4n8ZDqZiPoqxeYd6QYMyRvm/vwvtlHUwxPZLxc39CU=;
        b=RG3iokM/H+V4dfNtmqXcPt28qd3HMftFF/3gVOGdIc/gd+um1IhakY9MRaracGm80x
         rZ624QRJMMAAFpraEeRG0tuPVZAI8YUsTsWfGbandw5wfypLdC/vjcWlic/D6ranH1FO
         JJHsWR2OMzzEqMq3ogIPg4IRbk2t0qVaBrxnYx94jWzt0rkqMibp8Tf10R3Im6FjOQLV
         Gv/TZDg8XIQdotY86rpRsn2cgAQDbs9nSnbxXis8oiB86ENlNjgFAL5/DqImsuliRXgq
         4P7Rtx5gG2NWLJybvNnEEAOSn/W2Qp2GimekfWyMbBhQf4TslM9C/PHAD4gtORkwy+0F
         hJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678819032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o4n8ZDqZiPoqxeYd6QYMyRvm/vwvtlHUwxPZLxc39CU=;
        b=cJy3wvtg3CDC3GExweUGkbPym6TduCA+NxVXtqKeVwGcPfi2KUXJVsBvK9Frm/294j
         drxZjbPftrJHOGOqtlnvVhY18Mo15B8+vDaQw2HVXR7A/EpeunbdNmvjJ2Q5X48gxaMo
         gwtqjJ6xrft+cvM3aLwPqd9Rl4ud/4skOwxRkPHSbwPwYCTekzYbJTue1zz2smV/LHRd
         nlx0s8ZvVRk/jXHKLafg5fVDRNO/qpPphThGpLbCn+7YUFQoB2wKBv86WkfIRX3kpSNK
         s4/+aBnqkxmtyPJQtPwPXqZdjbjhvtC8odjj0LWiaQ0NYr3TDlSE97gnHq7kIS4RvUpb
         6akw==
X-Gm-Message-State: AO0yUKVIpphfj+P71TN55oWcAQd+Gwjj7rapLhZpjYH2hEyAIB3WJ/FU
        qVX1bCayos/sLUUwW3NmW8nGbA==
X-Google-Smtp-Source: AK7set+678Md91PWgDD5ODAtz6aldDFjZ4ZXZIPWxTn/TbLxnYFVm8Ci3CWLdyva+rSKdPmhgJtkJA==
X-Received: by 2002:a17:907:a088:b0:927:8285:18a3 with SMTP id hu8-20020a170907a08800b00927828518a3mr3754387ejc.0.1678819030857;
        Tue, 14 Mar 2023 11:37:10 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id c12-20020a170906528c00b0092b7c1352dfsm1466771ejm.68.2023.03.14.11.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 11:37:10 -0700 (PDT)
Message-ID: <aadd794f-8881-6ecf-4d9d-51a8a23fe4b2@linaro.org>
Date:   Tue, 14 Mar 2023 19:37:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: dt-bindings: ov2685: convert to dtschema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-kernel@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Shunqian Zheng <zhengsq@rock-chips.com>,
        phone-devel@vger.kernel.org
References: <20230206-ov2685-dtschema-v1-1-9e4da3474c10@z3ntu.xyz>
 <167572017056.1564123.13342855865502188090.robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <167572017056.1564123.13342855865502188090.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 22:50, Rob Herring wrote:
> 
> On Mon, 06 Feb 2023 21:23:16 +0100, Luca Weiss wrote:
>> Convert the text-based dt-bindings to yaml.
>>
>> Changes from original txt:
>> * Take wording for various properties from other yaml bindings, this
>>   removes e.g. volt amount from schema since it isn't really relevant
>>   and the datasheet is a better source.
>> * Don't make reset-gpios a required property since it can be tied to
>>   DOVDD instead.
>>
>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>> ---
>>  .../devicetree/bindings/media/i2c/ov2685.txt       |  41 ---------
>>  .../devicetree/bindings/media/i2c/ovti,ov2685.yaml | 101 +++++++++++++++++++++
>>  MAINTAINERS                                        |   1 +
>>  3 files changed, 102 insertions(+), 41 deletions(-)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'clocks' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'clock-names' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'dvdd-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'avdd-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip-isp1.example.dtb: camera@3c: 'dovdd-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/i2c/ovti,ov2685.yaml

These are errors from the bindings, so they must be fixed. If you do not
want to fix the rockchip bindings, just drop or replace the sensor in them.

Best regards,
Krzysztof

