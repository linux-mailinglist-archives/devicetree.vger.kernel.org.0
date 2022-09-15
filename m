Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5A575B960F
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 10:17:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbiIOIRD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 04:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229769AbiIOIRC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 04:17:02 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F7B8169C
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 01:16:57 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id f20so21314435edf.6
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 01:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=bHrSqc0KeBCd30dQAVZKmDgp9XGbk9siJPUAdtVg+8M=;
        b=zVyw/QCbT359iWxfTbEQYFzCcvQrEO0ZALgI42uVp+RrUzdcGwnHxN4rAphOWBe4GD
         dbsjfT1jBvHRRaIKDTWUUMR0hxQUiUAOn0ycjBNIyT1CW23VWW+2tsG9eZIza/pW8uus
         MW5MtLq+KijRUik+GpeMvzJSCcjmzxR6DpURzeVXfrjiauGoFEt6x07wDJwmxN35grTF
         FOaR4jUMKAGZ2SwKErrDhIgDHe5hCao3/QskebqdfmVAXEQBxzA8/h8sPVju3Vdbbv/g
         L0OPkgM5YsoPACyoFgDEEMxNt+eCehO0cHs17aO4OHfTXv+fHdZ7e1yLMnqgz5oABpJ6
         rikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=bHrSqc0KeBCd30dQAVZKmDgp9XGbk9siJPUAdtVg+8M=;
        b=UoIG/lkTER8VMNu3xeDGQEi6+xW3Ex15SP/vZJOciUYxAYCc93YaKkAUEmGDUHFIA7
         0F+jmY1BXMMQV/ayEJlT83nX7wBkW6fSwJXrDc+FKXkQGGsVMhhpQeuGB+Rqj5p4uPGw
         AnyUm5b2fHoU6dpyJkfUu9mtExy7Rnwz7YqnFd/vB2xOWsR1MxeM5Okd3TT/TWYc7Bvg
         zDSmlLHFd3Aq5LGkboDJyh8qlSoL7Fwq9P54Gxgfnfy/LtZnk5gdChe7H3+mdAaE4zb5
         luz83/oZmBgIDnxmZnvpATaaO68z7hCCyLbRSUStAbczd3NxqxC7c4e7Ok3R5Ra/OhtR
         qgXw==
X-Gm-Message-State: ACgBeo0DHF24J110DBd0jmpuXaxTiZ2DVpnauCntWtbtKdJct0lqsKSb
        H4RdddOn7U58d5MOCTmBKdzwclx0vU9Fceu31HXhrQ==
X-Google-Smtp-Source: AA6agR43EgBtEhzrjzZ9AxWcgYR5SO/qp9NWw/NSLKFqvS0BDXxGaA0wvN12y2hmlJlPfL/k8aUkVSK6FnuUa66rxq0=
X-Received: by 2002:aa7:dd02:0:b0:44e:f7af:b996 with SMTP id
 i2-20020aa7dd02000000b0044ef7afb996mr34096318edv.422.1663229815801; Thu, 15
 Sep 2022 01:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220914151558.536226-1-martyn.welch@collabora.co.uk>
In-Reply-To: <20220914151558.536226-1-martyn.welch@collabora.co.uk>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 15 Sep 2022 10:16:45 +0200
Message-ID: <CAMRc=Mf-8FLSyCD887emEmGOZsxiMxf73O425MQv1_tjvDbU9w@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: vendor-prefixes: add Diodes
To:     Martyn Welch <martyn.welch@collabora.co.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martyn Welch <martyn.welch@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 14, 2022 at 5:16 PM Martyn Welch
<martyn.welch@collabora.co.uk> wrote:
>
> From: Martyn Welch <martyn.welch@collabora.com>
>
> Diodes Incorporated is a manufacturer of application specific standard
> products within the discrete, logic, analog, and mixed-signal semiconductor
> markets.
>
> https://www.diodes.com/
>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>
> Changes in v2:
>  - None
>
> Changes in v3:
>  - None
>
> Changes in v4:
>  - None
>
> Changes in v5:
>  - None
>
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2f0151e9f6be..7ee9b7692ed1 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -328,6 +328,8 @@ patternProperties:
>      description: Digi International Inc.
>    "^digilent,.*":
>      description: Diglent, Inc.
> +  "^diodes,.*":
> +    description: Diodes, Inc.
>    "^dioo,.*":
>      description: Dioo Microcircuit Co., Ltd
>    "^dlc,.*":
> --
> 2.35.1
>

Queued the series.

Bart
