Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 937D05F332E
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbiJCQQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:16:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiJCQQM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:16:12 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91D643343A
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:16:10 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id b7so9873197wrq.9
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=iW+VhYtYyMf+KaS+25pHHBkOpFFu178CtCRw0/QiNjo=;
        b=U+eITeyAK8b0lEm7oRiboO4nw6d6LBVXMmRKsn/9i8XAl5XZujCa/Hcp3heM8dt/PN
         dMTZ6zM81f9X6d1MEPR4eo+bhmkwevcDcIfZJxJjNjNJ7YGtGl2O0UwCyuapqT1KsQq0
         HVVIrIZwwLGabhtbXqu+rvztBjU0jYCSmCv87R956dsmtZwjfjQgHlZ8s6By5g51hV7W
         ums6UT9mYiZFrcT1HplIn8UKdUJw5qtS5lbg/CCDzAu66M6ciPBX2URpf9z6/0MgokRO
         9BmCeSucQfWqcQniTtuCD87VgJ5pFwlpNspuTwjwDfG77mjlnvMJgoL12/KwVnDT9rvq
         RJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=iW+VhYtYyMf+KaS+25pHHBkOpFFu178CtCRw0/QiNjo=;
        b=R319AW1Lf6RcrjPjUK2QMi0iWjW7UZ1aS1ekcKsMbeYq0fsRxY1CSzaKThQFzX7/h2
         zNahb+1ob4hpcFJzWkHKxmMmiUuEX1R3BcjWB5AMMajYHGr6DwFtD5iJbCTPcBiGCZd2
         BRbzgmlwUyYYaKHh/NQ4O0x7WaWjxtnYyyInMTQUUZ+JcBjn4Un9CRsqPQM5kkxXsOke
         WGm0nAZn0V2ZgNG8+cjNl5gnW53A7McBa/RnBQ98d0lHBA62v4RFydAMr3BcNNB8HCR6
         lpoSErtgFHfy6nbBxbdQDeEIMbv26AVKXVdxuDToJqt7FqZ+JUexMAr+VNB2hqGRYhwH
         FNBg==
X-Gm-Message-State: ACrzQf0bPn2prytCfcCcDhiyE2rVd5RC4HHlYf/O1pSUJlYVLxpKvWbu
        WDTWQiIvlb88Vr1k7MeqHTdDCA==
X-Google-Smtp-Source: AMsMyM7lW0jyX+/WoROTDJ3wiozfntolJYCpfWjxkJbm38d5eAvgnntFi2GIUskwKD8yI/PMwXYWQg==
X-Received: by 2002:a05:6000:711:b0:22a:e78d:be05 with SMTP id bs17-20020a056000071100b0022ae78dbe05mr13982480wrb.338.1664813768430;
        Mon, 03 Oct 2022 09:16:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id w17-20020adfd4d1000000b0022b11a27e39sm10225933wrk.1.2022.10.03.09.16.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:16:07 -0700 (PDT)
Message-ID: <1cacb659-7fdd-497d-4bc3-54f1728a6a74@linaro.org>
Date:   Mon, 3 Oct 2022 18:16:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 07/23] ARM: dts: qcom: apq8064-nexus7-flo: fix node name
 for ext 3p3v regulator
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-8-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-8-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> Rename ext 3p3v regulator node, fixing the 'node has a unit name, but no
> reg or ranges property' warning.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
> index 2c661bc51488..9c02dad9efc9 100644
> --- a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
> +++ b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
> @@ -30,7 +30,7 @@ ramoops@88d00000{
>   		};
>   	};
>   
> -	ext_3p3v: regulator-fixed@1 {
> +	ext_3p3v: regulator-ext-3p3v {
>   		compatible = "regulator-fixed";
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
