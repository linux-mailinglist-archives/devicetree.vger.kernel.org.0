Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3BD575E0F7
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 11:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbjGWJew (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 05:34:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbjGWJev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 05:34:51 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3E25E6A
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 02:34:49 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3142a9ff6d8so2923145f8f.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 02:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690104888; x=1690709688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4RQzulAln68QaO9xCL+1uqZn0t96ask7tv6fnlyXL9E=;
        b=mxahKaJmQ9V/amzC/e6KwIs48UtlToaFXzkTmbqljUfs7owNzm+ROa+GSqcutQaXxx
         nKqYmNZ/eZorXs7fb8R8kCfDKpvIPM91Zw/yCLu5wErRC443YichwaqUP9NyLq8RteGZ
         e8/c8laNGwDh25TFszYPeCtJ9Z8EHyT7Naj+79RQAb3nxiLzAsXw6AaNuCCnaTcMZoe7
         B/LLndwWh6q8AGqsp+KGFPtze+6yykZxvKYXsyx7gpwncBFkST95DW5TMKJtEXH5cqtX
         moVIvxIJ1g9wfxVX5PmTh+EI5W3ZpHb7Ey6FlYmmoTx7E34J/LhMS02wSYPYEoCj8fMs
         jMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690104888; x=1690709688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4RQzulAln68QaO9xCL+1uqZn0t96ask7tv6fnlyXL9E=;
        b=N7eJh7sr21ks85Rnn50ydG1JncoR9wCmpjpB0qjsLxrGbu8gWAHKznqNfWfCJH5qTC
         fO4YwP/wGLABZYOpsXKh5CBE3pOVs49Cn0nmpX3dTPU/zs2SB8+XFOxbGoC+FJClrxkq
         ZRLeXVy++IBx2t0dM75ZsMvtUEP/KsYFoB6w7JBzDpm/1fN7eJJoqFYS57UwRoJtBL3x
         nG+x94Kvr1GQdWvx2RfPUsY2Ztk/JnqSXg9p6mQ01QtCBKGH0S07X4wn7WwNgTYD3D/b
         tABJaBddkqcyn504aNZCHMUG1HECz+u628ymjosKF4A+Tr8fPUHFl7Wy//CfUdIOqJBK
         IfXg==
X-Gm-Message-State: ABy/qLYHxv2AuDLqvMPN0b//XKEOjk2ne4FuVXIvic8fiF8wtXz8eg7+
        oJqB58gWLKBuliHij7zzNzvKvQ==
X-Google-Smtp-Source: APBJJlFriNeOwzy4enYAho2TrtX5YBSNV5iCxkOpDFw6Wt6bicliLHEWrHUekrzUkCyhRfMet3gV8Q==
X-Received: by 2002:adf:e34c:0:b0:314:336e:d4d8 with SMTP id n12-20020adfe34c000000b00314336ed4d8mr5779040wrj.8.1690104888099;
        Sun, 23 Jul 2023 02:34:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v4-20020a5d4b04000000b0031411b7087dsm9241975wrq.20.2023.07.23.02.34.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jul 2023 02:34:47 -0700 (PDT)
Message-ID: <12079552-f724-b821-15c0-bf2ea6afc780@linaro.org>
Date:   Sun, 23 Jul 2023 11:34:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 07/11] dt-bindings: remoteproc: qcom,msm8996-mss-pil:
 Remove PNoC clock
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230721-topic-rpm_clk_cleanup-v1-0-cf6cd5c621d5@linaro.org>
 <20230721-topic-rpm_clk_cleanup-v1-7-cf6cd5c621d5@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230721-topic-rpm_clk_cleanup-v1-7-cf6cd5c621d5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 17:36, Konrad Dybcio wrote:
> The PNoC clock is a clock for the entire PNoC bus, managed from
> within the interconnect driver. Attaching it to MSS was a total hack.
> Get rid of it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

