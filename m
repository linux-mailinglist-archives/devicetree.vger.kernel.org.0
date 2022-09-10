Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7AA15B45DF
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 12:11:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbiIJKLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 06:11:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbiIJKLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 06:11:51 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 700CA4BD34
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 03:11:49 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id u132so3937781pfc.6
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 03:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date;
        bh=ZUmNA8xjXnyvVqbPXtxAOFIH6y4iNXyI1HdrmpoCWsw=;
        b=SpfQJwObTfXi9D0+zz43uVNo40kNwrgZm2CBDDxyJLGh3gh9P4xxIvvYqnIizYrL0Z
         YsEN7/XFVUj9u8FWneXrVzlTDNG+IRBbiPPtTAU/mx4ykzotFb9fThLKe0j+xu4f1pld
         dnN9YSY/w2y9C6DFGa6HNPu+V5fGzSzW1u/JzLfzRzo6dG0pOhKv/oU1IjVukKq6+rHa
         VO5wo0brpbHCnWEGjGM1mk2XPkUHIctJlkq7m743ijsDOXPalCPVWFzaquWKOmO73kHt
         10df1bF89IhYvULdWIBBZRDdp2qzSvOPQ7B7DckzRuIMsM3w31JsNkSf3rzf4m4NA5sk
         GsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ZUmNA8xjXnyvVqbPXtxAOFIH6y4iNXyI1HdrmpoCWsw=;
        b=t/OmmYIjGZCOd3HB80uqVx2nD5ftchv4F38beliGQL/ANEOgcaonQs1zLljYf8Ldsn
         nnV5c29XTXznIw3JJX23/HCe9RXVz4ok+cLQeHBwJieyQ96p2C+nIiu/IoqvvtZz45Id
         7IAgI2fUgOcyCNtGVtgQ70dpyZUYyA2rRo1+Ie4aff1h5f8Du3nIFfo4HTGNEF4Qj8QP
         TduQoF4vkL88+9gMU8oY9DXtywrogByTYNJ7MAaMAOwYzdmWLj0QWi78Davag18DQUw9
         WvZseIsTuaCr0V+1j81ovCeMLrM+4ITjesbzL88qOybZjjjniW9sQ3d1LzudLArpU68y
         pBUA==
X-Gm-Message-State: ACgBeo1oUi8KBQs7uP5wOwe2wve1CYXtSFWd0yrlYMHkmmhtvoyke0Ph
        /jBcGXCcdoPix+OAgxGBRoxk0I+3fVQv+cGkakA=
X-Google-Smtp-Source: AA6agR4UJBFNAQpmi7RYj4wGHpzSx/494EQdg9afAKcJqeR6O4FkpDKqChf1Lq2I1G3zoY+OvuPTNSFkVv0DOuqFbmY=
X-Received: by 2002:a63:77c4:0:b0:435:4224:98b6 with SMTP id
 s187-20020a6377c4000000b00435422498b6mr11789328pgc.94.1662804708889; Sat, 10
 Sep 2022 03:11:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:73c9:b0:6f:3e39:d3f7 with HTTP; Sat, 10 Sep 2022
 03:11:48 -0700 (PDT)
Reply-To: joejessthwaitefoundation4449@gmail.com
From:   "Joe & Jess Thwaite Foundation" <taiwoamure32@gmail.com>
Date:   Sat, 10 Sep 2022 03:11:48 -0700
Message-ID: <CAEi87s+9v0QV6uX0dp6jtAtZcG4WfirKtciCiW1KHLeu5fzaEQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:442 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5006]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [joejessthwaitefoundation4449[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [taiwoamure32[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [taiwoamure32[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  0.1 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Spende von 1.700.000,00 Euro an Sie.
Spender: Joe & Jess Thwaite
Bitte kontaktieren Sie: (joejessthwaitefoundation4449@gmail.com) f=C3=BCr
weitere Details.
