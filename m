Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9679A2F5626
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 02:57:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727999AbhANBmo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 20:42:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727821AbhANBlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 20:41:46 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4424BC061575
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 17:30:30 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id j1so2097422pld.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 17:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=wCQA51R3XjajxLm+ktkTMM4Jv8olQ2Y7A7ylvVfTXdM=;
        b=R0b+Sur4Q7QJ0KvjH+hU9OqVL3HDbi0PF1ivhQv+l13Q9YppVaU9eRhqURO0kOWuTh
         CeEJaJkYhM6ZovtluJGvI05hqOh6EVDOnMWQqUhaT3+SOw4Tvdp2dg7NkokCm+VKZGd/
         O9qX3zFXxcN9rJpgw9TpAC0SYjn0XR/aqFc2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=wCQA51R3XjajxLm+ktkTMM4Jv8olQ2Y7A7ylvVfTXdM=;
        b=HpEdKQZty80lgEqf1fZK4a2LU8WID+od1/wRpIHcmxG4vohNMAxOOhlL45D7p0ZHZF
         6FNmiD0TYwtb3SCum+2IjgAhONQilCfGSjcf9SiHfvAl6tuc0nd7yeGkDRA/F7ZoU6ON
         4c1u+DGVbxsgItcbn9JPUFsBdvMja5MmfQ+gwRBwPfa+IWADuNRiRQX+rSMR7XJczswK
         bPsAY55Yu8xGfw0wZNIUThy7lcKAKVdmJoyu3dhWDYAotiY5P/O2RO8049447XbrWo1r
         KtRtpKRt2ejIfqCH4xVqMe7FAfPI3joSQb2axPTTKxr7cPJulBLdp0x7fsAbreF1E8p9
         x4eg==
X-Gm-Message-State: AOAM533KGP6GNLdGlRc3MD1eRq087fpeP1mKkqKgK4clCC9skP29Lxvp
        OKOThj0QL7cBfBRmBsE/k1kCIQ==
X-Google-Smtp-Source: ABdhPJzGi2jR1JsKhdPtp0pxlVaK8vg4k/dVLLn9sYrEc7m3vm0ofkJBncXjINhwzNNa6avh38R4PA==
X-Received: by 2002:a17:90a:5303:: with SMTP id x3mr2336824pjh.54.1610587829782;
        Wed, 13 Jan 2021 17:30:29 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id b11sm3750264pjl.41.2021.01.13.17.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 17:30:29 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210113172450.v5.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
References: <20210113172450.v5.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
Subject: Re: [PATCH v5 1/2] dt-bindings: input: cros-ec-keyb: Add a new property
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
Date:   Wed, 13 Jan 2021 17:30:27 -0800
Message-ID: <161058782774.3661239.6435895454078235399@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-13 17:25:12)
> This patch adds a new property `function-row-physmap` to the

:)

> device tree for the custom keyboard top row design.
>=20
> The property describes the rows/columns of the top row keys
> from left to right.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---
>=20
> Changes in v5:
> - add minItems and maxItems for `function-row-physmap`
>=20
> Changes in v2:
> - add `function-row-physmap` instead of `google,custom-keyb-top-row`
>=20
>  .../bindings/input/google,cros-ec-keyb.yaml          | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.=
yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> index 8e50c14a9d778..e573ef3e58b65 100644
> --- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> @@ -31,6 +31,18 @@ properties:
>        if the EC does not have its own logic or hardware for this.
>      type: boolean
> =20
> +  function-row-physmap:
> +    $ref: '/schemas/types.yaml#/definitions/uint32-array'

I'm not sure this is needed if min/max items is there.

> +    minItems: 1
> +    maxItems: 15
> +    description: |
> +      An ordered u32 array describing the rows/columns (in the scan matr=
ix)
> +      of top row keys from physical left (KEY_F1) to right. Each entry
> +      encodes the row/column as:
> +      (((row) & 0xFF) << 24) | (((column) & 0xFF) << 16)
> +      where the lower 16 bits are reserved. This property is specified o=
nly
> +      when the keyboard has a custom design for the top row keys.

Can you add it to the example so it can be tested? Then you can prove
out if the ref is needed or not.

> +
>  required:
>    - compatible
>
