Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 513446957CA
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 05:13:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbjBNENs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 23:13:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjBNENq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 23:13:46 -0500
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com [IPv6:2607:f8b0:4864:20::b44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D897A10E8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 20:13:45 -0800 (PST)
Received: by mail-yb1-xb44.google.com with SMTP id s203so11750455ybc.11
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 20:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O3iIghNYce+dgV8YXeRndeSBcZ6lqwpwyBMDGmIlOl8=;
        b=W6ZbCDG8hPZqFWjf+iH7Rjdrnmjd0DeZTqoLmkD2F0oTW5FkrnS4N+9bnda1YTn3oK
         ZO1/SmvhCpvHflDBjOC40KmyfAxV6ysbqAP9wHFpVztM034ixdw/0hIF6X8BOjfJ23Jb
         OIZJaUjOvKRkn+rmoFyRm0TF54IIQG6x1pPNrflBqO29JwUeuQPuFBkeK6+ElYl55qQl
         h3yHi/jFx5TzkmjYmZQ1kQGZBJlWqkkbzeSjAnHOIzctRaEzyqc5j+pEXCcX1MAPVagV
         ObyHZiuwQ8Opaslw0+eSsOCbUwSpvKasFA+AOkuj2qz/6/DqqZ0vKekMH+Ijxy0rIlOK
         B2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3iIghNYce+dgV8YXeRndeSBcZ6lqwpwyBMDGmIlOl8=;
        b=MPnNdAjLoLLQqbLZJt8jI6GZ+SmlhI5WZ0MKTemBnC+CII3jPrka65M0anL31a8DAc
         NHyvUSVUx3MIWE2HjPh7fZCsHZJoMVwJIq4DEcnZSPx2HXoALtb7fj3cyi6qMqqsswjx
         7KRUpgR8uq2h1a2RL96tByylm2BwfZuq1MbjlTZH9/UnJrpolV3Z/mO5VDYEYdNOp7vc
         FLjD5OEGThTT+vEHydRjof4Jc5r2MB3q51aTxPf6DX6esQ3kAffIA9/hCHooB4RikXar
         csVbCf9qUA2V5I17B4BPK++JmVo80pzgNPLkJ2jKhmyCfiAwVEqufDV/nFZIjFKWOdyt
         MFGw==
X-Gm-Message-State: AO0yUKU0cFzkr3+PVukfeM9nJUY9i1WfcVxSxuoZrAnMX9G8Kwz6O8yl
        QoSip7xF1PUZYKh6xaP2cClFc5rwy6a6m9xdPvI=
X-Google-Smtp-Source: AK7set+5KWh5avsUdOycVqzLrtEFYGDI0qmQ8qhtbdHsWwS/GKm7WKrm2YIDXXKOho5PyXr0RahcgTQSyKudH//Ni3s=
X-Received: by 2002:a5b:ac1:0:b0:7fd:595e:7bdf with SMTP id
 a1-20020a5b0ac1000000b007fd595e7bdfmr156495ybr.155.1676348024783; Mon, 13 Feb
 2023 20:13:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:a602:b0:313:cb2a:43ac with HTTP; Mon, 13 Feb 2023
 20:13:44 -0800 (PST)
Reply-To: cfc.ubagroup013@gmail.com
From:   Kristalina Georgieva <brussalex2@gmail.com>
Date:   Mon, 13 Feb 2023 20:13:44 -0800
Message-ID: <CA+-GK2hv9BXsoGPLQUsh3nOC3qHG-BUf6sV3+VLLZbUn0Lu1vQ@mail.gmail.com>
Subject: =?UTF-8?Q?BOAS_NOT=C3=8DCIAS?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b44 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [brussalex2[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [brussalex2[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [cfc.ubagroup013[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  3.0 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Prezado Benefici=C3=A1rio,
Enviei esta carta h=C3=A1 um m=C3=AAs, mas n=C3=A3o tive not=C3=ADcias suas=
, n=C3=A3o
Tenho certeza que voc=C3=AA recebeu, e =C3=A9 por isso que enviei para voc=
=C3=AA novamente,
Em primeiro lugar, sou a Sra. Kristalina Georgieva, Diretora Administrativa=
 e
Presidente do Fundo Monet=C3=A1rio Internacional.

Na verdade, revisamos todos os obst=C3=A1culos e quest=C3=B5es que envolvem
sua transa=C3=A7=C3=A3o incompleta e sua incapacidade de atender =C3=A0s co=
bran=C3=A7as
taxas de transfer=C3=AAncia cobradas, contra voc=C3=AA, pelas op=C3=A7=C3=
=B5es de
transfer=C3=AAncias anteriores, visite nosso site para confirma=C3=A7=C3=A3=
o 38
=C2=B0 53=E2=80=B256 =E2=80=B3 N 77 =C2=B0 2 =E2=80=B2 39 =E2=80=B3 W

Somos o Conselho de Administra=C3=A7=C3=A3o, o Banco Mundial e o Fundo Mone=
t=C3=A1rio
Internacional (FMI) de Washington, DC, juntamente com o Departamento de
Tesouro dos Estados Unidos e algumas outras ag=C3=AAncias de investiga=C3=
=A7=C3=A3o
relevante aqui nos Estados Unidos da Am=C3=A9rica. ordenou
nossa Unidade de Remessa de Pagamentos no Exterior, United Bank of
Africa Lome Togo, para lhe emitir um cart=C3=A3o VISA, onde $
1,5 milh=C3=A3o do seu fundo, para um maior saque do seu fundo.

Durante o curso de nossa investiga=C3=A7=C3=A3o, descobrimos com
consterna=C3=A7=C3=A3o que seu pagamento tenha sido atrasado por funcion=C3=
=A1rios corruptos
do Banco que est=C3=A3o tentando desviar seus fundos para suas contas
privado.

E hoje informamos que seu fundo foi creditado em um cart=C3=A3o
VISA pelo UBA Bank e tamb=C3=A9m est=C3=A1 pronto para ser entregue. Agora
entre em contato com o diretor do UBA Bank, seu nome =C3=A9 Sr. Tony
Elumelu, E-mail: (cfc.ubagroup013@gmail.com)
para lhe dizer como receber o seu cart=C3=A3o VISA Multibanco.

Sinceramente,

Sra. Kristalina Georgieva
