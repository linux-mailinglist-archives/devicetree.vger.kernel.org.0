Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D99C676875F
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 21:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjG3TUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 15:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjG3TUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 15:20:40 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 317C710FE
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 12:20:39 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bcc0adab4so605570966b.2
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 12:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690744837; x=1691349637;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DEjl0pvg9/j+6XvVJyhaHyc6KXkv2+mncGB6CY2cqjs=;
        b=DYozmKFWKJ242QP+Gyd1w5ixhTzmsRESaKU7tsKWuLc1S3XKsLdDDad4TXj+YQOhcs
         zLuU3oooEtmgLdpEHwBi0cfjmc/dW2/YMuzhUdUyRqrey9OQMXNcXh8MgufNg/g3IIjX
         YXrl7HwJ5mbUm3G8P6Udu7si07Gekyx9jwo/U7b8lr+2QURoxrFbgPwTr7lAR5PbRE5b
         7w/hoI1O8ZFptAz8X61TbBEKXNT07I+XLDrvxcLCeWtEYSS3gKv9uV5tYJN4tqHnETy7
         WA3atvRTG/oXlt9TGtr+1meqWGwc0IEpXZBGSg59ZJIOaczo0UMIlF3Ezj/rjkArFesp
         2g4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690744837; x=1691349637;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DEjl0pvg9/j+6XvVJyhaHyc6KXkv2+mncGB6CY2cqjs=;
        b=GI/K9TZv+ku5c1lX+etAgeqYVlqzZed9zvnLc7GHAq8IkWYJBOp+DtZ7YPRnSjqEnV
         M4bCgebIt9GHkZpphU0wtPpk2Vql1UzyTf8jnsNEx4+EhAy7HElpiumpW6Q7Pkqc5ceV
         vnJgGs9LQms9xiugiYvH25MUqwYo5S+BQVZNMOuiyfD5FcaHzScUfQTxN97t388U26NH
         TIAuu02kEx6ynQLFl6x7g6G+0pFdSvysiD0LU6gzlHVvkYA4C7RV9Gza/89sl8zGSN43
         SKS5mpGd670EXi8mElnoic+x+dGxYY/u4+Iy4UifTdQ4hxFX/OFyag2scQjrgIfoAXCH
         fPYw==
X-Gm-Message-State: ABy/qLZ28wMtJT5dLrzpcREWFQm6zdawsSdWBd9ySJ+Wtn2GtBqBNykT
        SnAJb20qcqYDyIxI7HbHxv51XA==
X-Google-Smtp-Source: APBJJlEs4mVjSoe+3Mo2MTnCJ0aJDjyLdwEIsQ6IxzyYIt+bXokocaJTWvjGA7+d88yJS3nfM+FGRA==
X-Received: by 2002:a17:907:7709:b0:98d:5ae2:f1c with SMTP id kw9-20020a170907770900b0098d5ae20f1cmr5322932ejc.34.1690744837685;
        Sun, 30 Jul 2023 12:20:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id f23-20020a170906495700b0098748422178sm5028108ejt.56.2023.07.30.12.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 12:20:37 -0700 (PDT)
Message-ID: <ab35b80f-68d7-af96-315d-c4e2b76a609a@linaro.org>
Date:   Sun, 30 Jul 2023 21:20:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v4] dt-bindings: sound: gtm601: convert to YAML
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, - <kernel@puri.sm>
Cc:     =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230730191742.117013-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230730191742.117013-1-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2023 21:17, David Heidelberg wrote:
> Convert GTM601 binding to the YAML format.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> v4:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

