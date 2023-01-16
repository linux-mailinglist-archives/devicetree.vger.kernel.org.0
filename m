Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75A0166CC7E
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 18:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234749AbjAPR0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 12:26:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234713AbjAPR0L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 12:26:11 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E451028851
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 09:03:23 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id d30so38651118lfv.8
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 09:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zfvW4x1CWzo8A4PwKTRFbT66dZe4XOyatA3UxJIt6gc=;
        b=EVjfE+dG0xInpD0+sTbInPaZ881Ao8yfX74tHARGpLq/Vuoh5zH/IZAB6fuvpNTiQD
         OZSWYx1zj/QbCN06VMZ9rI/DlXlPo3SSUro6mDRt9WMXgX/Q3bYSxTmsXTterImm/xBi
         YVUqhAzo7XB6SK9wumYGA0FcWX9srsn/x6AWevqFLKNXHbSL1FMoeT+8C4e/IeDA7FMy
         Bbqea9Eiwb6V0mWyqWFSXAYlpf965nS7S0tTa4d6NwsGbd/9RYi4+qPr+aRgBwsMHt4U
         JmTm9wFI0ExMgUTJXQi6yvhDYoUiI7P5vN6MJAE5bf+JE2hzlrZDZHHByBVERciPxZtj
         DkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zfvW4x1CWzo8A4PwKTRFbT66dZe4XOyatA3UxJIt6gc=;
        b=BVEhu/BDQuBqli7b3aLx/iCGXRXJPxJ+EUM8Ck4VGT9zYUM+UcLqlx7Tmni/aiQQoX
         ke91ef1/ESIUy6HYkPw+bZ1ngWhqNOkc5YXdCJI8MIBeG0SPhcTwo2+u9mAWgtTB2RnP
         YWIWBtWLqblTVh2wuEP8v+RPJflmQEWybNZ3Yc13CLw3u1BdlvlcJ3B7GYL5GinSThJp
         4y/txyI7JenuUufndzBwKs66YOrZByf5raqjiWF6pbwaI0edPrGHoeGF0StmnpOsfwfh
         WsGZJjpev6NGOOwdCfuKztF2PBQwNnmo0wFiZnvoG6wMBnW6ag6Bsf6atUh2CQWnsfac
         ab6g==
X-Gm-Message-State: AFqh2kqJQ4J5mzhyUrqCdmgzY+O4vqY327Uo4lN+FuUUExbKHD6hA1TC
        U+1qe1ulvnAAjtznUTCz2BvjkA==
X-Google-Smtp-Source: AMrXdXsd06/7/A//PRAcqE8qTJqcA12oJaa0Irfd+A8C2D4tJ03Bxs3ain1PJkLty9RuS9mUvk9TIA==
X-Received: by 2002:a19:8c0a:0:b0:4b6:e775:ebb7 with SMTP id o10-20020a198c0a000000b004b6e775ebb7mr3088878lfd.12.1673888601862;
        Mon, 16 Jan 2023 09:03:21 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id w19-20020a05651234d300b004cb09fd48ebsm5055655lfr.149.2023.01.16.09.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 09:03:21 -0800 (PST)
Message-ID: <37690485-a456-ace1-50b7-55c6f2dc416d@linaro.org>
Date:   Mon, 16 Jan 2023 18:03:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v9 2/6] dt-bindings: soc: qcom: cpr3: Add bindings for
 CPR3 driver
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>, andersson@kernel.org,
        marijn.suijten@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        agross@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230116093845.72621-1-konrad.dybcio@linaro.org>
 <20230116093845.72621-3-konrad.dybcio@linaro.org>
 <167388663828.594146.5142968901472742042.robh@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <167388663828.594146.5142968901472742042.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16.01.2023 17:36, Rob Herring wrote:
> 
> On Mon, 16 Jan 2023 10:38:41 +0100, Konrad Dybcio wrote:
>> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>>
>> Add the bindings for the CPR3 driver to the documentation.
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>> [Konrad: Make binding check pass; update AGdR's email]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../bindings/soc/qcom/qcom,cpr3.yaml          | 314 ++++++++++++++++++
>>  1 file changed, 314 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.example.dtb: opp-table-cprh: opp-1: 'qcom,opp-cloop-vadj', 'qcom,opp-oloop-vadj' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.example.dtb: opp-table-cprh: opp-2: 'qcom,opp-cloop-vadj', 'qcom,opp-oloop-vadj' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.example.dtb: opp-table-cprh: opp-3: 'qcom,opp-cloop-vadj', 'qcom,opp-oloop-vadj' do not match any of the regexes: 'pinctrl-[0-9]+'
Argh, forgot to include that again.. My tree's so big it's hard
to manage.. Hopefully the third time's the charm..

Konrad
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.example.dtb: opp-table-cprh: opp-3:qcom,opp-fuse-level:0: [2, 3] is too long
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/opp/opp-v2-qcom-level.yaml
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230116093845.72621-3-konrad.dybcio@linaro.org
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 
