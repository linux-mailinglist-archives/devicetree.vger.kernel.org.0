Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F18B602FD5
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 17:35:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230421AbiJRPfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 11:35:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230476AbiJRPfc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 11:35:32 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C8199DF9F
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:35:28 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id f22so9868364qto.3
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3kVAKgrIeXS9Wej7D2KBZwNp3M71ZHkxgn2y0ZEuPfY=;
        b=Fbd3sjYaj1g/8OEg/isqYSeagzep3vlG1TvtyLqoFVk5wf0EWM6MsG63MtL5klhlzM
         kih9aPsj9e2xbEm0eYQT/vR/WcR2N5CHAmjEvOqFa4ndJro150g0CsXii4VawRPXqH9d
         WTHl6fUq3F8WUEzHqh/PcLm7vJsq8XrbPXbVX1zXoBFBcFBrj8DY9pST+ISKhLRCsWPr
         uoA/OLBqJt2Q1UsRCChuTU+SAibhpwKXcDH5SpJN6IDq4RmlmKVNjpBQuYrJvHUn2YFU
         bbgPPk69QTEDVU4ytpzY7p5drZej4Fhm+FzDL/imDrn0LHj3lAqFQ7QK11CoZbmCAeIG
         D5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3kVAKgrIeXS9Wej7D2KBZwNp3M71ZHkxgn2y0ZEuPfY=;
        b=itfIpTpOTZazlOimSkvEmMlvwrz17x1RC7fng2+/j6rVziDR1K8fEvFobnQ/0uCeFQ
         DHQLmX1zTTzm587a884CpaYnYy5GVBtmwMslf7aFaTuoj3UCLkeuEA40wH6en+X4vxat
         0jQB83XlMHlgYFj4DGVof4oNYPNRBDBkIo6wJ2c9HRSqepxTAaQzIyAfS17G082bAp8B
         3PT7L+v7ihTtyy5i4JxMv3aMFa9svENo3140hJeVX4r6l3UdKtDtejbT4rwXeRe5ryxm
         6etlWCSN9aH95m4WDd9X+2IguMLnewkJ1GVvNMZLFwUHEpU+Fhywql4jb1ca1w+NWPEx
         o66Q==
X-Gm-Message-State: ACrzQf0W4ih2hos6K4pqsTo2voChiRVXczhwpOlIgposLmXH7iwjFNZv
        fdTviXc/K6f2FylkrQ2Sdpj4Ow==
X-Google-Smtp-Source: AMsMyM7jfOah+Yg6ti2bMKe0TnCoKZfy1iuyVKUUWtDd96255TcNQCtjHGdkLNZIAN78128rvf7JLw==
X-Received: by 2002:a05:622a:420d:b0:38d:961c:a57c with SMTP id cp13-20020a05622a420d00b0038d961ca57cmr2581230qtb.678.1666107327809;
        Tue, 18 Oct 2022 08:35:27 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id u7-20020a05620a430700b006cf8fc6e922sm2540148qko.119.2022.10.18.08.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 08:35:27 -0700 (PDT)
Message-ID: <153a0fc8-29aa-c9a0-eb79-c7a478d664d1@linaro.org>
Date:   Tue, 18 Oct 2022 11:35:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [RFC v1 04/12] dt-bindings: arm64: dts: mediatek: add compatible
 for bananapi r3
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221017104141.7338-1-linux@fw-web.de>
 <20221017104141.7338-5-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017104141.7338-5-linux@fw-web.de>
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

On 17/10/2022 06:41, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatible for mt7986 based BananaPi R3 SBC.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

