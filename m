Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A23BB5701A3
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 14:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbiGKMHD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 08:07:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiGKMHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 08:07:03 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D61941D3B
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:07:02 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id i14so8366407yba.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9/TaxiyiKvNrui4l1nPGDIlfQKIWpJeKr/oIv6jY5g4=;
        b=m6femu7CnL6m4go3tibwbbC1inwqYvHVSSn22DT/h7RKq6qF9EKmRH3DETlWmCPGn8
         cn8pTHEsfxoOux1OYkYOedJGN8RbiteXRNrSBBG+M0no/fvhcRpAOX58wy+DsFdp0PJ3
         JydDc7JRF9HfWUbDLiW8hzd1rLx62+9EoAc/1HID8ALGmq4I0k80JqmR4SJN6A//riV2
         cXpA5Wh8/gmdBvUyKxJREn3/+JXdRMo04HxZk5bwgviKC9Idq4k9jErskkxL1GFH07/G
         SMDrJN44yYGbg/h9Cwlfy7XLvyphnV4VcgNuN76TrfAkch23whM48DXkepHeDk+DH7Ik
         eVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9/TaxiyiKvNrui4l1nPGDIlfQKIWpJeKr/oIv6jY5g4=;
        b=F0d083b5gdcgEPz30xrvafLo8gB210SDrxfPF2wEMySD/ovL1KtILODv10ex48U9tX
         eSIqe2rOkpQqAJRNKGRD9yLHhCv0LF1xNKxlTHyMNs/zWHtouS63ERLH3Azsw7HgrR5F
         66dbSewrTpenF3ivHcSONUL7KRXpvTrbeEUX0TgzkMQm1PCHDzAe/oC+7ConPBA1tbUB
         4syVcn8j3N9SaCMlvmgPy/19Mhv/lOdhnHxtlnE3zhd+gV0BR650690ngCOUd5vS9BcA
         YMZDDrl+uc7MSWEm4WC1hrgDD/ebRY99BTyrsfj/gFyT85kxcq4fAdqEi+KVGTaiLmf+
         JPlA==
X-Gm-Message-State: AJIora+HnkoA2Juu0aqecPu148XoWDg6BGH2N6T8iW9ZC4jMDjLTZLYi
        5uBjYTbrtNtnlhazIutO8EYD1wZOcTBLJNPgnNCt2Q==
X-Google-Smtp-Source: AGRyM1vFfv0mkpgaMja8fO3kFoTANu+4p4L9HHgPFinmmZ3C9VB377ZbCYhbLGX3ZsNYWMPb0RclxQjeUvT/PRO6GXI=
X-Received: by 2002:a25:fe04:0:b0:66e:1f8a:8e89 with SMTP id
 k4-20020a25fe04000000b0066e1f8a8e89mr17240379ybe.514.1657541221456; Mon, 11
 Jul 2022 05:07:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220706112828.27278-1-pali@kernel.org> <20220706162111.GA145516-robh@kernel.org>
 <20220706162335.2eewgf7l3xghdjtr@pali>
In-Reply-To: <20220706162335.2eewgf7l3xghdjtr@pali>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 11 Jul 2022 14:06:50 +0200
Message-ID: <CACRpkdYncdsVW8LysQ3--rOF-KUF6dkkPyX4tg4e10vn2K+8FQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: leds: register-bit-led: Add value property
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 6, 2022 at 6:23 PM Pali Roh=C3=A1r <pali@kernel.org> wrote:
> On Wednesday 06 July 2022 10:21:11 Rob Herring wrote:
> > On Wed, Jul 06, 2022 at 01:28:27PM +0200, Pali Roh=C3=A1r wrote:
> > > Allow to define inverted logic (0 - enable LED, 1 - disable LED) via =
value
> > > property. This property name is already used by other syscon drivers,=
 e.g.
> > > syscon-reboot.
> >
> > Yes, but those are potentially multi-bit values. This is a single bit
> > value, and the only value that's ever needed is 0. Why not just use
> > 'active-low' here?
>
> Just because to have uniform definitions across more syscon nodes.

But what happens if he mask and value don't line up?

mask =3D 0x10;
value =3D 0x08;

If you just state active-low; this kind of mistake is not possible to make.

So I'd rather go for active-low;

Yours,
Linus Walleij
