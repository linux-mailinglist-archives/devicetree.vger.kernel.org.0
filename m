Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A3005E83F3
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 22:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233226AbiIWUew (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 16:34:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232877AbiIWUcu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 16:32:50 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36CD614C044
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:28:33 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id j24so1295305lja.4
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=dRBiNzhvL0fZ1btpeERnXtz/brYGVXxmj/uHgSA0610=;
        b=JGNV/7ehKxkXA6HowZDNPyS3U+aex1as67ku86jF9uZoqlqh5CgFk3yDy2HwnzVgCE
         5vLO2P612JYylDavD0MTm3myJNT7QmDHOfbtlhhVpJ+Q9VzF2ABHN/iNcjZvUrRCD48O
         Z2EL0E1d3OofeGa1TMbqNmV2RE5jRpW7GniL2c3BfoDJIgD6ScTF4JKSX9HBBmR3Mbrz
         1GtGmi5dXTXcVfSy1LpSwDnqv3euCGbJCHW5VPhjKsV3k+i8t0uOgIh7bwiN1tOqc48v
         8dCnN/2Fd0riW4uxqmXWzHUF0vtHRsqpoVKhrKEUxVPZ6arbv1BhPTNe5HDGryeDDATq
         E7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:cc:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=dRBiNzhvL0fZ1btpeERnXtz/brYGVXxmj/uHgSA0610=;
        b=YvZCEZPceTezNf5luZ0dp8Gp4Qmfrxh4Uz3yyz+xqe+uqbi03X6DXDtLgdZGcksM1F
         /6iE3dFlbSSCXOXd7Hk5z9/7OXwYyWAxqR74S5e2713H6MUhz0RkrTfqu3KwNLBBgzMW
         1tj7JQreQLAh176bItKbqUtBXC4d7A4copqmabM5xShTFGrHqaMCsRJeP3lKNodbDCwZ
         rStpbxnjghKbIhrV08vLPr6ZPofKLmFnBcXL6+E9akxUfbSoZ6zjdeyOPgdL4jw8qPrn
         5XMD/9MYYhXIHqi5o97rj64kN0xjVi/75FZf/viXnd8q4vFCDZTctcwja2cJlxE6hJrL
         KFIw==
X-Gm-Message-State: ACrzQf1q3VqFWFuHgXLrf/3JlTBteUvgmE3JX7Kp8ROSineCG/3a2uCf
        5ImjiNhFv46XooDQP+20BX+Veg==
X-Google-Smtp-Source: AMsMyM6Afp+Gmn1RVL7p08gPAY9RDWH10sbYGoj8p5xDl3eIWEfgDkusANv9wbw+j1GwRxnO305/JQ==
X-Received: by 2002:a05:651c:1795:b0:261:af46:9d12 with SMTP id bn21-20020a05651c179500b00261af469d12mr3537893ljb.122.1663964911587;
        Fri, 23 Sep 2022 13:28:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i2-20020a056512340200b00497ab39bcd0sm1594791lfr.96.2022.09.23.13.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 13:28:31 -0700 (PDT)
Message-ID: <e1576227-e9ee-a6bb-bcb4-f142f99300cc@linaro.org>
Date:   Fri, 23 Sep 2022 22:28:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v4 01/15] arm64: dts: qcom: sdm630: align APR services
 node names with dtschema
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>
References: <20220910091428.50418-1-krzysztof.kozlowski@linaro.org>
 <20220910091428.50418-2-krzysztof.kozlowski@linaro.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220910091428.50418-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 10/09/2022 11:14, Krzysztof Kozlowski wrote:
> DT schema expects APR services node names to be "service":
> 
>   qcom/sdm850-lenovo-yoga-c630.dtb: remoteproc-adsp: glink-edge:apr: 'apr-service@3', 'apr-service@4', 'apr-service@7', 'apr-service@8', 'qcom,glink-channels', 'qcom,intents' do not match any of the regexes: '^service@[1-9a-d]$', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Hi Bjorn,

The bindings parts were picked up. Any comments from your side on DTS?
Do you plan to pick them up?

Best regards,
Krzysztof

