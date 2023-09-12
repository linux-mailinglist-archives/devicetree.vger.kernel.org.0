Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5B879C7AC
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 09:06:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbjILHGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 03:06:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231466AbjILHGl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 03:06:41 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B2DC10EF
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:06:35 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d77a4e30e97so4710016276.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694502394; x=1695107194; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzLy3CeHuyStEoML6KUoaK0mtulfqNSCOCfn1i2FJJI=;
        b=yRHqtYzBLQjgJuWE9K4sQopizatvQBSN4fNM08BcmBRCXYMVDF6BY4gKKgEjbH+YRu
         wsSLsdJigci7K5o5uqSflL1dXiBqXfajOy70GYnDh4LhVkSEbwoTMC31WkGUm8EzNs4Z
         hazGAxXQ6UCiYR8tesQJ0Mo6ECDWqYSe7KBQKh13ZAs8ZgFP3XOjPqSMA4jxTg5BfF+S
         DTfmKL76qHXR6U4t2zuiWyTzZpwohgh/21wGFnmGpCxrtOm3tSd/XaM4U+cSrqs8fb5F
         vvhs8y7XcxRHDdlgemgUCNeZgKNW8CTBcm/qSgHTtmFNow6XGlipSHfmjmRe/tyNB2Hg
         BwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694502394; x=1695107194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzLy3CeHuyStEoML6KUoaK0mtulfqNSCOCfn1i2FJJI=;
        b=fWPEeGblrzj6O6CcWbf1cNLpti3NP7t5YvQrnSKoBo2lsL2I/fLZo6wp0DXISqMt8S
         lifKsi2quN+RuDzkie4c9dWo+43YdKN36Bw3vfMgArkM4SLdt1rdplCqs2tHjHHFXLBh
         dZ7qBycAe9JHIfT18HKUeTKDI/D53lZHBqiTh6VOo6GOobIYpQRUGE4XjRCTBIPht2ma
         QQTrg5EbBvy5oR/F7MuKglf4z0J4Ib402RFm0eEbBsWSPPcZQuD+AaZuV/9FddfZsyl9
         Dd8Uevomm+9v+4KWXbVvqPOpi/SMuvAi+63lltJgN6BqhkxGsPBLC3LXgabsUUf1EjxW
         Mh4w==
X-Gm-Message-State: AOJu0YxE1dn0NhKrRuD+DrEp0LkuEZGHF04W7PGBrWxFzJGL4VlD7Hsb
        vOm8peatKlXqckb9e7hlz3UBwh5ww52VGhwTrYXFZA==
X-Google-Smtp-Source: AGHT+IFqwoCb2FlczC/jSfpRBfdCYvJDufpy2nX78o6xucJlsetiHtnY5ED7GaRC6DZThDKLINyW0KpFkVXeS7DJZzs=
X-Received: by 2002:a5b:709:0:b0:d80:68d1:b826 with SMTP id
 g9-20020a5b0709000000b00d8068d1b826mr7109521ybq.6.1694502394406; Tue, 12 Sep
 2023 00:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230829123524.17291-1-zhuyinbo@loongson.cn> <20230829123524.17291-3-zhuyinbo@loongson.cn>
In-Reply-To: <20230829123524.17291-3-zhuyinbo@loongson.cn>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Sep 2023 09:06:23 +0200
Message-ID: <CACRpkdYrePd+m_ZoppG_XKVQEcgzom31pXhKHisCsFr=9O2NPg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] gpio: loongson: add more gpio chip support
To:     Yinbo Zhu <zhuyinbo@loongson.cn>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        loongson-kernel@lists.loongnix.cn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 29, 2023 at 2:35=E2=80=AFPM Yinbo Zhu <zhuyinbo@loongson.cn> wr=
ote:

> This patch was to add loongson 2k0500, 2k2000 and 3a5000 gpio chip
> driver support.
>
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
