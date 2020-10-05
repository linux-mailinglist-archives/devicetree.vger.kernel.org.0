Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F022728335E
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:33:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725934AbgJEJdH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:33:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725973AbgJEJdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:33:05 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29723C0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 02:33:05 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id p15so10907084ejm.7
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 02:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QWYrz6qrGDN0PrfuC9I5OUQx6TkLptYBjLcdAijyuXM=;
        b=tjfW9MjQCxDDuy7KpKhIQMlHqc9lCSq8qGcDIBkR71Y4wbPRSqmaiGPnCXDAh1Aqkg
         Tl1suqQ36iN+Hy5QbP/IJ9Pt/0FbGsgLC5ydb5FAHcHX9OgP/7B+RJfcwFF/1FRpEIzo
         rGoH71XwgXTVrZj9djjeZzuLz+XrKQ9SQOW6WUBdxJVDTrFu1orTu4kdr4q0CEc/9+P0
         KETKg9+9C0GWPEVFNJRzrVxm3MPp6ENDiJ4uXMsxbJgtixvSq1rGnVE8aNg89tbXpY3e
         ndd3a4vfVH3h/DzRwrVVLYAw4Pb8EPVuqrqbjwMXe66InilYqXHLW8/ln8Sm9JqpUw9J
         xDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QWYrz6qrGDN0PrfuC9I5OUQx6TkLptYBjLcdAijyuXM=;
        b=KipvWQNH2luljBrtXJ7+piDxuovBW1YTQ258ZndQcQAFx1FuQ9a4CErKYCdLa2VXPk
         QsZEVEd2FtP+JLJoNyvhjH6ohp+9T1YuAsUPy3hOocl+oMft31pItdeqrO9izoUyTepq
         5rmlc9hGj6b4OVdxdZZoXjUW9jx14ffAvKLkygUTxWrkNhMJTr47ndoG3NpfZKqXf1xW
         6NgGZwvwyForMh1yx47IADtWdwkTI8DBvpW0iIJeMemxi5hNd/514oDB3UN/ek8u6o0w
         tU9p/75VODVRKdo+5miwkzZW2YVVONP+kle5vmkrt3IpmnQCZCTPdRbFN1Ma0wOuZzKo
         kwew==
X-Gm-Message-State: AOAM532jW6ARYugZzqIbuO/tXWj0dBo62+2+uWcpfSIybSc5Vig4ihfS
        qvIZS9+R75iBxmKExXTQYMo=
X-Google-Smtp-Source: ABdhPJzgBnOa/M7OMH8jTl58X76AyIgFQDa5kfZmuxFD2KS3b95SE6q5kUwEiNNnPdIEv4WFDFUV5w==
X-Received: by 2002:a17:906:a2cf:: with SMTP id by15mr13995821ejb.298.1601890383914;
        Mon, 05 Oct 2020 02:33:03 -0700 (PDT)
Received: from localhost ([217.111.27.204])
        by smtp.gmail.com with ESMTPSA id p17sm8476043edw.10.2020.10.05.02.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 02:33:02 -0700 (PDT)
Date:   Mon, 5 Oct 2020 11:33:01 +0200
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Baruch Siach <baruch@tkos.co.il>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Anders Berg <anders.berg@lsi.com>
Subject: Re: [PATCH] dt-bindings: arm: Add missing root node constraint for
 board/SoC bindings
Message-ID: <20201005093301.GF425362@ulmo>
References: <20201001200943.1193870-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Y1L3PTX8QE8cb2T+"
Content-Disposition: inline
In-Reply-To: <20201001200943.1193870-1-robh@kernel.org>
User-Agent: Mutt/1.14.7 (2020-08-29)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Y1L3PTX8QE8cb2T+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 01, 2020 at 03:09:43PM -0500, Rob Herring wrote:
[...]
> diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documenta=
tion/devicetree/bindings/arm/tegra.yaml
> index e0b3debaee9e..b4d53290c5f0 100644
> --- a/Documentation/devicetree/bindings/arm/tegra.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra.yaml
> @@ -11,6 +11,8 @@ maintainers:
>    - Jonathan Hunter <jonathanh@nvidia.com>
> =20
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      oneOf:
>        - items:

Acked-by: Thierry Reding <treding@nvidia.com>

--Y1L3PTX8QE8cb2T+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl966E0ACgkQ3SOs138+
s6FoohAAvCq+WHIZHeNO+1O81QkJA703q8xB3/ZKVnxqYs4/xHpa0x33rg2EkFUC
1dHqS/KLfdYGqzcosvUt01ICOOguAy6TjDq0oO1YWlOoGsUGCcR49VQi4JGvHpCP
mjVZM+lnBlGxrw50Y7FF+hSu4WSs+fid72Tz4Qgro20AMvXLCLLvzhGbAPTbJj1g
uPPTY0r4lZb90lbzQf4c+5NqPC8BlhYZmZVXDydk56soZHo2Pcdcy8aLiBwFKq2W
qYgWE/t7Jp9ssS/b1mc9cGbmeDu57z28L5ZtCL3BL28J64CW69tk9v/uF63fLO86
Ix/wxpFfsS4UsklKOfLloQvVH29nvVcbhdQOBz9nDYVQu010fxfQ1t/T6/UquDzh
2hYK0inm/tRQ+7dT4qlCPyvHhIyj0f26b3VTaCo+rIuijkoWQgrN1H6Q/4GJ74MJ
W+QcZeD97eZoNvWhbbaDdyx7aCgIqch4YT9i8AFDCQl1aVaBxkLs4evdfzZLzO9v
3lf+MSv1eVzne3n/f+dkvCRzJIzxsK0PkiDY0R+u6BCY1IelZtgtlXtBXAscNNxG
YDzDADYttP6yvXzLUY5zrq015/LDlQaIxAZ/V4w4PfO7csndebCbnYaoP0Lvk6Cr
YdMnmKd/x5mT44/151+7CBORrjXdjdzLQl9u9cfoagHBO8YVCz0=
=zDOf
-----END PGP SIGNATURE-----

--Y1L3PTX8QE8cb2T+--
