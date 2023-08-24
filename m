Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25A4D7877C1
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 20:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230409AbjHXSZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 14:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242988AbjHXSZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 14:25:05 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6987E58
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:25:02 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99df431d4bfso7631966b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692901501; x=1693506301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/Mw3uUaqPoZdHXDrYU5kYEb/nl7KslWn6Q8+skWzGw=;
        b=MAPXpC3XXJuutTIGA8JXHAZRaCzMPURSVzm7XDE3igzC5fvNMXANXVZhSeFEgx1tXB
         /ZHEr5yNi74wkiQ9frzrfRfjBW65C7+MXV1wWiXfRDvfGyXGm/tna6t1ucLsKwG9HpMD
         ULnxg6S/fo6waN3HGOZqDqM4WuIvfGS2NqYz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692901501; x=1693506301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/Mw3uUaqPoZdHXDrYU5kYEb/nl7KslWn6Q8+skWzGw=;
        b=JDOGrlhR06EXuXwFjYpDwMjKfGRUerPzmnGIxNWMKuFVQNKIRLnFkRCYUyZ4qJfMFD
         X7Z3yax9ZUKhKoSfYapM+BhYC0/UZqdc+OUl3tuUahjKpGXTqwTiolsqtRTj77eyXCLK
         9q3Q8Pq52ZIDCK/zVdIHjGH2hdv3muCrVyQe3786tVE8wXANMmJui04Lt8L248eQr/JY
         Ugy26LFBfy94yMSf8pUiSzlXB73Tr0TKm0iBopDzQtQag/HOoFpXMIWeJ+TVoNG7RmlT
         AoCQJ450YjlQnD5NWOJye/2bswuh+UEe8P9x1mfV3a32kO8NQITwceOhuwu9hubGTS4o
         etFQ==
X-Gm-Message-State: AOJu0Yw956hMa9NNlQnM0IGyUl2ubk8jQmvRWZFUfxip+bLahgtUCpqs
        owo7Eg+UzrHDvhlOIp4RA9Y/QF/UZoZ5N7N4KgwEetRz
X-Google-Smtp-Source: AGHT+IGCVkNAsynEYf7PZOEs75CmwlLpCGUbt7lgXNlgg+kJnJm5SgI7Vcdf051FOkYiArAupOkq2w==
X-Received: by 2002:a17:906:844a:b0:99b:f645:224 with SMTP id e10-20020a170906844a00b0099bf6450224mr12676898ejy.9.1692901500942;
        Thu, 24 Aug 2023 11:25:00 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id u1-20020a170906408100b00992e14af9c3sm11288059ejj.143.2023.08.24.11.25.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 11:25:00 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-3fef2fafee2so14945e9.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:25:00 -0700 (PDT)
X-Received: by 2002:a05:600c:1d0b:b0:3fe:cd3a:ef92 with SMTP id
 l11-20020a05600c1d0b00b003fecd3aef92mr18742wms.6.1692901500113; Thu, 24 Aug
 2023 11:25:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230823222741.89584-1-david@ixit.cz> <20230823222741.89584-2-david@ixit.cz>
In-Reply-To: <20230823222741.89584-2-david@ixit.cz>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 24 Aug 2023 11:24:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WaW5jKwXDTvyXjy45PSWu8LoT0LxYKM_mZAH3LxZPwrQ@mail.gmail.com>
Message-ID: <CAD=FV=WaW5jKwXDTvyXjy45PSWu8LoT0LxYKM_mZAH3LxZPwrQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845: cheza doesn't support LMh node
To:     David Heidelberg <david@ixit.cz>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 23, 2023 at 3:28=E2=80=AFPM David Heidelberg <david@ixit.cz> wr=
ote:
>
> Cheza firmware doesn't allow controlling LMh from the operating system.
>
> Fixes: 36c6581214c4 ("arm64: dts: qcom: sdm845: Add support for LMh node"=
)
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot=
/dts/qcom/sdm845-cheza.dtsi
> index d86b0d112110..8cc8fc290fd3 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
> @@ -143,6 +143,10 @@ panel_in_edp: endpoint {
>         };
>  };
>
> +&cpufreq_hw {
> +       /delete-property/ interrupts-extended; /* reference to lmh_cluste=
r[01] */
> +};
> +
>  &psci {
>         /delete-node/ power-domain-cpu0;
>         /delete-node/ power-domain-cpu1;
> @@ -275,6 +279,14 @@ &BIG_CPU_SLEEP_1
>                            &CLUSTER_SLEEP_0>;
>  };
>
> +&lmh_cluster0 {
> +       status =3D "disabled";
> +};
> +
> +&lmh_cluster1 {
> +       status =3D "disabled";
> +};

It's not a huge deal to me, but as I understand it usually you'd put
the "disabled" in sdm845.dtsi and then it would be up to all the other
sdm845 boards to mark this as "okay".


>  /*
>   * Reserved memory changes
>   *
> @@ -338,6 +350,8 @@ flash@0 {
>
>
>  &apps_rsc {
> +       /delete-property/ power-domains;
> +

Is the deletion of the "power-domains" here related to LMh? That seems
like it was added to sdm845.dtsi in a separate commit that doesn't
talk about LMh at all...

-Doug
