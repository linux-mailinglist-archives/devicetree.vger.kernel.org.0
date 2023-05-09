Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 091B56FC417
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 12:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjEIKjp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 06:39:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234360AbjEIKjo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 06:39:44 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BF77173E
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 03:39:43 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50bdd7b229cso10673508a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 03:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google; t=1683628782; x=1686220782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wRU5PEt+oDmkOJvCwl4AyqNhX/jjlVJcC8ztVdTKQLE=;
        b=X+rZIzKPdMbSlBMThdYfAojZTGhcsUbH9SWbS0mPquMKSXjX3kEtZ+AqsebDyh9xaW
         lE0GJl13J0k49ij3784AOfGHEhBxqujNOV0kvuvfZJjIkaUQOgJutt/4m1iCNvg8jFj3
         8Mu0H8hPnQmC4hiKwlnrKHAmAkvwgZfdGbd9xwQ7bsR8F/JzpI3Tyk7jUt6MfeYp4kbU
         IidhgNrwy93u5zMw8bN3Dl9KLC3fObB9FPjP8zLXTEPoODpGUeD0D7WYqZpkU5fqQIRQ
         KNVpTGiSxyhwmPa5wDelpGQYZ/XivJoLXWJmN/4s+n31zNAdoMCiHmHWFqy9yQ5E9yhj
         SBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683628782; x=1686220782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wRU5PEt+oDmkOJvCwl4AyqNhX/jjlVJcC8ztVdTKQLE=;
        b=LNPWJsdyRpVL2NT+3OdzmfXxojxijQZFqT0zS+Vys6ta2jaGkxTeyUncjAmFyaIF4+
         lbGpAgU7vzhq8vAnh7LaHF8Vt5CpjTfT6YkiA5/u3QxkszXDFsBKMoEUkkJd2tRQyWqK
         Rn8DWrYe3H2gM4HsneKZz5N4wRk4ISP86BB2ZRIrOyw2y9danhLAlBNGm+Skw1H4GjEh
         D6M8mYB1lVWx3w9LZYQ2NFEXJxwnsheek/riUN9T1HD2NZEf1dIA8DRZ/oEs8r239Q3y
         tV4akPjzccLzYXhofukv0fiS62kbH7PDo4EAnduGt3v+XvOzTH6r9IdIiik+kU2TZq0J
         8dKA==
X-Gm-Message-State: AC+VfDw6hhH3kOAixMpNMJN7Rx8NEeVhXzyiFHbmRrMYpv4CFBP2JqaO
        wQKApqwCrZs0UZI+sQjpBQYnxdkx+K5qD8eJhHB03g==
X-Google-Smtp-Source: ACHHUZ5X1A7lGSzOUQocjKDUPJO/UZV85RYU+AZC28CWaOm5bVpor/ag+VkqoWqHXFa5J7LyWaMGHQcKCW2raQWEHoo=
X-Received: by 2002:a17:907:1c03:b0:94e:4489:f24d with SMTP id
 nc3-20020a1709071c0300b0094e4489f24dmr11943775ejc.61.1683628781939; Tue, 09
 May 2023 03:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230508113037.137627-1-pan@semihalf.com> <20230508113037.137627-5-pan@semihalf.com>
 <b8306c55-8551-4c86-f85d-3aebe1ad0ca1@linaro.org> <ZFoYai1Zawd4GGtU@finisterre.sirena.org.uk>
In-Reply-To: <ZFoYai1Zawd4GGtU@finisterre.sirena.org.uk>
From:   =?UTF-8?Q?Pawe=C5=82_Anikiel?= <pan@semihalf.com>
Date:   Tue, 9 May 2023 12:39:31 +0200
Message-ID: <CAF9_jYSXxmnm80Yq4gD6U5ygHvBTDagR_HM4LcHQT1vq=d7tVw@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] ASoC: dt-bindings: Add Google Chameleon v3 audio codec
To:     Mark Brown <broonie@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com, perex@perex.cz,
        tiwai@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        lars@metafoo.de, nuno.sa@analog.com, upstream@semihalf.com,
        amstan@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 9, 2023 at 11:54=E2=80=AFAM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Tue, May 09, 2023 at 08:18:15AM +0200, Krzysztof Kozlowski wrote:
> > On 08/05/2023 13:30, Pawe=C5=82 Anikiel wrote:
>
> > > +  "#sound-dai-cells":
> > > +    const: 0
>
> > No supplies? How do you get power?
>
> My understanding is that this is deployed to a FPGA so the power would
> be going into the FPGA.  In general a memory mapped I2S controller like
> this will be part of a larger SoC of some kind.

Yes, both the codec and i2s controller are implemented in the FPGA
part of the Arria 10 SoC.

Regards,
Pawe=C5=82
