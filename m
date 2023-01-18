Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 442CA671FCC
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 15:38:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbjAROi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 09:38:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231256AbjAROhw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 09:37:52 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ECFA66EE9
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:28:00 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id tz11so19249290ejc.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tGsNaYd8lzrEJBZWh/jXK77/CF4jiaEZbxlPMQt1yUA=;
        b=yGgv4bRS23TPtTiAaUpfhM7ARvm/Md/VxtiJeL6mzD/ShTWfpUCOmR2JYuBXb9nwV8
         Hnjx4/fhXVb75lGNMSC6kR+eOmOGg/nsAmix226J9z1IltroWTgraHT67mb9C0NSlgdN
         2FYm9ogR/3dvC6TGl4uV+C8JvUBo2QsX32nYkjO7uxAY88e5q0qLkoORP56kXrt7Jarm
         ojfbGc/I9iN1zTbo6RyJVjKsvbObTFE+NL8H98j6OKruudOMBLu/d7fqP7bVkTcd9kAT
         4q2GB6mH24pr3FviUt7tBrEoXfy18t2g/bPCy6tmkaGbCg1s9txiRVGS64UFnxK6Uhzz
         YCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tGsNaYd8lzrEJBZWh/jXK77/CF4jiaEZbxlPMQt1yUA=;
        b=7D7EvKmc1n8avNGd158KGrD1OxGnGkOkNb4ArYH+ZmlrL2YBzbGM2eX6BfzYLOWV1Z
         GOq+lS4eRdnio7hqCQTg5Hq3DV6SncNC3pIRPXqo/U6ognZ2cHfqCMnJSBJIdZRde6Ic
         r1lBCF/N985RIZlCqgAkHv8ozTDjHY+SgdTuLANBWR+cJv6fq3VTwu3OqLrkHp81cjfE
         HGUUWhVTSgKWZE1gw0M8iJPtGLRpnnM0+Tw+VIXrmIUk4aKvmrj4ET/cSyTcHt8ivdbE
         xHaMREs+olvjuD4jbU7gjnRZ4f/VqvJoJmPiUxXmH9I8fK5Qih7Nnf5InY6mbd245tDk
         3vTQ==
X-Gm-Message-State: AFqh2kpt+epoGf2h3SCV0nJ46veeIR/JczeBQq/hn5LGGUnz+pvHWaC8
        DCrE7YD8VqU4DQz9FJXfs0La5w==
X-Google-Smtp-Source: AMrXdXtaZoCq1axVrnXR3NO7JWhyRBJo7prw3mrcpWnr7PBsifQfh/PbqAmQtCohleDsgwL+x5LqLQ==
X-Received: by 2002:a17:906:5906:b0:870:2f70:c624 with SMTP id h6-20020a170906590600b008702f70c624mr7429241ejq.3.1674052078711;
        Wed, 18 Jan 2023 06:27:58 -0800 (PST)
Received: from [192.168.1.101] (abxh252.neoplus.adsl.tpnet.pl. [83.9.1.252])
        by smtp.gmail.com with ESMTPSA id um41-20020a170907cb2900b0086c4fbb8507sm6114730ejc.225.2023.01.18.06.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 06:27:58 -0800 (PST)
Message-ID: <e47e3ec7-4c89-0472-cc87-9c9cc6db8519@linaro.org>
Date:   Wed, 18 Jan 2023 15:27:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/2] clk: qcom: add the GCC driver for sa8775p
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, Shazad Hussain <quic_shazhuss@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230117180429.305266-1-brgl@bgdev.pl>
 <20230117180429.305266-3-brgl@bgdev.pl>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230117180429.305266-3-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.01.2023 19:04, Bartosz Golaszewski wrote:
> From: Shazad Hussain <quic_shazhuss@quicinc.com>
> 
> Add support for the Global Clock Controller found in the QTI SA8775P
> platforms.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> [Bartosz: made the driver ready for upstream]
> Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---

[...]

> +
> +static int __init gcc_sa8775p_init(void)
> +{
> +	return platform_driver_register(&gcc_sa8775p_driver);
> +}
> +subsys_initcall(gcc_sa8775p_init);
core_initcall, otherwise you'll be waiting for years :P

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> +
> +static void __exit gcc_sa8775p_exit(void)
> +{
> +	platform_driver_unregister(&gcc_sa8775p_driver);
> +}
> +module_exit(gcc_sa8775p_exit);
> +
> +MODULE_DESCRIPTION("Qualcomm SA8775P GCC driver");
> +MODULE_LICENSE("GPL");
