Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F8667455CD
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 09:15:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229899AbjGCHPW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 03:15:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjGCHPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 03:15:21 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C86E50
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 00:15:19 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1b0606bee45so3800954fac.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 00:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688368518; x=1690960518;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IAZeTOZazbGFZSDmndWdfTDNm2nB8DtY7mHI7XdQ7lk=;
        b=fwrYNJNQGr2V0i3pfa9Vg8VYK7yIzXp54Mx+sp9Ejgte1Va2hgY8F+rZDIsw+Y9Q6a
         nRp4ePOT5h7wKwqbVlcJXN9hTKgM7oyd4UeQO07XFij25ieux3InxE0J+r17kKtg+SOw
         +KXyXKR5Ml/hsgMppG7m5Hwz9fpFa2difABUqtcE3OrYMVi1I0n2V/1/1h1l5rS9iFGB
         5oKBkl4Fe8eFguqnOmUgoV8tPNUCW81H57jVYbBJKY+sKxUH7u5iki0WF4DTDw4yxJ6v
         r7nRIsXBx7VZ8Ul6LRsU7Ac6dILJQPncwm9o5+FgSpMkcd1FJA/yplKZ6q8fbIuqrHw4
         FPXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688368518; x=1690960518;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IAZeTOZazbGFZSDmndWdfTDNm2nB8DtY7mHI7XdQ7lk=;
        b=GopO5k/pp+Kp27B1k7a21TIUpg+6s3yWWedg0buW6iTSNqgnsNicHadBYchTr+b6xx
         6Mwm2Q+rkeQ4cUZiEfjuZAJVkuJba6d61rtKfD6mnUlukpr4s7Cy5O3QmmBCWjuu3CHH
         e0yTVh/d+wXMYNE1W1ZoqDK0cyrRBThsKboh/WMlRn0MJSsuPrKmN89yvj5BRfkOanrW
         vowVv79CCeLPXj7DaQ+4PLq8j02ebr6boO5EqM9wh493mWavdpgid/G2WZY6AQFvM2ew
         3ZvCSkP4uA+mD9e4LN6n5A8bpR7LmZOCDPT6axqhs0pcTeDGavtamnHtIIO32VZhk42m
         /09w==
X-Gm-Message-State: ABy/qLaJqUxZDluQn/hpK4LFlgy2Tf+6zE5e/17V7x3pjUwge1+WILKS
        456OQKaJAnDbIa5d24cFxUJqkfRi66cjYqlZvHen3g==
X-Google-Smtp-Source: APBJJlFl1y1DD9smdIG3z9ZwGyRcMYA2S0C03PiyGo2Yyt6cyslQgtkKycE8R19wvHB6Fw36fGyu2SOkeqKm2IpNDeM=
X-Received: by 2002:a05:6870:6c1c:b0:188:1195:5ec5 with SMTP id
 na28-20020a0568706c1c00b0018811955ec5mr10062907oab.39.1688368518367; Mon, 03
 Jul 2023 00:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230703053048.275709-1-matt@codeconstruct.com.au> <20230703053048.275709-2-matt@codeconstruct.com.au>
In-Reply-To: <20230703053048.275709-2-matt@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date:   Mon, 3 Jul 2023 09:15:06 +0200
Message-ID: <CAGE=qrrqE3Vj1Bs+cC51gKPDmsqMTyHEAJhsrGCyS_jYKf42Gw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: i3c: Add mctp-controller property
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 3 Jul 2023 at 07:31, Matt Johnston <matt@codeconstruct.com.au> wrote:
>
> This property is used to describe a I3C bus with attached MCTP I3C
> target devices.
>
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
>  Documentation/devicetree/bindings/i3c/i3c.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/i3c/i3c.yaml b/Documentation/devicetree/bindings/i3c/i3c.yaml
> index fdb4212149e7..08731e2484f2 100644
> --- a/Documentation/devicetree/bindings/i3c/i3c.yaml
> +++ b/Documentation/devicetree/bindings/i3c/i3c.yaml
> @@ -55,6 +55,10 @@ properties:
>
>        May not be supported by all controllers.
>
> +  mctp-controller:
> +    description: |
> +      Indicates that this bus hosts MCTP-over-I3C target devices.

I have doubts you actually tested it - there is no type/ref. Also,
your description is a bit different than existing from dtschema. Why?
Aren't these the same things?

Best regards,
Krzysztof
