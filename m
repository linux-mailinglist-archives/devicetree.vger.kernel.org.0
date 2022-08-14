Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 222785926CA
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 00:13:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiHNWNB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Aug 2022 18:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbiHNWNA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Aug 2022 18:13:00 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E404CE0B
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 15:12:58 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-328303afa6eso52504167b3.10
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 15:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc;
        bh=C4meC5tyS4GaJa9stbmNUYqeRMgJh3epo/TIJa2MIAc=;
        b=m0VwfuV0ssx/RAMi4n1/Zz+bfnUryFxdqOaJF9nQIKsnD2kubDktoJ170GUFID1Koi
         Ex/E9WmgsaeAaOqDvy2XrXMgYfA5OGq5MXjwSJpbk7IDVdyOfLiBhbsKil0JP82yM4i+
         bK0GT0WPkkBF/9Y1iCaUKMcm4VcC8xKCobrTdW9mksTA70fj1SRLYopLFL0TW/iCioo8
         +b9b+HqtW59uwH0KKvyxnGwRjDEbx+7HupavR6/bxZI8x1orKpZDFxvREybZNIQHp5Wx
         zyOsFOSarRKW3ChcyuwiII8PQPrwtSw8OdDydm7RggcnkZw6JEwyBUf5eegMFdRlfIlt
         3ojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=C4meC5tyS4GaJa9stbmNUYqeRMgJh3epo/TIJa2MIAc=;
        b=tUutkA+qDkAomvu9ZJzjXEMKzVg8cX3omNH/V5UZWufy/ioKqGjq47jBO3qmYOUByF
         4+Hwkpo9ExIuGNHa6HVeV7M+cEIcQIwXGF4XsxWPCF5ZVdPj12h58xtHlxVdISy6zROQ
         ymarwZmXBXJiZrY46OgLea9KZ7x09xeWNYndU91zcJGlnTjVDCCerG4rd7nnNEQWGcoY
         9XSqvb8eqzfB9oSCjmvzLkVur0eMXXCyQ1847UF+Zqx2qw15mTNDM2xyOHyK8lys7hYS
         6IiytgrAkm/viVoWZz9LRGFRED0L2rvR+5tilaIj1qqyQVxorxqHg4Of1uqRexBE1aNx
         GH4w==
X-Gm-Message-State: ACgBeo2LadLh421r0IvwAC4NO6ej0vRlw8ulW4cn157ueFaKL9Vtsa1i
        fFKK3RHXRIhiYIRyP0BCMZxb7gfmPJYJVR1+qsk=
X-Google-Smtp-Source: AA6agR5wIUJauEQ/SopxtGaPhnoKrlIwlyfjynyzbD96JflbhNj+I+arsZgh2WrZJYiF0fLeT+vz6Zu370tkHeRq4SA=
X-Received: by 2002:a81:df14:0:b0:324:e852:5895 with SMTP id
 c20-20020a81df14000000b00324e8525895mr11200009ywn.200.1660515178150; Sun, 14
 Aug 2022 15:12:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:110e:b0:18d:df2f:56c5 with HTTP; Sun, 14 Aug 2022
 15:12:57 -0700 (PDT)
Reply-To: virr2376@yahoo.co.jp
From:   Jacob Davison <lindaonaa1@gmail.com>
Date:   Mon, 15 Aug 2022 00:12:57 +0200
Message-ID: <CAPvvsoOVLUrY7rKugrQqbQgDMTzz6Ur+vzsjXOarLXXe179ewQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IEdyw7zDn2U=?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        T_TVD_FUZZY_SECTOR,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1133 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [lindaonaa1[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [lindaonaa1[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [virr2376[at]yahoo.co.jp]
        *  0.0 T_TVD_FUZZY_SECTOR BODY: No description available.
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.1 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Gr=C3=BC=C3=9Fe,
Gr=C3=BC=C3=9Fe und wie geht es Ihnen heute? Mein Name ist Herr Jacob Davis=
on.
Ich vertrete einen Privatinvestor, der je nach Ihrer
Investitionskapazit=C3=A4t in ein praktikables Gesch=C3=A4ft/Projekt im Aus=
land
investieren m=C3=B6chte. Wir suchen derzeit nach M=C3=B6glichkeiten, unser
Gesch=C3=A4ftsinteresse im Ausland in den folgenden Sektoren auszuweiten:
=C3=96l/Gas, Immobilien, Bauwesen, Aktien, Bergbau, Transport,
Gesundheitssektor, Tabak oder Kommunikationsdienste. Auch in der
Landwirtschaft oder jedem anderen lebensf=C3=A4higen Sektor.

Wenn Sie der Meinung sind, dass Sie einen soliden Hintergrund und die
Idee haben, in einem der genannten Gesch=C3=A4ftsbereiche oder einem
anderen Unternehmen in Ihrem Land gute Gewinne zu erzielen, schreiben
Sie mir bitte f=C3=BCr eine m=C3=B6gliche gesch=C3=A4ftliche Zusammenarbeit=
.

Ich erwarte Ihre Antwort.
Mit freundlichen Gr=C3=BC=C3=9Fen,
Herr Jacob Davison
Unternehmensberater.
