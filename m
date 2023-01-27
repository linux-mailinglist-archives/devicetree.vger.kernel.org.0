Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E3BE67DF5F
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 09:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231873AbjA0Ihs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 03:37:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232631AbjA0Ih1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 03:37:27 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4C4C47089
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:37:21 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id b1so5079574ybn.11
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 00:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0GEf7QxJkV2lK+zd3rAlZgziuhyilMpeFi0rsnqoFFQ=;
        b=InUQr75C75OupAU4ZiPJSfbUP3jzxez7OoMIX8RuGUFLIssgPtWbP37I+0em/pbNx7
         CoSiLXSruCBM2C0imVfmiluRvz3RPNq+XbSquQJzFvNT66uVvqviop9UGSNqUHWB0xhl
         cHzzMl0/ZKkg2HU7UdUmb31xgazfgkomH3WYwPtYfl7SNzJHbL0ty5YiavUGZn+GWt3e
         QT4+fgM83vCRASU/grwcP5HpUHgHUPEZyaC6OIHgFU6uE/AxryFXDJYkm4bNZQGzjN+l
         ZNB6jmiBnT8VyE+yNDdUFLZCP0s8YeeE78LXq0f0mCPAaLbYrE9EFkYTrhcdEjSfDSlr
         6Fhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GEf7QxJkV2lK+zd3rAlZgziuhyilMpeFi0rsnqoFFQ=;
        b=0Z+jifgUr6j+E0BAoFZuQBIk+eWl9BdtVNxKqGZ55AUVMs+rjeDEvCExUZyIU0l0Yp
         NETFopnHXwqmizHBavpXu9uNYdqNInetvxuYnPqm9k8tkPBpA1N5hAqvR3SytJJBsWSx
         Ocs9l2JLInr44cIkke5RFvoPOvXGxYjvllqm1DCh9kKsMyqpDfY3m9u/YDlfpE+/xwOy
         xNVK/eZCkuuUQ7b5/IgjxAMQjKfniHHBMkCawcSsHYqIKvVBIVj1wEuZfyqpc2gnVGJN
         kUYDYt16io/A+8FT7oK+94S7vxTxu7uE0Sk3i+V1Xr8y9DTOMx3HRUFukoznV5vprYit
         rVMg==
X-Gm-Message-State: AO0yUKV8iQMVl+rFk/lG0kkFd3LuIRtCKKYBsHTsgBfTZmyKn34MQSWw
        2EbWTO469qFLo231Pl/7ca/ls35IagXcrbO3v4yHrlVg/Xw08g==
X-Google-Smtp-Source: AK7set+HozZEe5bAEwW9VgJFk2rLRsxQWYsM/CeXpOYqfTpUlft9aACuvd7bRiUrSnoeRoakCB7MKB2LKpuAOxMqClQ=
X-Received: by 2002:a5b:c1:0:b0:80b:c9d0:c676 with SMTP id d1-20020a5b00c1000000b0080bc9d0c676mr819539ybp.341.1674808641146;
 Fri, 27 Jan 2023 00:37:21 -0800 (PST)
MIME-Version: 1.0
References: <20230123151519.369158-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123151519.369158-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Jan 2023 09:37:09 +0100
Message-ID: <CACRpkdb2aZp6x=vGVp0J0=XWuN=5eACQVzFBbvSWR3sF7TpZeQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ste: align UART node name with bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 23, 2023 at 4:15 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Bindings expect UART/serial node names to be "serial".
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied to the ux500 tree!

Yours,
Linus Walleij
