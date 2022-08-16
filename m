Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A4EA59590D
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 12:56:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233893AbiHPK4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 06:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234023AbiHPK4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 06:56:09 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9BC5BD74A
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:24:24 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id j3so10099622ljo.0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=CAADESzQYFmQGl5QL0EySReu5Ux2sgA6MJ+snAVgsaw=;
        b=o6756XtMzgm1EgbKyQEmd3ES8h5DYz/NRNC22zkQtbOJh4UJdjNy3HVfh2EOS1nz0Y
         Z3bhlbIy8lYg2tQxnzijYVmV6zQRiOmI1lIwGwgaK85TbS5ep+PijGtXyE6lRtblTDPi
         URdpmohpazterwE5cOWm8znn2eGBjwW/1gB+SBuyuceRx32HtE318anUnM9/+AH+WSdQ
         G+pq+MSWhJQGJOlpct5HtR3REMIfkGrRtnQfEDsScwGsoDIHOU+2RqAjtTGgZCCaeCUa
         gBx8Y2FyqwJ3PmHIFmTvUCLUQ+co8hSpbmHrofDWe9hp8AGIys9LFqoS2ZLXvJJCr3Ya
         hSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=CAADESzQYFmQGl5QL0EySReu5Ux2sgA6MJ+snAVgsaw=;
        b=p3L675lATnVdVMHBxTFOba1/XgZz1e2JuAxlznZm+JsPkPXnuCaGLS4xhQkOLuxzN1
         5KHBQFE8VhthcX+vYCuosfQKwNp/yfO/7LvJw6xu7TDgQEcTjpldWFWy9yqRLjSIJxhC
         8x03s/odOnqzCMKw/ETyg9f9qx61cmbtEyBxYq8XxNOBhlWjtpaiu0d92Mlhj3kSa6fC
         edMJXxw9Gf0l9Np5l7e9zOw+A+gLpTt/gFwaX0AJfWI+uw0mXbVQ0ngUpqNQ+OXXPVtG
         lkI1NwQnBkygtmLKYV2O9s5iRzuwpw73yk1a9W/o64syEJjVAU0GJc2q0N5kSMOJvwhl
         Uicw==
X-Gm-Message-State: ACgBeo1gWw7yMsLad/o4/0jJhHiZZRvmab2DrIoUEJqG2l55KQ/p5+Bt
        dUCTVwToNb9UvF6FhZtbORs/3w==
X-Google-Smtp-Source: AA6agR4fJI5acbtg4vkc8MhfaY91Wi9//JpkpLQQcoTqBNWmEHJL5RS2yYvtRHPXZZS/JUFiwSSK3A==
X-Received: by 2002:a05:651c:1990:b0:25f:ad63:490c with SMTP id bx16-20020a05651c199000b0025fad63490cmr5747672ljb.63.1660645463009;
        Tue, 16 Aug 2022 03:24:23 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id o15-20020a05651205cf00b00491203d6cc9sm1000847lfo.131.2022.08.16.03.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 03:24:22 -0700 (PDT)
Message-ID: <dc0c6c80-7af0-ee7c-2019-cdb6eb96c3f5@linaro.org>
Date:   Tue, 16 Aug 2022 13:24:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: vertexcom-mse102x: Update email address
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org
References: <20220815080626.9688-1-stefan.wahren@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815080626.9688-1-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 11:06, Stefan Wahren wrote:
> in-tech smart charging is now chargebyte. So update the email address
> accordingly.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Yet you used third email address... which is fine, just a bit confusing.
Since in-tech.com still works and you might be (or not) different
Stefan, it's difficult to judge...

Best regards,
Krzysztof
