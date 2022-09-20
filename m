Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0320C5BE00A
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 10:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230306AbiITI3k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 04:29:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231671AbiITI3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 04:29:05 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47BB2E6A1
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:28:51 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id a14so2069982ljj.8
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=fw/SHkXwMkFKfWuM1sqn8CqRzURyBdIM50KT9clJT54=;
        b=nJeWvr0d6HGaY7Rx+/e4ufvu9Hx8TyU31qtiGH02hsStlIWZGO1+2w+NYnfLbzx1pF
         x6CboFt2zqRgj29ytiysh2dzIv5gxyJdHqdTW+va3LLp/PCsp8UWJ9NQ7ys0AUwsMdHS
         yN9gHytHgqM7AerVvw5UlvVWkAuI7K/rwgt/+Hw/2xBOjbx+P2BWLy41sWBKRF1Jq0gH
         j5PijGwYg6HhGKrY1/kgUUOcIR81mrABTDv0dZoI2VrfIJFsuDe+/d7jiVws9EyyZYSi
         fY2SBk4jmsRFWSe0of/s91dqwRedg4rHJOfMMJL24CSR4sK2MgMZJ5W/hYKGs+CCl8Op
         db3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=fw/SHkXwMkFKfWuM1sqn8CqRzURyBdIM50KT9clJT54=;
        b=nO+gWCWxW/s9DEBF6c/CmgIbpRs1w2ZTBekj0+fPxHyGbGH/TznYmDuZutTEtQDEx0
         7V5/kATuclbF3QA64ES9nLdw6vvpnReKu9zgIEUMBmjxGcv6va4hGx7l6BMUaY41h4DH
         OLJoD3emYTP6AFklEutMWuTbFMVlaqpmBM326IpeEFH2XEVsIaA7J7bQyXyVaePG332A
         cZ1fSTnXD0+tv9OTn0EjwLbEnBBU8f+jaYmqM/S7MY4OT+sCx0paFJApFbhdTx22QOa5
         mDqAeRPvfaP5vmx4W7qEVZetPPFlLI3GgfaMONfh0z84gJIAVuoy5mnnyF3V3xXYxH+y
         oWsg==
X-Gm-Message-State: ACrzQf0FNVX42xx51tSOJvMTU+nuzrybczIl129YwTPYhndYvDj+RHGd
        cX26lBw+Qi3tclFDbT8xMzXhtA==
X-Google-Smtp-Source: AMsMyM4k5mvClZP+uOnzG27BVLGmAA6O22iRISymumTCjmPyl/oCtpyTB5PCAXP2f+0mwWSgJoaRmQ==
X-Received: by 2002:a2e:a555:0:b0:26c:2f4c:f019 with SMTP id e21-20020a2ea555000000b0026c2f4cf019mr6653777ljn.245.1663662530224;
        Tue, 20 Sep 2022 01:28:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id dt13-20020a0565122a8d00b004946c3cf53fsm201611lfb.59.2022.09.20.01.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 01:28:49 -0700 (PDT)
Message-ID: <7b7f7b59-03b9-3ad6-96ba-5b0b8a69ae01@linaro.org>
Date:   Tue, 20 Sep 2022 10:28:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 0/2] SDM670 RPMh Clocks
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220920022251.3073-1-mailingradian@gmail.com>
 <20220920023012.4433-1-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920023012.4433-1-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 04:30, Richard Acayan wrote:
>> This patch series adds clocks controlled by RPMh for Snapdragon 670.
> 
> Oops, sorry. I added the wrong description. This was what I meant to send:
> 
> Subject: [PATCH 0/2] RPMh Support for PM660 and PM660L

Send a v2.

Best regards,
Krzysztof
