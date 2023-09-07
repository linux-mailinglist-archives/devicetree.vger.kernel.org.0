Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 007657976E0
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 18:18:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230450AbjIGQSl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 12:18:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241128AbjIGQR4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 12:17:56 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F203BE41
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:59:21 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3aa1c04668bso700177b6e.0
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694102272; x=1694707072; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bJnHQZI/YTk0Ikc8JOTRLoRDMwR3H4tHaJzcO7hfWr4=;
        b=TiNCz8RiI8x/ke3Y0ajTtBfZ3zQLWC9Ump/+OyuukTAV3Poec8f4pp08WUY10yhwgg
         /P2WAfzj1jrANRrM3LWQanpaKtfy/lE4IYkQ6ck6QR0g5PiN00AdTbiAZxweJZeObQvw
         vR5Ic0U6df049tHPscRUadPRo2b0uJGQ7ttP/ntoaP7lZxkSFO3UTNQLImtUyRN8TzEu
         pcdGf2KBa0XSeWKgZbP5g7y1F3i6hMsanb/q9BRfp7hMYhVBlEs6AgbTTxcGl/QYM2iX
         MM1dUB7WegmB3z+SXslszN9Uc7fxGyjVjNxClWvpR9synamFHZyrNoefeF6Lqv2B69w2
         P33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694102272; x=1694707072;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bJnHQZI/YTk0Ikc8JOTRLoRDMwR3H4tHaJzcO7hfWr4=;
        b=XgkEey5huNMK7tWIUJ/tc/GBnQ4cOKXVqEtWMrk998tnLellyYoimllx/OfrPg5ucu
         nSEZKShabuLoWtoJg2tn9Cm8V8hTU4I7M//+cM+RZQi0BOmSqjO1XDl3mTBQURI6iNMK
         Sj5p4Ez/5V4mXvgfYtL7tO3JWaNZQqiwCran28xcqTTZq794hUYZbynp1aOcfQ9Pe+Xg
         KK+MI692bOfQapa61Wr+jUzjsloZK0UtSN3CHJeETXQSP7A9Dzckh08igXwuXJKVsggb
         ZjOljpBBnJ7x/Y3HywYkvB5IHQMMzFPzx1Otsz5gq+IkIPAGpMyqcNq5Y0RVlSNY8IQO
         tDig==
X-Gm-Message-State: AOJu0Yy7ay1TzHlnpCqrAQatSJM6bGD7oPt8BZmfLES0NVB+PUmQOVsJ
        emlqYvDt7lwSp9p7jlf5U0dizF/gCo71iz9wTb6LfsNWgbC+1OV3
X-Google-Smtp-Source: AGHT+IFDVeL1UmCZY05Tqcq76iXML1JvWmurH2xxHKxUGlpH6gpEztrZTplGKLfqwM2mDGTIO4vf6OxfxN/uzjAj4w8=
X-Received: by 2002:a25:da84:0:b0:d80:1441:9010 with SMTP id
 n126-20020a25da84000000b00d8014419010mr109512ybf.26.1694096587639; Thu, 07
 Sep 2023 07:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1693996662.git.quic_varada@quicinc.com> <f7d49397507e10423b87910e88c52d5a1681f128.1693996662.git.quic_varada@quicinc.com>
In-Reply-To: <f7d49397507e10423b87910e88c52d5a1681f128.1693996662.git.quic_varada@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 7 Sep 2023 17:22:56 +0300
Message-ID: <CAA8EJpqox=Ji3cf5iBgL_QvqNZFmikiNu7bBscBYi4AsCdt9CQ@mail.gmail.com>
Subject: Re: [PATCH v1 09/10] cpufreq: qti: Introduce cpufreq for ipq95xx
To:     Varadarajan Narayanan <quic_varada@quicinc.com>
Cc:     ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Praveenkumar I <ipkumar@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 7 Sept 2023 at 08:24, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> IPQ95xx SoCs have different OPPs available for the CPU based on
> the SoC variant. This can be determined from an eFuse register
> present in the silicon.
>
> Added support for ipq95xx on nvmem driver which helps to
> determine OPPs at runtime based on the eFuse register which
> has the CPU frequency limits. opp-supported-hw dt binding
> can be used to indicate the available OPPs for each limit.
>
> Signed-off-by: Praveenkumar I <ipkumar@codeaurora.org>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c |  1 +
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 20 ++++++++++++++++++++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufr=
eq-dt-platdev.c
> index f0c45d4..4ab29c0 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -180,6 +180,7 @@ static const struct of_device_id blocklist[] __initco=
nst =3D {
>
>         { .compatible =3D "qcom,ipq5332", },
>         { .compatible =3D "qcom,ipq8064", },
> +       { .compatible =3D "qcom,ipq9574", },
>         { .compatible =3D "qcom,apq8064", },
>         { .compatible =3D "qcom,msm8974", },
>         { .compatible =3D "qcom,msm8960", },
> diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-=
cpufreq-nvmem.c
> index 49d21b0..de70225 100644
> --- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
> +++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> @@ -168,6 +168,25 @@ static int qcom_cpufreq_kryo_name_version(struct dev=
ice *cpu_dev,
>         case QCOM_ID_APQ8096SG:
>                 drv->versions =3D 1 << ((unsigned int)(*speedbin) + 4);
>                 break;
> +       case QCOM_ID_IPQ9514:
> +       case QCOM_ID_IPQ9550:
> +       case QCOM_ID_IPQ9554:
> +       case QCOM_ID_IPQ9570:
> +       case QCOM_ID_IPQ9574:
> +               /* Fuse Value    Freq    BIT to set
> +                * ---------------------------------
> +                *   2=E2=80=99b00     No Limit     BIT(0)
> +                *   2=E2=80=99b10     1.8 GHz      BIT(1)
> +                *   2=E2=80=99b01     1.5 Ghz      BIT(2)
> +                *   2=E2=80=99b11     1.2 GHz      BIT(3)
> +                */
> +               if ((unsigned int)(*speedbin) =3D=3D 2)
> +                       drv->versions =3D BIT(1);
> +               else if ((unsigned int)(*speedbin) =3D=3D 1)
> +                       drv->versions =3D BIT(2);
> +               else
> +                       drv->versions =3D 1 << (unsigned int)(*speedbin);

If you change the order of speedbins 1 and 2 in DT, you can use 1 <<
speedbin for all the kinds,

> +               break;
>         default:
>                 BUG();
>                 break;
> @@ -375,6 +394,7 @@ static const struct of_device_id qcom_cpufreq_match_l=
ist[] __initconst =3D {
>         { .compatible =3D "qcom,qcs404", .data =3D &match_data_qcs404 },
>         { .compatible =3D "qcom,ipq5332", .data =3D &match_data_kryo },
>         { .compatible =3D "qcom,ipq8064", .data =3D &match_data_krait },
> +       { .compatible =3D "qcom,ipq9574", .data =3D &match_data_kryo },
>         { .compatible =3D "qcom,apq8064", .data =3D &match_data_krait },
>         { .compatible =3D "qcom,msm8974", .data =3D &match_data_krait },
>         { .compatible =3D "qcom,msm8960", .data =3D &match_data_krait },
> --
> 2.7.4
>


--=20
With best wishes
Dmitry
