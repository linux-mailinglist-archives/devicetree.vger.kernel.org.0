Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8A9F591080
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 14:09:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238058AbiHLMJV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 08:09:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236963AbiHLMJT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 08:09:19 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A25E2B028E
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 05:09:18 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id x21so1100280edd.3
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 05:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc;
        bh=yQJnAvxwwDIRShMc7gbItPdruUOcVO91CwwmlkjdBV4=;
        b=FcCofm1FhUVT0y+mEgvBIoj3n6cKnIgxHtk1mcvHSoL8hXoct5dx6RIf+e7jeVG/ga
         P6HVJyoEFjyO4lQWI5qIZ/NvFlK11FTWq21WH/DQ84Y6kBpywVaHbDgpY1s11se3uFTQ
         9E2zq3OLJGG2UEnA6EYPwyPSawIejNt2OpnLIj/i50L+Tb8XD33UAl8b2YyXTjrGndHy
         xVwAD7/yf2GEU1MIxFjG+0aePMu2GZFrWaivMd5oifBegAjEeRMuqfxcej3ZSvVX/eCb
         oNcLN/kWqj7fXgBV91fW2FI/ZWZFqbGd5FDt45cQYngC8KUOzledBlLgK7IGcVJfXm5+
         tSyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc;
        bh=yQJnAvxwwDIRShMc7gbItPdruUOcVO91CwwmlkjdBV4=;
        b=2bjRggD6BWzvXOzPL3pQTkr77FRr01zSSAnK/Qb1islxs89w8WehvOzy74kXqhm8Ha
         vpLp5lI6Al/Jnp+7da7H6w+Tp9fOHkDrQu/9UoHjQXreWZWJ+JSFyMSJ1S/sUF3+8+cT
         SH7pWBGvMJmPSrJXiBldDgLuSh8qc5VtqJWZMQRW94rnn37Zl5DRQBObuvyz1U9ZDqZP
         moALeSdiIcdTeG2UwPxaZiJsycSolyctMwVqVKbBL0PN+SpFl4oZmauXByb7lmCXaXTk
         7apFZi1jr7BVKA9w+AwW/7cHPodPLTziCNgP/q2CEshaEHy1km1o7RG+8e2w5aOXOXJd
         YRoA==
X-Gm-Message-State: ACgBeo1k9NNFfnwBFYwqyXnzYqdVrBoWqFosuVRM8PNjSDRQqJXdXZeQ
        hpy/WLLJdTgneyllXagr45pUBA==
X-Google-Smtp-Source: AA6agR5lbyjU78E5dz6FNsDcA7i+JaI7LaU/jSttjLi0tz6iRhI5F4cxhULTI7Be88sUI04Zo6w84Q==
X-Received: by 2002:a05:6402:50cb:b0:440:87d4:3ad2 with SMTP id h11-20020a05640250cb00b0044087d43ad2mr3317546edb.219.1660306157306;
        Fri, 12 Aug 2022 05:09:17 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id o11-20020a170906768b00b00730af3346d6sm715698ejm.212.2022.08.12.05.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 05:09:16 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Fri, 12 Aug 2022 14:09:15 +0200
Message-Id: <CM41EUB650GB.YO1J30NYO5NU@otso>
Cc:     <~postmarketos/upstreaming@lists.sr.ht>,
        <phone-devel@vger.kernel.org>, "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <bjorn.andersson@linaro.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sm6350: Add interconnect
 support
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Luca Weiss" <luca.weiss@fairphone.com>,
        <linux-arm-msm@vger.kernel.org>
X-Mailer: aerc 0.11.0
References: <20220525144404.200390-1-luca.weiss@fairphone.com>
 <20220525144404.200390-6-luca.weiss@fairphone.com>
In-Reply-To: <20220525144404.200390-6-luca.weiss@fairphone.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On Wed May 25, 2022 at 4:44 PM CEST, Luca Weiss wrote:
> Add all the different NoC providers that are found in SM6350 and
> populate different nodes that use the interconnect properties.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

The other patches (1-4) from this series have been merged into torvalds'
repo already, so just this one is missing from 5.20/6.0.

Could you please pick it up for the next merge window if everything's
alright with it?

Regards
Luca
