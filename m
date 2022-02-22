Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29FDE4BFF8F
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 18:01:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234330AbiBVRBd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 12:01:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231931AbiBVRBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 12:01:31 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64E5F16E7DF
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 09:01:05 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id qk11so44946280ejb.2
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 09:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:cc
         :references:from:subject:in-reply-to:content-transfer-encoding;
        bh=JGQCo5ykuHz6y1ssptNMH7TrVFHhsBP8EJitPKVFkDM=;
        b=UTZacCfya156LNsmfH7itZP7J3YqdpNxImOwwahQpHp9huskdbI5zt4a730UW5MKkQ
         pkJG2NrUjhoeXdL3F+eQeF5EbZvsPulKdU2k32F8ERblIdmzX/gjapew5fK/CuoKFftT
         XzQcafH8GIaxVTq2pPBaWPRo1K8q7ISw91D3wzqvSIAx8JvtuFzR+de1E+JgZ+s4X4Ua
         VX/aYWLo48frl0V9lzVhzD1QmwiK133eSpGp7XC4YYQDpczXPYTb5/MXT71TZkX1wAIE
         pFOvJmroGyzF9cxTinilEjMJCt5+TcrYWPHmHN1ivDFUgGQBtrC3sZtndwEAsS4WPQc8
         8oUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:references:from:subject:in-reply-to
         :content-transfer-encoding;
        bh=JGQCo5ykuHz6y1ssptNMH7TrVFHhsBP8EJitPKVFkDM=;
        b=vn9JgN/vVz5yda3rBU6ULHz2czInb2gZmi3kuuSUUeK28xTfH0/OmDvA/jLtHieTSn
         02ieHQdckU2HXZlg0vsIb9vkAmvHNq9cCN4viTu+ePz/785orCFf8mAONBPzyLLwC1L3
         MC65nbDJABBA7NpEwizjpqiCuGOdgqryvL+9m8KmgGg0jXuAXJkI9JYFgiv1TY5Nvpnx
         b4dwyEsU+diTvMRBa84jVQUZV8c/RkUFTXvIclXV0Y4UE4nuzZexEUaP/yQiLDttx/NK
         njHY+fJTXnESBaT1/K59Z1Zjt43wI8VTmczp8+8M+b3YxD45chO/X4u6bAA+8bAZBJSd
         9VkQ==
X-Gm-Message-State: AOAM530YGmwZUGY/SHCuY0bQVlVKLf8zvHMzNfIpeU/F0ZbM/wctduva
        /rfaKWlxX1Xvf6PR7L/CCUKcb1l+V/c=
X-Google-Smtp-Source: ABdhPJxDR+Mredod6vA7SaIGAK+xvwBRrIo7CQLf7AxHeMW/IBxjVrS4W+9lgXjKGbwQm/G7WSqb+w==
X-Received: by 2002:a17:906:e218:b0:6cf:7483:36c8 with SMTP id gf24-20020a170906e21800b006cf748336c8mr19870387ejb.747.1645549263824;
        Tue, 22 Feb 2022 09:01:03 -0800 (PST)
Received: from ?IPV6:2003:ea:8f4d:2b00:9cef:d49f:b9d:efeb? (p200300ea8f4d2b009cefd49f0b9defeb.dip0.t-ipconnect.de. [2003:ea:8f4d:2b00:9cef:d49f:b9d:efeb])
        by smtp.googlemail.com with ESMTPSA id g6sm4503829ejr.72.2022.02.22.09.01.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 09:01:03 -0800 (PST)
Message-ID: <e1998e9e-3bb9-9516-8cf3-3b4ab8576e92@gmail.com>
Date:   Tue, 22 Feb 2022 18:00:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
References: <1f39432b-84e2-e6dc-a6b8-c48ad5cf2210@gmail.com>
 <39d61ddb-4b54-4a13-fbb2-c0f88d9bf017@gmail.com>
 <1645539763.080061.3016155.nullmailer@robh.at.kernel.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: auxdisplay: Add Titan Micro
 Electronics TM1628
In-Reply-To: <1645539763.080061.3016155.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22.02.2022 15:22, Rob Herring wrote:
> On Mon, 21 Feb 2022 21:23:18 +0100, Heiner Kallweit wrote:
>> Add a YAML schema binding for TM1628 auxdisplay
>> (7/11-segment LED) controller.
>>
>> This patch is partially based on previous RFC work from
>> Andreas Färber <afaerber@suse.de>.
>>
>> Signed-off-by: Andreas Färber <afaerber@suse.de>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>> v2:
>> - (re-)add Andreas' SoB
>> - fix YAML errors reported by Rob
>> ---
>>  .../bindings/auxdisplay/titanmec,tm1628.yaml  | 88 +++++++++++++++++++
>>  1 file changed, 88 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/auxdisplay/titanmec,tm1628.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1628.example.dt.yaml: led-controller@0: 'spi-3-wire', 'spi-lsb-first', 'spi-max-frequency' do not match any of the regexes: '^.*@[1-7],([1-9]|1[0-6])$', 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/auxdisplay/titanmec,tm1628.yaml
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/1595730
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 

When I run "make DT_CHECKER_FLAGS=-m dt_binding_check" then this error isn't reported. I have:

> yamllint -v
yamllint 1.26.2

> dt-doc-validate --version
2022.2.dev1+gf677c85

> pip show dtschema
Name: dtschema
Version: 2022.2.dev1+gf677c85
Summary: DeviceTree validation schema and tools
Home-page: https://github.com/devicetree-org/dt-schema
Author: Rob Herring
Author-email: robh@kernel.org
License: BSD
Location: /usr/lib/python3.10/site-packages
Requires: ruamel.yaml, jsonschema, rfc3987
Required-by:

What else could be messing?

If it matters: I'm building on latest linux-next.
