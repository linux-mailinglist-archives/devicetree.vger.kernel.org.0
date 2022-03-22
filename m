Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3FDE4E393A
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 07:54:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237202AbiCVGxM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 02:53:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237210AbiCVGxL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 02:53:11 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86517255A0
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:51:43 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-d4164acd34so916336fac.4
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=XTyNQfcupf5oXka+ijgdxaIN8UbjEUYUieaG2h8V97Y=;
        b=M86FgzSUMEwkR1A574MaiIDr+Qlv9gj9eTnA3hjELZWDUas6w1TfgkdvxzMlyTQVRh
         rxSBbg169V8b+F/2IwPeX5X7bEe/GD4ob7UX127xiMFrGI6j6S3EiYZZWCV1YrCDLkba
         bTg2Dz2OlUbaqPWoztiU1Rf2VgWgdprtbedvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=XTyNQfcupf5oXka+ijgdxaIN8UbjEUYUieaG2h8V97Y=;
        b=8PGOqQ2rk+sxRlpGV9n/6ts41SOBkuYjS72Lcwp+uMTImVDNT41p/QRAp79ngpF0kK
         +dU1Zl2mJEFfagu7vVbb1ePeH1mPIDfs3wdqRTp6PK4KSQKsbAEFDT65nKfb8dVGa7Wx
         ucuqpe6k0eKcMpxd+5k0VQoGjDdt6KytdkBxsAcqFCiv6zAglejzwI8ODj0JxbXYVuBH
         Y42Q/qnuzODRJg7CV8xv+k0AzKotqvbzJkzQYeDYEL90NYo+4YDCNnqCxrXzGJgJKi5e
         zzd8oEoQBvA3oD57R5tILD86SEnWxuljbFK0xZXckJiv3cCqbtkIKMK9jSMns5QctgIC
         kz0g==
X-Gm-Message-State: AOAM530DbCeUaxJDV4L7MfN0AcOSNYNTpl28rGNLiuDEpxNK1DMpiiG8
        ourECdxhPmAQ5LhSq2tqz8euIyjDI9+W0M05WjNPiw06WfA=
X-Google-Smtp-Source: ABdhPJwp7OPAqn4IoHuIZFSATYDmasmmajNk3s8FkLKFPwvI9vbXIvLhMTrAYvCemvgy8Ev8rNffS1JEmyS3t+MAJvo=
X-Received: by 2002:a05:6870:b69c:b0:dd:b74b:4099 with SMTP id
 cy28-20020a056870b69c00b000ddb74b4099mr960417oab.193.1647931902877; Mon, 21
 Mar 2022 23:51:42 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 22 Mar 2022 07:51:42 +0100
MIME-Version: 1.0
In-Reply-To: <20220322062504.1019504-4-gwendal@chromium.org>
References: <20220322062504.1019504-1-gwendal@chromium.org> <20220322062504.1019504-4-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 22 Mar 2022 07:51:42 +0100
Message-ID: <CAE-0n53foJE6hy6SebN8FCErBTMUYGpjekOrinJ0e1OfeSa--A@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: iio: sx9324: Add precharge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-21 23:24:59)
> Allow configure the resistance used during precharge.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---
> Changes since v1:
> - Suffix field with kOhms unit.
>
>  .../bindings/iio/proximity/semtech,sx9324.yaml           | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> index b8a6ee16854ff..8fbea71823e76 100644
> --- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> +++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> @@ -126,6 +126,14 @@ properties:
>        UINT_MAX (4294967295) represents infinite. Other values
>        represent 1-1/N.
>
> +  semtech,input-precharge-resistor-kohms:

What didn't work about using ohms? I think the goal was to use a
standard unit and then scale it up in the binding and in the driver so
that we didn't have to have a $ref below.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 4
> +    description:
> +      Pre-charge input resistance in kOhm.
> +    minimum: 0
> +    maximum: 30
> +
>  required:
>    - compatible
>    - reg
> @@ -157,5 +165,6 @@ examples:
>          semtech,ph01-proxraw-strength = <2>;
>          semtech,ph23-proxraw-strength = <2>;
>          semtech,avg-pos-strength = <64>;
> +        semtech,input-precharge-resistor-kohms = <2>;
>        };
>      };
> --
> 2.35.1.894.gb6a874cedc-goog
>
