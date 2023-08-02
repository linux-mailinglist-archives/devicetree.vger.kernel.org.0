Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8389076D8E0
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 22:53:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbjHBUxT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 16:53:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbjHBUxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 16:53:18 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A71021A5
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 13:53:17 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so226241a12.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 13:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691009595; x=1691614395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eq52sqKujE7MhZWH3BLjlYfCHWyi+6Cij3678vJINY8=;
        b=aYgdksWuwC3Ir4PxNtkWHQCXTZDjaD9qmqSo3FEOx8NkKQ9UhyD6FbFrY2THqIl22K
         DLmMLVR8qR10KXUbAI7VyE8eUBKh941vxYH418/rXB+x6fUQi8CFCLM94Y+sGKcibo/X
         8YRxqv8kzxJb6HQCv4VdEVfrzUG2m9PoAhveE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691009595; x=1691614395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eq52sqKujE7MhZWH3BLjlYfCHWyi+6Cij3678vJINY8=;
        b=lIISyD0dcXgAZmFmAephm5gZeovso7pBKuLXP3cLZCiXXXkqP1cDuy0ZwTtvTkgabJ
         TQ04RlBe/D033WARDEox9jwwmPp+hswW2HCv3bLQlBFSJWSqnYJhTXrPOGiH/ekC2J1f
         jnW+ROsR8YRPvUqf7BK6wgDjHKf6D9CgcDLTW8H9O5iXN3L/wl2BY7VoOvajRYwvnG8F
         0VeC6yDbsoWieE43nueO99+wuORd1n4xKTrRh10jhYTbbUNsYK+WN1ndBUccXlJ2sxyB
         B2OzyLrxUY9VA2i/qLiUgAlNP4c9AUgojM+t9j6t+6EPoNLkv4bIwxZUVCOYQGH7q0hr
         cxaQ==
X-Gm-Message-State: ABy/qLbobUI6gQiWlBA0KyL2RuNxCAbHvA3cd71Mn3zT/7PpFRx5lC/I
        KAsXHly+Zt6b48+Ll2NqZi648VMg+e1/dyB8H7YVOYqZ
X-Google-Smtp-Source: APBJJlE9DhsOS0cnnWEbf1+54MXJ18hXbWJ1JW3XELtgnKxJjq5eMeXOvEClco6p0U5tfpkVXBJMXw==
X-Received: by 2002:aa7:c453:0:b0:522:4c7a:d5a9 with SMTP id n19-20020aa7c453000000b005224c7ad5a9mr5993364edr.3.1691009595689;
        Wed, 02 Aug 2023 13:53:15 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id n10-20020aa7db4a000000b00522584bb58esm9041878edt.24.2023.08.02.13.53.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Aug 2023 13:53:15 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-521e046f6c7so754a12.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 13:53:15 -0700 (PDT)
X-Received: by 2002:a50:f69e:0:b0:522:3c11:1780 with SMTP id
 d30-20020a50f69e000000b005223c111780mr444850edn.0.1691009595009; Wed, 02 Aug
 2023 13:53:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230802095753.13644-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230802175628.1.I7a950de49ec24b957e90d7fe7abd5f2f5f2e24c3@changeid>
In-Reply-To: <20230802175628.1.I7a950de49ec24b957e90d7fe7abd5f2f5f2e24c3@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Aug 2023 13:53:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V=2wjVvY-qv4j=41FrWVOehUrLEbHu9Pr2PmRDSHjLcw@mail.gmail.com>
Message-ID: <CAD=FV=V=2wjVvY-qv4j=41FrWVOehUrLEbHu9Pr2PmRDSHjLcw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: qcom: add sc7180-lazor board bindings
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 2, 2023 at 2:58=E2=80=AFAM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> Introduce more sc7180-lazor sku and board version configuration,
> add no-eSIM SKU 10 for Lazor, no-eSIM SKU 15 and 18 for Limozeen,
> add new board version 10 for audio codec ALC5682i-VS.
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.googl=
e.com>
> ---
>
>  .../devicetree/bindings/arm/qcom.yaml         | 43 ++++++++++++++++---
>  1 file changed, 38 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index 450f616774e0..e0efc80a72e1 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -460,7 +460,7 @@ properties:
>            - const: google,lazor-rev2
>            - const: qcom,sc7180
>
> -      - description: Acer Chromebook Spin 513 (rev3 - 8)
> +      - description: Acer Chromebook Spin 513 (rev3 - 9)
>          items:
>            - const: google,lazor-rev3
>            - const: google,lazor-rev4
> @@ -468,6 +468,7 @@ properties:
>            - const: google,lazor-rev6
>            - const: google,lazor-rev7
>            - const: google,lazor-rev8
> +          - const: google,lazor-rev9

I don't think this is correct. lazor-rev9 has the Parade bridge chip,
not the TI bridge chip. It can't be lumped together with the earlier
revisions. What you want to do is leave the "rev3 - 8" alone, then add
a new entry just for "-rev9". Your brand new revision 10 doesn't need
its own entry in this list because it's the "newest rev".



> @@ -550,6 +565,24 @@ properties:
>            - const: google,lazor-sku6
>            - const: qcom,sc7180
>
> +      - description: Acer Chromebook 511 no-esim (rev9)
> +        items:
> +          - const: google,lazor-rev9-sku15
> +          - const: qcom,sc7180
> +
> +      - description: Acer Chromebook 511 no-esim(newest rev)

nit: please put a space before "(newest rev)"


> +        items:
> +          - const: google,lazor-sku15

You're missing the second item: "const: qcom,sc7180"


> +      - description: Acer Chromebook 511 without Touchscreen no-esim (re=
v9)
> +        items:
> +          - const: google,lazor-rev9-sku18
> +          - const: qcom,sc7180
> +
> +      - description: Acer Chromebook 511 without Touchscreen no-esim(new=
est rev)

nit: please put a space before "(newest rev)"


> +        items:
> +          - const: google,lazor-sku18

You're missing the second item: "const: qcom,sc7180"
