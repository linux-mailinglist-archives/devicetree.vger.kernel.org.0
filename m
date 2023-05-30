Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 475637167D3
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 17:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232821AbjE3PvF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 11:51:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232683AbjE3PuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 11:50:21 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E8AAC7
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 08:50:12 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f6a6b9c079so32435225e9.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685461811; x=1688053811;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WNArju2Q8+Sr5dwcNQgGMkuM+vdAY/tBFjavnfU7aAs=;
        b=lJea23P4XUP4+bKgjBgMws1rQy0dK3XpD8vxOAjcF8sG6o7/WrVlC6GB7GJsKYpkop
         IWBX2x4WYEReN4JelqCvXVIaXFnF0/TH+YTlieXdzYzrjH8KgMbm+YdumnMqCjothw0f
         78ewTtxm5EUH9c/09sfQvkmOd+MvVXPSkMD3K05ARkZFk4hzC1Tt50VlU4wHjkUXcQbH
         er9heUBdafWG/VTdkHN7sYlRvzA42ZPvqknpGD1mqlPbgzUHrGVBPgnpo9Qe9ieQ9PKe
         i32V7fp8fOS7BNeH/0Xcj9Q3Deo7bsJnBZ9wuEd3rO1qsa4urxauO1Pi/fYB1ce3GNbn
         hHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685461811; x=1688053811;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WNArju2Q8+Sr5dwcNQgGMkuM+vdAY/tBFjavnfU7aAs=;
        b=fyvlHqyCIfkoEFVlXM49UePhZJOsm7UIP3FVcMc4ZryAr/o6f37B9bIucj1njHcLgA
         fu19hMayylXXySrMVlwg65QUY9A+hXGUpaLs7i3MHUOuc71j/zI+NY849wmLOMu3NMEV
         Vz2WV0rh/Ql+YuPLGr7ag5sFxQf1HebvmWojxmuWdqDtlQxyoBARS9w+dDxZW9bU4VWy
         P66axjXnaHqRh+R9waKYRuwhtFRV3BmaxGhD8MTmQgM0yARZbNq+wrlgDcKc+xvpxQxT
         P4DSqGRNIyZhN0/SIFCLaEshMM2Y5XPbLQ6mvTQpIc7GA8K1YyoHvQFAzHbMuyYP2v+C
         pERg==
X-Gm-Message-State: AC+VfDzvkWdC2wO6mCTbZqcdZXIid9C+hyNPOTZMwDu3XBAHIbkJt33w
        CpGAsvT8QPDKJuCY48zoWhWMItMt1vI9iDFunLU=
X-Google-Smtp-Source: ACHHUZ4udC9d9onu7PkIxwZYLz2yFUzKJnwPr7B95hZ8s6MYHl6GOwZwO63BTwAVwo9M9cBD3M+kihnQx5EvWQDJbFE=
X-Received: by 2002:a7b:c44d:0:b0:3f6:464:4b32 with SMTP id
 l13-20020a7bc44d000000b003f604644b32mr1946826wmi.13.1685461810629; Tue, 30
 May 2023 08:50:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6021:21f8:b0:284:df9b:3976 with HTTP; Tue, 30 May 2023
 08:50:09 -0700 (PDT)
Reply-To: jkirinec101@gmail.com
From:   marine medic <anpeterson65@gmail.com>
Date:   Tue, 30 May 2023 16:50:09 +0100
Message-ID: <CAACichmkKdjpkkhCETJsmn014HbiNMMs8XQYgv+AxDm7MB=fHA@mail.gmail.com>
Subject: Hallo
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:32b listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4988]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [jkirinec101[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [anpeterson65[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [anpeterson65[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.0 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hallo, es tut mir so leid, Ihre Privatsph=C3=A4re zu verletzen. Es hei=C3=
=9Ft:
=E2=80=9EEin Bild sagt mehr als tausend Worte, aber als ich Ihres sah, war =
es
mehr, als Worte erkl=C3=A4ren k=C3=B6nnten.=E2=80=9C Das charmante Profil i=
st
unwiderstehlich, obwohl es eine kleine pers=C3=B6nliche Nachricht ist, aber
Ihr Aussehen verr=C3=A4t viel =C3=BCber eine nette Person ... Also musste i=
ch
der charmanten Person mit diesem tollen Profil eine Nachricht
hinterlassen. Ich glaube, es ist die Neugier, die mich in einer
solchen Zeit zu Ihnen f=C3=BChrt. Ich muss noch einmal sagen, dass es mir
leid tut, wenn das Schreiben an Sie Ihrer moralischen Ethik
widerspricht. Ich m=C3=B6chte dich einfach besser kennenlernen und ein
Freund sein oder mehr. Ich hoffe, irgendwann von Ihnen zu h=C3=B6ren.
