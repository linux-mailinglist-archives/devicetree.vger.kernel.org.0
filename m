Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A382877770A
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 13:32:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234954AbjHJLcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 07:32:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234476AbjHJLcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 07:32:11 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFF9410DC
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:32:10 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-56433b1b12dso534066a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1691667130; x=1692271930;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C42cycCL5b1KjEaCe4Yw+mwNG6B5VgsAbMoDMhY9xjU=;
        b=GQKh8IlHBfHgvED6GLpu4WrkcT7shZ9dyylWT2XSozNR4iYFfVC3JqA6GTRqfHphw/
         5zKl5WP4tatyy5fFnjZQ0Z55waKUhcAccZasqPqGUMU8Udl/LD1jrYHhOsson9fgaoTF
         E1JFM/KsHfuMFWKPlDy6JHw6YvJJgSL2uWA+Bt8IeCaCYhG08NfRNv7J2eFBicToA0T2
         t1NJKXeRxpl3+a/OQoXq2uoUr2gwEbzYMglV0dIm8b9TWEbujP47a3hqiQkwsKvm3Qmm
         tHaprashov0kZ+uSpSGZqmJRk/uyRpHa4A60/NYz/En2fdL4eMmj3vxb82nTYjGeEWts
         FHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691667130; x=1692271930;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C42cycCL5b1KjEaCe4Yw+mwNG6B5VgsAbMoDMhY9xjU=;
        b=eEtHQKSC+6Mg/xLDS1odjVUhnDeVkvb5LJnQ7C4vqH1bcG6DwBhsYB5rdtUCE14H9T
         Up+eRJVwYk4h2+MDmJBnaWdn14OIwgrCijgJtyynpo0lKZWmdqInWUiiyjxrjUvfcaMg
         jIL6bmOagvfUFW0RsBC0qhNlMpeUqc66y6Rx/omx4q2IxGZ4mWMcduUxInhtXwu/hJe6
         20s6dZ63Q5HLY/3RWcXNVo1hDI1bHVJNoNzpZAmMMHfLMIOE5LT17d59kvZkNrcXbjhr
         SeR3nNeqBpRVI43/VoWDwtaMjziWES+v9A6mrLJesWUPDC2APgUSvmmbvjWltAjdMsJ8
         NjyQ==
X-Gm-Message-State: AOJu0Ywug5BSqu1XxVt6ASnV5Orn+IhBMXP32cIpEfEvo/ihi79BNt5A
        gMcL3PQdSwtCG9LyFfLJ6Z3lIYsyqvIrcm+/qXVxCQ==
X-Google-Smtp-Source: AGHT+IGA04V8jAaFcjuH0Jicj5IhH1v6BEAOean6djo4D6WUkU+unA4wwFdOFfNJDH1L/YTqBnnfBXKGqCFVs51F3x4=
X-Received: by 2002:a17:90a:760c:b0:269:25a8:66c with SMTP id
 s12-20020a17090a760c00b0026925a8066cmr1535423pjk.45.1691667130293; Thu, 10
 Aug 2023 04:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230810102309.223183-1-robert.marko@sartura.hr> <169166649202.64563.6248344012653953343.robh@kernel.org>
In-Reply-To: <169166649202.64563.6248344012653953343.robh@kernel.org>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Thu, 10 Aug 2023 13:31:59 +0200
Message-ID: <CA+HBbNE6H4WWW=+etRysPZr0bAXKaAq_0-oB0SnhUb5quQtivw@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: ethernet-controller: add
 PSGMII mode
To:     Rob Herring <robh@kernel.org>
Cc:     pabeni@redhat.com, netdev@vger.kernel.org, andrew@lunn.ch,
        davem@davemloft.net, edumazet@google.com, conor+dt@kernel.org,
        linux@armlinux.org.uk, devicetree@vger.kernel.org,
        luka.perkov@sartura.hr, hkallweit1@gmail.com, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        kuba@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 1:21=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
>
> On Thu, 10 Aug 2023 12:22:54 +0200, Robert Marko wrote:
> > Add a new PSGMII mode which is similar to QSGMII with the difference be=
ing
> > that it combines 5 SGMII lines into a single link compared to 4 on QSGM=
II.
> >
> > It is commonly used by Qualcomm on their QCA807x PHY series.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
>
>
> doc reference errors (make refcheckdocs):

I am not getting any errors, nor there are any listed here as well.
Is this a bot issue maybe?

Regards
Robert
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202308=
10102309.223183-1-robert.marko@sartura.hr
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.
>


--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
