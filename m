Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1823691FCD
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 14:34:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231960AbjBJNeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 08:34:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231269AbjBJNes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 08:34:48 -0500
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com [IPv6:2607:f8b0:4864:20::e30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E02E1F92C
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 05:34:45 -0800 (PST)
Received: by mail-vs1-xe30.google.com with SMTP id l8so5617558vsm.11
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 05:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qrjAFZfZk/KQ8f/g23krk8sWW4bt0mszJhMLwMITpQI=;
        b=APo6RKL/+xZqRRocCvbBQNZRMTcQicDaS/e/Hb9PDXxCH6E+6PiifsjOudQjE2RRky
         IiF01j5GqMWEpHXg9VV+QW4yo4GwyJqF7opsMZNePq7cJJht8oHTkDkQCCcUjsZ28FBw
         C1dFBWLbWGS78ho4kV2Za+ISMtwsliOp7uGH3HQIWQlPP1/TrQ6QUMdRUii2upMapPZR
         FdJsOaJ/MMdFqmc0YDZ100xlfLZHfeUQysS7Y+CPwZ8z7/BTxwa+SKXuVSohjogmXhCj
         BxuLapbS2MCJDjWDjeoYIPAEmLjqb2taIKldAt/od95G1/dNiClDwtQTU6lUSuiHbqNG
         +KRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qrjAFZfZk/KQ8f/g23krk8sWW4bt0mszJhMLwMITpQI=;
        b=7fOGwNTJGSW+AhIIWgAB/MpWglJKigfrbrfpAUPFfOTn9jJHFGPgOxy19JYCcOgg8G
         Lle8Ix90LHw6JIxxD4c6/DXuLuSDcTiY6WIuD0q13n12ui77OmEXaTb6pZhE5iuQDBY2
         9XuOQXFFpKewK8bkQVQzJzjroO7wDQcoWVC51V0LWs/NW22MTetLPpWWLIAFB41OaBwj
         rHamqssZ1O4u6B0YPZbQxDFc/tVNAiJRNI5GbIw5hWQg975qsJyBWoWcY5FkuKKkqH5/
         Y5weLtUoyynXK2cyfEAm0UfFQDaxS+rYF2lwp9uMuPJtIjE21Bch05gyOODuMnkCSuhd
         nEYQ==
X-Gm-Message-State: AO0yUKVHnTCjMPCEKQugpE38vuD5F4KdHQdEjaYRKWZz74VqYP9eRvXv
        gdX6mBBqW72EKZHHeYj0Mi7y865V+JyWNP7LLdY=
X-Google-Smtp-Source: AK7set+0Tg30fAL0UrD8mRpDRUN29LvMY6DwMPNIeElOld7rwN6rWotCY8eWodeirDO2p2DY/9DnUTCUK0WXHnLBgME=
X-Received: by 2002:a67:c187:0:b0:3f9:c0c9:bd55 with SMTP id
 h7-20020a67c187000000b003f9c0c9bd55mr2720628vsj.37.1676036084570; Fri, 10 Feb
 2023 05:34:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:2618:b0:31d:70e:51c3 with HTTP; Fri, 10 Feb 2023
 05:34:44 -0800 (PST)
Reply-To: abrahammorrison443@gmail.com
From:   Abraham Morrison <lawyerrfirm01@gmail.com>
Date:   Fri, 10 Feb 2023 05:34:44 -0800
Message-ID: <CAJnhBAvUtJ7UdMYr3SFzwFvRLWBy55+YRdTWb7N6MbEM-gbamA@mail.gmail.com>
Subject: Good day!
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=7.5 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:e30 listed in]
        [list.dnswl.org]
        * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
        *      [score: 0.1779]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [lawyerrfirm01[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [lawyerrfirm01[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [abrahammorrison443[at]gmail.com]
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  2.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  0.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  3.3 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Opm=C3=A6rksomhed, tak,

Jeg er Mr. Abraham Morrison, hvordan har du det, jeg h=C3=A5ber du har det
godt og sundt? Dette er for at informere dig om, at jeg har afsluttet
transaktionen med succes med hj=C3=A6lp fra en ny partner fra Indien, og nu
er pengene blevet overf=C3=B8rt til Indien til den nye partners bankkonto.

I mellemtiden har jeg besluttet at kompensere dig med summen af
$500.000,00 (kun fem hundrede tusinde amerikanske dollars) p=C3=A5 grund af
din tidligere indsats, selvom du skuffede mig langs linjen. Men ikke
desto mindre er jeg meget glad for den vellykkede afslutning af
transaktionen uden problemer, og det er grunden til, at jeg har
besluttet at kompensere dig med summen af $500.000,00, s=C3=A5 du vil dele
gl=C3=A6den med mig.

Jeg r=C3=A5der dig til at kontakte min sekret=C3=A6r for et pengeautomatkor=
t p=C3=A5
$500.000,00, som jeg opbevarede for dig. Kontakt hende nu uden
forsinkelse.

Navn: Linda Koffi
E-mail: koffilinda785@gmail.com

Venligst genbekr=C3=A6ft f=C3=B8lgende oplysninger til hende:

Dit fulde navn:........
Din adresse:..........
Dit land:..........
Din alder:.........
Din besk=C3=A6ftigelse:..........
Dit mobiltelefonnummer: ..........
Dit pas eller k=C3=B8rekort:.........

Bem=C3=A6rk, at hvis du ikke har sendt hende ovenst=C3=A5ende oplysninger
fuldst=C3=A6ndigt, vil hun ikke frigive h=C3=A6vekortet til dig, fordi hun =
skal
v=C3=A6re sikker p=C3=A5, at det er dig. Bed hende om at sende dig det saml=
ede
bel=C3=B8b p=C3=A5 ($500.000,00) ATM-kort, som jeg opbevarede for dig.

Med venlig hilsen,

Mr. Abraham Morrison
