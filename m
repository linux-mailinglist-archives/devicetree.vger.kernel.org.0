Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F38586D24
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 16:43:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233282AbiHAOnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 10:43:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233060AbiHAOnC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 10:43:02 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56A4B3F30C
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 07:42:14 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id p10so10204340wru.8
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 07:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=4mNGPkiJmohKmnOITHrGFa8PgJkIob3O+bOGBuccTN0=;
        b=JaRggMvlHH/j4V6dHNpxE2SGL71/p/MNU0fZhD+h5pf9VtLt+vuL6gltrwEZU9J9i8
         spwkxa9c73rQDdTtwEh/rf7IytRiLNrcWDdiGQQSryc4qlTZp6Jw0MGRBiH4JeI8LtUP
         eGzJU/74n7nPJDVzvdIdxW2PiQwYOvqerhEMdStBGhPBrxEOSzqHse23A5lT8P9E95n4
         +hbFgil/Y6y0SIlc078KBnRLHROIuYDoy4yBshgxfjnSud1/so+tdNjqDX2TVz54y6i2
         d86BpqU1BgPcf72wQtlrcXcFkney5LdIihUIvj5dAO/5QRl2+A/NIC8wscpDD9Fw3asc
         3bMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=4mNGPkiJmohKmnOITHrGFa8PgJkIob3O+bOGBuccTN0=;
        b=NDHzEfEsbg1l3umw0vCJ+UibeG/WxJIj1g8I4jiqqkMscHAat0iLR50jTvipWyCXuT
         cOoPr+4OwtgcdlxVpLodWelIOKMqRP1wZ9UUEicbtK32ZOVRCKuJ2O305kLxJ27jtGvz
         zGqBaoZX7AEvY/I1wsdc7f00HHpRvvLXwg0CjOz5kUc6/5sRHh2yoovnfZcL/kaC8yUX
         tnpbaj2qZGXzmQ7PSYndv1Kw+lV6ouX3IpndkT0UAEr3mGppkGl18DVjoJjQr05ufcI5
         EudCdyxQQsg5CP250GtGwGGwFeK4cKc9Ge9xyJWfK/3LQbiuX7n+IbYuc7S6w3pMFEX7
         Jcvw==
X-Gm-Message-State: ACgBeo0jJngoiUODONO0xQ1VtVoXhpRAaEwf5jV5cPKOxSrpplp85Yk1
        yNuuR9YTprNyJ6mMkUfm/rXOjw==
X-Google-Smtp-Source: AA6agR4/IyYurhGhEZw2tgwWkaDRof0/42GQxvcMgrV1ZTVNlW1ZTXb5875EISg5z4dRhX8+wNWUXQ==
X-Received: by 2002:a5d:4889:0:b0:21d:eab7:f798 with SMTP id g9-20020a5d4889000000b0021deab7f798mr10403906wrq.96.1659364932883;
        Mon, 01 Aug 2022 07:42:12 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id l3-20020adff483000000b00220592005edsm7068170wro.85.2022.08.01.07.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 07:42:12 -0700 (PDT)
Date:   Mon, 1 Aug 2022 15:42:09 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     ChiYuan Huang <u0084500@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        cy_huang <cy_huang@richtek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        linux-input@vger.kernel.org, Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v3 0/3] Add Richtek RT5120 PMIC support
Message-ID: <YufmQXSQ093YkuiE@google.com>
References: <1657780937-20891-1-git-send-email-u0084500@gmail.com>
 <CADiBU39x98iyO_OB2sYdAUGUOW9pV4dt+mEdfquhuJVm1HDRHA@mail.gmail.com>
 <ada44af6-2a5e-0b1c-8c46-3dbaae9b1a94@linaro.org>
 <CADiBU3-juJZoeGccjPGCsJJ=B7Sez=MhtiiFADCuCCGc7fLrxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADiBU3-juJZoeGccjPGCsJJ=B7Sez=MhtiiFADCuCCGc7fLrxQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Jul 2022, ChiYuan Huang wrote:

> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> 於 2022年7月26日 週二 下午5:59寫道：
> >
> > On 26/07/2022 05:45, ChiYuan Huang wrote:
> > > cy_huang <u0084500@gmail.com> 於 2022年7月14日 週四 下午2:42寫道：
> > >>
> > >> From: ChiYuan Huang <cy_huang@richtek.com>
> > >>
> > >> This patch series is to add Richtek RT5120 PMIC support.
> > >> In RT5120, it integrates four channels of buck converter, one channel of LDO,
> > >> and one external enable channel to control the external power source.
> > > ping ......
> >
> > Whom are you pinging? Everyone in To list?
> >
> Sorry, forget to specify the part.
> I'm pining the 'mfd' patch and 'power key' patch.

Don't ping any{thing,one}!  If you think your patch has fallen through
the gaps (it hasn't), then submit a [RESEND].

Your patch was submitted at the very end of the development cycle,
which means that it is low priority and is unlikely to receive
attention until after -rc1 is out.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
