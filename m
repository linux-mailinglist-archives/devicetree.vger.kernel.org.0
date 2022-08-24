Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0007259F9F6
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 14:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236826AbiHXMaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 08:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235766AbiHXMaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 08:30:08 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBCBF21E0F
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:30:05 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id bj12so16175760ejb.13
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=A4ebziFGIGKWedk4/E9Y9YHWqlnnQT7eJEB+itOg6jY=;
        b=JV4NxLJrrSRlvhdBCQR0BmBXWvBPD2WWY57yL9lQtZiNURXqJpW+V5TxKtgglU8sfr
         8h0saIQScUeus/RY4HdeNiEsA6CqBZsV5Z9pDrACaY0tZcAxGuVb7q083EomrLNDC40e
         odwPYLn28lzNGxZNRAjiuAPURDYf9lpPS9WKBAGU5Ly214gBijHGAUB5XOWefa2WXJTh
         I4V+h/62ngM8TNNQUcvs4g16JwsYe9ZtdRvwBVyGQqgULED08G3uMVf1nyDa14i+tesK
         7IHifg30XF+EjhDYcPgPLX+unpTE3yx0aumKCsZoelIzFF3+cnpPGECjoTxRKYH5Khuq
         e3Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=A4ebziFGIGKWedk4/E9Y9YHWqlnnQT7eJEB+itOg6jY=;
        b=3rsstVacVwmzdW3B7g3v1iajX6z+0hxvATF6uG/iuBV8aq711Y5Qgj5VK1Za6YCghE
         HcYrDYdm5j5pB8JX6xZJ9HiqqsRtUn7/2lFX2zUd/WKngDzqFSqDEe+21TW5gzyNh3WP
         +VJYaoiVz+5GKhwI6kiIziIZM+EoAU5yXybvZLkDxDPgt2NW0DC+ogW5+esqUMZvspp8
         ZvQKua7QdGNqPtj6+K9ptbCDJ5/TK8Fjb8Im/VUIgAhbsC3imkCw+DhJ1qn9I/qnaJXr
         kfEAdD1wrTXqmkPoYbti9qgqMpv/r1m6o1SXKiA21CRKTPJ3E7y1jfK3S3/jhO4feACM
         +Kbw==
X-Gm-Message-State: ACgBeo23dWmXM0xbkVDB20AIdBDu+d3Z58yAWq4uzvtkKSbgaBulixs3
        dYoJpk7839JZNIO+mU+sHRkjUAuu3Kz9SemOkRBKyQ==
X-Google-Smtp-Source: AA6agR4y8IkROVTTFYuvJGLyuFpJlX7rUg/lBd9WKIqzPf1600ZmKhkQ1tKmij2PmJr9CSFfVIP2c0YYAvxPH8SXo4Y=
X-Received: by 2002:a17:907:6293:b0:73d:b27b:e594 with SMTP id
 nd19-20020a170907629300b0073db27be594mr2746905ejc.526.1661344204322; Wed, 24
 Aug 2022 05:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220823145649.3118479-4-robh@kernel.org>
In-Reply-To: <20220823145649.3118479-4-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 24 Aug 2022 14:29:52 +0200
Message-ID: <CACRpkdb28sHn3XOEJD_rqYRWU1GxWGX1udMpk8Cdu3Qn-rxS0g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Add missing (unevaluated|additional)Properties
 on child nodes
To:     Rob Herring <robh@kernel.org>
Cc:     Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Robert Jones <rjones@gateworks.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Ripard <mripard@kernel.org>,
        - <patches@opensource.cirrus.com>,
        Steve Twiss <stwiss.opensource@diasemi.com>,
        Chris Zhong <zyw@rock-chips.com>,
        Zhang Qing <zhangqing@rock-chips.com>,
        Alistair Francis <alistair@alistair23.me>,
        Amelie Delaunay <amelie.delaunay@foss.st.com>,
        Renner Berthing <kernel@esmil.dk>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 23, 2022 at 4:57 PM Rob Herring <robh@kernel.org> wrote:

> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
