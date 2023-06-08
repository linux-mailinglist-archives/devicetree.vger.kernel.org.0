Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8F8172814D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 15:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234860AbjFHNYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 09:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236136AbjFHNYX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 09:24:23 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB26D1B9
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 06:24:21 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-977d0ee1736so97804166b.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 06:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686230660; x=1688822660;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kWQSVYtcIHjStADPAbvMeYR99BZtk2pSbYZYnAv4Cl0=;
        b=yU7oiX1d1eaSQTn28FN/3YHYvwhEDeUR6ArUGMwJh3ZDJQoZx7KFqC/Y7ABBhdIagd
         KMbW9t+8Np+ABa/ypkMP3Ltmibc7/XUXaKJf5A2OfI2pqLXERM9foH0x4Z6RBpSazZ7R
         k0wzL8mxmEMar1vfirKy/xldCd0OzE83Ij4TS0/2M3SF87sQAyQz5qJtYtvdCsXQZivs
         I+suV9uOW5bN3pOK2wqXdZes1CaoCcKIGZHShCvaepUpEeu2xoyH5XVely2JkIzWbPLW
         CKX614OpDY2tQ8LIvEuwPn7n1faYEPtX2qjmcJZI/2u3S55p7rwgT6+DnRzv5qTqgyah
         PIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686230660; x=1688822660;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kWQSVYtcIHjStADPAbvMeYR99BZtk2pSbYZYnAv4Cl0=;
        b=N0G/FvZatYBlVF4UwtEGc/LwYj42Zwfgvn58U3ZXmZFjPOv9/rC/TVr4CXBg8UjdbB
         Y04gy+493aXZ+5zRPm4ip8IKVteCVPQnEZxnbf7ip5U3zuNm8KPdn+KpCfbQj6A64mfk
         jTZakZk4JO4wZ1OvKXYhqNYeJ7cCcfxD7VeTCWv/+fwz+m18Y8+4m9izvKNi8MQxgB3L
         QP8agxEyrm3LY74cZqgVeN0uHefSMQaC2MJJN/1rGtkMn3JWWpiw5GHk7hP6WpdW7kHo
         ACjPQ+4j2WY4geJP88CAMFKY3MBj1zfwA4Jba5IYPghtDkWVN0OJJRLJrgFkZQ+OkzRE
         urwg==
X-Gm-Message-State: AC+VfDz8Lfgn5+A9qiduBSglzngjjLZNSFGH2e7ZReZWX/UMd4noG4+8
        c2wXtC0GPmSZLiVlo6rWI8jNXg==
X-Google-Smtp-Source: ACHHUZ6yB3P5/K3mgC5G0Bhh8LObSoJJMXU6Q5S/0pTe8Gca+QdxR+/eBFBdEBS157Pg7qPqZKauOA==
X-Received: by 2002:a17:907:7e97:b0:96f:7b4a:28f9 with SMTP id qb23-20020a1709077e9700b0096f7b4a28f9mr9467969ejc.13.1686230660277;
        Thu, 08 Jun 2023 06:24:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e10-20020a1709062c0a00b0094f23480619sm698899ejh.172.2023.06.08.06.24.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 06:24:19 -0700 (PDT)
Message-ID: <00169be8-0d37-d87a-856a-598025a71ad5@linaro.org>
Date:   Thu, 8 Jun 2023 15:24:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v1 3/8] dt-bindings: gpio: pca9570: add gpio-line-names
 property
Content-Language: en-US
To:     =?UTF-8?Q?Leonard_G=c3=b6hrs?= <l.goehrs@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Sungbo Eo <mans0n@gorani.run>
Cc:     kernel@pengutronix.de, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230607115508.2964574-1-l.goehrs@pengutronix.de>
 <20230607115508.2964574-3-l.goehrs@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607115508.2964574-3-l.goehrs@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2023 13:55, Leonard Göhrs wrote:
> This patch allows giving each of the controller's pins a meaningful
> name.
> 
> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

