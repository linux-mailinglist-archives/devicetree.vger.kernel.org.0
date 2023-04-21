Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFD8D6EA559
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231492AbjDUHy6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231520AbjDUHyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:54:39 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54DD7903E
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:54:28 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9505214c47fso211312166b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682063667; x=1684655667;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K9W4urLR8mWK8sCFh3b7i91w7oT8Xwt3fC2F/e5DHvg=;
        b=t2H+i9zs9fkUhS/MkqIXwD+0jUNQxDD8tydDlQotidbdpn64BDdOn3WB2+Xay5M7x+
         69eQBlM0+cfZkFy29SRRoQfshninnskCE1gZ2uMz4krelV4rMNntzClbl2u+oyFg0l6C
         OMgqPldEGsy3StjtJy9GDJDCVDWXXYmw1iBw4INcZi2dAgj+l7BiPtna6OSTBu3kIQ/g
         XHo/F6iVb6VxKMuoM/pXoEX5QzAxO6OJQHK3O0q/Wxk01lKWi8vaGxcGJHtim4OmrslE
         WS46Lw0pMyxQJmOhGtucXygB53qhvJ52R94RyKN95a/vG6DORYNe8FgP29sh0ziUggLj
         7IZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063667; x=1684655667;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K9W4urLR8mWK8sCFh3b7i91w7oT8Xwt3fC2F/e5DHvg=;
        b=NP5RQQk8XIgCY8cPB9NJCiLoBrzF5b6+RfD0Lcc9Ai0q+cFRebJd0QqvC/PbKK6b6k
         4siEMlbMhWnkp9DnpEekHmtUtOW7PeXTd+zIyNL7X/HKGJELH8mkMNW/oDA170SJYxFY
         Vl5YIQnnNAMLDlIFJnqvEIH6B6UlUKiYRjKBZAgj91E4mnrPbfEPcVFDUIqG7FHD8wST
         ud0IBlHp2fAVipNZwfRY4dWF/T6YRhgBrkrN9HY00Y65qVPBvJHeRbDjnbhMDMCsI9B4
         KxnZzpvKC7WBWQGDKVZx+mjTi06si37q+qBHBPL9iUZsgLwA/+jYnYTOmhu77Lh9ZTjb
         ZP/w==
X-Gm-Message-State: AAQBX9fjLSmSCHh/4fE7BzVUpf102k0k9UB7zvQY+ZkZZ0nzeEpwuG6y
        2pd+LGjqTONXXipsMh6riA/sluhM3ysfc7ighbU=
X-Google-Smtp-Source: AKy350YKBg6EHkxRTkS3t1kXGVTRKhTivgCsGpj9wD4D+VlZ6ArZihamBnL0PsnTO7bKlOLL14hZ6Q==
X-Received: by 2002:a17:907:6d23:b0:953:1fba:7803 with SMTP id sa35-20020a1709076d2300b009531fba7803mr1551774ejc.15.1682063666874;
        Fri, 21 Apr 2023 00:54:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id ke15-20020a17090798ef00b0095328ce9c8bsm1739752ejc.67.2023.04.21.00.54.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:54:26 -0700 (PDT)
Message-ID: <0d9740e7-bb03-dc16-5a1e-a551343b213f@linaro.org>
Date:   Fri, 21 Apr 2023 09:54:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: potentiometer: Add the Renesas
 X9250 potentiometers
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230420161052.270366-1-herve.codina@bootlin.com>
 <20230420161052.270366-2-herve.codina@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230420161052.270366-2-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 18:10, Herve Codina wrote:
> The Renesas X9250 is a quad digitally controlled potentiometers.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  .../iio/potentiometer/renesas,x9250.yaml      | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)

My comments for v1 apply, I guess.

Best regards,
Krzysztof

