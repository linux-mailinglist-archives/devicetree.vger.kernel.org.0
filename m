Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4EE26A7BEC
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 08:36:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbjCBHgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 02:36:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbjCBHgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 02:36:03 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B3B419F2F
        for <devicetree@vger.kernel.org>; Wed,  1 Mar 2023 23:36:02 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ec43so63917431edb.8
        for <devicetree@vger.kernel.org>; Wed, 01 Mar 2023 23:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677742560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XCQZG2b6SjjHN0wfxKrnSflpvL+Z18WTHOqyR2lQDUY=;
        b=bf8Rpe2m42aadVErpqsTPzwa4dIeFJb9LbEzJeoa53Bh57v1DaLkkxi1HD3oK5Agcb
         5f9u5Blm5jX+432IXEmEXRNpjJkz5vatmQ09pwQRVbRTlSol9CBJpGbfWeJVeYs1SfJd
         783vrdnTd6Xz5bZgJ0N22viVDA3WWEppROrHfOwNFeaicKIo6Eqj0RhC97Hag8AYZSm0
         X1eKarC7GKdU/1NgCsK4OJpKeC+jsL6Jc1gSE9KR4bzWSo6AIk/9pwOMwi07j5zShVqH
         bKistQWZAXbyO43dyOj9edQV3uFaGdFRbF79NVChHt1RY5Tx7l//fdWZ9EF61DvNlmmE
         PpYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677742560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XCQZG2b6SjjHN0wfxKrnSflpvL+Z18WTHOqyR2lQDUY=;
        b=lstU6p3NsKsjB/PPELcDHScBSykSa7P+Ymx5XigdCI2LfpXgO3Y8DMv+upwJwTyIEq
         BDGYwCm3qpfT3H7RhqqyizjlW+Mt9ecOBjhm7LjhmgJy+dIL0vLzfje8BsVnfnKhEPYy
         XbVoI9WLfv+X8FtBDSPQdZpsm1ubWv3pxTb5p7k3y4/uJReOimwh6t7FEgrd+6IxPZFi
         KWR7zKbprOuPxBXPdj8yeOlv/bvp4XvaJjK+HooK9yzozgmbk5uZfvpdOwjk3Q96TDnI
         gnsKctbUWdclec/l98uqwYmMrhCbv5xUxBxakIPdjGZrvlevnhiGteI2pNnPUHCYlMT2
         4K6A==
X-Gm-Message-State: AO0yUKXMkKkdqLtHjaVSdZ3QHP3B24dQRbW2L6Z6KpK7p1N4v0ye/GBp
        DmjPTnBXzDzgXg0C/Y6bjdvqHGGvKQaG09MA
X-Google-Smtp-Source: AK7set8Stq6eJ2jfWoMqx3IDPesp90JlK5i/M5llisyWgsD8i8UNUT0SDrUjZ9NmAVATNrX9YcgbQw==
X-Received: by 2002:a17:907:a0d5:b0:886:221b:44e5 with SMTP id hw21-20020a170907a0d500b00886221b44e5mr12137595ejc.62.1677742560629;
        Wed, 01 Mar 2023 23:36:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q8-20020a50aa88000000b004bc422b58a2sm1635332edc.88.2023.03.01.23.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 23:36:00 -0800 (PST)
Message-ID: <2c16fa96-a710-4ea6-74df-247a4bc7d2dd@linaro.org>
Date:   Thu, 2 Mar 2023 08:35:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 6/6] dt-bindings: clock: ast2600: Expand comment on
 reset definitions
To:     Jeremy Kerr <jk@codeconstruct.com.au>, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org, linux-clk@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <20230302005834.13171-1-jk@codeconstruct.com.au>
 <20230302005834.13171-7-jk@codeconstruct.com.au>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230302005834.13171-7-jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2023 01:58, Jeremy Kerr wrote:
> The current "not part of a gate" is a little ambiguous. Expand this a
> little to clarify the reference to the paired clock + reset control.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

