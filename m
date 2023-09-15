Return-Path: <devicetree+bounces-645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9FC7A267B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D9C41C209BE
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89E015EAE;
	Fri, 15 Sep 2023 18:46:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7528362
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 18:46:19 +0000 (UTC)
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3107949DC
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:45:11 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d7ecdb99b7aso2384015276.3
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694803508; x=1695408308; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mb/JbSxTOf6YSrodg1aYhJ0ml5QYx/b8sq5qwirE40g=;
        b=rVYwpiEHoZUTb1RScl189CXIouKvFDbkstbiscDXabsDRCbOkQytbby89efW935GVw
         Y7iB7bty48aTBdwfgSVDtMTpq67HjL+hX5phLgUhI4laX6oC1huweqVHOFr0oP0KxNqq
         7bIe/ssZObIkQ2Lqbw3MfS7pu1fvw6+adj5tNUW6VaW3KAs4nbUQgRMWR25zr4MMsX7x
         Krjss6t7VlOOJQsEjSxqa2n2EJwQqDLT4eflNwpbf/yLG9YE1ilfLItiQBQm5ybigNQT
         ib961tpk2lBHMIDi1YxrT4dJZY8Aixjrpf54+p3GW7tuurNzBUOVn0hEL0yhEdNbk+RT
         gT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694803508; x=1695408308;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mb/JbSxTOf6YSrodg1aYhJ0ml5QYx/b8sq5qwirE40g=;
        b=SOz9jgoC+e0GslpDnCWv/9bFDTWwyHYQcwDfOcH1GOgFgS1/ac6jjPOq25IFq6wx3R
         y06+OvUp8yNcCPOsWUC1GeX50BBPf/jbv0P/Qy4o3ey4q+2fRSl7vmEWC75gql2FkaMg
         cty3EyLIx3tQUhXWWymX59PwfgfgVBWRvsUsMFeWizJicUfd6rXvJItHwLfj6srNQo2L
         IjB2FLzSnK0mHWIklmpv4MTdQPNrL/Oa1e5RAo7xUnDfdyCbWYsRRxZrOmbo/X48Qu/Y
         XOapqBv8PTaUQB8rDbRqpo3YJVxGr2Dl/f/PlQ8C1GmJaQVVvNfC7FUxZGvgRHUzF7+k
         9vQg==
X-Gm-Message-State: AOJu0YzMjT58E9b2vFpWZEtJyX0iSm/ctMziJFp9tLdKRKOIzcJn7NSi
	hk3GzJwTA0MC854twKgs9sPtk6SoKOr5w9eB1Sqjb9TpFr0zvdAvsSE+hQ==
X-Google-Smtp-Source: AGHT+IEgvKwcttxHaal71JQerDkqCTheLo6v9lIh37KHgKPxJxzPu18/C942DDKEdzyC+RRK7Px6UodLsnRJQPamVkw=
X-Received: by 2002:a25:cf09:0:b0:d0e:c8fb:986a with SMTP id
 f9-20020a25cf09000000b00d0ec8fb986amr2587928ybg.42.1694803508490; Fri, 15 Sep
 2023 11:45:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230915121504.806672-1-quic_srichara@quicinc.com> <20230915121504.806672-4-quic_srichara@quicinc.com>
