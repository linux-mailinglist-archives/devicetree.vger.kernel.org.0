Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 083FB5B3135
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 10:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbiIIIBC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 04:01:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbiIIIA7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 04:00:59 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64C736E8B8
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 01:00:56 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id f9so631559lfr.3
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 01:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Wo4DqrKCOn9J9SykBsjnKnwSi1oBgr19YyA+wr5qBa4=;
        b=nVBvS4l6sJxLcvJQYoxB0cERu66pIf2Qxv0xKbN3ug1kN1Z3/J3/keGqRSGCfn4efX
         nNAOWa016GrcviyLjxnIUP8ASyWO5/1SGYppTM8EZG148/WrrrgZBo4xRTp6DdSE6S5N
         7Fwt5JAgyLIkOYmjq04Wdsi7lqvLa1gFfrbp88eb0V5tQtn9XBlqPYsHJKPC0mRE8mZ5
         0WuQnuir81mKaIQ9NZlHqDuNEfH1+WhQ8OQV9oBo4WOTGACmuvrZgzKbKget5DFiaUg7
         rerpoRomwSpnrZ8dC52oJD0ux5J6iqRk5/4cUHYYGJ1dH6XOEcxnSa/ek06CiRLnzOEZ
         9YsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Wo4DqrKCOn9J9SykBsjnKnwSi1oBgr19YyA+wr5qBa4=;
        b=ayu5UawRibH8CJlQLvFGEIW4ph4+1d1LdNUtPfkNECO882+Kyf04kr+iup9EggRwky
         rhuOqFQxKhO3yfGRONy7G5qyk8OkUqnKh95ekICJn6u43lVynvTl3IK0XKSoN/zyedLT
         f84bi+P9s6w+KGodtbpY7GqZViFn644UsIf0vY3sdg0NEfGSKMB2k4nEeXZsRPMt14OM
         V3BjorOIDuQyq3b7ENRCVYUXj62a5gOg4E2abaQjNHo6uiohRKEt/4unLi8sCimQa3WL
         E/uICNcVTs7Fc5rXwNCO9+iTg6+FknvGhlxEnRqb8iouwA3wGKp4rQG1RBahycAo2cUT
         CEEA==
X-Gm-Message-State: ACgBeo1zFURx3iCJSbmzGox56rAhM0hd/LX9gzbl/O/LCxkd+fYH6PK7
        eS1uzJWF/gwJM7O049CZ/5Aemw3oafF9wQ==
X-Google-Smtp-Source: AA6agR6+OIBDfTt6JSaD2DVqJzJptP/yRxtLvHazcVBhYGL8a+j+JtCVaqC8z0eeJsJV/Gz9N7JxVg==
X-Received: by 2002:ac2:4bc7:0:b0:494:74d4:80a2 with SMTP id o7-20020ac24bc7000000b0049474d480a2mr3937377lfq.490.1662710454805;
        Fri, 09 Sep 2022 01:00:54 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f27-20020a2eb5bb000000b00264b292232asm176386ljn.63.2022.09.09.01.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 01:00:54 -0700 (PDT)
Message-ID: <ec73f713-2e42-3282-2e04-97a5db367702@linaro.org>
Date:   Fri, 9 Sep 2022 10:00:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/4] dt-bindings: remoteproc: qcom: Convert wcnss
 documentation to YAML
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Sireesh Kodali <sireeshkodali1@gmail.com>
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, bjorn.andersson@linaro.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20220908184925.2714098-1-sireeshkodali1@gmail.com>
 <20220908184925.2714098-3-sireeshkodali1@gmail.com>
 <1662671776.543526.3355395.nullmailer@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1662671776.543526.3355395.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 23:16, Rob Herring wrote:
> On Fri, 09 Sep 2022 00:19:23 +0530, Sireesh Kodali wrote:
>> This is a direct conversion of the existing txt documentation to YAML.
>> It is in preparation for the addition of pronto-v3 to the docs. This
>> patch doesn't document any of the existing subnodes/properties that are
>> not documented in the existing txt file. That is done in a separate
>> patch.
>>
>> Signed-off-by: Sireesh Kodali <sireeshkodali1@gmail.com>
>> ---
>>  .../bindings/remoteproc/qcom,wcnss-pil.yaml   | 263 ++++++++++++++++++
>>  1 file changed, 263 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.example.dtb: pronto@a21b000: iris: 'vddxo-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.example.dtb: pronto@a21b000: iris: 'vddrfa-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.example.dtb: pronto@a21b000: iris: 'vddpa-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.example.dtb: pronto@a21b000: iris: 'vdddig-supply' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/remoteproc/qcom,wcnss-pil.example.dtb: wcnss: 'bt' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/qcom/qcom,wcnss.yaml
> 

This needs to be fixed.

Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).


Best regards,
Krzysztof
