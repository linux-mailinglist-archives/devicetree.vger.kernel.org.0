Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70B70504A0E
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 01:28:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbiDQXbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Apr 2022 19:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiDQXbH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Apr 2022 19:31:07 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6DCA10FC9
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:28:30 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-2edbd522c21so125981347b3.13
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1/D8jakBK7mlAzFfYLKn6PUTb5ZTxAVFz+784pXTduI=;
        b=ZUEVumam4891Xs202SHodTKlMQDOUzkRkVxJxgpFYPz0GM8YjSJ2lwvJtMFmvHGzVm
         Wn+Z2yCCjvvp4+9/qgZS3fzcwTpqGqHbQ/Z/qk22hJVqBP6NrpMvh6nbo7Tt6Cs8ccVS
         OUVzTpSeATeeJ0jjbfBdCO0EqpY0hc1HKFAPE4Yxb85H0JTb0Te96EDUFnvRby9yE6Uj
         A76eqWB1j0Z15SkgJY254zbmdwDJ+Ko6yGf52pgtvPuTEUog4XSZcsbzhO16JQ0j8N+U
         kYqFJbEQUBw8Wc7QQ11gUPmkcKChz69LCrYvyEar+J1AskSD2rgo+b1lqIvWveYDtbKf
         LIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1/D8jakBK7mlAzFfYLKn6PUTb5ZTxAVFz+784pXTduI=;
        b=tz7a6Hu25LYbw4JHvxrqH58804e/ZNQc8bEeRf5YI94Hm/4j0GujD1+6/XehZh1TRE
         ijhwsj9hrPiqxTgyHiLtOi5ElJJg5pNMNpKFom3Zx3iQfkQZlpEy14r97FkPaqDKymlL
         Vae3FFzuyI2LwFhRVMspIoDTwMD5+7dsBZ6xmwAUV0HI49CC5BAETquF6lwVA+AYv9hH
         7U63NL3PIWnjYG/HVDkGg8aspgAJTzlbvKz7kJClFsEO9Eiznu90EpufiLNij63Dviks
         k3W4Z7VOUQ6SXQaE0N2JGDrhqbn4U123IEybveRxT7IYazrx7ZAmBorNcBzUCEtwoSU2
         6/Yg==
X-Gm-Message-State: AOAM531xDOjhKw3iAG6BIJaaTvi4kWoB7Y1tJ63rJHK6jvAOHQVZg8vf
        kdVjmq7nT2aMTFa07AwWu3DSbPruNdH/b8+517oHwQ==
X-Google-Smtp-Source: ABdhPJxwyR2gYeQVglMPTleaOZlXGb6s8hwJ1cpMSLXXOlOQM9EgI4BGrJF2ZF0w6azONbdN1H7VXGJpUPxJuJu+6+g=
X-Received: by 2002:a81:b50d:0:b0:2e5:b653:7e97 with SMTP id
 t13-20020a81b50d000000b002e5b6537e97mr8611690ywh.140.1650238109938; Sun, 17
 Apr 2022 16:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
In-Reply-To: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Apr 2022 01:28:18 +0200
Message-ID: <CACRpkdZff-TbnNHO6Q590ubyH51+yqN68DOghazVKvYoHMBekw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Fix AST2600 quad mode SPI pinmux settings
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Arnd Bergmann <arnd@arndb.de>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jae,

On Tue, Mar 29, 2022 at 7:40 PM Jae Hyun Yoo <quic_jaehyoo@quicinc.com> wrote:

> Jae Hyun Yoo (5):
>   pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl
>   dt-bindings: pinctrl: aspeed-g6: remove FWQSPID group
>   dt-bindings: pinctrl: aspeed-g6: add FWQSPI function/group
>   pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group

These four patches applied to the pinctrl tree.

Please funnel patches 1, 6, 7 through the SoC tree.

Yours,
Linus Walleij
