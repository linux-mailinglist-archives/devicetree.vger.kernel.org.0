Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91FC2588786
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 08:43:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234289AbiHCGnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 02:43:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232999AbiHCGnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 02:43:21 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A5839BB8
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 23:43:19 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id f20so17825652lfc.10
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 23:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YPyZ/5jDGoYJjTJ3nEHyxJaux49D3WMMU242glD7bu4=;
        b=rz4fhTJjM1z6+rlJ/vmZDpb7yVg0t/jcOe5ktbgTOhqSV5DzMibRkL3ck9nmU2WrvF
         aR34oeHMnaFyBapPMLX878HW/6TVKBhYqiUYfz+asKZZ6P1V+T7G1YvI05I5EI6MCY5P
         UufW1Tbmt2OT+cCGdrjVYGeYY5VZytRbHq7Tvj9DrexcIIvXX483ppgbLfYyahirKrse
         Is1DqPETNIg7gYKcHheNEAOA9WZkYdet5OuLj3pAx0Xlsm8+qQ716tDp2r/yKv6EIDI5
         h2nSVvZDfpN+vAaZ03jaVtCTLFlgnerDcJRGDJKCbBErufXNBfl4PLJRu//Q8ehrELM1
         1aow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YPyZ/5jDGoYJjTJ3nEHyxJaux49D3WMMU242glD7bu4=;
        b=CGwBr7ISBXhYj8qYXwt93a+YBmvi2ogBynukOwKVz9WGYZrYd1VZvUm7EBpvoBvudM
         uq6dhBfq7uV4pgn+OfcKW16NpRE34FSOl070XDYN0NylLZImtSv6HUjxf4QHSLJrrryZ
         CLhuXgq+v0EQQ+DY4gC2mew8DRAgBHTQB6ialM1J+s+VgR16Dh5+DgFDGAtISz+WMpnk
         AdAmEkO+cVuEkyhY5ci/ElJpEl8ZYzTx8z1VYyYzzvo54YV5Tg8p6ahwYD1w1RLG9fFi
         z9qEgLfgSHJaGe7G9kLxC7bmRxiBy4wfEokaguYbgStIxF+6F5qJV8ToMQUzZYKxj7Xb
         8Hog==
X-Gm-Message-State: ACgBeo3oQIkrvwfgcYS9iPjNycjAhy2LhVxyKsKHOSaS1ZK8FoRO5rlh
        Nx9f4UKixpgdoT2ngFgeyFLUJA==
X-Google-Smtp-Source: AA6agR65PjRMDWnBtgA7U9my9Sh+AZDKEFZf42vyzdvodCMsYMVa30uCiPRsDvaF1Pn/vDEdOsAFaQ==
X-Received: by 2002:ac2:51ba:0:b0:48b:18ce:5722 with SMTP id f26-20020ac251ba000000b0048b18ce5722mr1140768lfk.301.1659508998241;
        Tue, 02 Aug 2022 23:43:18 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id h21-20020a2ea495000000b0025e505fef30sm886298lji.63.2022.08.02.23.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 23:43:17 -0700 (PDT)
Message-ID: <f7b98f76-521a-55e7-d012-d11ab6c1de89@linaro.org>
Date:   Wed, 3 Aug 2022 08:43:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4] ASoC: dt-bindings: fsl,sai: Convert format to
 json-schema
Content-Language: en-US
To:     Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     shengjiu.wang@gmail.com
References: <1659443394-9838-1-git-send-email-shengjiu.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1659443394-9838-1-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/08/2022 14:29, Shengjiu Wang wrote:
> Convert the NXP SAI binding to DT schema format using json-schema.
> 
> The Synchronous Audio Interface (SAI) provides an interface that
> supports full-duplex serial interfaces with frame synchronization
> formats such as I2S, AC97, TDM, and codec/DSP interfaces.
> 
> Beside conversion, 'fsl,shared-interrupt' and '#sound-dai-cells'
> are added for they are already used by some dts.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
