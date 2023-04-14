Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB3D6E21D4
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 13:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230268AbjDNLNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 07:13:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbjDNLNS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 07:13:18 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A581976BB
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:13:16 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id ud9so44462912ejc.7
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681470795; x=1684062795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=psY0d5ToWBTg5sHC9IG5B2CfYcgXjgvgXdRnCXIvLBU=;
        b=L1SdmjBfahNJn6+qCg42lXiaQ8oVkiuh3DDL9mvcUay6+HkM8H9AIjQxRXhbSln1c4
         QdjG5e8IJO6WSxfFD/FR7oL6RUP+eYeuV83HrIPlBlWRSZE37yi+fUKratpNGwJJocEu
         uPUFi0AOYGJmCm2hytvoT55811pfwXdV4gZ+b7SZH9wCHJD7hHM7ZX4qbSpZAPSSye/7
         R2OOgw6tkOQl2zVNwqNGW7jlkfCg5cMQHE+n3QWLQ3XzklI5FwfZmuN/Ew/6M06jbXpo
         YWqh8wKZruqr7HRwRmL56zPGRYQouzt6P+MxbDcy2VwpucwkBb1TlW77Yt0r9q9/CLH9
         DyUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681470795; x=1684062795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=psY0d5ToWBTg5sHC9IG5B2CfYcgXjgvgXdRnCXIvLBU=;
        b=TYQKOixP5WGQXeGio3pnWQm1aoHBtQ6xdheblasjQNF2LoUiPI9L1c5uiBMgomVswD
         CHoMMzYmkZs3saqywJVlgO7lpyHcncIQWKW6AHPIzmS1Oz4fEEdkYxQZHA0npGiPYnFa
         yGUL82xCS4GeN5r2aGFJ+9MPOblNvmL31eP1rOwJtja6p54DSK9XUGHqa/GIYRngSy6r
         bzMJfOiD0cjXT27ew4eVZIe1+hB2M6SxFUjAMLk5U0hgJDSFEJ7NZde7rK52JLvcFT5i
         aYSWpCf4Rrq2KqrQBHZiIdupS+WNg6UUKMEaC8q+U6NNhdjqVC4UFlydcmb+l+9C6vZO
         X1fg==
X-Gm-Message-State: AAQBX9d3GKFKhQqmrFUWrxF1QQfMTb6s5lJozJ03hfY9w5i4CERV+O5q
        NU0/3GzPsjvfIwOKAKzkb3Av6A==
X-Google-Smtp-Source: AKy350ZNOGwbZFE6W13wrEpGlT+5R6yJewG1QyRR1QUdQmTg8TtllCrMa/iTvjufFd8f1ucdM1Szvg==
X-Received: by 2002:a17:906:77c9:b0:94e:d688:c36d with SMTP id m9-20020a17090677c900b0094ed688c36dmr2993391ejn.38.1681470795069;
        Fri, 14 Apr 2023 04:13:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id ca15-20020aa7cd6f000000b0050477decdfasm1988151edb.3.2023.04.14.04.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:13:14 -0700 (PDT)
Message-ID: <a1fa95e1-e21a-dacb-d6da-8832eb6fd912@linaro.org>
Date:   Fri, 14 Apr 2023 13:13:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 1/2] dt-bindings: spi: add loongson spi
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230412045152.4694-1-zhuyinbo@loongson.cn>
 <20230412045152.4694-2-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412045152.4694-2-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 06:51, Yinbo Zhu wrote:
> +LOONGSON SPI DRIVER
> +M:	Yinbo Zhu <zhuyinbo@loongson.cn>
> +L:	linux-spi@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/spi/loongson,ls-spi.yaml

The path is not correct.

Best regards,
Krzysztof

