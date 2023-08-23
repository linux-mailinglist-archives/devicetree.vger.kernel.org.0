Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF0627857C8
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 14:18:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234818AbjHWMSG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 08:18:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234660AbjHWMSG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 08:18:06 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9327ACD6
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 05:18:04 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-d7225259f52so5495527276.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 05:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692793084; x=1693397884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZmRPuzk6B0m4SH/I5wCSK6ogm/UxcY+6CQ9zQ4c2sm8=;
        b=ksJ3A9di8wXLlpe5WYXmUb4ek1a5mvNllNfTH7aChvsEA5uaHQa16758juMKVuZONv
         +fhbFLOUHsuZGrUcWp4q7JCHhf+furdtiLZqZwPUlFQs2ED1q3a59rEYoahZCiMzGd+7
         ysZsSlmWo7UBZgyiWGv19gxR2xWlFIByAoXgAc+Lv/17a0fOE34opmOTVsiUAH+F60zz
         O4gx460hJkDJFI+xg0oqcLsBGXhM8DKkFNOLh3x8oHk6XTNuYmckaXTu6SeWGaearWz6
         9nUrlpYee2ZCoQWY/VFbwuaMlNINB3tF8yP2v+nDjUJPB8dy3fLUnsOz81sofI5wIGS4
         NpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692793084; x=1693397884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmRPuzk6B0m4SH/I5wCSK6ogm/UxcY+6CQ9zQ4c2sm8=;
        b=OrvLJZydP0sdivjWWwlJ2xcBlxA8BCSfJz1WzC4cD4a9wGUyTBkIVoaSjtaPVTnjeX
         0cU3H7VmufbCRb7534K4O2SRgIEp9ncIGmYm+pn5vfGA/SiYygcZp34EvWJz2tbfsn1a
         SDVmCgQtSbV3pFN92znxuf0WAhM/6fbjKULtoQ6XXUezG5NdcViMm6plWsRjsHsvkhP8
         KqOjnWYozCQS8Lt1s53Dvs24ySxlyDRhD0JesYP/qgKBUZ3AlcsTF2RZBYDWiiAeNuAw
         aZ4txr6heqHPKxMMs5PVEirOPjqP0GUABymIcGgGR+JjMcKrWHncm/Jxsl4iOElYi3vm
         WMkQ==
X-Gm-Message-State: AOJu0Yx7CQPLn3C0A9Otd6+NNlKkFFP/BjLZ2ncjtFfEQrbkw3KB0cVp
        T6Dl+1Qf+v9OUKacX6l/kfOlZFBWIte7ZSZMZEI81A==
X-Google-Smtp-Source: AGHT+IHn7O6m5ydCqj9juu1GGgOSyboUyCD5MCBQB+5PeJecJJi1TDgtjcDC2J8kLS3EsmrPUDCad9OJfWfNMDYrbgw=
X-Received: by 2002:a25:5f45:0:b0:d48:a723:6d2d with SMTP id
 h5-20020a255f45000000b00d48a7236d2dmr10809241ybm.51.1692793083799; Wed, 23
 Aug 2023 05:18:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230823033427.23072-1-zhuyinbo@loongson.cn> <20230823033427.23072-2-zhuyinbo@loongson.cn>
In-Reply-To: <20230823033427.23072-2-zhuyinbo@loongson.cn>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 23 Aug 2023 14:17:51 +0200
Message-ID: <CACRpkdZXrH4R6TeYfyT2i4zvuzP3+nwP9=RhyFJujFrhc7GG9A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] gpio: dt-bindings: add more loongson gpio chip support
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 23, 2023 at 5:34=E2=80=AFAM Yinbo Zhu <zhuyinbo@loongson.cn> wr=
ote:

> This patch was to add loongson 2k0500, 2k2000 and 3a5000 gpio chip
> dt-bindings support in yaml file.
>
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>

Thanks Yinbo,
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
