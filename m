Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92FE74D9034
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 00:17:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343635AbiCNXSq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 19:18:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236210AbiCNXSp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 19:18:45 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C113E3D1E8
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 16:17:34 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id u10so33876283ybd.9
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 16:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+qhpZ4/gQn44J41+/TZnqVxppcvQMQk2SpTOJ9SJma4=;
        b=njGtCAef1QBlBntVQw5+KnC5czMQCkltUAYIkUxfpTnSLBtrsetXxuhKATLSUjoxbi
         PjxqIGFnvbvof7+hKZrBMR+zMGIa/1CfUWQqHY3EIfi/HRvPcP1FnzWqnsed8XV2uwe3
         e8P26Rf0BRTA3hIXTVa1ijVWkWX60/OcBoWxxk6JtlgsMfhCvBscS2bHr5PpAzkgPv6b
         3tugqcBbi0Of36og68swWqwOpxjeGn3hhi8Ylr8qcvvulKkZjE2akzXDCzOZ++3z7c02
         1SfNSlf/lHyFExW7gler46i1qXHyGjC0OimYa6eMB/x4lYo0VLSGPSVGzcpOi8qW+lWS
         qOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+qhpZ4/gQn44J41+/TZnqVxppcvQMQk2SpTOJ9SJma4=;
        b=fHIBPmq94dk9DJ6WF7xhMYkL6kW2EL855V1T6ykVloScPPVRUiE03ns0CljY4ncpjt
         Y47zYiyK4nzmZeIqGJawm1BDzaQtQiL4VZ1zSQlSvw8ZAKC5FdkAwLotw7JGW8IeXyps
         FjSW866cvhbRVcE46q1VMJjLb/nAQqTS4BwmLLAQUR3d4rPFyBUjoC7Ijw7SvfRwRJ7b
         p5hJuAlaoHsZa+ejhsxokV0ANcu3c0/Wi/whOm635Fw4koNPGlqRJ9iw6DE++AUnoPel
         /gnOE+DsmGN+yllCvPe2I0DcE5bxiGdO717qYd72XwhJaEaLRRrEo+4lYxqw2qfPSmFm
         APsA==
X-Gm-Message-State: AOAM533hM45+g3sWLqw4ndweYpnCVnajeunnL5lgIFrXaCwZKeVqiSmN
        f/cRJbqTvikZe6Y8UhNC1l/N0P+VnUIPTcR7blV7NQ==
X-Google-Smtp-Source: ABdhPJzn2AGcMQQ0Ue+lFE8XgGj75yeqVsqxktcqS4/nhxUbDwqbTmo1pLNFRbd6YCUHGHSkf/tGLjs9SDMj6tj9FKM=
X-Received: by 2002:a25:4e82:0:b0:633:68d7:b864 with SMTP id
 c124-20020a254e82000000b0063368d7b864mr2996309ybb.514.1647299854049; Mon, 14
 Mar 2022 16:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220303232350.2591143-1-robh@kernel.org>
In-Reply-To: <20220303232350.2591143-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 00:17:22 +0100
Message-ID: <CACRpkdaSiVhg1dZ_uhZEsxT_QYrwEtdodUAhx4nwMd9S=-g_HQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: Fix pinctrl node name warnings
To:     Rob Herring <robh@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        - <patches@opensource.cirrus.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 4, 2022 at 12:24 AM Rob Herring <robh@kernel.org> wrote:

> The recent addition pinctrl.yaml in commit c09acbc499e8 ("dt-bindings:
> pinctrl: use pinctrl.yaml") resulted in some node name warnings:
>
> Documentation/devicetree/bindings/mfd/cirrus,lochnagar.example.dt.yaml: \
>  lochnagar-pinctrl: $nodename:0: 'lochnagar-pinctrl' does not match '^(pi=
nctrl|pinmux)(@[0-9a-f]+)?$'
> Documentation/devicetree/bindings/mfd/cirrus,madera.example.dt.yaml: \
>  codec@1a: $nodename:0: 'codec@1a' does not match '^(pinctrl|pinmux)(@[0-=
9a-f]+)?$'
> Documentation/devicetree/bindings/mfd/brcm,cru.example.dt.yaml: \
>  pin-controller@1c0: $nodename:0: 'pin-controller@1c0' does not match '^(=
pinctrl|pinmux)(@[0-9a-f]+)?$'
>
> Fix the node names to the preferred 'pinctrl'. For cirrus,madera,
> nothing from pinctrl.yaml schema is used, so just drop the reference.
>
> Fixes: c09acbc499e8 ("dt-bindings: pinctrl: use pinctrl.yaml")
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Fix lochnagar-pinctrl nodename in example
> v3:
>  - And fix lochnagar-pinctrl nodename in 'required'. Sigh...

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
