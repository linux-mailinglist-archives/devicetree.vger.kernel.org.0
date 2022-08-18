Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA2C598016
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 10:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233812AbiHRI1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 04:27:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231430AbiHRI1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 04:27:37 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C7D294EFA
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:27:36 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id q16so441602ljp.7
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=IgR5SKNZXMCrQxkyYrQgrXS9ywlkfSHFIO+/t184iOU=;
        b=VjtrvLqB94Z1XPU8pQ5yXdmLt9mYLZ7BjJvCeeesy0vSQtCSNX/0DYPBFZHzJfNauz
         7rJIuZb6XE4nY1UGDmqLMN04fIACtY+W7eLxVxdZkssK0bIuyJ946ZGyxjUZkkyjIFMy
         NlIPhz5E95KwaF1GM4EGjMqnpjftqz928qny5ZUxjfEhQYsjdNqzOemZgCgr3qYIqzLz
         wYx2MhN2+jwhK83k/Nn3IfX0WjoY4lO1ARDd+m/xcq+Fyt9FYtDzleTj6qiQwZn2JVmb
         Cy1OLuRrKNsIC/WLf6dUCLFP2xNGZgn16bQOkFnqXopQd+s2T5OYHma/RqQ+X/JpO61e
         wlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=IgR5SKNZXMCrQxkyYrQgrXS9ywlkfSHFIO+/t184iOU=;
        b=LFv/b+oE1nceSW5lF52YIMRKtnYyRN3d4lRHO8o30oFI5R4pH9KeD24Uo6iqSzhR1j
         dS3bvtX5qV65uzE0eKoZ4oqDBoS0aP3y5OYxom2lUSMQUKfnEf3X/jeDM1fSLyniCKhw
         GGZYhtQwPXMxlbjk0eWYej8Oo2LC50FdoozCYxyCQn5AmTcZQnkx1B0Tf6dnZcRKfNYJ
         4NX/7rXmzGCglROJZ+40cPKj24OK2XLfnB3gtT/0Fl3FRfljzXE0lHfChiF0NQPoWBoc
         9n121KulOMW53XUeNPkDk43tAacf9cg53YLrVYqCiMUo0uVyMoXxX/Wlb90LhdweG16i
         98Jg==
X-Gm-Message-State: ACgBeo0hfMOiOBSQrqPQaHg96AvA33tc2mk/DMQN1Ck6VBa2PTEDNFRm
        mIqgLfHjLHY12xuxiTZ7MMGp425ksHhsltgvWddqn2mXd/Q=
X-Google-Smtp-Source: AA6agR6FaZ7gXaou70ewzpbtZl5RZYpnuY175gio92TfXAiQ2joX0/xQyTe4br8lF4+rIzCPV1NorkmkJzek4n25dQc=
X-Received: by 2002:a05:651c:a04:b0:25e:7523:20b2 with SMTP id
 k4-20020a05651c0a0400b0025e752320b2mr536282ljq.424.1660811254900; Thu, 18 Aug
 2022 01:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220817204954.28135-1-macroalpha82@gmail.com> <20220817204954.28135-3-macroalpha82@gmail.com>
In-Reply-To: <20220817204954.28135-3-macroalpha82@gmail.com>
From:   Maya Matuszczyk <maccraft123mc@gmail.com>
Date:   Thu, 18 Aug 2022 10:26:58 +0200
Message-ID: <CAO_Mup+b_u5P0y3wPus8yWj+hmVEdg4-m9o3GzMUWPAXpAr95g@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and RG503
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey,

=C5=9Br., 17 sie 2022 o 22:50 Chris Morgan <macroalpha82@gmail.com> napisa=
=C5=82(a):
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add entry for the Anbernic RG353 and RG503 handheld devices.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 7811ba64149c..9026963694f0 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -30,6 +30,16 @@ properties:
>            - const: amarula,vyasa-rk3288
>            - const: rockchip,rk3288
>
> +      - description: Anbernic RG353
> +        items:
> +          - const: anbernic,rg353
> +          - const: rockchip,rk3566
The device is named RG353P, not RG353.
Otherwise patch looks good to me.

Best Regards,
Maya Matuszczyk
