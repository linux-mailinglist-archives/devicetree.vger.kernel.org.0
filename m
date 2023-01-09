Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95FE8662375
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 11:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbjAIKss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 05:48:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237125AbjAIKsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 05:48:40 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFAE0DC8
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 02:48:38 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id z5so6645965wrt.6
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 02:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JQKR5U5znHf/DfWUyfUr9vzj4JNhDBQ0tGJoSZ+fIdU=;
        b=AJD0I0Flt9tbFUUVpsRDBDiZfNkqxlpScRM3n+c+4053f3wFU+mlmCbMtX+jaDI6xo
         ZQk+lgrpkfBUy36PIuOJLTPauc2bFtE+KUzf9mwmiE3Af1daXVi6aTKeLuGDRFZFg19P
         yPXRnHGFCCDZYQGZ/nH++Sve8hyYO3lbRg53KViRYhtmlT9XKKaBmrH28v1753X/01Xc
         eclpiyl671nDZ+u+ZVxN8rfXJp9BY29zvmRkFD1HEZ922E2HZAMgEgk3rlZQ3XwCVlff
         Gf3Yo418xjZNDJ+VIjsYwrkh4wcN/gjzL59YvsaYZLV6knWhz/pgYCdR8kJN/NGFVvvV
         X56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQKR5U5znHf/DfWUyfUr9vzj4JNhDBQ0tGJoSZ+fIdU=;
        b=08H+kt/xR11HouUYA6zITOG3nt9JhKeyQSKUVC9g3zHh5axLbDpVqIYEU9Jks8po1m
         J4IrgxJZvc1xa2yba2q94oy3Ss55Eq6zGg0EUJobx5FSt9RckqQJpRaLykG/hi109kKq
         5w38Zop3Rmym7YkIAOYHG2WTNi5jxQEbv9CnN+9wzT894R5rmpCguRJrneSBx2LRSJLI
         lqfyoJw8uPOoFCujH3ptlujDQlbqX26JMKyonjtEVJ9DODwPO3+IByihcu9ldC64D976
         wZU4dPYKlRVmlBVp8K5Yzkq5D4WQwPLagfkagVxA+HhyB17RyUaZe5wHUATSyxR4DhlG
         Qr6Q==
X-Gm-Message-State: AFqh2ko7Hy0dmmAW/YeGc5/CxH3fJ9RbV6oWNkwcqtAOE8Adpk/YZPAN
        5n3SzzFbpJTbFkYLnBZevw4cEQ==
X-Google-Smtp-Source: AMrXdXuJg2KGksTmoxldAlx+tbyK7I8htbzmfXDCcRKnFvbxALeCVgd1GoSPDyD0GkM0Snv9qSPWUA==
X-Received: by 2002:adf:e74e:0:b0:242:2755:211a with SMTP id c14-20020adfe74e000000b002422755211amr41114653wrn.38.1673261317453;
        Mon, 09 Jan 2023 02:48:37 -0800 (PST)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id l6-20020a5d4bc6000000b0027323b19ecesm8279221wrt.16.2023.01.09.02.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 02:48:37 -0800 (PST)
Message-ID: <72b62e61-5823-86cc-e01e-652673da94be@linaro.org>
Date:   Mon, 9 Jan 2023 11:48:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 1/2] dt-bindings: regulators: convert non-smd RPM
 Regulators bindings to dt-schema
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221005-mdm9615-pinctrl-yaml-v5-0-910019fb8b9b@linaro.org>
 <20221005-mdm9615-pinctrl-yaml-v5-1-910019fb8b9b@linaro.org>
 <CAL_JsqLrDGW118vEV9dnpTkeJmE+S79u0WXajuTOVi31WmF87Q@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CAL_JsqLrDGW118vEV9dnpTkeJmE+S79u0WXajuTOVi31WmF87Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 09/01/2023 02:06, Rob Herring wrote:
> On Thu, Nov 17, 2022 at 11:05 AM Neil Armstrong
> <neil.armstrong@linaro.org> wrote:
>>
>> Convert the non-SMD Regulators bindings to dt-schema, the old text based
>> bindings will be deleted later since the RPM bindings are not yet converted.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>   .../bindings/regulator/qcom,rpm-regulator.yaml     | 128 +++++++++++++++++++++
>>   1 file changed, 128 insertions(+)
> 
> Looks like patch 2 was applied, but this one still needs to be respun
> and applied as linux-next has warnings now.

Ack, sent fixed version at https://lore.kernel.org/all/20221005-mdm9615-pinctrl-yaml-v6-1-6c913908bb85@linaro.org/

Thanks,
Neil

> 
> Rob

