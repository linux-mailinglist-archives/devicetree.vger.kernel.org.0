Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C45B12F70A6
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 03:39:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729642AbhAOCir (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 21:38:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728700AbhAOCir (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 21:38:47 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE1E5C0613C1
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 18:38:06 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id i7so5074485pgc.8
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 18:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=IfkswvJ+WT98pmcPH/y83e9uI74Y39PRJ7kSQcG7VDE=;
        b=OLMKXlKGUaSp/DoMdWjeLPA8oKDvg/T0PB5ioM/AQpS5MuZjjQYk8OToEyig4x62Am
         g4/AWLBPxQdDsVHMEQEdUs2E94r0GLl0W81uaZTyuXgP1RP9LCiuIEhAOdBW54lrrgO2
         h0YppKIj0sFUg/0bMSMvOvUfdBiYbKlysWFXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=IfkswvJ+WT98pmcPH/y83e9uI74Y39PRJ7kSQcG7VDE=;
        b=bd0zEORkTTM0Ifnk+HwQ5srl4DpyoiST6dv7DcfQLyWbiWwzyW73wCygLfS45YTFWL
         b+olWx/ODzwcI+kr5XrFjsodfHbvYV2yhujxFybYR5ZS7JDto2CoL83fQ6kKwiBpgGIS
         NdedmhoGJfetYenR9KXNHE7vZEVPvJdkFy6ii1x2294c+/BHEJXwjoijlS3P46U33Jx4
         ruckmf2e3GAQ20UeB7U6ZrN9W0eOTGlbFdgEu4ZYX0X+FdG3Cbfp1xtWUFW0y7izxzcN
         OU+RbxVvpje+anYUjAvNIxrvcmTFuj+g4MSvoLnlCNZJ1AT37Y/fDEIdUp+CsuD0ZWr1
         iv1Q==
X-Gm-Message-State: AOAM531h63vCcAuTwQ9LeWoCWRmDC6LuawdQnhKAuyC9qe3diLAGW9J5
        oTqxDWpvzIeGQWgDIl9S+Zx8Ng==
X-Google-Smtp-Source: ABdhPJxq3/PXGO4zHNtGU/8aBUboJyQEuN+jDyp8SClyYxh5r8aS7YFiBZMJIxc3mNMEl34NhzMjmQ==
X-Received: by 2002:a62:6845:0:b029:1ae:2731:8a89 with SMTP id d66-20020a6268450000b02901ae27318a89mr10641554pfc.73.1610678286400;
        Thu, 14 Jan 2021 18:38:06 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id d36sm6536270pgm.77.2021.01.14.18.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 18:38:05 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210114183010.v6.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
References: <20210114183010.v6.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
Subject: Re: [PATCH v6 1/2] dt-bindings: input: cros-ec-keyb: Add a new property
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Thu, 14 Jan 2021 18:38:04 -0800
Message-ID: <161067828422.3661239.16933057782247961610@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-14 18:30:30)
> Add a new property `function-row-physmap` to the
> device tree for the custom keyboard top row design.
>=20
> The property describes the rows/columns of the top row keys
> from left to right.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

One nit below.

> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.=
yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> index 8e50c14a9d778..a742b0777ee6d 100644
> --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> @@ -43,6 +54,18 @@ examples:
>          keypad,num-rows =3D <8>;
>          keypad,num-columns =3D <13>;
>          google,needs-ghost-filter;
> +        function-row-physmap =3D <
> +                0x00020000      /* T1 */
> +                0x03020000      /* T2 */
> +                0x02020000      /* T3 */
> +                0x01020000      /* T4 */
> +                0x03040000      /* T5 */
> +                0x02040000      /* T6 */
> +                0x01040000      /* T7 */
> +                0x02090000      /* T8 */
> +                0x01090000      /* T9 */
> +                0x00040000      /* T10 */

Can we include the header file for MATRIX_KEY so we can use the macro
here?
