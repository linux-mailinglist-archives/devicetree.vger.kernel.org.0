Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1FC34CE72D
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 22:12:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbiCEVNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Mar 2022 16:13:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232615AbiCEVNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Mar 2022 16:13:40 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27EF36C943
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 13:12:49 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DAE7E3F1B7
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 21:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646514765;
        bh=c7nvDWFcwUU/UCEXDJQ70xZTwc42c5nskfhluppR+58=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=i/ItPEd0GegZtt68+IucCcYpptAuc4r1fRnpMNUXQglJD+VEHU8+j3RJzd+9e/WuX
         8o/Nz9f09yav8A6EQ6gg/9JAbdgbUllQmVc21az/h473pkQeqDdgJiquJ1+uLz5mGM
         c2pogj+ei//xWfl2yh5qpZ1S1E1t+TU+8O0WBr+4njrqrB2ZHkw7zxy1LWlSC4PywR
         gny1W615NcWRLDBcXlJe3qsKD2DfBDVkYeCk0aJkT6D7Jom24J87ZzH+O4TfhzHaMM
         hb9edu0iTDyCoSDuEEWudcC44/GfPOo25bWjynodDwadpQy5/Ljd/tUc3Hpx1rAlIg
         djF3fl8DU6olQ==
Received: by mail-ej1-f71.google.com with SMTP id k21-20020a1709063e1500b006d0777c06d6so5992841eji.1
        for <devicetree@vger.kernel.org>; Sat, 05 Mar 2022 13:12:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c7nvDWFcwUU/UCEXDJQ70xZTwc42c5nskfhluppR+58=;
        b=ow8UalkptnsysJdPo+UbPw7o3W7zJ/hGs9tEetLXf9XBDWtn67UeWmQ+BydHbeA7OT
         QRg6rgIj3eLbDzW6HKR+NrtfUaEGjJu+jo+tNhIEdgjlguXbDWPGLCTPuX381F/cx5c0
         N9f6INHEpGELrRjornjlRtdNuPa3rmUB24hJAnKsvQnjvZFYNuNU4VOB4vZAqqgmnhhB
         mtcMwS1x3nGi7XJ/UYWpxMkYdiFgZgwgyzu/xkqB9s+RZ+rjdFnMJm266O4KQJV/7gvo
         PJW5N/6TKtIfpcoEhmNuY+o6Mb3DgyMnhVVsa661gNEkVeR089ApBV/ZeFK6I7HhmrII
         QPbg==
X-Gm-Message-State: AOAM530tMpL4qY+JGxgpJjgjueUqUv+j6DfeNSwfUy4j5Zt4XVGmAHV4
        C6bdifwwk2OFgTkurIGEg8hZ/M0osZ4Cz137fZGEmBH/kH42EwqM2TwZZ/QhMgiNvPrM8Kaf56V
        Xcj+jWtm3o69d4s57tkApQgKppy6GXZStc1xBXPk=
X-Received: by 2002:a17:906:2846:b0:6ce:21cd:5398 with SMTP id s6-20020a170906284600b006ce21cd5398mr3859156ejc.49.1646514765639;
        Sat, 05 Mar 2022 13:12:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwQWtd1Rccv7Kbrfkpj21uOWYbCPVJQ8Isf4LoTsdDQe/XmKzNu3ITY1TALeARndSrDs8ssrg==
X-Received: by 2002:a17:906:2846:b0:6ce:21cd:5398 with SMTP id s6-20020a170906284600b006ce21cd5398mr3859151ejc.49.1646514765494;
        Sat, 05 Mar 2022 13:12:45 -0800 (PST)
Received: from [192.168.0.139] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id o2-20020a50d802000000b00410d7f0c52csm4018060edj.8.2022.03.05.13.12.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Mar 2022 13:12:45 -0800 (PST)
Message-ID: <ed2c1e67-4d45-5602-7adc-be0451c7ae1f@canonical.com>
Date:   Sat, 5 Mar 2022 22:12:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/4] dt-bindings: firmware: qcom-scm: Document msm8976
 bindings
Content-Language: en-US
To:     Adam Skladowski <a39.skl@gmail.com>, phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220305164906.16853-1-a39.skl@gmail.com>
 <20220305164906.16853-4-a39.skl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220305164906.16853-4-a39.skl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/03/2022 17:49, Adam Skladowski wrote:
> SCM driver on MSM8976 requires 3 clocks.
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Same as in other patches - missing blank line before SoB.

With that fixed:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
