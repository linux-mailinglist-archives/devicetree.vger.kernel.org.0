Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1078C73BE7C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 20:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231697AbjFWSfd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 14:35:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231773AbjFWSfR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 14:35:17 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E112D55
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 11:34:54 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51bdd67a306so1000221a12.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 11:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1687545259; x=1690137259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R2nFjoCVagpUQnGTY4TyMi8H++398zSsVgy7rwLSo8s=;
        b=jID0+Pwz0b/F80mb0EdE7kWEB/69edmTvKggTgsQsih20rOc9r1Tny7KF7oMqZuiYb
         fJLr/VhLCBkNSZLIP2LhxVv4OFwlPwQBV2CoDiiVORbeiWX+brBYXOmJshB0bsM7un4h
         x3sQddxxXgQ0nI6UxKqtSYEsMs0hlpe2bVx0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687545259; x=1690137259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R2nFjoCVagpUQnGTY4TyMi8H++398zSsVgy7rwLSo8s=;
        b=Q314FGa39IzZbI7JhYdNIxkWqE1+D1qo/jKJi0hCIyn4eXxPxdjQdDfjmFDBpM4LtV
         BMuurO+tZ0/i+VCE1YAQhEbAJCvgHytPsq5i2Xs24Dbwq85sRcoq/MP8EWciX3Qp1ajW
         hORjZqM5h02+R6zFvsxpyszSqHwlYI5M0QCzlZr8Dj++jSbhN4s+uGUnJE/xn85PhRvj
         1K8w5wEcBSZ+u3jX0IVVWJ400wiEsZfK0gjzJcARRUgtH8/6oMA3ERsVZqWfNLpWHCOG
         LGnxpUjXXsz2hPiMCqrgwaBSNUyzBztuL4mde5Jf9ryxJIxZx4eupWYk6+Zam01Byujj
         85qA==
X-Gm-Message-State: AC+VfDyKOCVah2afdkJH3wd7pa4SHfSWqAdqvpqTzYcFzogjZ4bYn2gW
        /OlrxTV3hIglJ4GodjnvVSEJU0YAavEaNanIukkYRg==
X-Google-Smtp-Source: ACHHUZ6DCdVaAEfJfH3dkW+jPRYvOxZB15DFNIW0L4zLJOX5CJSB3amHYlaQMtHapeqDQ1tnh8QmMA==
X-Received: by 2002:a17:907:3685:b0:973:c070:1b5f with SMTP id bi5-20020a170907368500b00973c0701b5fmr18442935ejc.44.1687545259514;
        Fri, 23 Jun 2023 11:34:19 -0700 (PDT)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id h8-20020a1709062dc800b00977cc21ddd8sm6287562eji.54.2023.06.23.11.34.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jun 2023 11:34:17 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-516500163b2so1170a12.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 11:34:16 -0700 (PDT)
X-Received: by 2002:a50:9f89:0:b0:506:b280:4993 with SMTP id
 c9-20020a509f89000000b00506b2804993mr2667edf.2.1687545256551; Fri, 23 Jun
 2023 11:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
 <20230617171541.286957-9-krzysztof.kozlowski@linaro.org> <29f6fb78-c122-2b71-61b8-2dc9aa27ad1d@linaro.org>
In-Reply-To: <29f6fb78-c122-2b71-61b8-2dc9aa27ad1d@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 23 Jun 2023 11:34:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UMqrAU9cLy3Ew5o1MJyNDAAG2TY1mvMkY2-8kiw6qpjg@mail.gmail.com>
Message-ID: <CAD=FV=UMqrAU9cLy3Ew5o1MJyNDAAG2TY1mvMkY2-8kiw6qpjg@mail.gmail.com>
Subject: Re: [PATCH 09/15] arm64: dts: qcom: sc7280-crd: add dummy Bluetooth
 VDDIO supply
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jun 19, 2023 at 6:14=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
> On 17.06.2023 19:15, Krzysztof Kozlowski wrote:
> > Bluetooth requires VDDIO supply.  Due to lack of schematics provide
> > something dummy to satisfy `dtbs_check`:
> >
> >   sc7280-crd-r3.dtb: bluetooth: 'vddio-supply' is a required property
> >
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> For this:
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> +CC Doug to perhaps fix this properly (though I think we should have got
> it through the cros list anyway)
>
> Konrad
> >  arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts b/arch/arm64/bo=
ot/dts/qcom/sc7280-crd-r3.dts
> > index afae7f46b050..b1aa5b0ee95c 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> > +++ b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
> > @@ -24,6 +24,13 @@ aliases {
> >       chosen {
> >               stdout-path =3D "serial0:115200n8";
> >       };
> > +
> > +     bt_vddio: regulator-bt-vddio {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "bt-vddio";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +     };
> >  };
> >
> >  &apps_rsc {
> > @@ -38,6 +45,10 @@ vreg_s1k_1p0: smps1 {
> >       };
> >  };
> >
> > +&bluetooth {
> > +     vddio-supply =3D <&bt_vddio>;
> > +};
> > +

I would have a hard time believing that the more correct fix wouldn't be:

vddio-supply =3D <&vreg_l18b_1p8>;

Specifically L18B is what we have on the newer CRD (the one that is
considered a "herobrine" and includes Qcard) and also IDP2. In terms
of timeline / similarities, CRD-rev3 falls in between IDP2 and newer
CRD. These both agree on L18B. The only board that uses something
different (L19B) is the very old IDP1.

That being said, Qualcomm has never provided (at least to me)
schematics for any given reference board. Whenever asked, I was always
pointed at schematics that were said to be "close enough". Thus, I
can't really give a definitive answer here. Even so, pointing at L18B
seems to me to be 99% likely to be correct.

If anyone reading actually has schematics, I think you can just look
at what goes to the pad labelled "VDDPX_3". The datasheet I have shows
that as "Pad group 3 (most peripherals)". If nothing else, that powers
the pins connected to the UART that Bluetooth uses (along with a whole
pile of other things in the system).


-Doug