In-Reply-To: <20230915121504.806672-4-quic_srichara@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Sep 2023 21:44:57 +0300
Message-ID: <CAA8EJpqJaY3ocZYMxWyDhzoCvCrn6d-YyD=jtumAM7aXe_DEdg@mail.gmail.com>
Subject: Re: [PATCH V2 3/4] thermal/drivers/tsens: Add support for IPQ5018 tsens
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: krzysztof.kozlowski@linaro.org, agross@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, srinivas.kandagatla@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 15 Sept 2023 at 15:16, Sricharan Ramabadhran
<quic_srichara@quicinc.com> wrote:
>
> IPQ5018 has tsens IP V1.0, 4 sensors and 1 interrupt.
> The soc does not have a RPM, hence tsens has to be reset and
> enabled in the driver init. Adding the driver support for same.
>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v2] Used tsens_calibrate_common instead of legacy
>       and addressed comments from Dmitry.
>
>  drivers/thermal/qcom/tsens-v1.c | 58 +++++++++++++++++++++++++++++++++
>  drivers/thermal/qcom/tsens.c    |  3 ++
>  drivers/thermal/qcom/tsens.h    |  2 +-
>  3 files changed, 62 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/qcom/tsens-v1.c b/drivers/thermal/qcom/tsens-v1.c
> index dc1c4ae2d8b0..ed5c017905ab 100644
> --- a/drivers/thermal/qcom/tsens-v1.c
> +++ b/drivers/thermal/qcom/tsens-v1.c
> @@ -79,6 +79,18 @@ static struct tsens_features tsens_v1_feat = {
>         .trip_max_temp  = 120000,
>  };
>
> +static struct tsens_features tsens_v1_ipq5018_feat = {
> +       .ver_major      = VER_1_X,
> +       .crit_int       = 0,
> +       .combo_int      = 0,
> +       .adc            = 1,
> +       .srot_split     = 1,
> +       .max_sensors    = 11,
> +       .trip_min_temp  = -40000,
> +       .trip_max_temp  = 120000,
> +       .ignore_enable  = 1,
> +};
> +
>  static const struct reg_field tsens_v1_regfields[MAX_REGFIELDS] = {
>         /* ----- SROT ------ */
>         /* VERSION */
> @@ -150,6 +162,39 @@ static int __init init_8956(struct tsens_priv *priv) {
>         return init_common(priv);
>  }
>
> +static int init_ipq5018(struct tsens_priv *priv)
> +{
> +       int ret;
> +       u32 mask;
> +
> +       init_common(priv);

Please take care of init_common()'s return code. Don't continue init
if init_common() fails.

> +       if (!priv->tm_map)
> +               return -ENODEV;

Why?

> +
> +       ret = regmap_field_write(priv->rf[TSENS_SW_RST], 1);
> +       if (ret) {
> +               dev_err(priv->dev, "Reset failed\n");
> +               return ret;
> +       }
> +
> +       mask = GENMASK(priv->num_sensors, 0);
> +       ret = regmap_field_update_bits(priv->rf[SENSOR_EN], mask, mask);
> +       if (ret) {
> +               dev_err(priv->dev, "Sensor Enable failed\n");
> +               return ret;
> +       }
> +
> +       ret = regmap_field_write(priv->rf[TSENS_EN], 1);
> +       if (ret) {
> +               dev_err(priv->dev, "Enable failed\n");
> +               return ret;
> +       }
> +
> +       ret = regmap_field_write(priv->rf[TSENS_SW_RST], 0);
> +
> +       return ret;
> +}
> +
>  static const struct tsens_ops ops_generic_v1 = {
>         .init           = init_common,
>         .calibrate      = calibrate_v1,
> @@ -187,3 +232,16 @@ struct tsens_plat_data data_8976 = {
>         .feat           = &tsens_v1_feat,
>         .fields         = tsens_v1_regfields,
>  };
> +
> +const struct tsens_ops ops_ipq5018 = {
> +       .init           = init_ipq5018,
> +       .calibrate      = tsens_calibrate_common,
> +       .get_temp       = get_temp_tsens_valid,
> +};
> +
> +struct tsens_plat_data data_ipq5018 = {
> +       .num_sensors    = 5,
> +       .ops            = &ops_ipq5018,
> +       .feat           = &tsens_v1_ipq5018_feat,
> +       .fields         = tsens_v1_regfields,
> +};
> diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> index 0a43ccf02ec4..c792b9dc6676 100644
> --- a/drivers/thermal/qcom/tsens.c
> +++ b/drivers/thermal/qcom/tsens.c
> @@ -1101,6 +1101,9 @@ static SIMPLE_DEV_PM_OPS(tsens_pm_ops, tsens_suspend, tsens_resume);
>
>  static const struct of_device_id tsens_table[] = {
>         {
> +               .compatible = "qcom,ipq5018-tsens",
> +               .data = &data_ipq5018,
> +       }, {
>                 .compatible = "qcom,ipq8064-tsens",
>                 .data = &data_8960,
>         }, {
> diff --git a/drivers/thermal/qcom/tsens.h b/drivers/thermal/qcom/tsens.h
> index e254cd2df904..b6594b546d11 100644
> --- a/drivers/thermal/qcom/tsens.h
> +++ b/drivers/thermal/qcom/tsens.h
> @@ -645,7 +645,7 @@ extern struct tsens_plat_data data_8960;
>  extern struct tsens_plat_data data_8226, data_8909, data_8916, data_8939, data_8974, data_9607;
>
>  /* TSENS v1 targets */
> -extern struct tsens_plat_data data_tsens_v1, data_8976, data_8956;
> +extern struct tsens_plat_data data_tsens_v1, data_8976, data_8956, data_ipq5018;
>
>  /* TSENS v2 targets */
>  extern struct tsens_plat_data data_8996, data_ipq8074, data_tsens_v2;
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

