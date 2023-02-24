Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 911056A1D60
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 15:23:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjBXOXS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 09:23:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjBXOXS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 09:23:18 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC7091A66B
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 06:23:14 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id o12so55817839edb.9
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 06:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jpdwd3xuyVkT/VZTbWwrg7JoT4Mr4P0993yBblOq6r0=;
        b=N62jwKH6GLV3ZnDXyQdYVzHbnVimhMiCShHjGPkkI3RYP4gPXMHyOuVJifi9V7OS6B
         +kJedx1kd4GLReffDyrsdS25EtGqywRzGu4YU5/B/P909aprnMmcC3HvJ/8LQVn7n3JA
         h/CkUYEzY+Cy0pO91jvCtrOXuqAeJ81YLZSCNvCCWrHXazacOtMQgdqDKODlZ0gYUSY/
         gJbXCXkLVYlASIwOp4fdQPM05ZT9ous7e6Ug6Gd+YXT8JsVvPREujMsVKGj/1zBgFGfN
         ifFN4BIHuGyk+V53kn1ZzlHN/AVVexh28gYNWqg1ZaIU6a5kWXH1dobBrsYdyK8F5NbA
         z0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jpdwd3xuyVkT/VZTbWwrg7JoT4Mr4P0993yBblOq6r0=;
        b=ZIgah2bSjxra9ta/uG23qwvxdD9uCWEAM9bhui/sq0+qdlAqHEjh5uPm98ujMXIIH2
         ki+3jFga/WBjNT7DBCdbEW6hMVmIrZrP7933Im05lXAc1okhKF/iRJk1LKWhKImIzn7a
         RETfMIlo896eJRkyMRLjSUvXXPDxc+0R//c+QujgUcYxImVF91uA0xgCiHVnZXODbIQB
         egQ5IcNADOK2Mocitf0YfshJ5vkpRrP0Mh1NfOWL8tMC34gSIEPOsLAo/caDR5enR8B9
         o9ON037cMcJAYYE/ECj7D1r6mA6FITDj+CYlw9dLBtuNDMbQQSpeuuiG0OZYi7ojwjBA
         Eosg==
X-Gm-Message-State: AO0yUKVTd+wDYqFG+dfWAAShrAnTueAe+5fyAcV+HqoUMRTzsoQYQ7hX
        rfh5A1MobgljwhCJcB3Oi20V0ZCGstKfLDS35ig=
X-Google-Smtp-Source: AK7set8LmuiSL/ssqeMCpIcIv5MpLD3VFV4BqrcEVY7icY2Mtoxc6wihMXvdOdaKIwFbyhCpqU19zJIYdLOpVX1wXKs=
X-Received: by 2002:a17:906:195b:b0:8a6:91d9:c7ac with SMTP id
 b27-20020a170906195b00b008a691d9c7acmr11686018eje.5.1677248593283; Fri, 24
 Feb 2023 06:23:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a50:7806:0:b0:1f0:12e9:4bf1 with HTTP; Fri, 24 Feb 2023
 06:23:12 -0800 (PST)
Reply-To: cfc.ubagroup013@gmail.com
From:   Kristalina Georgieva <tonyelumelu918@gmail.com>
Date:   Fri, 24 Feb 2023 14:23:12 +0000
Message-ID: <CAHPS+3dLDCUoU9m9sp5UN=E78GPHS3sBFDpCAF8behFLddOAxw@mail.gmail.com>
Subject: HEAD UUDISED
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
        *      [2a00:1450:4864:20:0:0:0:532 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [tonyelumelu918[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [cfc.ubagroup013[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [tonyelumelu918[at]gmail.com]
        *  0.5 SUBJ_ALL_CAPS Subject is all capitals
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  3.0 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lugupeetud abisaaja!
Saatsin sulle selle kirja kuu aega tagasi, aga ma pole sinust midagi kuulnu=
d, ei
Olen kindel, et saite selle k=C3=A4tte ja sellep=C3=A4rast saatsin selle te=
ile uuesti.
Esiteks olen pr Kristalina Georgieva, tegevdirektor ja
Rahvusvahelise Valuutafondi president.

Tegelikult oleme l=C3=A4bi vaadanud k=C3=B5ik =C3=BCmbritsevad takistused j=
a probleemid
teie mittet=C3=A4ielik tehing ja teie suutmatus tasuda
=C3=BClekandetasud, mida v=C3=B5etakse teie vastu j=C3=A4rgmiste v=C3=B5ima=
luste eest
varasemate =C3=BClekannete kohta k=C3=BClastage kinnituse saamiseks meie sa=
iti 38
=C2=B0 53=E2=80=B256 =E2=80=B3 N 77 =C2=B0 2 =E2=80=B2 39 =E2=80=B3 W

Oleme direktorite n=C3=B5ukogu, Maailmapank ja Valuutafond
Washingtoni Rahvusvaheline (IMF) koos osakonnaga
Ameerika =C3=9Chendriikide riigikassa ja m=C3=B5ned teised uurimisasutused
asjakohane siin Ameerika =C3=9Chendriikides. on tellinud
meie Overseas Payment Remittance Unit, United Bank of
Africa Lome Togo, et v=C3=A4ljastada teile VISA kaart, kus $
1,5 miljonit teie fondist, et oma fondist rohkem v=C3=A4lja v=C3=B5tta.

Uurimise k=C3=A4igus avastasime koos
kardab, et teie makse on hilinenud korrumpeerunud ametnike poolt
pangast, kes =C3=BCritavad teie raha teie kontodele suunata
privaatne.

Ja t=C3=A4na anname teile teada, et teie raha on kaardile kantud
UBA panga VISA ja see on ka kohaletoimetamiseks valmis. N=C3=BC=C3=BCd
v=C3=B5tke =C3=BChendust UBA panga direktoriga, tema nimi on hr Tony
Elumelu, e-post: (cfc.ubagroup013@gmail.com)
et =C3=B6elda, kuidas ATM VISA kaarti k=C3=A4tte saada.

Lugupidamisega

Proua Kristalina Georgieva
